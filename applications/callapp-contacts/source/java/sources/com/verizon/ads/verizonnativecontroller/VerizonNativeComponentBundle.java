package com.verizon.ads.verizonnativecontroller;

import android.content.Context;
import android.text.TextUtils;
import com.verizon.ads.AdSession;
import com.verizon.ads.Component;
import com.verizon.ads.ComponentFactory;
import com.verizon.ads.ComponentRegistry;
import com.verizon.ads.Logger;
import com.verizon.ads.support.FileStorageCache;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle.class */
public class VerizonNativeComponentBundle extends VerizonNativeComponent implements NativeComponentBundle {

    /* renamed from: a */
    private static final Logger f61921a = Logger.getInstance(VerizonNativeComponentBundle.class);

    /* renamed from: b */
    private static final String f61922b = VerizonNativeComponentBundle.class.getSimpleName();

    /* renamed from: e */
    protected final Map<String, NativeComponent> f61923e = new ConcurrentHashMap();

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle$Factory.class */
    static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            if (jSONObject == null) {
                VerizonNativeComponentBundle.f61921a.m5565e("componentInfo cannot be null.");
                return null;
            } else if (objArr == null || objArr.length < 2 || !(objArr[0] instanceof AdSession) || !(objArr[1] instanceof String)) {
                VerizonNativeComponentBundle.f61921a.m5565e("Call to newInstance requires AdSession and component ID");
                return null;
            } else {
                try {
                    return new VerizonNativeComponentBundle((AdSession) objArr[0], (String) objArr[1], jSONObject.getString("contentType"), jSONObject);
                } catch (JSONException e) {
                    VerizonNativeComponentBundle.f61921a.m5564e("contentType attribute not found in the component information structure.", e);
                    return null;
                }
            }
        }
    }

    public VerizonNativeComponentBundle(AdSession adSession, String str, String str2, JSONObject jSONObject) {
        super(adSession, str, str2, jSONObject);
        m5141a(adSession);
    }

    /* renamed from: a */
    public static Set<String> m5139a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                hashSet.add(jSONArray.getString(i));
            } catch (Exception e) {
                return Collections.emptySet();
            }
        }
        return hashSet;
    }

    /* renamed from: a */
    private JSONObject m5140a(String str, boolean z) {
        try {
            try {
                JSONObject jSONObject = getComponentInfo(false).getJSONObject("components").getJSONObject(str);
                if (!z || jSONObject == null) {
                    return jSONObject;
                }
                try {
                    return new JSONObject(jSONObject.toString());
                } catch (JSONException e) {
                    f61921a.m5564e("Error copying component JSON.", e);
                    return null;
                }
            } catch (Exception e2) {
                f61921a.m5559w(String.format("Component '%s' does not exist in bundle", str));
                return null;
            }
        } catch (Exception e3) {
            f61921a.m5559w("Bundle does not contain components");
            return null;
        }
    }

    /* renamed from: a */
    private void m5141a(AdSession adSession) {
        for (String str : getComponentIds()) {
            NativeComponent nativeComponent = null;
            if (TextUtils.isEmpty(str)) {
                f61921a.m5565e("componentId cannot be null or empty");
            } else {
                JSONObject m5140a = m5140a(str, false);
                if (m5140a == null) {
                    f61921a.m5565e(String.format("Could not find component info for id <%s>", str));
                } else {
                    String optString = m5140a.optString("contentType", null);
                    if (optString == null) {
                        f61921a.m5565e(String.format("contentType is missing in component info for id <%s>", str));
                    } else {
                        Component component = ComponentRegistry.getComponent(optString, null, m5140a, adSession, str);
                        if (component instanceof NativeComponent) {
                            if (component instanceof VerizonNativeComponent) {
                                ((VerizonNativeComponent) component).m5155a(this);
                            }
                            nativeComponent = (NativeComponent) component;
                        } else {
                            f61921a.m5567d("Component instance is null or not an implementation of NativeComponent.");
                        }
                    }
                }
            }
            if (nativeComponent != null) {
                this.f61923e.put(str, nativeComponent);
            }
        }
    }

    public Component getComponent(String str) {
        if (TextUtils.isEmpty(str)) {
            f61921a.m5565e("componentId cannot be null or empty");
            return null;
        }
        return this.f61923e.get(str);
    }

    public Set<String> getComponentIds() {
        try {
            return m5139a(getComponentInfo(false).getJSONObject("components").names());
        } catch (Exception e) {
            f61921a.m5559w("Invalid JSON structure for 'components'");
            return Collections.emptySet();
        }
    }

    public JSONObject getComponentInfo() {
        return getComponentInfo(true);
    }

    public JSONObject getComponentInfo(boolean z) {
        if (!z) {
            return this.f61914d;
        }
        try {
            return new JSONObject(this.f61914d.toString());
        } catch (JSONException e) {
            f61921a.m5564e("Error copying component info.", e);
            return null;
        }
    }

    public JSONObject getComponentJSON(String str) {
        return m5140a(str, true);
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeComponent
    public void queueFilesForDownload(FileStorageCache fileStorageCache) {
        for (NativeComponent nativeComponent : this.f61923e.values()) {
            nativeComponent.queueFilesForDownload(fileStorageCache);
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeComponent, com.verizon.ads.Component
    public void release() {
        f61921a.m5567d("Releasing bundle component");
        for (NativeComponent nativeComponent : this.f61923e.values()) {
            nativeComponent.release();
        }
        this.f61923e.clear();
        super.release();
    }
}

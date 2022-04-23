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

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35744a = Logger.getInstance(VerizonNativeComponentBundle.class);

    /* renamed from: b  reason: collision with root package name */
    private static final String f35745b = VerizonNativeComponentBundle.class.getSimpleName();
    protected final Map<String, NativeComponent> e = new ConcurrentHashMap();

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle$Factory.class */
    static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            if (jSONObject == null) {
                VerizonNativeComponentBundle.f35744a.e("componentInfo cannot be null.");
                return null;
            } else if (objArr == null || objArr.length < 2 || !(objArr[0] instanceof AdSession) || !(objArr[1] instanceof String)) {
                VerizonNativeComponentBundle.f35744a.e("Call to newInstance requires AdSession and component ID");
                return null;
            } else {
                try {
                    return new VerizonNativeComponentBundle((AdSession) objArr[0], (String) objArr[1], jSONObject.getString("contentType"), jSONObject);
                } catch (JSONException e) {
                    VerizonNativeComponentBundle.f35744a.e("contentType attribute not found in the component information structure.", e);
                    return null;
                }
            }
        }
    }

    public VerizonNativeComponentBundle(AdSession adSession, String str, String str2, JSONObject jSONObject) {
        super(adSession, str, str2, jSONObject);
        a(adSession);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Set<String> a(JSONArray jSONArray) {
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

    private JSONObject a(String str, boolean z) {
        try {
            try {
                JSONObject jSONObject = getComponentInfo(false).getJSONObject("components").getJSONObject(str);
                if (!z || jSONObject == null) {
                    return jSONObject;
                }
                try {
                    return new JSONObject(jSONObject.toString());
                } catch (JSONException e) {
                    f35744a.e("Error copying component JSON.", e);
                    return null;
                }
            } catch (Exception e2) {
                f35744a.w(String.format("Component '%s' does not exist in bundle", str));
                return null;
            }
        } catch (Exception e3) {
            f35744a.w("Bundle does not contain components");
            return null;
        }
    }

    private void a(AdSession adSession) {
        for (String str : getComponentIds()) {
            NativeComponent nativeComponent = null;
            if (TextUtils.isEmpty(str)) {
                f35744a.e("componentId cannot be null or empty");
            } else {
                JSONObject a2 = a(str, false);
                if (a2 == null) {
                    f35744a.e(String.format("Could not find component info for id <%s>", str));
                } else {
                    String optString = a2.optString("contentType", null);
                    if (optString == null) {
                        f35744a.e(String.format("contentType is missing in component info for id <%s>", str));
                    } else {
                        Component component = ComponentRegistry.getComponent(optString, null, a2, adSession, str);
                        if (component instanceof NativeComponent) {
                            if (component instanceof VerizonNativeComponent) {
                                ((VerizonNativeComponent) component).a(this);
                            }
                            nativeComponent = (NativeComponent) component;
                        } else {
                            f35744a.d("Component instance is null or not an implementation of NativeComponent.");
                        }
                    }
                }
            }
            if (nativeComponent != null) {
                this.e.put(str, nativeComponent);
            }
        }
    }

    public Component getComponent(String str) {
        if (!TextUtils.isEmpty(str)) {
            return this.e.get(str);
        }
        f35744a.e("componentId cannot be null or empty");
        return null;
    }

    public Set<String> getComponentIds() {
        try {
            return a(getComponentInfo(false).getJSONObject("components").names());
        } catch (Exception e) {
            f35744a.w("Invalid JSON structure for 'components'");
            return Collections.emptySet();
        }
    }

    public JSONObject getComponentInfo() {
        return getComponentInfo(true);
    }

    public JSONObject getComponentInfo(boolean z) {
        if (!z) {
            return this.f35741d;
        }
        try {
            return new JSONObject(this.f35741d.toString());
        } catch (JSONException e) {
            f35744a.e("Error copying component info.", e);
            return null;
        }
    }

    public JSONObject getComponentJSON(String str) {
        return a(str, true);
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeComponent
    public void queueFilesForDownload(FileStorageCache fileStorageCache) {
        for (NativeComponent nativeComponent : this.e.values()) {
            nativeComponent.queueFilesForDownload(fileStorageCache);
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeComponent, com.verizon.ads.Component
    public void release() {
        f35744a.d("Releasing bundle component");
        for (NativeComponent nativeComponent : this.e.values()) {
            nativeComponent.release();
        }
        this.e.clear();
        super.release();
    }
}

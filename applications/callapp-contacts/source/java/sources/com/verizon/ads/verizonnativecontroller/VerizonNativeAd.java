package com.verizon.ads.verizonnativecontroller;

import android.content.Context;
import android.os.Handler;
import android.view.ViewGroup;
import com.iab.omid.library.verizonmedia.adsession.AbstractC16483b;
import com.iab.omid.library.verizonmedia.adsession.AdSessionConfiguration;
import com.iab.omid.library.verizonmedia.adsession.C16479a;
import com.iab.omid.library.verizonmedia.adsession.C16484c;
import com.iab.omid.library.verizonmedia.adsession.C16491j;
import com.iab.omid.library.verizonmedia.adsession.EnumC16486e;
import com.iab.omid.library.verizonmedia.adsession.EnumC16488g;
import com.iab.omid.library.verizonmedia.adsession.EnumC16489h;
import com.iab.omid.library.verizonmedia.adsession.p447a.C16480a;
import com.verizon.ads.AdSession;
import com.verizon.ads.Component;
import com.verizon.ads.ComponentFactory;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.PEXHandler;
import com.verizon.ads.PEXRegistry;
import com.verizon.ads.PostEventExperience;
import com.verizon.ads.omsdk.OMSDKPlugin;
import com.verizon.ads.omsdk.OpenMeasurementService;
import com.verizon.ads.support.FileStorageCache;
import com.verizon.ads.utils.TextUtils;
import com.verizon.ads.utils.ThreadUtils;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeAd.class */
public class VerizonNativeAd extends VerizonNativeComponentBundle {
    public static final String CONTENT_TYPE = "verizon/nativeAd-v1";
    public static final int ERROR_ABORTED = -7;
    public static final int ERROR_ASSET_LOAD_IN_PROGRESS = -3;
    public static final int ERROR_LOADING_ASSET = -1;
    public static final int ERROR_LOAD_TIMED_OUT = -2;
    public static final int ERROR_MISSING_REQUIRED_ASSET = -6;
    public static final int ERROR_NOT_CREATED = -4;
    public static final int ERROR_NO_SUCH_EXPERIENCE = -5;

    /* renamed from: a */
    static final Logger f61881a = Logger.getInstance(VerizonNativeAd.class);

    /* renamed from: f */
    private static final String f61882f = "VerizonNativeAd";

    /* renamed from: b */
    C16479a f61883b;

    /* renamed from: c */
    InteractionListener f61884c;

    /* renamed from: g */
    private final ExecutorService f61885g;

    /* renamed from: h */
    private final Handler f61886h;

    /* renamed from: i */
    private Map<String, PEXHandler> f61887i;

    /* renamed from: j */
    private JSONObject f61888j;

    /* renamed from: k */
    private LoadResourcesMessage f61889k;

    /* renamed from: l */
    private FileStorageCache f61890l;

    /* renamed from: m */
    private WeakReference<ViewGroup> f61891m;

    /* renamed from: n */
    private AbstractC16483b f61892n;

    /* renamed from: o */
    private C16480a f61893o;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeAd$Factory.class */
    public static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            if (objArr == null || objArr.length <= 0 || !(objArr[0] instanceof AdSession)) {
                VerizonNativeAd.f61881a.m5565e("Call to newInstance requires AdSession");
                return null;
            }
            VerizonNativeAd verizonNativeAd = new VerizonNativeAd((AdSession) objArr[0], jSONObject);
            ErrorInfo m5183a = VerizonNativeAd.m5183a(verizonNativeAd);
            if (m5183a == null) {
                return verizonNativeAd;
            }
            VerizonNativeAd.f61881a.m5565e(String.format("Failed to prepare controller: %s", m5183a.toString()));
            return null;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeAd$InteractionListener.class */
    public interface InteractionListener {
        void onAdLeftApplication(Component component);

        void onClicked(Component component);

        void onEvent(String str, String str2, Map<String, Object> map);
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesListener.class */
    public interface LoadResourcesListener {
        void onComplete(ErrorInfo errorInfo);
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage.class */
    public static class LoadResourcesMessage {

        /* renamed from: a */
        final boolean f61903a;

        /* renamed from: b */
        final int f61904b;

        /* renamed from: c */
        final LoadResourcesListener f61905c;

        /* renamed from: d */
        int f61906d = 0;

        /* renamed from: e */
        int f61907e = 0;

        /* renamed from: f */
        volatile ErrorInfo f61908f;

        LoadResourcesMessage(boolean z, int i, LoadResourcesListener loadResourcesListener) {
            this.f61903a = z;
            this.f61904b = i;
            this.f61905c = loadResourcesListener;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage.class */
    public static class ResourceLoadedMessage {

        /* renamed from: a */
        final LoadResourcesMessage f61909a;

        /* renamed from: b */
        final ErrorInfo f61910b;

        ResourceLoadedMessage(LoadResourcesMessage loadResourcesMessage, ErrorInfo errorInfo) {
            this.f61909a = loadResourcesMessage;
            this.f61910b = errorInfo;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private VerizonNativeAd(com.verizon.ads.AdSession r9, org.json.JSONObject r10) {
        /*
            r8 = this;
            java.lang.String r0 = com.verizon.ads.verizonnativecontroller.VerizonNativeAd.f61882f
            r11 = r0
            r0 = r8
            r1 = r9
            r2 = r11
            java.lang.String r3 = "verizon/nativeAd-v1"
            r4 = r10
            r0.<init>(r1, r2, r3, r4)
            android.os.HandlerThread r0 = new android.os.HandlerThread
            r1 = r0
            r2 = r11
            r1.<init>(r2)
            r9 = r0
            r0 = r9
            r0.start()
            r0 = r8
            android.os.Handler r1 = new android.os.Handler
            r2 = r1
            r3 = r9
            android.os.Looper r3 = r3.getLooper()
            com.verizon.ads.verizonnativecontroller.VerizonNativeAd$1 r4 = new com.verizon.ads.verizonnativecontroller.VerizonNativeAd$1
            r5 = r4
            r6 = r8
            r5.<init>()
            r2.<init>(r3, r4)
            r0.f61886h = r1
            r0 = r8
            com.verizon.ads.support.FileStorageCache r1 = new com.verizon.ads.support.FileStorageCache
            r2 = r1
            com.verizon.ads.support.StorageCache r3 = com.verizon.ads.verizonnativecontroller.VerizonNativeControllerPlugin.f61927j
            r2.<init>(r3)
            r0.f61890l = r1
            r0 = r8
            r1 = 3
            java.util.concurrent.ExecutorService r1 = java.util.concurrent.Executors.newFixedThreadPool(r1)
            r0.f61885g = r1
            r0 = r8
            java.util.HashMap r1 = new java.util.HashMap
            r2 = r1
            r2.<init>()
            r0.f61887i = r1
            r0 = r8
            r1 = r10
            r0.f61888j = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.verizonnativecontroller.VerizonNativeAd.<init>(com.verizon.ads.AdSession, org.json.JSONObject):void");
    }

    /* renamed from: a */
    static /* synthetic */ ErrorInfo m5183a(VerizonNativeAd verizonNativeAd) {
        Set<String> requiredComponentIds = verizonNativeAd.getRequiredComponentIds();
        Set<String> componentIds = verizonNativeAd.getComponentIds();
        if (Logger.isLogLevelEnabled(3)) {
            f61881a.m5567d(String.format("Advertiser required component ids: %s", requiredComponentIds));
        }
        ErrorInfo errorInfo = null;
        if (requiredComponentIds == null) {
            errorInfo = new ErrorInfo(f61882f, "Required components is missing", -6);
        } else if (!componentIds.containsAll(requiredComponentIds)) {
            requiredComponentIds.removeAll(componentIds);
            errorInfo = new ErrorInfo(f61882f, String.format("Missing advertiser required components: %s", requiredComponentIds), -6);
        }
        return errorInfo;
    }

    /* renamed from: a */
    private static void m5184a(LoadResourcesMessage loadResourcesMessage) {
        if (loadResourcesMessage.f61908f != null) {
            f61881a.m5565e(String.format("Resource loading completed with error: %s", loadResourcesMessage.f61908f.toString()));
        }
        LoadResourcesListener loadResourcesListener = loadResourcesMessage.f61905c;
        if (loadResourcesListener != null) {
            loadResourcesListener.onComplete(loadResourcesMessage.f61908f);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m5182a(VerizonNativeAd verizonNativeAd, final LoadResourcesMessage loadResourcesMessage) {
        boolean z;
        if (verizonNativeAd.f61889k != null) {
            loadResourcesMessage.f61908f = new ErrorInfo(f61882f, "Only one active load request allowed at a time", -3);
            m5184a(loadResourcesMessage);
            z = false;
        } else {
            verizonNativeAd.f61889k = loadResourcesMessage;
            z = true;
        }
        if (z) {
            VerizonNativeControllerPlugin.f61927j.deleteExpiredCacheEntries(43200000);
            if (!loadResourcesMessage.f61903a) {
                verizonNativeAd.queueFilesForDownload(verizonNativeAd.f61890l);
            }
            Set<PostEventExperience> m5176c = verizonNativeAd.m5176c();
            loadResourcesMessage.f61906d = verizonNativeAd.f61890l.getNumQueuedFiles() + m5176c.size();
            if (loadResourcesMessage.f61906d == 0) {
                f61881a.m5567d("No resources to load");
                Handler handler = verizonNativeAd.f61886h;
                handler.sendMessage(handler.obtainMessage(4, loadResourcesMessage));
                return;
            }
            if (Logger.isLogLevelEnabled(3)) {
                f61881a.m5567d(String.format("Requesting load of %d resources", Integer.valueOf(loadResourcesMessage.f61906d)));
            }
            if (loadResourcesMessage.f61904b > 0) {
                Handler handler2 = verizonNativeAd.f61886h;
                handler2.sendMessageDelayed(handler2.obtainMessage(1, loadResourcesMessage), loadResourcesMessage.f61904b);
            }
            verizonNativeAd.f61890l.downloadQueuedFiles(new FileStorageCache.FileStorageCacheListener() { // from class: com.verizon.ads.verizonnativecontroller.VerizonNativeAd.2
                @Override // com.verizon.ads.support.FileStorageCache.FileStorageCacheListener
                public void onComplete(String str, ErrorInfo errorInfo) {
                    if (errorInfo != null) {
                        VerizonNativeAd.f61881a.m5567d("Asset loading encountered an error -- skipping asset download");
                    }
                    VerizonNativeAd.this.f61886h.sendMessage(VerizonNativeAd.this.f61886h.obtainMessage(2, new ResourceLoadedMessage(loadResourcesMessage, errorInfo)));
                }
            }, loadResourcesMessage.f61904b);
            for (final PostEventExperience postEventExperience : m5176c) {
                final PEXHandler handler3 = PEXRegistry.getHandler(postEventExperience.contentType);
                if (handler3 == null) {
                    ErrorInfo errorInfo = new ErrorInfo(f61882f, String.format("No PEX registered for content type: <%s> registered.", postEventExperience.contentType), -5);
                    Handler handler4 = verizonNativeAd.f61886h;
                    handler4.sendMessage(handler4.obtainMessage(2, new ResourceLoadedMessage(loadResourcesMessage, errorInfo)));
                } else {
                    verizonNativeAd.f61887i.put(postEventExperience.f61217id, handler3);
                    if (Logger.isLogLevelEnabled(3)) {
                        f61881a.m5567d(String.format("Preparing post event experience id: %s", postEventExperience.f61217id));
                    }
                    verizonNativeAd.f61885g.execute(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller.VerizonNativeAd.3
                        @Override // java.lang.Runnable
                        public void run() {
                            handler3.prepare(VerizonNativeAd.this.getAdSession(), new PEXHandler.PEXPrepareListener() { // from class: com.verizon.ads.verizonnativecontroller.VerizonNativeAd.3.1
                                @Override // com.verizon.ads.PEXHandler.PEXPrepareListener
                                public void onComplete(ErrorInfo errorInfo2) {
                                    VerizonNativeAd.this.f61886h.sendMessage(VerizonNativeAd.this.f61886h.obtainMessage(2, new ResourceLoadedMessage(loadResourcesMessage, errorInfo2)));
                                }
                            }, postEventExperience.cacheable, postEventExperience.data);
                        }
                    });
                }
            }
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m5181a(VerizonNativeAd verizonNativeAd, ResourceLoadedMessage resourceLoadedMessage) {
        LoadResourcesMessage loadResourcesMessage = resourceLoadedMessage.f61909a;
        loadResourcesMessage.f61907e++;
        if (loadResourcesMessage.f61908f != null) {
            f61881a.m5567d(String.format("Load resource response %d ignored after error", Integer.valueOf(loadResourcesMessage.f61907e)));
        } else if (resourceLoadedMessage.f61910b != null) {
            if (Logger.isLogLevelEnabled(3)) {
                f61881a.m5567d(String.format("Load resource response %d failed with error %s", Integer.valueOf(loadResourcesMessage.f61907e), resourceLoadedMessage.f61910b.toString()));
            }
            loadResourcesMessage.f61908f = resourceLoadedMessage.f61910b;
        } else if (Logger.isLogLevelEnabled(3)) {
            f61881a.m5567d(String.format("Load resource response %d succeeded", Integer.valueOf(loadResourcesMessage.f61907e)));
        }
        if (loadResourcesMessage.f61907e == loadResourcesMessage.f61906d) {
            Handler handler = verizonNativeAd.f61886h;
            handler.sendMessage(handler.obtainMessage(4, loadResourcesMessage));
        }
    }

    /* renamed from: a */
    private boolean m5180a(List<C16491j> list) {
        OpenMeasurementService measurementService = OMSDKPlugin.getMeasurementService();
        if (measurementService == null) {
            f61881a.m5567d("OMSDK is disabled");
            return false;
        }
        try {
            this.f61892n = AbstractC16483b.m7158a(AdSessionConfiguration.createAdSessionConfiguration(m5167g() ? EnumC16486e.VIDEO : EnumC16486e.NATIVE_DISPLAY, EnumC16488g.OTHER, EnumC16489h.NATIVE, m5167g() ? EnumC16489h.NATIVE : null, false), C16484c.m7157a(measurementService.getPartner(), measurementService.getOMSDKJS(), list));
            return true;
        } catch (IOException e) {
            f61881a.m5564e("OMSDK is disabled - error occurred loading the OMSDK JS", e);
            return false;
        } catch (Throwable th) {
            f61881a.m5564e("OMSDK is disabled - error initializing OMSDK Ad Session.", th);
            return false;
        }
    }

    /* renamed from: b */
    private static JSONArray m5177b(JSONArray jSONArray) {
        JSONArray jSONArray2 = new JSONArray();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if (!jSONObject.getBoolean("secret")) {
                    jSONArray2.put(jSONObject);
                } else if (Logger.isLogLevelEnabled(3)) {
                    f61881a.m5567d(String.format("Sanitized secret postEventExperience: %s", jSONObject.optString("name")));
                }
            } catch (Exception e) {
                f61881a.m5565e(String.format("Invalid format for postEventExperience entry %d", Integer.valueOf(i)));
            }
        }
        return jSONArray2;
    }

    /* renamed from: b */
    static /* synthetic */ void m5178b(VerizonNativeAd verizonNativeAd, LoadResourcesMessage loadResourcesMessage) {
        if (verizonNativeAd.f61889k != loadResourcesMessage) {
            f61881a.m5567d("Asset load request timed out but is no longer the active request");
            return;
        }
        loadResourcesMessage.f61908f = new ErrorInfo(f61882f, "Load resources timed out", -2);
        verizonNativeAd.f61889k = null;
        m5184a(loadResourcesMessage);
    }

    /* renamed from: c */
    private Set<PostEventExperience> m5176c() {
        HashSet hashSet = new HashSet();
        JSONObject jSONObject = this.f61888j;
        if (jSONObject == null) {
            return hashSet;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("postEventExperiences");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                try {
                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                    PostEventExperience postEventExperience = new PostEventExperience();
                    postEventExperience.f61217id = jSONObject2.getString("id");
                    postEventExperience.cacheable = jSONObject2.getBoolean("cacheable");
                    postEventExperience.contentType = jSONObject2.getString("contentType");
                    postEventExperience.secret = jSONObject2.getBoolean("secret");
                    postEventExperience.data = jSONObject2.optJSONObject("data");
                    hashSet.add(postEventExperience);
                } catch (JSONException e) {
                    f61881a.m5564e("Error occurred processing Experience json.", e);
                }
            }
        }
        return hashSet;
    }

    /* renamed from: c */
    static /* synthetic */ void m5175c(VerizonNativeAd verizonNativeAd) {
        f61881a.m5567d("Releasing native assets");
        if (verizonNativeAd.f61889k != null) {
            verizonNativeAd.m5173d();
            return;
        }
        if (verizonNativeAd.f61892n != null) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller.VerizonNativeAd.4
                @Override // java.lang.Runnable
                public void run() {
                    VerizonNativeAd.this.f61892n.mo7151b();
                    VerizonNativeAd.this.f61892n = null;
                    VerizonNativeAd.this.f61883b = null;
                    VerizonNativeAd.f61881a.m5567d("Finished OMSDK Ad Session.");
                }
            });
        }
        verizonNativeAd.m5171e();
        verizonNativeAd.f61890l.deleteCache();
        super.release();
    }

    /* renamed from: c */
    static /* synthetic */ void m5174c(VerizonNativeAd verizonNativeAd, LoadResourcesMessage loadResourcesMessage) {
        if (loadResourcesMessage.f61908f == null) {
            f61881a.m5567d("Resource loading completed successfully");
        } else {
            verizonNativeAd.m5171e();
            verizonNativeAd.f61890l.deleteCache();
        }
        if (verizonNativeAd.f61889k == loadResourcesMessage) {
            m5184a(loadResourcesMessage);
        }
        verizonNativeAd.f61889k = null;
        verizonNativeAd.f61886h.removeCallbacksAndMessages(null);
    }

    /* renamed from: d */
    public void m5173d() {
        LoadResourcesMessage loadResourcesMessage = this.f61889k;
        if (loadResourcesMessage == null) {
            f61881a.m5567d("No active load to abort");
            return;
        }
        loadResourcesMessage.f61908f = new ErrorInfo(f61882f, "Load resources aborted", -7);
        this.f61889k = null;
        this.f61886h.removeMessages(1);
    }

    /* renamed from: e */
    private void m5171e() {
        f61881a.m5567d("Releasing loaded post event experiences.");
        for (Map.Entry<String, PEXHandler> entry : this.f61887i.entrySet()) {
            entry.getValue().release();
        }
        this.f61887i.clear();
    }

    /* renamed from: f */
    private List<C16491j> m5169f() {
        f61881a.m5567d("Preparing OMSDK verification script resources");
        JSONArray oMVendors = getOMVendors();
        if (oMVendors == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < oMVendors.length(); i++) {
            try {
                JSONObject jSONObject = oMVendors.getJSONObject(i);
                String string = jSONObject.getString("vendorKey");
                String string2 = jSONObject.getString("javascriptResourceUrl");
                if (!TextUtils.isEmpty(string2)) {
                    URL url = new URL(string2);
                    String string3 = jSONObject.getString("verificationParameters");
                    if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string3)) {
                        arrayList.add(C16491j.m7155a(url));
                    } else {
                        arrayList.add(C16491j.m7156a(string, url, string3));
                    }
                }
            } catch (Exception e) {
                f61881a.m5564e("Error preparing verification script resource", e);
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    private boolean m5167g() {
        return "video".equalsIgnoreCase(m5165h());
    }

    /* renamed from: h */
    private String m5165h() {
        JSONObject jSONObject = this.f61888j;
        if (jSONObject == null) {
            return null;
        }
        try {
            return jSONObject.getJSONObject("adInfo").getString("omSessionType");
        } catch (Exception e) {
            f61881a.m5564e("Error retrieving OM Session type", e);
            return null;
        }
    }

    /* renamed from: i */
    private void m5164i() {
        for (NativeComponent nativeComponent : this.f61923e.values()) {
            if (nativeComponent instanceof VerizonNativeVideoComponent) {
                VerizonNativeVideoComponent verizonNativeVideoComponent = (VerizonNativeVideoComponent) nativeComponent;
                verizonNativeVideoComponent.setVideoEvents(this.f61893o);
                verizonNativeVideoComponent.setAdEvents(this.f61883b);
                return;
            }
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeComponent
    /* renamed from: a */
    public final PEXHandler mo5153a(String str) {
        return this.f61887i.get(str);
    }

    public void abortLoadAssets() {
        Handler handler = this.f61886h;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public void fireImpression(Context context) {
        m5161a(context, "impression", (Map<String, Object>) null);
    }

    public String getAdType() {
        JSONObject jSONObject = this.f61888j;
        if (jSONObject == null) {
            return null;
        }
        try {
            return jSONObject.getJSONObject("adInfo").getString("type");
        } catch (Exception e) {
            f61881a.m5564e("Error retrieving ad type", e);
            return "unknown";
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeComponentBundle
    public JSONObject getComponentInfo() {
        JSONObject componentInfo = getComponentInfo(false);
        if (componentInfo == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(componentInfo.toString());
            if (jSONObject.has("postEventExperiences")) {
                try {
                    jSONObject.put("postEventExperiences", m5177b(jSONObject.getJSONArray("postEventExperiences")));
                } catch (Exception e) {
                    f61881a.m5564e("Invalid format for postEventExperiences", e);
                    jSONObject.remove("postEventExperiences");
                }
            }
            return jSONObject;
        } catch (Exception e2) {
            f61881a.m5564e("Error creating copy of JSON for bundle", e2);
            return null;
        }
    }

    public JSONArray getOMVendors() {
        JSONObject jSONObject = this.f61888j;
        if (jSONObject == null) {
            return null;
        }
        try {
            if (!jSONObject.has("adInfo")) {
                f61881a.m5567d("'adInfo' is not included");
                return null;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("adInfo");
            if (jSONObject2.has("omVendors")) {
                return jSONObject2.getJSONArray("omVendors");
            }
            f61881a.m5567d("'omVendors' is not included");
            return null;
        } catch (Exception e) {
            f61881a.m5565e("Invalid JSON structure for 'omVendors'");
            return null;
        }
    }

    public Set<String> getRequiredComponentIds() {
        JSONObject jSONObject = this.f61888j;
        if (jSONObject == null) {
            return Collections.emptySet();
        }
        try {
            return m5139a(jSONObject.getJSONArray("requiredComponents"));
        } catch (Exception e) {
            f61881a.m5565e("Missing or invalid JSON structure for 'requiredComponents'");
            return null;
        }
    }

    public void invokeDefaultAction(Context context) {
        try {
            JSONArray a = m5154a((VerizonNativeComponentBundle) null, this.f61888j, VerizonNativeComponent.TAP_EVENT);
            if (a == null) {
                f61881a.m5567d("No default actions specified for event tap.");
                return;
            }
            for (int i = 0; i < a.length(); i++) {
                m5160a(context, a.getJSONObject(i), (Map<String, Object>) null);
            }
        } catch (Exception e) {
            f61881a.m5564e("Could not determine the default action due to an exception.", e);
        }
    }

    public void loadResources(boolean z, int i, LoadResourcesListener loadResourcesListener) {
        if (loadResourcesListener == null) {
            f61881a.m5565e("LoadResourcesListener cannot be null");
            return;
        }
        Handler handler = this.f61886h;
        handler.sendMessage(handler.obtainMessage(0, new LoadResourcesMessage(z, i, loadResourcesListener)));
    }

    public boolean registerContainerView(ViewGroup viewGroup) {
        C16479a c16479a;
        Logger logger = f61881a;
        logger.m5567d("Registering container view for layout");
        if (!ThreadUtils.isUiThread()) {
            logger.m5565e("Must be on the UI thread to register container view");
            return false;
        } else if (viewGroup == null) {
            logger.m5565e("Container view cannot be null");
            return false;
        } else {
            WeakReference<ViewGroup> weakReference = this.f61891m;
            if (weakReference != null) {
                if (weakReference.get() != viewGroup) {
                    logger.m5565e("A different container view has already been registered");
                    return false;
                }
                logger.m5567d("The container view has already been registered");
                return true;
            }
            this.f61891m = new WeakReference<>(viewGroup);
            m5148b(viewGroup);
            if (!m5145c(viewGroup)) {
                m5144d(viewGroup);
            }
            if (this.f61892n != null) {
                return true;
            }
            logger.m5567d("Preparing OMSDK");
            List<C16491j> m5169f = m5169f();
            if (m5169f.isEmpty()) {
                logger.m5565e("OMSDK is disabled - verification script resources is empty");
                return true;
            } else if (!m5180a(m5169f)) {
                return true;
            } else {
                try {
                    this.f61883b = C16479a.m7173a(this.f61892n);
                    if (m5167g()) {
                        this.f61893o = C16480a.m7168a(this.f61892n);
                    }
                    this.f61892n.mo7153a(viewGroup);
                    logger.m5567d("Starting the OMSDK Ad session.");
                    this.f61892n.mo7154a();
                    m5164i();
                    if (m5167g() || (c16479a = this.f61883b) == null) {
                        return true;
                    }
                    c16479a.m7172b();
                    logger.m5567d("Fired OMSDK loaded event.");
                    return true;
                } catch (Throwable th) {
                    f61881a.m5564e("OMSDK is disabled - error initializing OMSDK Ad Session.", th);
                    this.f61892n = null;
                    this.f61883b = null;
                    this.f61893o = null;
                    return true;
                }
            }
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeComponentBundle, com.verizon.ads.verizonnativecontroller.VerizonNativeComponent, com.verizon.ads.Component
    public void release() {
        Handler handler = this.f61886h;
        handler.sendMessage(handler.obtainMessage(5));
        this.f61891m = null;
    }

    public void setInteractionListener(InteractionListener interactionListener) {
        this.f61884c = interactionListener;
    }
}

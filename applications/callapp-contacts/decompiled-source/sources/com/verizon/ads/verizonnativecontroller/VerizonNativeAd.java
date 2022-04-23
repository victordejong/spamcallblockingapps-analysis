package com.verizon.ads.verizonnativecontroller;

import android.content.Context;
import android.os.Handler;
import android.view.ViewGroup;
import com.iab.omid.library.verizonmedia.adsession.AdSessionConfiguration;
import com.iab.omid.library.verizonmedia.adsession.a;
import com.iab.omid.library.verizonmedia.adsession.b;
import com.iab.omid.library.verizonmedia.adsession.c;
import com.iab.omid.library.verizonmedia.adsession.e;
import com.iab.omid.library.verizonmedia.adsession.g;
import com.iab.omid.library.verizonmedia.adsession.h;
import com.iab.omid.library.verizonmedia.adsession.j;
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

    /* renamed from: a  reason: collision with root package name */
    static final Logger f35720a = Logger.getInstance(VerizonNativeAd.class);
    private static final String f = "VerizonNativeAd";

    /* renamed from: b  reason: collision with root package name */
    a f35721b;

    /* renamed from: c  reason: collision with root package name */
    InteractionListener f35722c;
    private final ExecutorService g;
    private final Handler h;
    private Map<String, PEXHandler> i;
    private JSONObject j;
    private LoadResourcesMessage k;
    private FileStorageCache l;
    private WeakReference<ViewGroup> m;
    private b n;
    private com.iab.omid.library.verizonmedia.adsession.a.a o;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeAd$Factory.class */
    public static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            if (objArr == null || objArr.length <= 0 || !(objArr[0] instanceof AdSession)) {
                VerizonNativeAd.f35720a.e("Call to newInstance requires AdSession");
                return null;
            }
            VerizonNativeAd verizonNativeAd = new VerizonNativeAd((AdSession) objArr[0], jSONObject);
            ErrorInfo a2 = VerizonNativeAd.a(verizonNativeAd);
            if (a2 == null) {
                return verizonNativeAd;
            }
            VerizonNativeAd.f35720a.e(String.format("Failed to prepare controller: %s", a2.toString()));
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesMessage.class */
    public static class LoadResourcesMessage {

        /* renamed from: a  reason: collision with root package name */
        final boolean f35732a;

        /* renamed from: b  reason: collision with root package name */
        final int f35733b;

        /* renamed from: c  reason: collision with root package name */
        final LoadResourcesListener f35734c;

        /* renamed from: d  reason: collision with root package name */
        int f35735d = 0;
        int e = 0;
        volatile ErrorInfo f;

        LoadResourcesMessage(boolean z, int i, LoadResourcesListener loadResourcesListener) {
            this.f35732a = z;
            this.f35733b = i;
            this.f35734c = loadResourcesListener;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeAd$ResourceLoadedMessage.class */
    public static class ResourceLoadedMessage {

        /* renamed from: a  reason: collision with root package name */
        final LoadResourcesMessage f35736a;

        /* renamed from: b  reason: collision with root package name */
        final ErrorInfo f35737b;

        ResourceLoadedMessage(LoadResourcesMessage loadResourcesMessage, ErrorInfo errorInfo) {
            this.f35736a = loadResourcesMessage;
            this.f35737b = errorInfo;
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
            java.lang.String r0 = com.verizon.ads.verizonnativecontroller.VerizonNativeAd.f
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
            r0.h = r1
            r0 = r8
            com.verizon.ads.support.FileStorageCache r1 = new com.verizon.ads.support.FileStorageCache
            r2 = r1
            com.verizon.ads.support.StorageCache r3 = com.verizon.ads.verizonnativecontroller.VerizonNativeControllerPlugin.j
            r2.<init>(r3)
            r0.l = r1
            r0 = r8
            r1 = 3
            java.util.concurrent.ExecutorService r1 = java.util.concurrent.Executors.newFixedThreadPool(r1)
            r0.g = r1
            r0 = r8
            java.util.HashMap r1 = new java.util.HashMap
            r2 = r1
            r2.<init>()
            r0.i = r1
            r0 = r8
            r1 = r10
            r0.j = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.verizonnativecontroller.VerizonNativeAd.<init>(com.verizon.ads.AdSession, org.json.JSONObject):void");
    }

    static /* synthetic */ ErrorInfo a(VerizonNativeAd verizonNativeAd) {
        Set<String> requiredComponentIds = verizonNativeAd.getRequiredComponentIds();
        Set<String> componentIds = verizonNativeAd.getComponentIds();
        if (Logger.isLogLevelEnabled(3)) {
            f35720a.d(String.format("Advertiser required component ids: %s", requiredComponentIds));
        }
        ErrorInfo errorInfo = null;
        if (requiredComponentIds == null) {
            errorInfo = new ErrorInfo(f, "Required components is missing", -6);
        } else if (!componentIds.containsAll(requiredComponentIds)) {
            requiredComponentIds.removeAll(componentIds);
            errorInfo = new ErrorInfo(f, String.format("Missing advertiser required components: %s", requiredComponentIds), -6);
        }
        return errorInfo;
    }

    private static void a(LoadResourcesMessage loadResourcesMessage) {
        if (loadResourcesMessage.f != null) {
            f35720a.e(String.format("Resource loading completed with error: %s", loadResourcesMessage.f.toString()));
        }
        LoadResourcesListener loadResourcesListener = loadResourcesMessage.f35734c;
        if (loadResourcesListener != null) {
            loadResourcesListener.onComplete(loadResourcesMessage.f);
        }
    }

    static /* synthetic */ void a(VerizonNativeAd verizonNativeAd, final LoadResourcesMessage loadResourcesMessage) {
        boolean z;
        if (verizonNativeAd.k != null) {
            loadResourcesMessage.f = new ErrorInfo(f, "Only one active load request allowed at a time", -3);
            a(loadResourcesMessage);
            z = false;
        } else {
            verizonNativeAd.k = loadResourcesMessage;
            z = true;
        }
        if (z) {
            VerizonNativeControllerPlugin.j.deleteExpiredCacheEntries(43200000);
            if (!loadResourcesMessage.f35732a) {
                verizonNativeAd.queueFilesForDownload(verizonNativeAd.l);
            }
            Set<PostEventExperience> c2 = verizonNativeAd.c();
            loadResourcesMessage.f35735d = verizonNativeAd.l.getNumQueuedFiles() + c2.size();
            if (loadResourcesMessage.f35735d == 0) {
                f35720a.d("No resources to load");
                Handler handler = verizonNativeAd.h;
                handler.sendMessage(handler.obtainMessage(4, loadResourcesMessage));
                return;
            }
            if (Logger.isLogLevelEnabled(3)) {
                f35720a.d(String.format("Requesting load of %d resources", Integer.valueOf(loadResourcesMessage.f35735d)));
            }
            if (loadResourcesMessage.f35733b > 0) {
                Handler handler2 = verizonNativeAd.h;
                handler2.sendMessageDelayed(handler2.obtainMessage(1, loadResourcesMessage), loadResourcesMessage.f35733b);
            }
            verizonNativeAd.l.downloadQueuedFiles(new FileStorageCache.FileStorageCacheListener() { // from class: com.verizon.ads.verizonnativecontroller.VerizonNativeAd.2
                @Override // com.verizon.ads.support.FileStorageCache.FileStorageCacheListener
                public void onComplete(String str, ErrorInfo errorInfo) {
                    if (errorInfo != null) {
                        VerizonNativeAd.f35720a.d("Asset loading encountered an error -- skipping asset download");
                    }
                    VerizonNativeAd.this.h.sendMessage(VerizonNativeAd.this.h.obtainMessage(2, new ResourceLoadedMessage(loadResourcesMessage, errorInfo)));
                }
            }, loadResourcesMessage.f35733b);
            for (final PostEventExperience postEventExperience : c2) {
                final PEXHandler handler3 = PEXRegistry.getHandler(postEventExperience.contentType);
                if (handler3 == null) {
                    ErrorInfo errorInfo = new ErrorInfo(f, String.format("No PEX registered for content type: <%s> registered.", postEventExperience.contentType), -5);
                    Handler handler4 = verizonNativeAd.h;
                    handler4.sendMessage(handler4.obtainMessage(2, new ResourceLoadedMessage(loadResourcesMessage, errorInfo)));
                } else {
                    verizonNativeAd.i.put(postEventExperience.id, handler3);
                    if (Logger.isLogLevelEnabled(3)) {
                        f35720a.d(String.format("Preparing post event experience id: %s", postEventExperience.id));
                    }
                    verizonNativeAd.g.execute(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller.VerizonNativeAd.3
                        @Override // java.lang.Runnable
                        public void run() {
                            handler3.prepare(VerizonNativeAd.this.getAdSession(), new PEXHandler.PEXPrepareListener() { // from class: com.verizon.ads.verizonnativecontroller.VerizonNativeAd.3.1
                                @Override // com.verizon.ads.PEXHandler.PEXPrepareListener
                                public void onComplete(ErrorInfo errorInfo2) {
                                    VerizonNativeAd.this.h.sendMessage(VerizonNativeAd.this.h.obtainMessage(2, new ResourceLoadedMessage(loadResourcesMessage, errorInfo2)));
                                }
                            }, postEventExperience.cacheable, postEventExperience.data);
                        }
                    });
                }
            }
        }
    }

    static /* synthetic */ void a(VerizonNativeAd verizonNativeAd, ResourceLoadedMessage resourceLoadedMessage) {
        LoadResourcesMessage loadResourcesMessage = resourceLoadedMessage.f35736a;
        loadResourcesMessage.e++;
        if (loadResourcesMessage.f != null) {
            f35720a.d(String.format("Load resource response %d ignored after error", Integer.valueOf(loadResourcesMessage.e)));
        } else if (resourceLoadedMessage.f35737b != null) {
            if (Logger.isLogLevelEnabled(3)) {
                f35720a.d(String.format("Load resource response %d failed with error %s", Integer.valueOf(loadResourcesMessage.e), resourceLoadedMessage.f35737b.toString()));
            }
            loadResourcesMessage.f = resourceLoadedMessage.f35737b;
        } else if (Logger.isLogLevelEnabled(3)) {
            f35720a.d(String.format("Load resource response %d succeeded", Integer.valueOf(loadResourcesMessage.e)));
        }
        if (loadResourcesMessage.e == loadResourcesMessage.f35735d) {
            Handler handler = verizonNativeAd.h;
            handler.sendMessage(handler.obtainMessage(4, loadResourcesMessage));
        }
    }

    private boolean a(List<j> list) {
        OpenMeasurementService measurementService = OMSDKPlugin.getMeasurementService();
        if (measurementService == null) {
            f35720a.d("OMSDK is disabled");
            return false;
        }
        try {
            this.n = b.a(AdSessionConfiguration.createAdSessionConfiguration(g() ? e.VIDEO : e.NATIVE_DISPLAY, g.OTHER, h.NATIVE, g() ? h.NATIVE : null, false), c.a(measurementService.getPartner(), measurementService.getOMSDKJS(), list));
            return true;
        } catch (IOException e) {
            f35720a.e("OMSDK is disabled - error occurred loading the OMSDK JS", e);
            return false;
        } catch (Throwable th) {
            f35720a.e("OMSDK is disabled - error initializing OMSDK Ad Session.", th);
            return false;
        }
    }

    private static JSONArray b(JSONArray jSONArray) {
        JSONArray jSONArray2 = new JSONArray();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if (!jSONObject.getBoolean("secret")) {
                    jSONArray2.put(jSONObject);
                } else if (Logger.isLogLevelEnabled(3)) {
                    f35720a.d(String.format("Sanitized secret postEventExperience: %s", jSONObject.optString("name")));
                }
            } catch (Exception e) {
                f35720a.e(String.format("Invalid format for postEventExperience entry %d", Integer.valueOf(i)));
            }
        }
        return jSONArray2;
    }

    static /* synthetic */ void b(VerizonNativeAd verizonNativeAd, LoadResourcesMessage loadResourcesMessage) {
        if (verizonNativeAd.k != loadResourcesMessage) {
            f35720a.d("Asset load request timed out but is no longer the active request");
            return;
        }
        loadResourcesMessage.f = new ErrorInfo(f, "Load resources timed out", -2);
        verizonNativeAd.k = null;
        a(loadResourcesMessage);
    }

    private Set<PostEventExperience> c() {
        HashSet hashSet = new HashSet();
        JSONObject jSONObject = this.j;
        if (jSONObject == null) {
            return hashSet;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("postEventExperiences");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                try {
                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                    PostEventExperience postEventExperience = new PostEventExperience();
                    postEventExperience.id = jSONObject2.getString("id");
                    postEventExperience.cacheable = jSONObject2.getBoolean("cacheable");
                    postEventExperience.contentType = jSONObject2.getString("contentType");
                    postEventExperience.secret = jSONObject2.getBoolean("secret");
                    postEventExperience.data = jSONObject2.optJSONObject("data");
                    hashSet.add(postEventExperience);
                } catch (JSONException e) {
                    f35720a.e("Error occurred processing Experience json.", e);
                }
            }
        }
        return hashSet;
    }

    static /* synthetic */ void c(VerizonNativeAd verizonNativeAd) {
        f35720a.d("Releasing native assets");
        if (verizonNativeAd.k != null) {
            verizonNativeAd.d();
            return;
        }
        if (verizonNativeAd.n != null) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.verizonnativecontroller.VerizonNativeAd.4
                @Override // java.lang.Runnable
                public void run() {
                    VerizonNativeAd.this.n.b();
                    VerizonNativeAd.this.n = null;
                    VerizonNativeAd.this.f35721b = null;
                    VerizonNativeAd.f35720a.d("Finished OMSDK Ad Session.");
                }
            });
        }
        verizonNativeAd.e();
        verizonNativeAd.l.deleteCache();
        super.release();
    }

    static /* synthetic */ void c(VerizonNativeAd verizonNativeAd, LoadResourcesMessage loadResourcesMessage) {
        if (loadResourcesMessage.f == null) {
            f35720a.d("Resource loading completed successfully");
        } else {
            verizonNativeAd.e();
            verizonNativeAd.l.deleteCache();
        }
        if (verizonNativeAd.k == loadResourcesMessage) {
            a(loadResourcesMessage);
        }
        verizonNativeAd.k = null;
        verizonNativeAd.h.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        LoadResourcesMessage loadResourcesMessage = this.k;
        if (loadResourcesMessage == null) {
            f35720a.d("No active load to abort");
            return;
        }
        loadResourcesMessage.f = new ErrorInfo(f, "Load resources aborted", -7);
        this.k = null;
        this.h.removeMessages(1);
    }

    private void e() {
        f35720a.d("Releasing loaded post event experiences.");
        for (Map.Entry<String, PEXHandler> entry : this.i.entrySet()) {
            entry.getValue().release();
        }
        this.i.clear();
    }

    private List<j> f() {
        f35720a.d("Preparing OMSDK verification script resources");
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
                        arrayList.add(j.a(url));
                    } else {
                        arrayList.add(j.a(string, url, string3));
                    }
                }
            } catch (Exception e) {
                f35720a.e("Error preparing verification script resource", e);
            }
        }
        return arrayList;
    }

    private boolean g() {
        return "video".equalsIgnoreCase(h());
    }

    private String h() {
        JSONObject jSONObject = this.j;
        if (jSONObject == null) {
            return null;
        }
        try {
            return jSONObject.getJSONObject("adInfo").getString("omSessionType");
        } catch (Exception e) {
            f35720a.e("Error retrieving OM Session type", e);
            return null;
        }
    }

    private void i() {
        for (NativeComponent nativeComponent : this.e.values()) {
            if (nativeComponent instanceof VerizonNativeVideoComponent) {
                VerizonNativeVideoComponent verizonNativeVideoComponent = (VerizonNativeVideoComponent) nativeComponent;
                verizonNativeVideoComponent.setVideoEvents(this.o);
                verizonNativeVideoComponent.setAdEvents(this.f35721b);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeComponent
    public final PEXHandler a(String str) {
        return this.i.get(str);
    }

    public void abortLoadAssets() {
        Handler handler = this.h;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public void fireImpression(Context context) {
        a(context, "impression", (Map<String, Object>) null);
    }

    public String getAdType() {
        JSONObject jSONObject = this.j;
        if (jSONObject == null) {
            return null;
        }
        try {
            return jSONObject.getJSONObject("adInfo").getString("type");
        } catch (Exception e) {
            f35720a.e("Error retrieving ad type", e);
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
                    jSONObject.put("postEventExperiences", b(jSONObject.getJSONArray("postEventExperiences")));
                } catch (Exception e) {
                    f35720a.e("Invalid format for postEventExperiences", e);
                    jSONObject.remove("postEventExperiences");
                }
            }
            return jSONObject;
        } catch (Exception e2) {
            f35720a.e("Error creating copy of JSON for bundle", e2);
            return null;
        }
    }

    public JSONArray getOMVendors() {
        JSONObject jSONObject = this.j;
        if (jSONObject == null) {
            return null;
        }
        try {
            if (!jSONObject.has("adInfo")) {
                f35720a.d("'adInfo' is not included");
                return null;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("adInfo");
            if (jSONObject2.has("omVendors")) {
                return jSONObject2.getJSONArray("omVendors");
            }
            f35720a.d("'omVendors' is not included");
            return null;
        } catch (Exception e) {
            f35720a.e("Invalid JSON structure for 'omVendors'");
            return null;
        }
    }

    public Set<String> getRequiredComponentIds() {
        JSONObject jSONObject = this.j;
        if (jSONObject == null) {
            return Collections.emptySet();
        }
        try {
            return a(jSONObject.getJSONArray("requiredComponents"));
        } catch (Exception e) {
            f35720a.e("Missing or invalid JSON structure for 'requiredComponents'");
            return null;
        }
    }

    public void invokeDefaultAction(Context context) {
        try {
            JSONArray a2 = a((VerizonNativeComponentBundle) null, this.j, VerizonNativeComponent.TAP_EVENT);
            if (a2 == null) {
                f35720a.d("No default actions specified for event tap.");
                return;
            }
            for (int i = 0; i < a2.length(); i++) {
                a(context, a2.getJSONObject(i), (Map<String, Object>) null);
            }
        } catch (Exception e) {
            f35720a.e("Could not determine the default action due to an exception.", e);
        }
    }

    public void loadResources(boolean z, int i, LoadResourcesListener loadResourcesListener) {
        if (loadResourcesListener == null) {
            f35720a.e("LoadResourcesListener cannot be null");
            return;
        }
        Handler handler = this.h;
        handler.sendMessage(handler.obtainMessage(0, new LoadResourcesMessage(z, i, loadResourcesListener)));
    }

    public boolean registerContainerView(ViewGroup viewGroup) {
        a aVar;
        Logger logger = f35720a;
        logger.d("Registering container view for layout");
        if (!ThreadUtils.isUiThread()) {
            logger.e("Must be on the UI thread to register container view");
            return false;
        } else if (viewGroup == null) {
            logger.e("Container view cannot be null");
            return false;
        } else {
            WeakReference<ViewGroup> weakReference = this.m;
            if (!(weakReference != null)) {
                this.m = new WeakReference<>(viewGroup);
                b(viewGroup);
                if (!c(viewGroup)) {
                    d(viewGroup);
                }
                if (this.n != null) {
                    return true;
                }
                logger.d("Preparing OMSDK");
                List<j> f2 = f();
                if (f2.isEmpty()) {
                    logger.e("OMSDK is disabled - verification script resources is empty");
                    return true;
                } else if (!a(f2)) {
                    return true;
                } else {
                    try {
                        this.f35721b = a.a(this.n);
                        if (g()) {
                            this.o = com.iab.omid.library.verizonmedia.adsession.a.a.a(this.n);
                        }
                        this.n.a(viewGroup);
                        logger.d("Starting the OMSDK Ad session.");
                        this.n.a();
                        i();
                        if (g() || (aVar = this.f35721b) == null) {
                            return true;
                        }
                        aVar.b();
                        logger.d("Fired OMSDK loaded event.");
                        return true;
                    } catch (Throwable th) {
                        f35720a.e("OMSDK is disabled - error initializing OMSDK Ad Session.", th);
                        this.n = null;
                        this.f35721b = null;
                        this.o = null;
                        return true;
                    }
                }
            } else if (weakReference.get() != viewGroup) {
                logger.e("A different container view has already been registered");
                return false;
            } else {
                logger.d("The container view has already been registered");
                return true;
            }
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeComponentBundle, com.verizon.ads.verizonnativecontroller.VerizonNativeComponent, com.verizon.ads.Component
    public void release() {
        Handler handler = this.h;
        handler.sendMessage(handler.obtainMessage(5));
        this.m = null;
    }

    public void setInteractionListener(InteractionListener interactionListener) {
        this.f35722c = interactionListener;
    }
}

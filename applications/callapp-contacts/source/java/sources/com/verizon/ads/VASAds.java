package com.verizon.ads;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.lifecycle.AbstractC1246c;
import androidx.lifecycle.AbstractC1263p;
import androidx.lifecycle.C1276w;
import com.verizon.ads.Configuration;
import com.verizon.ads.ConfigurationProvider;
import com.verizon.ads.events.EventReceiver;
import com.verizon.ads.events.Events;
import com.verizon.ads.sideloadingwaterfallprovider.SideloadingWaterfallProvider;
import com.verizon.ads.utils.TextUtils;
import com.verizon.ads.verizonsspconfigprovider.VerizonSSPConfigProvider;
import com.verizon.ads.verizonsspconfigprovider.VerizonSSPConfigProviderPlugin;
import com.verizon.ads.verizonsspreporter.VerizonSSPReporter;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/VASAds.class */
public final class VASAds {
    public static final String ANONYMOUS_USER_KEY = "anonymousUser";
    public static final int API_LEVEL = 1;
    public static final String COLLECT = "Collect";
    public static final String COLLECTION_MODE = "collectionMode";
    public static final String DOMAIN = "com.verizon.ads.core";
    public static final String DO_NOT_COLLECT = "DoNotCollect";
    public static final int ERROR_AD_REQUEST_FAILED = -3;
    public static final int ERROR_AD_REQUEST_FAILED_APP_IN_BACKGROUND = -4;
    public static final int ERROR_AD_REQUEST_TIMED_OUT = -2;
    public static final int ERROR_NO_FILL = -1;
    public static final String IAB_CONSENT_KEY = "iab";
    public static final String LOCATION_ENABLED_KEY = "locationEnabled";
    public static final String LOCATION_REQUIRES_CONSENT_KEY = "locationRequiresConsent";
    public static final String REQUEST_FACTORY_REF = "request.factoryRef";
    public static final String REQUEST_PLACEMENT_REF = "request.placementRef";
    public static final String REQUEST_REQUEST_METADATA = "request.requestMetadata";
    public static final String RESPONSE_WATERFALL = "response.waterfall";
    public static final String RESPONSE_WATERFALL_ITEM = "response.waterfallItem";
    public static final String SDK_ENABLED_KEY = "sdkEnabled";
    public static final String USER_PRIVACY_DATA_KEY = "userPrivacyData";

    /* renamed from: a */
    static WeakReference<Application> f61232a;

    /* renamed from: h */
    private static final HandlerThread f61239h;

    /* renamed from: i */
    private static final AdRequestHandler f61240i;

    /* renamed from: j */
    private static final Handler f61241j;

    /* renamed from: k */
    private static final Handler f61242k;

    /* renamed from: n */
    private static VerizonSSPReporter f61245n;

    /* renamed from: p */
    private static volatile RequestMetadata f61247p;

    /* renamed from: q */
    private static boolean f61248q;

    /* renamed from: r */
    private static String f61249r;

    /* renamed from: t */
    private static ActivityStateManager f61251t;

    /* renamed from: u */
    private static WeakReference<Context> f61252u;

    /* renamed from: b */
    private static final Logger f61233b = Logger.getInstance(VASAds.class);

    /* renamed from: c */
    private static final ConfigurationProvider.UpdateListener f61234c = new ConfigurationProvider.UpdateListener() { // from class: com.verizon.ads.VASAds.1
        @Override // com.verizon.ads.ConfigurationProvider.UpdateListener
        public final void onComplete(ConfigurationProvider configurationProvider, ErrorInfo errorInfo) {
            if (errorInfo != null) {
                VASAds.f61233b.m5565e(String.format("An error occurred while updating configuration provider <%s>. Error Info: %s", configurationProvider.getId(), errorInfo));
            } else if (!Logger.isLogLevelEnabled(3)) {
            } else {
                VASAds.f61233b.m5567d(String.format("Successfully updated configuration provider <%s>", configurationProvider.getId()));
            }
        }
    };

    /* renamed from: l */
    private static final String f61243l = VASAds.class.getName();

    /* renamed from: m */
    private static final ApplicationLifeCycleObserver f61244m = new ApplicationLifeCycleObserver();

    /* renamed from: o */
    private static final AtomicBoolean f61246o = new AtomicBoolean(false);

    /* renamed from: s */
    private static ExecutorService f61250s = Executors.newSingleThreadExecutor();

    /* renamed from: d */
    private static final List<ConfigurationProviderRegistration> f61235d = new CopyOnWriteArrayList();

    /* renamed from: f */
    private static final List<AdAdapterRegistration> f61237f = new CopyOnWriteArrayList();

    /* renamed from: e */
    private static final Map<String, RegisteredPlugin> f61236e = new ConcurrentHashMap();

    /* renamed from: g */
    private static final SDKInfo f61238g = new SDKInfo("2.5.0", BuildConfig.BUILD_HASH, "release", "1", BuildConfig.BUILD_TIME);

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/VASAds$AdRequestListener.class */
    public interface AdRequestListener {

        /* loaded from: classes4-dex2jar.jar:com/verizon/ads/VASAds$AdRequestListener$_CC.class */
        public final /* synthetic */ class _CC {
            @Deprecated
            public static void $default$prepare(AdRequestListener adRequestListener, AdSession adSession) {
            }
        }

        void onAdReceived(AdSession adSession, ErrorInfo errorInfo, boolean z);

        @Deprecated
        void prepare(AdSession adSession);
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/VASAds$ApplicationLifeCycleObserver.class */
    public static final class ApplicationLifeCycleObserver implements AbstractC1246c {

        /* renamed from: a */
        volatile boolean f61257a = false;

        ApplicationLifeCycleObserver() {
        }

        @Override // androidx.lifecycle.AbstractC1246c, androidx.lifecycle.AbstractC1249f
        public final void onStart(AbstractC1263p abstractC1263p) {
            this.f61257a = false;
        }

        @Override // androidx.lifecycle.AbstractC1246c, androidx.lifecycle.AbstractC1249f
        public final void onStop(AbstractC1263p abstractC1263p) {
            this.f61257a = true;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/VASAds$RegisteredPlugin.class */
    public static final class RegisteredPlugin {

        /* renamed from: a */
        final Plugin f61258a;

        /* renamed from: b */
        volatile boolean f61259b;

        private RegisteredPlugin(Plugin plugin) {
            this.f61258a = plugin;
        }
    }

    static {
        HandlerThread handlerThread = new HandlerThread("VASAdsCoreHandlerThread");
        f61239h = handlerThread;
        handlerThread.start();
        f61240i = new AdRequestHandler(handlerThread.getLooper());
        f61241j = new Handler(handlerThread.getLooper());
        f61242k = new Handler(handlerThread.getLooper());
    }

    /* renamed from: a */
    static int m5549a() {
        int i = Configuration.getInt(DOMAIN, "locationRequiresConsentTtl", 86400000);
        if (Logger.isLogLevelEnabled(3)) {
            f61233b.m5567d(String.format("Configuration location requires consent ttl: %d", Integer.valueOf(i)));
        }
        return i;
    }

    /* renamed from: a */
    public static AdAdapter m5545a(Class cls, AdContent adContent) {
        Class<? extends AdAdapter> cls2;
        Iterator<AdAdapterRegistration> it2 = f61237f.iterator();
        while (true) {
            if (!it2.hasNext()) {
                cls2 = null;
                break;
            }
            AdAdapterRegistration next = it2.next();
            if (isPluginEnabled(next.f61126a) && cls != null && adContent != null && next.f61128c != null && cls == next.f61127b && next.f61128c.accepts(adContent)) {
                cls2 = next.f61129d;
                break;
            }
        }
        if (cls2 != null) {
            try {
                return (AdAdapter) cls2.newInstance();
            } catch (Throwable th) {
                f61233b.m5564e(String.format("Unable to instantiate AdAdapter class: %s", cls2.getName()), th);
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    private static WaterfallProvider m5547a(Context context, RequestMetadata requestMetadata) {
        Object obj;
        if (context == null) {
            f61233b.m5565e("context cannot be null.");
            return null;
        }
        Object component = (requestMetadata == null || requestMetadata.getPlacementData() == null || (obj = requestMetadata.getPlacementData().get("overrideWaterfallProvider")) == null) ? null : ComponentRegistry.getComponent(obj.toString(), context, null, null);
        Object obj2 = component;
        if (!(component instanceof WaterfallProvider)) {
            String string = Configuration.getString(DOMAIN, "defaultWaterfallProvider", null);
            if (string != null) {
                obj2 = ComponentRegistry.getComponent(string, context, null, null);
            } else {
                f61233b.m5565e("No default waterfall provider registered in Configuration.");
                obj2 = component;
            }
        }
        if (!(obj2 instanceof WaterfallProvider)) {
            return null;
        }
        return (WaterfallProvider) obj2;
    }

    /* renamed from: a */
    static void m5548a(int i, boolean z) {
        Handler handler = f61242k;
        handler.removeCallbacks(null);
        if (z) {
            handler.postDelayed(new Runnable() { // from class: com.verizon.ads.VASAds.5
                @Override // java.lang.Runnable
                public final void run() {
                    VASAds.m5541a(true);
                }
            }, i);
        } else {
            m5541a(false);
        }
    }

    /* renamed from: a */
    static void m5546a(Configuration.ConfigurationChangeEvent configurationChangeEvent) {
        if (DOMAIN.equals(configurationChangeEvent.domain)) {
            if (!"geoIpCheckUrl".equals(configurationChangeEvent.key) && !"locationRequiresConsentTtl".equals(configurationChangeEvent.key)) {
                return;
            }
            m5548a(5000, true);
        }
    }

    /* renamed from: a */
    private static void m5544a(Class cls, WaterfallProvider waterfallProvider, Bid bid, RequestMetadata requestMetadata, int i, AdRequestListener adRequestListener) {
        if (adRequestListener == null) {
            f61233b.m5565e("adRequestListener cannot be null.");
        } else if (cls == null) {
            ErrorInfo errorInfo = new ErrorInfo(f61243l, "adRequesterClass cannot be null", -3);
            f61233b.m5565e(errorInfo.toString());
            adRequestListener.onAdReceived(null, errorInfo, true);
        } else if (waterfallProvider == null) {
            ErrorInfo errorInfo2 = new ErrorInfo(f61243l, "waterfallProvider cannot be null", -3);
            f61233b.m5565e(errorInfo2.toString());
            adRequestListener.onAdReceived(null, errorInfo2, true);
        } else if (i <= 0) {
            ErrorInfo errorInfo3 = new ErrorInfo(f61243l, "timeout must be greater than zero", -3);
            f61233b.m5565e(errorInfo3.toString());
            adRequestListener.onAdReceived(null, errorInfo3, true);
        } else {
            if (requestMetadata == null) {
                requestMetadata = getRequestMetadata();
            }
            f61240i.m5588a(new AdRequest(waterfallProvider, bid, requestMetadata, cls, i, adRequestListener));
        }
    }

    /* renamed from: a */
    static void m5543a(Runnable runnable) {
        f61241j.postDelayed(runnable, Configuration.getInt(DOMAIN, "configurationProviderRefreshInterval", 86400000));
    }

    /* renamed from: a */
    public static void m5542a(String str, Class cls, Class<? extends AdAdapter> cls2, ContentFilter contentFilter) {
        if (TextUtils.isEmpty(str)) {
            f61233b.m5565e("The pluginId parameter cannot be null or empty.");
        } else if (cls == null) {
            f61233b.m5565e("The adRequesterClass parameter cannot be null.");
        } else if (cls2 == null) {
            f61233b.m5565e("The adAdapter parameter cannot be null.");
        } else if (contentFilter == null) {
            f61233b.m5565e("The contentFilter parameter cannot be null.");
        } else {
            f61237f.add(0, new AdAdapterRegistration(str, cls, cls2, contentFilter));
        }
    }

    /* renamed from: a */
    static void m5541a(final boolean z) {
        Runnable runnable = new Runnable() { // from class: com.verizon.ads.VASAds.6
            @Override // java.lang.Runnable
            public final void run() {
                if (!VASAds.f61246o.compareAndSet(false, true)) {
                    VASAds.f61233b.m5567d("Location request already in progress");
                    return;
                }
                String m5534h = VASAds.m5534h();
                if (m5534h != null) {
                    try {
                        boolean z2 = new JSONObject(m5534h).getBoolean("result");
                        if (Logger.isLogLevelEnabled(3)) {
                            VASAds.f61233b.m5567d(String.format("Location requires consent = %b", Boolean.valueOf(z2)));
                        }
                        Configuration.set(Boolean.valueOf(z2), VASAds.DOMAIN, VASAds.LOCATION_REQUIRES_CONSENT_KEY, "vas-core-key");
                        VASAds.m5539c();
                    } catch (JSONException e) {
                        VASAds.f61233b.m5564e("An exception occurred parsing response from privacy server", e);
                    }
                }
                VASAds.f61246o.set(false);
                VASAds.m5548a(VASAds.m5549a(), z);
            }
        };
        if (z) {
            f61250s.execute(runnable);
        } else {
            runnable.run();
        }
    }

    /* renamed from: b */
    public static Context m5540b() {
        WeakReference<Context> weakReference = f61252u;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: c */
    static void m5539c() {
        PrivacyDataHelper privacyDataHelper = new PrivacyDataHelper(Configuration.getMap(DOMAIN, USER_PRIVACY_DATA_KEY, null));
        String collectionMode = privacyDataHelper.getCollectionMode();
        if (COLLECT.equalsIgnoreCase(collectionMode)) {
            Configuration.set(Boolean.FALSE, DOMAIN, ANONYMOUS_USER_KEY, "vas-core-key");
        } else if (DO_NOT_COLLECT.equalsIgnoreCase(collectionMode)) {
            Configuration.set(Boolean.TRUE, DOMAIN, ANONYMOUS_USER_KEY, "vas-core-key");
        } else if (!Configuration.getBoolean(DOMAIN, LOCATION_REQUIRES_CONSENT_KEY, true)) {
            Configuration.set(Boolean.FALSE, DOMAIN, ANONYMOUS_USER_KEY, "vas-core-key");
        } else {
            Map<?, ?> gDPRConsentMap = privacyDataHelper.getGDPRConsentMap();
            Configuration.set(Boolean.valueOf(!(gDPRConsentMap != null && !gDPRConsentMap.isEmpty())), DOMAIN, ANONYMOUS_USER_KEY, "vas-core-key");
        }
    }

    /* renamed from: d */
    static void m5538d() {
        for (ConfigurationProviderRegistration configurationProviderRegistration : f61235d) {
            configurationProviderRegistration.update(f61234c);
        }
    }

    public static void disablePlugin(String str) {
        if (TextUtils.isEmpty(str)) {
            f61233b.m5565e("id cannot be null or empty.");
            return;
        }
        RegisteredPlugin registeredPlugin = f61236e.get(str);
        if (registeredPlugin == null) {
            f61233b.m5565e(String.format("No registered plugin exists with id = %s", str));
        } else if (!registeredPlugin.f61259b) {
            f61233b.m5563i(String.format("Plugin with id = %s is already disabled", str));
        } else {
            if (Logger.isLogLevelEnabled(3)) {
                f61233b.m5567d(String.format("Disabling plugin %s", registeredPlugin.f61258a));
            }
            registeredPlugin.f61259b = false;
            registeredPlugin.f61258a.onPluginDisabled();
        }
    }

    public static void enablePlugin(String str) {
        if (TextUtils.isEmpty(str)) {
            f61233b.m5565e("id cannot be null or empty.");
            return;
        }
        RegisteredPlugin registeredPlugin = f61236e.get(str);
        if (registeredPlugin == null) {
            f61233b.m5565e(String.format("No registered plugin exists with id = %s", str));
        } else if (registeredPlugin.f61259b) {
            f61233b.m5563i(String.format("Plugin with id = %s is already enabled", str));
        } else {
            if (Logger.isLogLevelEnabled(3)) {
                f61233b.m5567d(String.format("Enabling plugin %s", registeredPlugin.f61258a));
            }
            registeredPlugin.f61259b = true;
            registeredPlugin.f61258a.onPluginEnabled();
        }
    }

    public static ActivityStateManager getActivityStateManager() {
        return f61251t;
    }

    public static String getBiddingToken(Context context, RequestMetadata requestMetadata) {
        WaterfallProvider m5547a = m5547a(context, requestMetadata);
        if (m5547a == null) {
            return null;
        }
        return m5547a.getBiddingToken(requestMetadata);
    }

    public static Boolean getCoppa() {
        return (Boolean) Configuration.get(DOMAIN, VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, Boolean.class, null);
    }

    public static int getLogLevel() {
        return Logger.getLogLevel();
    }

    public static Set<Plugin> getRegisteredPlugins() {
        Collection<RegisteredPlugin> values = f61236e.values();
        HashSet hashSet = new HashSet(values.size());
        for (RegisteredPlugin registeredPlugin : values) {
            hashSet.add(registeredPlugin.f61258a);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    public static RequestMetadata getRequestMetadata() {
        return f61247p;
    }

    public static SDKInfo getSDKInfo() {
        return f61238g;
    }

    public static String getSiteId() {
        return f61249r;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00e9  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m5534h() {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.VASAds.m5534h():java.lang.String");
    }

    public static boolean initialize(final Application application, String str) {
        synchronized (VASAds.class) {
            try {
                if (f61248q) {
                    if (f61249r.equals(str)) {
                        f61233b.m5559w("Verizon Ads SDK already initialized");
                        return true;
                    }
                    f61233b.m5565e("Attempt to reinitialize the Verizon Ads SDK with a new site ID.");
                    return false;
                } else if (str == null) {
                    f61233b.m5565e("The site ID cannot be null");
                    return false;
                } else {
                    Logger logger = f61233b;
                    logger.m5567d("Initializing Verizon Ads SDK");
                    try {
                        if (!Configuration.protectDomain(DOMAIN, "vas-core-key")) {
                            logger.m5565e("An error occurred while attempting to protect the core domain.");
                            return false;
                        }
                        f61248q = true;
                        f61249r = str;
                        f61252u = new WeakReference<>(application.getApplicationContext());
                        f61251t = new ActivityStateManager(application);
                        f61232a = new WeakReference<>(application);
                        ComponentRegistry.registerComponent("waterfallprovider/sideloading", new SideloadingWaterfallProvider.Factory());
                        ComponentRegistry.registerComponent("waterfallprovider/verizonssp", new VerizonSSPWaterfallProvider.Factory());
                        registerPlugin(new VerizonSSPConfigProviderPlugin(application), VerizonSSPConfigProvider.isConfigProviderEnabled());
                        f61245n = new VerizonSSPReporter(application);
                        Events.subscribe(new EventReceiver() { // from class: com.verizon.ads.VASAds.7
                            @Override // com.verizon.ads.events.EventReceiver
                            public final void onEvent$645b3fe5(Object obj) {
                                VASAds.m5546a((Configuration.ConfigurationChangeEvent) obj);
                            }
                        }, Configuration.CONFIGURATION_CHANGE_EVENT_ID);
                        m5548a(0, true);
                        Handler handler = f61241j;
                        handler.post(new Runnable() { // from class: com.verizon.ads.VASAds.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                EnvironmentInfo.m5580a(application.getApplicationContext());
                            }
                        });
                        handler.post(new Runnable() { // from class: com.verizon.ads.VASAds.4
                            @Override // java.lang.Runnable
                            public final void run() {
                                VASAds.m5538d();
                                VASAds.m5543a(this);
                            }
                        });
                        try {
                            C1276w.m43284a().getLifecycle().addObserver(f61244m);
                        } catch (Throwable th) {
                            f61233b.m5565e("An error occurred while attempting to add the application life cycle observer.");
                        }
                        return true;
                    } catch (Exception e) {
                        f61233b.m5564e("An exception occurred while attempting to protect the core domain.", e);
                        return false;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static boolean isAnonymous() {
        return Configuration.getBoolean(DOMAIN, ANONYMOUS_USER_KEY, true);
    }

    public static boolean isApplicationInBackground() {
        return f61244m.f61257a;
    }

    public static boolean isInitialized() {
        return f61248q;
    }

    public static boolean isLocationEnabled() {
        return Configuration.getBoolean(DOMAIN, LOCATION_ENABLED_KEY, true);
    }

    public static boolean isPluginEnabled(String str) {
        if (TextUtils.isEmpty(str)) {
            f61233b.m5565e("id cannot be null or empty.");
            return false;
        }
        RegisteredPlugin registeredPlugin = f61236e.get(str);
        if (registeredPlugin != null) {
            return registeredPlugin.f61259b;
        }
        if (!Logger.isLogLevelEnabled(3)) {
            return false;
        }
        f61233b.m5567d(String.format("No registered plugin with id = %s", str));
        return false;
    }

    public static boolean isShareAdvertiserIdEnabled() {
        return Configuration.getBoolean(DOMAIN, "shareAdvertiserId", false);
    }

    public static boolean isShareApplicationIdEnabled() {
        return Configuration.getBoolean(DOMAIN, "shareApplicationId", false);
    }

    public static void registerConfigurationProvider(String str, ConfigurationProvider configurationProvider) {
        if (TextUtils.isEmpty(str)) {
            f61233b.m5565e("The pluginId parameter cannot be null or empty.");
        } else if (configurationProvider == null) {
            f61233b.m5565e("The configurationProvider parameter cannot be null");
        } else {
            ConfigurationProviderRegistration configurationProviderRegistration = new ConfigurationProviderRegistration(str, configurationProvider);
            f61235d.add(configurationProviderRegistration);
            if (Logger.isLogLevelEnabled(3)) {
                f61233b.m5567d(String.format("Registered configuration provider <%s>", configurationProvider.getId()));
            }
            if (!isInitialized()) {
                return;
            }
            configurationProviderRegistration.update(f61234c);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean registerPlugin(com.verizon.ads.Plugin r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.VASAds.registerPlugin(com.verizon.ads.Plugin, boolean):boolean");
    }

    public static void requestAd(Context context, Bid bid, Class cls, int i, AdRequestListener adRequestListener) {
        if (context == null) {
            f61233b.m5565e("context cannot be null.");
        } else if (adRequestListener == null) {
            f61233b.m5565e("adRequestListener cannot be null.");
        } else if (!isInitialized()) {
            ErrorInfo errorInfo = new ErrorInfo(f61243l, "Verizon Ads SDK must be initialized before requesting ads.", -3);
            f61233b.m5565e(errorInfo.toString());
            adRequestListener.onAdReceived(null, errorInfo, true);
        } else if (!Configuration.getBoolean(DOMAIN, SDK_ENABLED_KEY, true)) {
            ErrorInfo errorInfo2 = new ErrorInfo(f61243l, "Verizon Ads SDK is disabled.", -3);
            f61233b.m5565e(errorInfo2.toString());
            adRequestListener.onAdReceived(null, errorInfo2, true);
        } else if (bid == null) {
            ErrorInfo errorInfo3 = new ErrorInfo(f61243l, "bid cannot be null", -3);
            f61233b.m5565e(errorInfo3.toString());
            adRequestListener.onAdReceived(null, errorInfo3, true);
        } else {
            Component component = ComponentRegistry.getComponent(bid.f61157a, context, null, null);
            if (component instanceof WaterfallProvider) {
                m5544a(cls, (WaterfallProvider) component, bid, null, i, adRequestListener);
            } else {
                adRequestListener.onAdReceived(null, new ErrorInfo(f61243l, "The waterfall provider factory is either not registered or did not provide a valid waterfall provider instance.", -1), true);
            }
        }
    }

    @Deprecated
    public static void requestAds(Context context, Class cls, RequestMetadata requestMetadata, int i, int i2, AdRequestListener adRequestListener) {
        requestAds(context, cls, requestMetadata, i2, adRequestListener);
    }

    public static void requestAds(Context context, Class cls, RequestMetadata requestMetadata, int i, AdRequestListener adRequestListener) {
        if (context == null) {
            f61233b.m5565e("context cannot be null.");
        } else if (adRequestListener == null) {
            f61233b.m5565e("adRequestListener cannot be null.");
        } else if (!isInitialized()) {
            ErrorInfo errorInfo = new ErrorInfo(f61243l, "Verizon Ads SDK must be initialized before requesting ads.", -3);
            f61233b.m5565e(errorInfo.toString());
            adRequestListener.onAdReceived(null, errorInfo, true);
        } else if (!Configuration.getBoolean(DOMAIN, SDK_ENABLED_KEY, true)) {
            ErrorInfo errorInfo2 = new ErrorInfo(f61243l, "Verizon Ads SDK is disabled.", -3);
            f61233b.m5565e(errorInfo2.toString());
            adRequestListener.onAdReceived(null, errorInfo2, true);
        } else if (!Configuration.getBoolean(DOMAIN, "enableBackgroundAdRequest", false) && isApplicationInBackground()) {
            ErrorInfo errorInfo3 = new ErrorInfo(f61243l, "Verizon Ads SDK cannot make an ad request when app is in background.", -4);
            f61233b.m5565e(errorInfo3.toString());
            adRequestListener.onAdReceived(null, errorInfo3, true);
        } else {
            WaterfallProvider m5547a = m5547a(context, requestMetadata);
            if (m5547a != null) {
                m5544a(cls, m5547a, null, requestMetadata, i, adRequestListener);
            } else {
                adRequestListener.onAdReceived(null, new ErrorInfo(f61243l, "The default waterfall provider factory is either not registered or did not provide a valid waterfall provider instance.", -1), true);
            }
        }
    }

    public static void requestBid(Context context, RequestMetadata requestMetadata, int i, final BidRequestListener bidRequestListener) {
        String str;
        Object obj;
        Object obj2;
        if (context == null) {
            f61233b.m5565e("context cannot be null.");
        } else if (bidRequestListener == null) {
            f61233b.m5565e("bidRequestListener cannot be null.");
        } else if (!isInitialized()) {
            ErrorInfo errorInfo = new ErrorInfo(f61243l, "Verizon Ads SDK must be initialized before requesting bids.", -3);
            f61233b.m5565e(errorInfo.toString());
            bidRequestListener.onComplete(null, errorInfo);
        } else if (!Configuration.getBoolean(DOMAIN, SDK_ENABLED_KEY, true)) {
            ErrorInfo errorInfo2 = new ErrorInfo(f61243l, "Verizon Ads SDK is disabled.", -3);
            f61233b.m5565e(errorInfo2.toString());
            bidRequestListener.onComplete(null, errorInfo2);
        } else {
            if (requestMetadata == null || requestMetadata.getPlacementData() == null || (obj2 = requestMetadata.getPlacementData().get("overrideWaterfallProvider")) == null) {
                str = null;
                obj = null;
            } else {
                str = obj2.toString();
                obj = ComponentRegistry.getComponent(str, context, null, null);
            }
            Object obj3 = obj;
            if (!(obj instanceof WaterfallProvider)) {
                str = Configuration.getString(DOMAIN, "defaultWaterfallProvider", null);
                if (str != null) {
                    obj3 = ComponentRegistry.getComponent(str, context, null, null);
                } else {
                    f61233b.m5565e("No default waterfall provider registered in Configuration.");
                    str = null;
                    obj3 = obj;
                }
            }
            if (!(obj3 instanceof WaterfallProvider)) {
                bidRequestListener.onComplete(null, new ErrorInfo(f61243l, "The default waterfall provider factory is either not registered or did not provide a valid waterfall provider instance.", -1));
                return;
            }
            final String str2 = str;
            ((WaterfallProvider) obj3).requestBid(requestMetadata, i, new BidRequestListener() { // from class: com.verizon.ads.VASAds.2
                @Override // com.verizon.ads.BidRequestListener
                public final void onComplete(Bid bid, ErrorInfo errorInfo3) {
                    if (bid != null) {
                        bid.f61157a = str2;
                    }
                    bidRequestListener.onComplete(bid, errorInfo3);
                }
            });
        }
    }

    public static void setCoppa(boolean z) {
        Configuration.setBoolean(z, DOMAIN, VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, "vas-core-key");
    }

    public static void setLocationEnabled(boolean z) {
        Configuration.setBoolean(z, DOMAIN, LOCATION_ENABLED_KEY, "vas-core-key");
    }

    public static void setLogLevel(int i) {
        Logger.m5568a(i);
    }

    public static void setPrivacyData(Map<String, Object> map) {
        Configuration.set(map, DOMAIN, USER_PRIVACY_DATA_KEY, "vas-core-key");
        m5539c();
    }

    public static void setRequestMetadata(RequestMetadata requestMetadata) {
        f61247p = requestMetadata;
    }

    public static void setShareAdvertiserIdEnabled(boolean z) {
        Configuration.setBoolean(z, DOMAIN, "shareAdvertiserId", "vas-core-key");
    }

    public static void setShareApplicationIdEnabled(boolean z) {
        Configuration.setBoolean(z, DOMAIN, "shareApplicationId", "vas-core-key");
    }
}

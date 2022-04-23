package com.verizon.ads;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.lifecycle.c;
import androidx.lifecycle.p;
import androidx.lifecycle.w;
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

    /* renamed from: a  reason: collision with root package name */
    static WeakReference<Application> f35328a;
    private static final HandlerThread h;
    private static final AdRequestHandler i;
    private static final Handler j;
    private static final Handler k;
    private static VerizonSSPReporter n;
    private static volatile RequestMetadata p;
    private static boolean q;
    private static String r;
    private static ActivityStateManager t;
    private static WeakReference<Context> u;

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f35329b = Logger.getInstance(VASAds.class);

    /* renamed from: c  reason: collision with root package name */
    private static final ConfigurationProvider.UpdateListener f35330c = new ConfigurationProvider.UpdateListener() { // from class: com.verizon.ads.VASAds.1
        @Override // com.verizon.ads.ConfigurationProvider.UpdateListener
        public final void onComplete(ConfigurationProvider configurationProvider, ErrorInfo errorInfo) {
            if (errorInfo != null) {
                VASAds.f35329b.e(String.format("An error occurred while updating configuration provider <%s>. Error Info: %s", configurationProvider.getId(), errorInfo));
            } else if (Logger.isLogLevelEnabled(3)) {
                VASAds.f35329b.d(String.format("Successfully updated configuration provider <%s>", configurationProvider.getId()));
            }
        }
    };
    private static final String l = VASAds.class.getName();
    private static final ApplicationLifeCycleObserver m = new ApplicationLifeCycleObserver();
    private static final AtomicBoolean o = new AtomicBoolean(false);
    private static ExecutorService s = Executors.newSingleThreadExecutor();

    /* renamed from: d  reason: collision with root package name */
    private static final List<ConfigurationProviderRegistration> f35331d = new CopyOnWriteArrayList();
    private static final List<AdAdapterRegistration> f = new CopyOnWriteArrayList();
    private static final Map<String, RegisteredPlugin> e = new ConcurrentHashMap();
    private static final SDKInfo g = new SDKInfo("2.5.0", BuildConfig.BUILD_HASH, "release", "1", BuildConfig.BUILD_TIME);

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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/VASAds$ApplicationLifeCycleObserver.class */
    public static final class ApplicationLifeCycleObserver implements c {

        /* renamed from: a  reason: collision with root package name */
        volatile boolean f35336a = false;

        ApplicationLifeCycleObserver() {
        }

        @Override // androidx.lifecycle.c, androidx.lifecycle.f
        public final void onStart(p pVar) {
            this.f35336a = false;
        }

        @Override // androidx.lifecycle.c, androidx.lifecycle.f
        public final void onStop(p pVar) {
            this.f35336a = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/VASAds$RegisteredPlugin.class */
    public static final class RegisteredPlugin {

        /* renamed from: a  reason: collision with root package name */
        final Plugin f35337a;

        /* renamed from: b  reason: collision with root package name */
        volatile boolean f35338b;

        private RegisteredPlugin(Plugin plugin) {
            this.f35337a = plugin;
        }
    }

    static {
        HandlerThread handlerThread = new HandlerThread("VASAdsCoreHandlerThread");
        h = handlerThread;
        handlerThread.start();
        i = new AdRequestHandler(handlerThread.getLooper());
        j = new Handler(handlerThread.getLooper());
        k = new Handler(handlerThread.getLooper());
    }

    static int a() {
        int i2 = Configuration.getInt(DOMAIN, "locationRequiresConsentTtl", 86400000);
        if (Logger.isLogLevelEnabled(3)) {
            f35329b.d(String.format("Configuration location requires consent ttl: %d", Integer.valueOf(i2)));
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AdAdapter a(Class cls, AdContent adContent) {
        Class<? extends AdAdapter> cls2;
        Iterator<AdAdapterRegistration> it2 = f.iterator();
        while (true) {
            if (!it2.hasNext()) {
                cls2 = null;
                break;
            }
            AdAdapterRegistration next = it2.next();
            if (isPluginEnabled(next.f35244a) && cls != null && adContent != null && next.f35246c != null && cls == next.f35245b && next.f35246c.accepts(adContent)) {
                cls2 = next.f35247d;
                break;
            }
        }
        if (cls2 == null) {
            return null;
        }
        try {
            return (AdAdapter) cls2.newInstance();
        } catch (Throwable th) {
            f35329b.e(String.format("Unable to instantiate AdAdapter class: %s", cls2.getName()), th);
            return null;
        }
    }

    private static WaterfallProvider a(Context context, RequestMetadata requestMetadata) {
        Object obj;
        if (context == null) {
            f35329b.e("context cannot be null.");
            return null;
        }
        Component component = (requestMetadata == null || requestMetadata.getPlacementData() == null || (obj = requestMetadata.getPlacementData().get("overrideWaterfallProvider")) == null) ? null : ComponentRegistry.getComponent(obj.toString(), context, null, null);
        Component component2 = component;
        if (!(component instanceof WaterfallProvider)) {
            String string = Configuration.getString(DOMAIN, "defaultWaterfallProvider", null);
            if (string != null) {
                component2 = ComponentRegistry.getComponent(string, context, null, null);
            } else {
                f35329b.e("No default waterfall provider registered in Configuration.");
                component2 = component;
            }
        }
        if (component2 instanceof WaterfallProvider) {
            return (WaterfallProvider) component2;
        }
        return null;
    }

    static void a(int i2, boolean z) {
        Handler handler = k;
        handler.removeCallbacks(null);
        if (z) {
            handler.postDelayed(new Runnable() { // from class: com.verizon.ads.VASAds.5
                @Override // java.lang.Runnable
                public final void run() {
                    VASAds.a(true);
                }
            }, i2);
        } else {
            a(false);
        }
    }

    static void a(Configuration.ConfigurationChangeEvent configurationChangeEvent) {
        if (!DOMAIN.equals(configurationChangeEvent.domain)) {
            return;
        }
        if ("geoIpCheckUrl".equals(configurationChangeEvent.key) || "locationRequiresConsentTtl".equals(configurationChangeEvent.key)) {
            a(5000, true);
        }
    }

    private static void a(Class cls, WaterfallProvider waterfallProvider, Bid bid, RequestMetadata requestMetadata, int i2, AdRequestListener adRequestListener) {
        if (adRequestListener == null) {
            f35329b.e("adRequestListener cannot be null.");
        } else if (cls == null) {
            ErrorInfo errorInfo = new ErrorInfo(l, "adRequesterClass cannot be null", -3);
            f35329b.e(errorInfo.toString());
            adRequestListener.onAdReceived(null, errorInfo, true);
        } else if (waterfallProvider == null) {
            ErrorInfo errorInfo2 = new ErrorInfo(l, "waterfallProvider cannot be null", -3);
            f35329b.e(errorInfo2.toString());
            adRequestListener.onAdReceived(null, errorInfo2, true);
        } else if (i2 <= 0) {
            ErrorInfo errorInfo3 = new ErrorInfo(l, "timeout must be greater than zero", -3);
            f35329b.e(errorInfo3.toString());
            adRequestListener.onAdReceived(null, errorInfo3, true);
        } else {
            if (requestMetadata == null) {
                requestMetadata = getRequestMetadata();
            }
            i.a(new AdRequest(waterfallProvider, bid, requestMetadata, cls, i2, adRequestListener));
        }
    }

    static void a(Runnable runnable) {
        j.postDelayed(runnable, Configuration.getInt(DOMAIN, "configurationProviderRefreshInterval", 86400000));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, Class cls, Class<? extends AdAdapter> cls2, ContentFilter contentFilter) {
        if (TextUtils.isEmpty(str)) {
            f35329b.e("The pluginId parameter cannot be null or empty.");
        } else if (cls == null) {
            f35329b.e("The adRequesterClass parameter cannot be null.");
        } else if (cls2 == null) {
            f35329b.e("The adAdapter parameter cannot be null.");
        } else if (contentFilter == null) {
            f35329b.e("The contentFilter parameter cannot be null.");
        } else {
            f.add(0, new AdAdapterRegistration(str, cls, cls2, contentFilter));
        }
    }

    static void a(final boolean z) {
        Runnable runnable = new Runnable() { // from class: com.verizon.ads.VASAds.6
            @Override // java.lang.Runnable
            public final void run() {
                if (!VASAds.o.compareAndSet(false, true)) {
                    VASAds.f35329b.d("Location request already in progress");
                    return;
                }
                String h2 = VASAds.h();
                if (h2 != null) {
                    try {
                        boolean z2 = new JSONObject(h2).getBoolean("result");
                        if (Logger.isLogLevelEnabled(3)) {
                            VASAds.f35329b.d(String.format("Location requires consent = %b", Boolean.valueOf(z2)));
                        }
                        Configuration.set(Boolean.valueOf(z2), VASAds.DOMAIN, VASAds.LOCATION_REQUIRES_CONSENT_KEY, "vas-core-key");
                        VASAds.c();
                    } catch (JSONException e2) {
                        VASAds.f35329b.e("An exception occurred parsing response from privacy server", e2);
                    }
                }
                VASAds.o.set(false);
                VASAds.a(VASAds.a(), z);
            }
        };
        if (z) {
            s.execute(runnable);
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Context b() {
        WeakReference<Context> weakReference = u;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    static void c() {
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

    static void d() {
        for (ConfigurationProviderRegistration configurationProviderRegistration : f35331d) {
            configurationProviderRegistration.update(f35330c);
        }
    }

    public static void disablePlugin(String str) {
        if (TextUtils.isEmpty(str)) {
            f35329b.e("id cannot be null or empty.");
            return;
        }
        RegisteredPlugin registeredPlugin = e.get(str);
        if (registeredPlugin == null) {
            f35329b.e(String.format("No registered plugin exists with id = %s", str));
        } else if (!registeredPlugin.f35338b) {
            f35329b.i(String.format("Plugin with id = %s is already disabled", str));
        } else {
            if (Logger.isLogLevelEnabled(3)) {
                f35329b.d(String.format("Disabling plugin %s", registeredPlugin.f35337a));
            }
            registeredPlugin.f35338b = false;
            registeredPlugin.f35337a.onPluginDisabled();
        }
    }

    public static void enablePlugin(String str) {
        if (TextUtils.isEmpty(str)) {
            f35329b.e("id cannot be null or empty.");
            return;
        }
        RegisteredPlugin registeredPlugin = e.get(str);
        if (registeredPlugin == null) {
            f35329b.e(String.format("No registered plugin exists with id = %s", str));
        } else if (registeredPlugin.f35338b) {
            f35329b.i(String.format("Plugin with id = %s is already enabled", str));
        } else {
            if (Logger.isLogLevelEnabled(3)) {
                f35329b.d(String.format("Enabling plugin %s", registeredPlugin.f35337a));
            }
            registeredPlugin.f35338b = true;
            registeredPlugin.f35337a.onPluginEnabled();
        }
    }

    public static ActivityStateManager getActivityStateManager() {
        return t;
    }

    public static String getBiddingToken(Context context, RequestMetadata requestMetadata) {
        WaterfallProvider a2 = a(context, requestMetadata);
        if (a2 == null) {
            return null;
        }
        return a2.getBiddingToken(requestMetadata);
    }

    public static Boolean getCoppa() {
        return (Boolean) Configuration.get(DOMAIN, VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, Boolean.class, null);
    }

    public static int getLogLevel() {
        return Logger.getLogLevel();
    }

    public static Set<Plugin> getRegisteredPlugins() {
        Collection<RegisteredPlugin> values = e.values();
        HashSet hashSet = new HashSet(values.size());
        for (RegisteredPlugin registeredPlugin : values) {
            hashSet.add(registeredPlugin.f35337a);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    public static RequestMetadata getRequestMetadata() {
        return p;
    }

    public static SDKInfo getSDKInfo() {
        return g;
    }

    public static String getSiteId() {
        return r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String h() {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.VASAds.h():java.lang.String");
    }

    public static boolean initialize(final Application application, String str) {
        synchronized (VASAds.class) {
            try {
                if (q) {
                    if (r.equals(str)) {
                        f35329b.w("Verizon Ads SDK already initialized");
                        return true;
                    }
                    f35329b.e("Attempt to reinitialize the Verizon Ads SDK with a new site ID.");
                    return false;
                } else if (str == null) {
                    f35329b.e("The site ID cannot be null");
                    return false;
                } else {
                    Logger logger = f35329b;
                    logger.d("Initializing Verizon Ads SDK");
                    try {
                        if (Configuration.protectDomain(DOMAIN, "vas-core-key")) {
                            q = true;
                            r = str;
                            u = new WeakReference<>(application.getApplicationContext());
                            t = new ActivityStateManager(application);
                            f35328a = new WeakReference<>(application);
                            ComponentRegistry.registerComponent("waterfallprovider/sideloading", new SideloadingWaterfallProvider.Factory());
                            ComponentRegistry.registerComponent("waterfallprovider/verizonssp", new VerizonSSPWaterfallProvider.Factory());
                            registerPlugin(new VerizonSSPConfigProviderPlugin(application), VerizonSSPConfigProvider.isConfigProviderEnabled());
                            n = new VerizonSSPReporter(application);
                            Events.subscribe(new EventReceiver() { // from class: com.verizon.ads.VASAds.7
                                @Override // com.verizon.ads.events.EventReceiver
                                public final void onEvent$645b3fe5(Object obj) {
                                    VASAds.a((Configuration.ConfigurationChangeEvent) obj);
                                }
                            }, Configuration.CONFIGURATION_CHANGE_EVENT_ID);
                            a(0, true);
                            Handler handler = j;
                            handler.post(new Runnable() { // from class: com.verizon.ads.VASAds.3
                                @Override // java.lang.Runnable
                                public final void run() {
                                    EnvironmentInfo.a(application.getApplicationContext());
                                }
                            });
                            handler.post(new Runnable() { // from class: com.verizon.ads.VASAds.4
                                @Override // java.lang.Runnable
                                public final void run() {
                                    VASAds.d();
                                    VASAds.a(this);
                                }
                            });
                            try {
                                w.a().getLifecycle().addObserver(m);
                            } catch (Throwable th) {
                                f35329b.e("An error occurred while attempting to add the application life cycle observer.");
                            }
                            return true;
                        }
                        logger.e("An error occurred while attempting to protect the core domain.");
                        return false;
                    } catch (Exception e2) {
                        f35329b.e("An exception occurred while attempting to protect the core domain.", e2);
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
        return m.f35336a;
    }

    public static boolean isInitialized() {
        return q;
    }

    public static boolean isLocationEnabled() {
        return Configuration.getBoolean(DOMAIN, LOCATION_ENABLED_KEY, true);
    }

    public static boolean isPluginEnabled(String str) {
        if (TextUtils.isEmpty(str)) {
            f35329b.e("id cannot be null or empty.");
            return false;
        }
        RegisteredPlugin registeredPlugin = e.get(str);
        if (registeredPlugin != null) {
            return registeredPlugin.f35338b;
        }
        if (!Logger.isLogLevelEnabled(3)) {
            return false;
        }
        f35329b.d(String.format("No registered plugin with id = %s", str));
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
            f35329b.e("The pluginId parameter cannot be null or empty.");
        } else if (configurationProvider == null) {
            f35329b.e("The configurationProvider parameter cannot be null");
        } else {
            ConfigurationProviderRegistration configurationProviderRegistration = new ConfigurationProviderRegistration(str, configurationProvider);
            f35331d.add(configurationProviderRegistration);
            if (Logger.isLogLevelEnabled(3)) {
                f35329b.d(String.format("Registered configuration provider <%s>", configurationProvider.getId()));
            }
            if (isInitialized()) {
                configurationProviderRegistration.update(f35330c);
            }
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

    public static void requestAd(Context context, Bid bid, Class cls, int i2, AdRequestListener adRequestListener) {
        if (context == null) {
            f35329b.e("context cannot be null.");
        } else if (adRequestListener == null) {
            f35329b.e("adRequestListener cannot be null.");
        } else if (!isInitialized()) {
            ErrorInfo errorInfo = new ErrorInfo(l, "Verizon Ads SDK must be initialized before requesting ads.", -3);
            f35329b.e(errorInfo.toString());
            adRequestListener.onAdReceived(null, errorInfo, true);
        } else if (!Configuration.getBoolean(DOMAIN, SDK_ENABLED_KEY, true)) {
            ErrorInfo errorInfo2 = new ErrorInfo(l, "Verizon Ads SDK is disabled.", -3);
            f35329b.e(errorInfo2.toString());
            adRequestListener.onAdReceived(null, errorInfo2, true);
        } else if (bid == null) {
            ErrorInfo errorInfo3 = new ErrorInfo(l, "bid cannot be null", -3);
            f35329b.e(errorInfo3.toString());
            adRequestListener.onAdReceived(null, errorInfo3, true);
        } else {
            Component component = ComponentRegistry.getComponent(bid.f35269a, context, null, null);
            if (component instanceof WaterfallProvider) {
                a(cls, (WaterfallProvider) component, bid, null, i2, adRequestListener);
            } else {
                adRequestListener.onAdReceived(null, new ErrorInfo(l, "The waterfall provider factory is either not registered or did not provide a valid waterfall provider instance.", -1), true);
            }
        }
    }

    @Deprecated
    public static void requestAds(Context context, Class cls, RequestMetadata requestMetadata, int i2, int i3, AdRequestListener adRequestListener) {
        requestAds(context, cls, requestMetadata, i3, adRequestListener);
    }

    public static void requestAds(Context context, Class cls, RequestMetadata requestMetadata, int i2, AdRequestListener adRequestListener) {
        if (context == null) {
            f35329b.e("context cannot be null.");
        } else if (adRequestListener == null) {
            f35329b.e("adRequestListener cannot be null.");
        } else if (!isInitialized()) {
            ErrorInfo errorInfo = new ErrorInfo(l, "Verizon Ads SDK must be initialized before requesting ads.", -3);
            f35329b.e(errorInfo.toString());
            adRequestListener.onAdReceived(null, errorInfo, true);
        } else if (!Configuration.getBoolean(DOMAIN, SDK_ENABLED_KEY, true)) {
            ErrorInfo errorInfo2 = new ErrorInfo(l, "Verizon Ads SDK is disabled.", -3);
            f35329b.e(errorInfo2.toString());
            adRequestListener.onAdReceived(null, errorInfo2, true);
        } else if (Configuration.getBoolean(DOMAIN, "enableBackgroundAdRequest", false) || !isApplicationInBackground()) {
            WaterfallProvider a2 = a(context, requestMetadata);
            if (a2 != null) {
                a(cls, a2, null, requestMetadata, i2, adRequestListener);
            } else {
                adRequestListener.onAdReceived(null, new ErrorInfo(l, "The default waterfall provider factory is either not registered or did not provide a valid waterfall provider instance.", -1), true);
            }
        } else {
            ErrorInfo errorInfo3 = new ErrorInfo(l, "Verizon Ads SDK cannot make an ad request when app is in background.", -4);
            f35329b.e(errorInfo3.toString());
            adRequestListener.onAdReceived(null, errorInfo3, true);
        }
    }

    public static void requestBid(Context context, RequestMetadata requestMetadata, int i2, final BidRequestListener bidRequestListener) {
        final String str;
        Component component;
        Object obj;
        if (context == null) {
            f35329b.e("context cannot be null.");
        } else if (bidRequestListener == null) {
            f35329b.e("bidRequestListener cannot be null.");
        } else if (!isInitialized()) {
            ErrorInfo errorInfo = new ErrorInfo(l, "Verizon Ads SDK must be initialized before requesting bids.", -3);
            f35329b.e(errorInfo.toString());
            bidRequestListener.onComplete(null, errorInfo);
        } else if (!Configuration.getBoolean(DOMAIN, SDK_ENABLED_KEY, true)) {
            ErrorInfo errorInfo2 = new ErrorInfo(l, "Verizon Ads SDK is disabled.", -3);
            f35329b.e(errorInfo2.toString());
            bidRequestListener.onComplete(null, errorInfo2);
        } else {
            if (requestMetadata == null || requestMetadata.getPlacementData() == null || (obj = requestMetadata.getPlacementData().get("overrideWaterfallProvider")) == null) {
                str = null;
                component = null;
            } else {
                str = obj.toString();
                component = ComponentRegistry.getComponent(str, context, null, null);
            }
            Component component2 = component;
            if (!(component instanceof WaterfallProvider)) {
                str = Configuration.getString(DOMAIN, "defaultWaterfallProvider", null);
                if (str != null) {
                    component2 = ComponentRegistry.getComponent(str, context, null, null);
                } else {
                    f35329b.e("No default waterfall provider registered in Configuration.");
                    str = null;
                    component2 = component;
                }
            }
            if (component2 instanceof WaterfallProvider) {
                ((WaterfallProvider) component2).requestBid(requestMetadata, i2, new BidRequestListener() { // from class: com.verizon.ads.VASAds.2
                    @Override // com.verizon.ads.BidRequestListener
                    public final void onComplete(Bid bid, ErrorInfo errorInfo3) {
                        if (bid != null) {
                            bid.f35269a = str;
                        }
                        bidRequestListener.onComplete(bid, errorInfo3);
                    }
                });
            } else {
                bidRequestListener.onComplete(null, new ErrorInfo(l, "The default waterfall provider factory is either not registered or did not provide a valid waterfall provider instance.", -1));
            }
        }
    }

    public static void setCoppa(boolean z) {
        Configuration.setBoolean(z, DOMAIN, VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, "vas-core-key");
    }

    public static void setLocationEnabled(boolean z) {
        Configuration.setBoolean(z, DOMAIN, LOCATION_ENABLED_KEY, "vas-core-key");
    }

    public static void setLogLevel(int i2) {
        Logger.a(i2);
    }

    public static void setPrivacyData(Map<String, Object> map) {
        Configuration.set(map, DOMAIN, USER_PRIVACY_DATA_KEY, "vas-core-key");
        c();
    }

    public static void setRequestMetadata(RequestMetadata requestMetadata) {
        p = requestMetadata;
    }

    public static void setShareAdvertiserIdEnabled(boolean z) {
        Configuration.setBoolean(z, DOMAIN, "shareAdvertiserId", "vas-core-key");
    }

    public static void setShareApplicationIdEnabled(boolean z) {
        Configuration.setBoolean(z, DOMAIN, "shareApplicationId", "vas-core-key");
    }
}

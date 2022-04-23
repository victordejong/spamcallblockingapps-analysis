package io.bidmachine;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import io.bidmachine.AdRequest;
import io.bidmachine.ApiRequest;
import io.bidmachine.core.AdvertisingIdClientInfo;
import io.bidmachine.core.Logger;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.core.Utils;
import io.bidmachine.f;
import io.bidmachine.protobuf.AdNetwork;
import io.bidmachine.protobuf.InitRequest;
import io.bidmachine.protobuf.InitResponse;
import io.bidmachine.utils.ActivityHelper;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.BluetoothUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/d.class */
public final class d {
    private static final String BID_MACHINE_SHARED_PREF = "BidMachinePref";
    private static final String DEF_AUCTION_URL = "https://api.appodealx.com/openrtb3/auction";
    private static final String PREF_IFV = "bid_machine_ifv";
    private static final String PREF_INIT_DATA = "initData";
    private static volatile d instance;
    Context appContext;
    ApiRequest<InitRequest, InitResponse> currentInitRequest;
    String ifv;
    private boolean isInitialized;
    private boolean isTestMode;
    private Publisher publisher;
    private String sellerId;
    private i sessionTracker;
    private WeakReference<Activity> weakTopActivity;
    static String DEF_INIT_URL = "https://api.appodealx.com/init";
    private static final long MIN_INIT_REQUEST_DELAY_MS = TimeUnit.SECONDS.toMillis(2);
    private static final long MAX_INIT_REQUEST_DELAY_MS = TimeUnit.SECONDS.toMillis(128);
    private TargetingParams targetingParams = new TargetingParams();
    private ExtraParams extraParams = new ExtraParams();
    private UserRestrictionParams userRestrictionParams = new UserRestrictionParams();
    private PriceFloorParams priceFloorParams = new PriceFloorParams().addPriceFloor(UUID.randomUUID().toString(), 0.01d);
    private final DeviceParams deviceParams = new DeviceParams();
    private final e iabSharedPreference = new e();
    String currentInitUrl = DEF_INIT_URL;
    String currentAuctionUrl = DEF_AUCTION_URL;
    private final Map<TrackEventType, List<String>> trackingEventTypes = new EnumMap(TrackEventType.class);
    private final List<NetworkConfig> initNetworkConfigList = new ArrayList();
    private long initRequestDelayMs = 0;
    private final Runnable rescheduleInitRunnable = new Runnable() { // from class: io.bidmachine.d.2
        @Override // java.lang.Runnable
        public final void run() {
            d dVar = d.this;
            dVar.requestInitData(dVar.appContext, d.this.sellerId, null);
        }
    };
    private final TrackingObject trackingObject = new TrackingObject() { // from class: io.bidmachine.d.3
        @Override // io.bidmachine.TrackingObject
        public final Object getTrackingKey() {
            return d.class.getSimpleName();
        }
    };
    private final List<AdRequest.AdRequestListener> adRequestListeners = new CopyOnWriteArrayList();

    static {
        Logger.setTag(BidMachine.NAME);
        Logger.setMessageBuilder(new Logger.LoggerMessageBuilder() { // from class: io.bidmachine.d.1
            @Override // io.bidmachine.core.Logger.LoggerMessageBuilder
            public final String buildMessage(String str) {
                String str2 = str;
                if (d.get().isTestMode()) {
                    str2 = "(TEST MODE) ".concat(String.valueOf(str));
                }
                return str2;
            }
        });
    }

    d() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d get() {
        if (instance == null) {
            synchronized (d.class) {
                try {
                    if (instance == null) {
                        instance = new d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InitResponse getInitResponseFromPref(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(BID_MACHINE_SHARED_PREF, 0);
        if (!sharedPreferences.contains(PREF_INIT_DATA)) {
            return null;
        }
        try {
            return InitResponse.parseFrom(Base64.decode(sharedPreferences.getString(PREF_INIT_DATA, null), 0));
        } catch (Exception e) {
            sharedPreferences.edit().remove(PREF_INIT_DATA).apply();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleInitResponse(Context context, InitResponse initResponse) {
        if (!TextUtils.isEmpty(initResponse.getEndpoint())) {
            this.currentAuctionUrl = initResponse.getEndpoint();
        }
        this.trackingEventTypes.clear();
        g.prepareEvents(this.trackingEventTypes, initResponse.getEventList());
        SessionManager.get().setSessionResetAfter(initResponse.getSessionResetAfter());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initializeNetworks(Context context, List<AdNetwork> list) {
        NetworkConfig create;
        if (!f.isNetworksInitialized()) {
            TargetingParams targetingParams = getTargetingParams();
            UserRestrictionParams userRestrictionParams = getUserRestrictionParams();
            if (list != null) {
                for (AdNetwork adNetwork : list) {
                    if (!f.isNetworkRegistered(adNetwork.getName()) && (create = NetworkConfig.create(context, adNetwork.getName(), adNetwork.getCustomParamsMap())) != null) {
                        for (AdNetwork.AdUnit adUnit : adNetwork.getAdUnitsList()) {
                            AdsFormat byRemoteName = AdsFormat.byRemoteName(adUnit.getAdFormat());
                            if (byRemoteName != null) {
                                create.withMediationConfig(byRemoteName, adUnit.getCustomParamsMap());
                            }
                        }
                        create.setRegisterSource(h.Init);
                        f.registerNetwork(create);
                        this.initNetworkConfigList.add(create);
                    }
                }
            }
            f.initializeNetworks(new k(context), new l(targetingParams, userRestrictionParams), new f.b() { // from class: io.bidmachine.d.7
                @Override // io.bidmachine.f.b
                public final void onNetworksInitialized() {
                    b.get().enable();
                }
            });
        }
    }

    private void loadStoredInitResponse(Context context) {
        InitResponse initResponseFromPref = getInitResponseFromPref(context);
        if (initResponseFromPref != null) {
            handleInitResponse(context, initResponseFromPref);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyInitializationFinished(final InitializationCallback initializationCallback) {
        if (initializationCallback != null) {
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.d.6
                @Override // java.lang.Runnable
                public final void run() {
                    initializationCallback.onInitialized();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestInitData(final Context context, final String str, final InitializationCallback initializationCallback) {
        if (this.currentInitRequest == null) {
            BidMachineEvents.eventStart(this.trackingObject, TrackEventType.InitLoading, null);
            Utils.onBackgroundThread(new Runnable() { // from class: io.bidmachine.d.5
                @Override // java.lang.Runnable
                public final void run() {
                    d.this.currentInitRequest = new ApiRequest.Builder().url(d.this.currentInitUrl).setDataBinder(new ApiRequest.ApiInitDataBinder()).setRequestData(g.obtainInitRequest(context, str, d.this.targetingParams, d.this.userRestrictionParams)).setCallback(new NetworkRequest.Callback<InitResponse, BMError>() { // from class: io.bidmachine.d.5.1
                        public final void onFail(BMError bMError) {
                            InitResponse initResponseFromPref;
                            d.this.currentInitRequest = null;
                            if (d.this.initRequestDelayMs <= 0) {
                                d.this.initRequestDelayMs = d.MIN_INIT_REQUEST_DELAY_MS;
                            } else {
                                d.this.initRequestDelayMs *= 2;
                                if (d.this.initRequestDelayMs >= d.MAX_INIT_REQUEST_DELAY_MS) {
                                    d.this.initRequestDelayMs = d.MAX_INIT_REQUEST_DELAY_MS;
                                }
                            }
                            if (!f.isNetworksInitialized() && (initResponseFromPref = d.this.getInitResponseFromPref(context)) != null) {
                                d.this.initializeNetworks(context, initResponseFromPref.getAdNetworksList());
                            }
                            Logger.log("reschedule init request (" + d.this.initRequestDelayMs + ")");
                            Utils.onBackgroundThread(d.this.rescheduleInitRunnable, d.this.initRequestDelayMs);
                            d.this.notifyInitializationFinished(initializationCallback);
                            BidMachineEvents.eventFinish(d.this.trackingObject, TrackEventType.InitLoading, null, bMError);
                        }

                        public final void onSuccess(InitResponse initResponse) {
                            d.this.currentInitRequest = null;
                            if (initResponse != null) {
                                d.this.handleInitResponse(context, initResponse);
                                d.this.storeInitResponse(context, initResponse);
                                d.this.initializeNetworks(context, initResponse.getAdNetworksList());
                            }
                            d.this.initRequestDelayMs = 0L;
                            Utils.cancelBackgroundThreadTask(d.this.rescheduleInitRunnable);
                            d.this.notifyInitializationFinished(initializationCallback);
                            BidMachineEvents.eventFinish(d.this.trackingObject, TrackEventType.InitLoading, null, null);
                        }
                    }).request();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void storeInitResponse(Context context, InitResponse initResponse) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(BID_MACHINE_SHARED_PREF, 0);
        try {
            sharedPreferences.edit().putString(PREF_INIT_DATA, Base64.encodeToString(initResponse.toByteArray(), 0)).apply();
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<AdRequest.AdRequestListener> getAdRequestListeners() {
        return this.adRequestListeners;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Context getAppContext() {
        return this.appContext;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String getAuctionUrl() {
        return this.currentAuctionUrl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final DeviceParams getDeviceParams() {
        return this.deviceParams;
    }

    final ExtraParams getExtraParams() {
        return this.extraParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final e getIabSharedPreference() {
        return this.iabSharedPreference;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<NetworkConfig> getInitNetworkConfigList() {
        return this.initNetworkConfigList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final PriceFloorParams getPriceFloorParams() {
        return this.priceFloorParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Publisher getPublisher() {
        return this.publisher;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String getSellerId() {
        return this.sellerId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final i getSessionTracker() {
        return this.sessionTracker;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final TargetingParams getTargetingParams() {
        return this.targetingParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Activity getTopActivity() {
        WeakReference<Activity> weakReference = this.weakTopActivity;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<String> getTrackingUrls(TrackEventType trackEventType) {
        return this.trackingEventTypes.get(trackEventType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final UserRestrictionParams getUserRestrictionParams() {
        return this.userRestrictionParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void initialize(final Context context, final String str, final InitializationCallback initializationCallback) {
        synchronized (this) {
            if (!this.isInitialized) {
                if (context == null) {
                    Logger.log("Initialization fail: Context is not provided");
                } else if (TextUtils.isEmpty(str)) {
                    Logger.log("Initialization fail: Seller id is not provided");
                } else {
                    this.sellerId = str;
                    this.appContext = context.getApplicationContext();
                    this.sessionTracker = new j();
                    loadStoredInitResponse(context);
                    this.iabSharedPreference.initialize(context);
                    AdvertisingIdClientInfo.executeTask(context, new AdvertisingIdClientInfo.Closure() { // from class: io.bidmachine.d.4
                        @Override // io.bidmachine.core.AdvertisingIdClientInfo.Closure
                        public final void executed(AdvertisingIdClientInfo.AdvertisingProfile advertisingProfile) {
                            c.setLimitAdTrackingEnabled(advertisingProfile.isLimitAdTrackingEnabled());
                            c.setDeviceAdvertisingId(advertisingProfile.getId());
                            d.this.requestInitData(context, str, initializationCallback);
                        }
                    });
                    setTopActivity(ActivityHelper.getTopActivity());
                    ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new a());
                    SessionManager.get().resume();
                    BluetoothUtils.register(context);
                    this.isInitialized = true;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isInitialized() {
        return this.isInitialized;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isTestMode() {
        return this.isTestMode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String obtainIFV(Context context) {
        if (!TextUtils.isEmpty(this.ifv)) {
            return this.ifv;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences(BID_MACHINE_SHARED_PREF, 0);
        String string = sharedPreferences.getString(PREF_IFV, null);
        this.ifv = string;
        if (!TextUtils.isEmpty(string)) {
            return this.ifv;
        }
        this.ifv = UUID.randomUUID().toString();
        sharedPreferences.edit().putString(PREF_IFV, this.ifv).apply();
        return this.ifv;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void registerAdRequestListener(AdRequest.AdRequestListener adRequestListener) {
        if (adRequestListener != null) {
            this.adRequestListeners.add(adRequestListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setEndpoint(String str) {
        if (this.isInitialized) {
            Logger.log("Can't change endpoint url after initialization");
        } else if (TextUtils.isEmpty(str)) {
            Logger.log("Endpoint is empty or null, skipping setting new endpoint...");
        } else {
            this.currentInitUrl = str + "/init";
            this.currentAuctionUrl = str + "/openrtb3/auction";
        }
    }

    final void setExtraParams(ExtraParams extraParams) {
        if (extraParams == null) {
            extraParams = new ExtraParams();
        }
        this.extraParams = extraParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setPublisher(Publisher publisher) {
        this.publisher = publisher;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setTargetingParams(TargetingParams targetingParams) {
        if (targetingParams == null) {
            targetingParams = new TargetingParams();
        }
        this.targetingParams = targetingParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setTestMode(boolean z) {
        this.isTestMode = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setTopActivity(Activity activity) {
        if (activity != null) {
            this.weakTopActivity = new WeakReference<>(activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void unregisterAdRequestListener(AdRequest.AdRequestListener adRequestListener) {
        if (adRequestListener != null) {
            this.adRequestListeners.remove(adRequestListener);
        }
    }
}

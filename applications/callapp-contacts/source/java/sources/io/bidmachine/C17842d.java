package io.bidmachine;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import io.bidmachine.AdRequest;
import io.bidmachine.ApiRequest;
import io.bidmachine.C17859f;
import io.bidmachine.core.AdvertisingIdClientInfo;
import io.bidmachine.core.Logger;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.core.Utils;
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
/* renamed from: io.bidmachine.d */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/d.class */
public final class C17842d {
    private static final String BID_MACHINE_SHARED_PREF = "BidMachinePref";
    private static final String DEF_AUCTION_URL = "https://api.appodealx.com/openrtb3/auction";
    private static final String PREF_IFV = "bid_machine_ifv";
    private static final String PREF_INIT_DATA = "initData";
    private static volatile C17842d instance;
    Context appContext;
    ApiRequest<InitRequest, InitResponse> currentInitRequest;
    String ifv;
    private boolean isInitialized;
    private boolean isTestMode;
    private Publisher publisher;
    private String sellerId;
    private AbstractC17874i sessionTracker;
    private WeakReference<Activity> weakTopActivity;
    static String DEF_INIT_URL = "https://api.appodealx.com/init";
    private static final long MIN_INIT_REQUEST_DELAY_MS = TimeUnit.SECONDS.toMillis(2);
    private static final long MAX_INIT_REQUEST_DELAY_MS = TimeUnit.SECONDS.toMillis(128);
    private TargetingParams targetingParams = new TargetingParams();
    private ExtraParams extraParams = new ExtraParams();
    private UserRestrictionParams userRestrictionParams = new UserRestrictionParams();
    private PriceFloorParams priceFloorParams = new PriceFloorParams().addPriceFloor(UUID.randomUUID().toString(), 0.01d);
    private final DeviceParams deviceParams = new DeviceParams();
    private final C17857e iabSharedPreference = new C17857e();
    String currentInitUrl = DEF_INIT_URL;
    String currentAuctionUrl = DEF_AUCTION_URL;
    private final Map<TrackEventType, List<String>> trackingEventTypes = new EnumMap(TrackEventType.class);
    private final List<NetworkConfig> initNetworkConfigList = new ArrayList();
    private long initRequestDelayMs = 0;
    private final Runnable rescheduleInitRunnable = new Runnable() { // from class: io.bidmachine.d.2
        @Override // java.lang.Runnable
        public final void run() {
            C17842d c17842d = C17842d.this;
            c17842d.requestInitData(c17842d.appContext, C17842d.this.sellerId, null);
        }
    };
    private final TrackingObject trackingObject = new TrackingObject() { // from class: io.bidmachine.d.3
        @Override // io.bidmachine.TrackingObject
        public final Object getTrackingKey() {
            return C17842d.class.getSimpleName();
        }
    };
    private final List<AdRequest.AdRequestListener> adRequestListeners = new CopyOnWriteArrayList();

    static {
        Logger.setTag(BidMachine.NAME);
        Logger.setMessageBuilder(new Logger.LoggerMessageBuilder() { // from class: io.bidmachine.d.1
            @Override // io.bidmachine.core.Logger.LoggerMessageBuilder
            public final String buildMessage(String str) {
                String str2 = str;
                if (C17842d.get().isTestMode()) {
                    str2 = "(TEST MODE) ".concat(String.valueOf(str));
                }
                return str2;
            }
        });
    }

    C17842d() {
    }

    public static C17842d get() {
        if (instance == null) {
            synchronized (C17842d.class) {
                try {
                    if (instance == null) {
                        instance = new C17842d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    public InitResponse getInitResponseFromPref(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(BID_MACHINE_SHARED_PREF, 0);
        if (sharedPreferences.contains(PREF_INIT_DATA)) {
            try {
                return InitResponse.parseFrom(Base64.decode(sharedPreferences.getString(PREF_INIT_DATA, null), 0));
            } catch (Exception e) {
                sharedPreferences.edit().remove(PREF_INIT_DATA).apply();
                return null;
            }
        }
        return null;
    }

    public void handleInitResponse(Context context, InitResponse initResponse) {
        if (!TextUtils.isEmpty(initResponse.getEndpoint())) {
            this.currentAuctionUrl = initResponse.getEndpoint();
        }
        this.trackingEventTypes.clear();
        C17869g.prepareEvents(this.trackingEventTypes, initResponse.getEventList());
        SessionManager.get().setSessionResetAfter(initResponse.getSessionResetAfter());
    }

    public void initializeNetworks(Context context, List<AdNetwork> list) {
        NetworkConfig create;
        if (C17859f.isNetworksInitialized()) {
            return;
        }
        TargetingParams targetingParams = getTargetingParams();
        UserRestrictionParams userRestrictionParams = getUserRestrictionParams();
        if (list != null) {
            for (AdNetwork adNetwork : list) {
                if (!C17859f.isNetworkRegistered(adNetwork.getName()) && (create = NetworkConfig.create(context, adNetwork.getName(), adNetwork.getCustomParamsMap())) != null) {
                    for (AdNetwork.AdUnit adUnit : adNetwork.getAdUnitsList()) {
                        AdsFormat byRemoteName = AdsFormat.byRemoteName(adUnit.getAdFormat());
                        if (byRemoteName != null) {
                            create.withMediationConfig(byRemoteName, adUnit.getCustomParamsMap());
                        }
                    }
                    create.setRegisterSource(EnumC17873h.Init);
                    C17859f.registerNetwork(create);
                    this.initNetworkConfigList.add(create);
                }
            }
        }
        C17859f.initializeNetworks(new C17881k(context), new C17882l(targetingParams, userRestrictionParams), new C17859f.AbstractC17868b() { // from class: io.bidmachine.d.7
            @Override // io.bidmachine.C17859f.AbstractC17868b
            public final void onNetworksInitialized() {
                C17820b.get().enable();
            }
        });
    }

    private void loadStoredInitResponse(Context context) {
        InitResponse initResponseFromPref = getInitResponseFromPref(context);
        if (initResponseFromPref != null) {
            handleInitResponse(context, initResponseFromPref);
        }
    }

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

    public void requestInitData(final Context context, final String str, final InitializationCallback initializationCallback) {
        if (this.currentInitRequest != null) {
            return;
        }
        BidMachineEvents.eventStart(this.trackingObject, TrackEventType.InitLoading, null);
        Utils.onBackgroundThread(new Runnable() { // from class: io.bidmachine.d.5
            @Override // java.lang.Runnable
            public final void run() {
                C17842d.this.currentInitRequest = new ApiRequest.Builder().url(C17842d.this.currentInitUrl).setDataBinder(new ApiRequest.ApiInitDataBinder()).setRequestData(C17869g.obtainInitRequest(context, str, C17842d.this.targetingParams, C17842d.this.userRestrictionParams)).setCallback(new NetworkRequest.Callback<InitResponse, BMError>() { // from class: io.bidmachine.d.5.1
                    public final void onFail(BMError bMError) {
                        InitResponse initResponseFromPref;
                        C17842d.this.currentInitRequest = null;
                        if (C17842d.this.initRequestDelayMs <= 0) {
                            C17842d.this.initRequestDelayMs = C17842d.MIN_INIT_REQUEST_DELAY_MS;
                        } else {
                            C17842d.this.initRequestDelayMs *= 2;
                            if (C17842d.this.initRequestDelayMs >= C17842d.MAX_INIT_REQUEST_DELAY_MS) {
                                C17842d.this.initRequestDelayMs = C17842d.MAX_INIT_REQUEST_DELAY_MS;
                            }
                        }
                        if (!C17859f.isNetworksInitialized() && (initResponseFromPref = C17842d.this.getInitResponseFromPref(context)) != null) {
                            C17842d.this.initializeNetworks(context, initResponseFromPref.getAdNetworksList());
                        }
                        Logger.log("reschedule init request (" + C17842d.this.initRequestDelayMs + ")");
                        Utils.onBackgroundThread(C17842d.this.rescheduleInitRunnable, C17842d.this.initRequestDelayMs);
                        C17842d.this.notifyInitializationFinished(initializationCallback);
                        BidMachineEvents.eventFinish(C17842d.this.trackingObject, TrackEventType.InitLoading, null, bMError);
                    }

                    public final void onSuccess(InitResponse initResponse) {
                        C17842d.this.currentInitRequest = null;
                        if (initResponse != null) {
                            C17842d.this.handleInitResponse(context, initResponse);
                            C17842d.this.storeInitResponse(context, initResponse);
                            C17842d.this.initializeNetworks(context, initResponse.getAdNetworksList());
                        }
                        C17842d.this.initRequestDelayMs = 0L;
                        Utils.cancelBackgroundThreadTask(C17842d.this.rescheduleInitRunnable);
                        C17842d.this.notifyInitializationFinished(initializationCallback);
                        BidMachineEvents.eventFinish(C17842d.this.trackingObject, TrackEventType.InitLoading, null, null);
                    }
                }).request();
            }
        });
    }

    public void storeInitResponse(Context context, InitResponse initResponse) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(BID_MACHINE_SHARED_PREF, 0);
        try {
            sharedPreferences.edit().putString(PREF_INIT_DATA, Base64.encodeToString(initResponse.toByteArray(), 0)).apply();
        } catch (Exception e) {
        }
    }

    public final List<AdRequest.AdRequestListener> getAdRequestListeners() {
        return this.adRequestListeners;
    }

    public final Context getAppContext() {
        return this.appContext;
    }

    public final String getAuctionUrl() {
        return this.currentAuctionUrl;
    }

    public final DeviceParams getDeviceParams() {
        return this.deviceParams;
    }

    final ExtraParams getExtraParams() {
        return this.extraParams;
    }

    public final C17857e getIabSharedPreference() {
        return this.iabSharedPreference;
    }

    public final List<NetworkConfig> getInitNetworkConfigList() {
        return this.initNetworkConfigList;
    }

    public final PriceFloorParams getPriceFloorParams() {
        return this.priceFloorParams;
    }

    public final Publisher getPublisher() {
        return this.publisher;
    }

    public final String getSellerId() {
        return this.sellerId;
    }

    public final AbstractC17874i getSessionTracker() {
        return this.sessionTracker;
    }

    public final TargetingParams getTargetingParams() {
        return this.targetingParams;
    }

    public final Activity getTopActivity() {
        WeakReference<Activity> weakReference = this.weakTopActivity;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public final List<String> getTrackingUrls(TrackEventType trackEventType) {
        return this.trackingEventTypes.get(trackEventType);
    }

    public final UserRestrictionParams getUserRestrictionParams() {
        return this.userRestrictionParams;
    }

    public final void initialize(final Context context, final String str, final InitializationCallback initializationCallback) {
        synchronized (this) {
            if (this.isInitialized) {
                return;
            }
            if (context == null) {
                Logger.log("Initialization fail: Context is not provided");
            } else if (TextUtils.isEmpty(str)) {
                Logger.log("Initialization fail: Seller id is not provided");
            } else {
                this.sellerId = str;
                this.appContext = context.getApplicationContext();
                this.sessionTracker = new C17879j();
                loadStoredInitResponse(context);
                this.iabSharedPreference.initialize(context);
                AdvertisingIdClientInfo.executeTask(context, new AdvertisingIdClientInfo.Closure() { // from class: io.bidmachine.d.4
                    @Override // io.bidmachine.core.AdvertisingIdClientInfo.Closure
                    public final void executed(AdvertisingIdClientInfo.AdvertisingProfile advertisingProfile) {
                        C17824c.setLimitAdTrackingEnabled(advertisingProfile.isLimitAdTrackingEnabled());
                        C17824c.setDeviceAdvertisingId(advertisingProfile.getId());
                        C17842d.this.requestInitData(context, str, initializationCallback);
                    }
                });
                setTopActivity(ActivityHelper.getTopActivity());
                ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new C17802a());
                SessionManager.get().resume();
                BluetoothUtils.register(context);
                this.isInitialized = true;
            }
        }
    }

    public final boolean isInitialized() {
        return this.isInitialized;
    }

    public final boolean isTestMode() {
        return this.isTestMode;
    }

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

    public final void registerAdRequestListener(AdRequest.AdRequestListener adRequestListener) {
        if (adRequestListener == null) {
            return;
        }
        this.adRequestListeners.add(adRequestListener);
    }

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

    public final void setPublisher(Publisher publisher) {
        this.publisher = publisher;
    }

    public final void setTargetingParams(TargetingParams targetingParams) {
        if (targetingParams == null) {
            targetingParams = new TargetingParams();
        }
        this.targetingParams = targetingParams;
    }

    public final void setTestMode(boolean z) {
        this.isTestMode = z;
    }

    public final void setTopActivity(Activity activity) {
        if (activity != null) {
            this.weakTopActivity = new WeakReference<>(activity);
        }
    }

    public final void unregisterAdRequestListener(AdRequest.AdRequestListener adRequestListener) {
        if (adRequestListener == null) {
            return;
        }
        this.adRequestListeners.remove(adRequestListener);
    }
}

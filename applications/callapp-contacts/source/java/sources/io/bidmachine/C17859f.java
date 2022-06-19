package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import io.bidmachine.ads.networks.mraid.MraidAdapter;
import io.bidmachine.ads.networks.nast.NastAdapter;
import io.bidmachine.ads.networks.vast.VastAdapter;
import io.bidmachine.core.Logger;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.utils.BMError;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONException;
/* renamed from: io.bidmachine.f */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/f.class */
public final class C17859f {
    static final String Mraid = "mraid";
    static final String Nast = "nast";
    static final String Vast = "vast";
    static final Map<String, NetworkConfig> cache = new ConcurrentHashMap();
    private static boolean isNetworksInitialized = false;
    static Set<NetworkConfig> pendingNetworks;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.f$a */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/f$a.class */
    public static final class RunnableC17865a implements Runnable {
        private static final Executor executor = Executors.newFixedThreadPool(Math.max(8, Runtime.getRuntime().availableProcessors() * 4));
        private final UnifiedAdRequestParams adRequestParams;
        private AbstractC17867a callback;
        private final ContextProvider contextProvider;
        private final NetworkConfig networkConfig;

        /* renamed from: io.bidmachine.f$a$a */
        /* loaded from: classes5-dex2jar.jar:io/bidmachine/f$a$a.class */
        public interface AbstractC17867a {
            void onNetworkLoadingFinished();
        }

        private RunnableC17865a(ContextProvider contextProvider, UnifiedAdRequestParams unifiedAdRequestParams, NetworkConfig networkConfig) {
            this.contextProvider = contextProvider;
            this.adRequestParams = unifiedAdRequestParams;
            this.networkConfig = networkConfig;
        }

        private void process() {
            String key = this.networkConfig.getKey();
            TrackingObject trackingObject = new TrackingObject() { // from class: io.bidmachine.f.a.1
                @Override // io.bidmachine.TrackingObject
                public final Object getTrackingKey() {
                    return RunnableC17865a.this.networkConfig.getKey() + "_initialize";
                }
            };
            Logger.log(String.format("Load network from config start: %s", key));
            try {
                BidMachineEvents.eventStart(trackingObject, TrackEventType.HeaderBiddingNetworkInitialize, new TrackEventInfo().withParameter("HB_NETWORK", key), null);
                NetworkAdapter obtainNetworkAdapter = this.networkConfig.obtainNetworkAdapter();
                obtainNetworkAdapter.setLogging(Logger.isLoggingEnabled());
                obtainNetworkAdapter.initialize(this.contextProvider, this.adRequestParams, this.networkConfig.getNetworkConfigParams());
                String key2 = this.networkConfig.getKey();
                if (!C17859f.cache.containsKey(key2)) {
                    C17859f.cache.put(key2, this.networkConfig);
                    C17859f.pendingNetworks.remove(this.networkConfig);
                }
                for (AdsType adsType : this.networkConfig.getSupportedAdsTypes()) {
                    adsType.addNetworkConfig(key2, this.networkConfig);
                }
                Logger.log(String.format("Load network from config finish: %s, %s, %s. Register source - %s", key, obtainNetworkAdapter.getVersion(), obtainNetworkAdapter.getAdapterVersion(), this.networkConfig.getRegisterSource()));
                if (obtainNetworkAdapter instanceof HeaderBiddingAdapter) {
                    BidMachineEvents.eventFinish(trackingObject, TrackEventType.HeaderBiddingNetworkInitialize, null, null);
                } else {
                    BidMachineEvents.clearEvent(trackingObject, TrackEventType.HeaderBiddingNetworkInitialize);
                }
            } catch (Throwable th) {
                Logger.log(String.format("Network (%s) load fail!", key));
                Logger.log(th);
                BidMachineEvents.eventFinish(trackingObject, TrackEventType.HeaderBiddingNetworkInitialize, null, BMError.Internal);
            }
        }

        final void execute() {
            executor.execute(this);
        }

        @Override // java.lang.Runnable
        public final void run() {
            process();
            AbstractC17867a abstractC17867a = this.callback;
            if (abstractC17867a != null) {
                abstractC17867a.onNetworkLoadingFinished();
            }
        }

        final RunnableC17865a withCallback(AbstractC17867a abstractC17867a) {
            this.callback = abstractC17867a;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.f$b */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/f$b.class */
    public interface AbstractC17868b {
        void onNetworksInitialized();
    }

    static {
        registerNetworks(new NetworkConfig(null) { // from class: io.bidmachine.f.1
            @Override // io.bidmachine.NetworkConfig
            protected final NetworkAdapter createNetworkAdapter() {
                return new MraidAdapter();
            }
        }, new NetworkConfig(null) { // from class: io.bidmachine.f.2
            @Override // io.bidmachine.NetworkConfig
            protected final NetworkAdapter createNetworkAdapter() {
                return new VastAdapter();
            }
        }, new NetworkConfig(null) { // from class: io.bidmachine.f.3
            @Override // io.bidmachine.NetworkConfig
            protected final NetworkAdapter createNetworkAdapter() {
                return new NastAdapter();
            }
        });
    }

    C17859f() {
    }

    static boolean checkRegisterSource(EnumC17873h enumC17873h, EnumC17873h enumC17873h2) {
        return enumC17873h2 == null || enumC17873h == enumC17873h2;
    }

    public static NetworkConfig getConfig(String str) {
        if (str == null) {
            return null;
        }
        return cache.get(str);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [io.bidmachine.f$4] */
    public static void initializeNetworks(final ContextProvider contextProvider, final UnifiedAdRequestParams unifiedAdRequestParams, final AbstractC17868b abstractC17868b) {
        if (isNetworksInitialized) {
            return;
        }
        isNetworksInitialized = true;
        new Thread() { // from class: io.bidmachine.f.4
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                super.run();
                ArrayList<RunnableC17865a> arrayList = new ArrayList();
                if (C17859f.pendingNetworks != null) {
                    for (NetworkConfig networkConfig : C17859f.pendingNetworks) {
                        arrayList.add(new RunnableC17865a(contextProvider, unifiedAdRequestParams, networkConfig));
                    }
                }
                if (arrayList.size() > 0) {
                    final CountDownLatch countDownLatch = new CountDownLatch(arrayList.size());
                    RunnableC17865a.AbstractC17867a abstractC17867a = new RunnableC17865a.AbstractC17867a() { // from class: io.bidmachine.f.4.1
                        @Override // io.bidmachine.C17859f.RunnableC17865a.AbstractC17867a
                        public final void onNetworkLoadingFinished() {
                            countDownLatch.countDown();
                        }
                    };
                    for (RunnableC17865a runnableC17865a : arrayList) {
                        runnableC17865a.withCallback(abstractC17867a).execute();
                    }
                    try {
                        countDownLatch.await();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                AbstractC17868b abstractC17868b2 = abstractC17868b;
                if (abstractC17868b2 != null) {
                    abstractC17868b2.onNetworksInitialized();
                }
            }
        }.start();
    }

    static boolean isNetworkConfigEquals(NetworkConfig networkConfig, String str, EnumC17873h enumC17873h) {
        return networkConfig != null && str.equals(networkConfig.getKey()) && checkRegisterSource(networkConfig.getRegisterSource(), enumC17873h);
    }

    public static boolean isNetworkInitialized(String str, EnumC17873h enumC17873h) {
        return isNetworkConfigEquals(getConfig(str), str, enumC17873h);
    }

    public static boolean isNetworkRegistered(String str) {
        return isNetworkRegistered(str, null);
    }

    static boolean isNetworkRegistered(String str, EnumC17873h enumC17873h) {
        try {
            Set<NetworkConfig> set = pendingNetworks;
            if (set != null) {
                Iterator<NetworkConfig> it2 = set.iterator();
                do {
                    if (it2.hasNext()) {
                    }
                } while (!isNetworkConfigEquals(it2.next(), str, enumC17873h));
                return true;
            }
            return isNetworkInitialized(str, enumC17873h);
        } catch (Throwable th) {
            return false;
        }
    }

    public static boolean isNetworksInitialized() {
        return isNetworksInitialized;
    }

    public static void registerNetwork(NetworkConfig networkConfig) {
        if (networkConfig == null) {
            return;
        }
        if (pendingNetworks == null) {
            pendingNetworks = new HashSet();
        }
        pendingNetworks.add(networkConfig);
    }

    public static void registerNetworks(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                NetworkConfig create = NetworkConfig.create(context, jSONArray.getJSONObject(i));
                if (create != null) {
                    registerNetwork(create);
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static void registerNetworks(NetworkConfig... networkConfigArr) {
        if (networkConfigArr == null || networkConfigArr.length <= 0) {
            return;
        }
        for (NetworkConfig networkConfig : networkConfigArr) {
            registerNetwork(networkConfig);
        }
    }

    public static void setLoggingEnabled(boolean z) {
        for (Map.Entry<String, NetworkConfig> entry : cache.entrySet()) {
            entry.getValue().obtainNetworkAdapter().setLogging(z);
        }
    }
}

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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/f.class */
public final class f {
    static final String Mraid = "mraid";
    static final String Nast = "nast";
    static final String Vast = "vast";
    static final Map<String, NetworkConfig> cache = new ConcurrentHashMap();
    private static boolean isNetworksInitialized = false;
    static Set<NetworkConfig> pendingNetworks;

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/f$a.class */
    static final class a implements Runnable {
        private static final Executor executor = Executors.newFixedThreadPool(Math.max(8, Runtime.getRuntime().availableProcessors() * 4));
        private final UnifiedAdRequestParams adRequestParams;
        private AbstractC0590a callback;
        private final ContextProvider contextProvider;
        private final NetworkConfig networkConfig;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.bidmachine.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:io/bidmachine/f$a$a.class */
        public interface AbstractC0590a {
            void onNetworkLoadingFinished();
        }

        private a(ContextProvider contextProvider, UnifiedAdRequestParams unifiedAdRequestParams, NetworkConfig networkConfig) {
            this.contextProvider = contextProvider;
            this.adRequestParams = unifiedAdRequestParams;
            this.networkConfig = networkConfig;
        }

        private void process() {
            String key = this.networkConfig.getKey();
            TrackingObject trackingObject = new TrackingObject() { // from class: io.bidmachine.f.a.1
                @Override // io.bidmachine.TrackingObject
                public final Object getTrackingKey() {
                    return a.this.networkConfig.getKey() + "_initialize";
                }
            };
            Logger.log(String.format("Load network from config start: %s", key));
            try {
                BidMachineEvents.eventStart(trackingObject, TrackEventType.HeaderBiddingNetworkInitialize, new TrackEventInfo().withParameter("HB_NETWORK", key), null);
                NetworkAdapter obtainNetworkAdapter = this.networkConfig.obtainNetworkAdapter();
                obtainNetworkAdapter.setLogging(Logger.isLoggingEnabled());
                obtainNetworkAdapter.initialize(this.contextProvider, this.adRequestParams, this.networkConfig.getNetworkConfigParams());
                String key2 = this.networkConfig.getKey();
                if (!f.cache.containsKey(key2)) {
                    f.cache.put(key2, this.networkConfig);
                    f.pendingNetworks.remove(this.networkConfig);
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
            AbstractC0590a aVar = this.callback;
            if (aVar != null) {
                aVar.onNetworkLoadingFinished();
            }
        }

        final a withCallback(AbstractC0590a aVar) {
            this.callback = aVar;
            return this;
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/f$b.class */
    interface b {
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

    f() {
    }

    static boolean checkRegisterSource(h hVar, h hVar2) {
        return hVar2 == null || hVar == hVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static NetworkConfig getConfig(String str) {
        if (str == null) {
            return null;
        }
        return cache.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r0v2, types: [io.bidmachine.f$4] */
    public static void initializeNetworks(final ContextProvider contextProvider, final UnifiedAdRequestParams unifiedAdRequestParams, final b bVar) {
        if (!isNetworksInitialized) {
            isNetworksInitialized = true;
            new Thread() { // from class: io.bidmachine.f.4
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    super.run();
                    ArrayList<a> arrayList = new ArrayList();
                    if (f.pendingNetworks != null) {
                        for (NetworkConfig networkConfig : f.pendingNetworks) {
                            arrayList.add(new a(ContextProvider.this, unifiedAdRequestParams, networkConfig));
                        }
                    }
                    if (arrayList.size() > 0) {
                        final CountDownLatch countDownLatch = new CountDownLatch(arrayList.size());
                        a.AbstractC0590a aVar = new a.AbstractC0590a() { // from class: io.bidmachine.f.4.1
                            @Override // io.bidmachine.f.a.AbstractC0590a
                            public final void onNetworkLoadingFinished() {
                                countDownLatch.countDown();
                            }
                        };
                        for (a aVar2 : arrayList) {
                            aVar2.withCallback(aVar).execute();
                        }
                        try {
                            countDownLatch.await();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                    b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.onNetworksInitialized();
                    }
                }
            }.start();
        }
    }

    static boolean isNetworkConfigEquals(NetworkConfig networkConfig, String str, h hVar) {
        return networkConfig != null && str.equals(networkConfig.getKey()) && checkRegisterSource(networkConfig.getRegisterSource(), hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isNetworkInitialized(String str, h hVar) {
        return isNetworkConfigEquals(getConfig(str), str, hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isNetworkRegistered(String str) {
        return isNetworkRegistered(str, null);
    }

    static boolean isNetworkRegistered(String str, h hVar) {
        try {
            Set<NetworkConfig> set = pendingNetworks;
            if (set != null) {
                Iterator<NetworkConfig> it2 = set.iterator();
                do {
                    if (it2.hasNext()) {
                    }
                } while (!isNetworkConfigEquals(it2.next(), str, hVar));
                return true;
            }
            return isNetworkInitialized(str, hVar);
        } catch (Throwable th) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isNetworksInitialized() {
        return isNetworksInitialized;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void registerNetwork(NetworkConfig networkConfig) {
        if (networkConfig != null) {
            if (pendingNetworks == null) {
                pendingNetworks = new HashSet();
            }
            pendingNetworks.add(networkConfig);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void registerNetworks(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
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
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void registerNetworks(NetworkConfig... networkConfigArr) {
        if (networkConfigArr != null && networkConfigArr.length > 0) {
            for (NetworkConfig networkConfig : networkConfigArr) {
                registerNetwork(networkConfig);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setLoggingEnabled(boolean z) {
        for (Map.Entry<String, NetworkConfig> entry : cache.entrySet()) {
            entry.getValue().obtainNetworkAdapter().setLogging(z);
        }
    }
}

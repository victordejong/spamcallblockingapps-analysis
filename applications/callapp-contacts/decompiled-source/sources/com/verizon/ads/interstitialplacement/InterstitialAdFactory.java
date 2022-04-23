package com.verizon.ads.interstitialplacement;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.mopub.common.AdType;
import com.verizon.ads.AdSession;
import com.verizon.ads.Bid;
import com.verizon.ads.BidRequestListener;
import com.verizon.ads.Configuration;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.RequestMetadata;
import com.verizon.ads.VASAds;
import com.verizon.ads.interstitialplacement.InterstitialAd;
import com.verizon.ads.interstitialplacement.InterstitialAdAdapter;
import com.verizon.ads.support.Cache;
import com.verizon.ads.support.SafeRunnable;
import com.verizon.ads.support.SimpleCache;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAdFactory.class */
public class InterstitialAdFactory {
    public static final int ERROR_AD_LOAD_IN_PROGRESS = -2;
    public static final int ERROR_NO_WATERFALL_PROVIDER = -1;

    /* renamed from: c  reason: collision with root package name */
    private static final HandlerThread f35467c;

    /* renamed from: a  reason: collision with root package name */
    final Cache<CachedAd> f35469a;
    private final String e;
    private final Context f;
    private final Handler g;
    private volatile InterstitialAdRequest i;
    private InterstitialAdFactoryListener k;
    private RequestMetadata l;

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f35466b = Logger.getInstance(InterstitialAdFactory.class);

    /* renamed from: d  reason: collision with root package name */
    private static final ExecutorService f35468d = Executors.newFixedThreadPool(1);
    private volatile boolean h = false;
    private volatile int j = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination.class */
    public enum AdDestination {
        CALLBACK,
        CACHE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage.class */
    public static class AdReceivedMessage {

        /* renamed from: a  reason: collision with root package name */
        final InterstitialAdRequest f35485a;

        /* renamed from: b  reason: collision with root package name */
        final AdSession f35486b;

        /* renamed from: c  reason: collision with root package name */
        final ErrorInfo f35487c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f35488d;

        AdReceivedMessage(InterstitialAdRequest interstitialAdRequest, AdSession adSession, ErrorInfo errorInfo, boolean z) {
            this.f35485a = interstitialAdRequest;
            this.f35486b = adSession;
            this.f35487c = errorInfo;
            this.f35488d = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAdFactory$CachedAd.class */
    public static class CachedAd {

        /* renamed from: a  reason: collision with root package name */
        final AdSession f35489a;

        /* renamed from: b  reason: collision with root package name */
        final long f35490b;

        CachedAd(AdSession adSession, long j) {
            this.f35489a = adSession;
            this.f35490b = j;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener.class */
    public interface InterstitialAdFactoryListener {
        void onError(InterstitialAdFactory interstitialAdFactory, ErrorInfo errorInfo);

        void onLoaded(InterstitialAdFactory interstitialAdFactory, InterstitialAd interstitialAd);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest.class */
    public static class InterstitialAdRequest {

        /* renamed from: a  reason: collision with root package name */
        boolean f35491a;

        /* renamed from: b  reason: collision with root package name */
        boolean f35492b;

        /* renamed from: c  reason: collision with root package name */
        Bid f35493c;

        /* renamed from: d  reason: collision with root package name */
        AdDestination f35494d;
        AdSession e;
        List<AdSession> f;
        InterstitialAd.InterstitialAdListener g;

        InterstitialAdRequest() {
            this.f = new ArrayList();
        }

        InterstitialAdRequest(InterstitialAd.InterstitialAdListener interstitialAdListener) {
            this(interstitialAdListener, null);
        }

        InterstitialAdRequest(InterstitialAd.InterstitialAdListener interstitialAdListener, Bid bid) {
            this.f = new ArrayList();
            this.f35493c = bid;
            this.g = interstitialAdListener;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAdFactory$ProcessNextAdSessionMessage.class */
    public static class ProcessNextAdSessionMessage {

        /* renamed from: a  reason: collision with root package name */
        final InterstitialAdRequest f35495a;

        ProcessNextAdSessionMessage(InterstitialAdRequest interstitialAdRequest) {
            this.f35495a = interstitialAdRequest;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAdFactory$SendToDestinationMessage.class */
    public static class SendToDestinationMessage {

        /* renamed from: a  reason: collision with root package name */
        final InterstitialAdRequest f35496a;

        /* renamed from: b  reason: collision with root package name */
        final ErrorInfo f35497b;

        /* renamed from: c  reason: collision with root package name */
        final AdSession f35498c;

        SendToDestinationMessage(InterstitialAdRequest interstitialAdRequest, AdSession adSession, ErrorInfo errorInfo) {
            this.f35496a = interstitialAdRequest;
            this.f35497b = errorInfo;
            this.f35498c = adSession;
        }
    }

    static {
        HandlerThread handlerThread = new HandlerThread(InterstitialAdFactory.class.getName());
        f35467c = handlerThread;
        handlerThread.start();
    }

    public InterstitialAdFactory(Context context, String str, InterstitialAdFactoryListener interstitialAdFactoryListener) {
        if (Logger.isLogLevelEnabled(3)) {
            f35466b.d(String.format("Creating interstitial ad factory for placement Id '%s'", str));
        }
        this.e = str;
        this.f = context;
        this.k = interstitialAdFactoryListener;
        this.f35469a = new SimpleCache();
        this.g = new Handler(f35467c.getLooper(), new Handler.Callback() { // from class: com.verizon.ads.interstitialplacement._$$Lambda$InterstitialAdFactory$HPgKr7n18ll5vPXIgRNpveXg_k8
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean a2;
                a2 = InterstitialAdFactory.this.a(message);
                return a2;
            }
        });
    }

    private static int a(int i, int i2) {
        return (i < 0 || i > 30) ? i2 : i;
    }

    static long a() {
        int i = Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "interstitialAdExpirationTimeout", 3600000);
        if (i > 0) {
            return System.currentTimeMillis() + i;
        }
        return 0L;
    }

    private static RequestMetadata a(RequestMetadata requestMetadata, String str) {
        if (requestMetadata == null) {
            requestMetadata = VASAds.getRequestMetadata();
        }
        if (str == null) {
            f35466b.w("Placement id cannot be null");
            return requestMetadata;
        }
        RequestMetadata.Builder builder = new RequestMetadata.Builder(requestMetadata);
        Map<String, Object> placementData = builder.getPlacementData();
        Map<String, Object> map = placementData;
        if (placementData == null) {
            map = new HashMap<>();
        }
        map.put("type", AdType.INTERSTITIAL);
        map.put("id", str);
        return builder.setPlacementData(map).build();
    }

    private void a(AdSession adSession, InterstitialAdRequest interstitialAdRequest) {
        if (interstitialAdRequest == null) {
            f35466b.e("InterstitialAdRequest cannot be null");
            return;
        }
        adSession.getAdAdapter();
        if (Logger.isLogLevelEnabled(3)) {
            f35466b.d(String.format("Ad loaded: %s", adSession));
        }
        final InterstitialAd interstitialAd = new InterstitialAd(this.e, adSession, interstitialAdRequest.g);
        final InterstitialAdFactoryListener interstitialAdFactoryListener = this.k;
        if (interstitialAdFactoryListener != null) {
            f35468d.execute(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAdFactory.6
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    interstitialAdFactoryListener.onLoaded(InterstitialAdFactory.this, interstitialAd);
                    final InterstitialAd interstitialAd2 = interstitialAd;
                    final long a2 = InterstitialAdFactory.a();
                    if (a2 != 0) {
                        InterstitialAd.f35446a.post(new Runnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.2
                            @Override // java.lang.Runnable
                            public void run() {
                                if (interstitialAd2.h != null) {
                                    InterstitialAd.f.e("Expiration timer already running");
                                } else if (!interstitialAd2.j) {
                                    long max = Math.max(a2 - System.currentTimeMillis(), 0L);
                                    if (Logger.isLogLevelEnabled(3)) {
                                        InterstitialAd.f.d(String.format("Ad for placementId: %s will expire in %d ms", interstitialAd2.k, Long.valueOf(max)));
                                    }
                                    interstitialAd2.h = new Runnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.2.1
                                        {
                                            AnonymousClass2.this = this;
                                        }

                                        @Override // java.lang.Runnable
                                        public void run() {
                                            InterstitialAd.d(interstitialAd2);
                                        }
                                    };
                                    InterstitialAd.f35446a.postDelayed(interstitialAd2.h, max);
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    static /* synthetic */ void a(final Bid bid, final BidRequestListener bidRequestListener) {
        if (Logger.isLogLevelEnabled(3)) {
            f35466b.d(String.format("Bid received: %s", bid));
        }
        if (bidRequestListener != null) {
            f35468d.execute(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAdFactory.4
                @Override // com.verizon.ads.support.SafeRunnable
                public final void safeRun() {
                    BidRequestListener.this.onComplete(bid, null);
                }
            });
        }
    }

    private void a(ErrorInfo errorInfo) {
        if (Logger.isLogLevelEnabled(3)) {
            f35466b.d(String.format("Error occurred loading ad for placementId: %s", this.e));
        }
        b(errorInfo);
    }

    static /* synthetic */ void a(final ErrorInfo errorInfo, final BidRequestListener bidRequestListener) {
        if (Logger.isLogLevelEnabled(3)) {
            f35466b.d(String.format("Error requesting bid: %s", errorInfo));
        }
        if (bidRequestListener != null) {
            f35468d.execute(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAdFactory.5
                @Override // com.verizon.ads.support.SafeRunnable
                public final void safeRun() {
                    BidRequestListener.this.onComplete(null, errorInfo);
                }
            });
        }
    }

    private void a(final InterstitialAdRequest interstitialAdRequest) {
        if (c(interstitialAdRequest)) {
            VASAds.requestAds(this.f, InterstitialAd.class, a(this.l, this.e), g(), new VASAds.AdRequestListener() { // from class: com.verizon.ads.interstitialplacement.InterstitialAdFactory.2
                @Override // com.verizon.ads.VASAds.AdRequestListener
                public void onAdReceived(AdSession adSession, ErrorInfo errorInfo, boolean z) {
                    interstitialAdRequest.f35491a = z;
                    InterstitialAdFactory.this.g.sendMessage(InterstitialAdFactory.this.g.obtainMessage(3, new AdReceivedMessage(interstitialAdRequest, adSession, errorInfo, z)));
                }

                @Override // com.verizon.ads.VASAds.AdRequestListener
                public /* synthetic */ void prepare(AdSession adSession) {
                    VASAds.AdRequestListener._CC.$default$prepare(this, adSession);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(InterstitialAdRequest interstitialAdRequest, AdSession adSession, ErrorInfo errorInfo) {
        Handler handler = this.g;
        handler.sendMessage(handler.obtainMessage(5, new SendToDestinationMessage(interstitialAdRequest, adSession, errorInfo)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(Message message) {
        switch (message.what) {
            case 1:
                InterstitialAdRequest interstitialAdRequest = (InterstitialAdRequest) message.obj;
                if (this.h) {
                    f35466b.e("Load Ad failed. Factory has been destroyed.");
                    return true;
                }
                AdSession e = e();
                interstitialAdRequest.f35494d = AdDestination.CALLBACK;
                if (e != null) {
                    a(e, interstitialAdRequest);
                    d();
                    return true;
                }
                a(interstitialAdRequest);
                return true;
            case 2:
                final InterstitialAdRequest interstitialAdRequest2 = (InterstitialAdRequest) message.obj;
                if (this.h) {
                    f35466b.e("Load Bid failed. Factory has been destroyed.");
                    return true;
                } else if (!c(interstitialAdRequest2)) {
                    return true;
                } else {
                    interstitialAdRequest2.f35494d = AdDestination.CALLBACK;
                    VASAds.requestAd(this.f, interstitialAdRequest2.f35493c, InterstitialAd.class, g(), new VASAds.AdRequestListener() { // from class: com.verizon.ads.interstitialplacement.InterstitialAdFactory.3
                        @Override // com.verizon.ads.VASAds.AdRequestListener
                        public void onAdReceived(AdSession adSession, ErrorInfo errorInfo, boolean z) {
                            interstitialAdRequest2.f35491a = z;
                            InterstitialAdFactory.this.g.sendMessage(InterstitialAdFactory.this.g.obtainMessage(3, new AdReceivedMessage(interstitialAdRequest2, adSession, errorInfo, z)));
                        }

                        @Override // com.verizon.ads.VASAds.AdRequestListener
                        public /* synthetic */ void prepare(AdSession adSession) {
                            VASAds.AdRequestListener._CC.$default$prepare(this, adSession);
                        }
                    });
                    return true;
                }
            case 3:
                AdReceivedMessage adReceivedMessage = (AdReceivedMessage) message.obj;
                InterstitialAdRequest interstitialAdRequest3 = adReceivedMessage.f35485a;
                if (interstitialAdRequest3.f35492b || this.h) {
                    f35466b.d("Ignoring ad received after abort or destroy.");
                    return true;
                }
                interstitialAdRequest3.f35491a = adReceivedMessage.f35488d;
                if (adReceivedMessage.f35487c != null) {
                    Logger logger = f35466b;
                    logger.e("Server responded with an error when attempting to get interstitial ads: " + adReceivedMessage.f35487c.toString());
                    c();
                    if (!AdDestination.CALLBACK.equals(interstitialAdRequest3.f35494d)) {
                        return true;
                    }
                    a(adReceivedMessage.f35487c);
                    return true;
                } else if (interstitialAdRequest3.f35491a && interstitialAdRequest3.f.isEmpty() && interstitialAdRequest3.e == null && adReceivedMessage.f35486b == null) {
                    c();
                    return true;
                } else if (interstitialAdRequest3.e != null) {
                    if (adReceivedMessage.f35486b == null) {
                        return true;
                    }
                    interstitialAdRequest3.f.add(adReceivedMessage.f35486b);
                    return true;
                } else if (adReceivedMessage.f35486b == null) {
                    return true;
                } else {
                    interstitialAdRequest3.e = adReceivedMessage.f35486b;
                    b(interstitialAdRequest3);
                    return true;
                }
            case 4:
            default:
                f35466b.w(String.format("Received unexpected message with what = %d", Integer.valueOf(message.what)));
                return true;
            case 5:
                SendToDestinationMessage sendToDestinationMessage = (SendToDestinationMessage) message.obj;
                InterstitialAdRequest interstitialAdRequest4 = sendToDestinationMessage.f35496a;
                if (interstitialAdRequest4.f35492b || this.h) {
                    f35466b.d("Ignoring send to destination notification after abort or destroy.");
                    return true;
                }
                AdSession adSession = sendToDestinationMessage.f35498c;
                if (AdDestination.CACHE.equals(interstitialAdRequest4.f35494d)) {
                    if (adSession != null) {
                        if (Logger.isLogLevelEnabled(3)) {
                            f35466b.d(String.format("Caching ad session: %s", adSession));
                        }
                        this.f35469a.add(new CachedAd(adSession, a()));
                    }
                } else if (sendToDestinationMessage.f35497b == null) {
                    interstitialAdRequest4.f35494d = AdDestination.CACHE;
                    a(adSession, interstitialAdRequest4);
                } else if (interstitialAdRequest4.f35491a && interstitialAdRequest4.f.isEmpty()) {
                    a(sendToDestinationMessage.f35497b);
                    c();
                    return true;
                }
                Handler handler = this.g;
                handler.sendMessage(handler.obtainMessage(8, new ProcessNextAdSessionMessage(interstitialAdRequest4)));
                return true;
            case 6:
                f();
                return true;
            case 7:
                b();
                return true;
            case 8:
                InterstitialAdRequest interstitialAdRequest5 = ((ProcessNextAdSessionMessage) message.obj).f35495a;
                if (interstitialAdRequest5.f35492b || this.h) {
                    f35466b.d("Ignoring process next ad session after abort or destroy.");
                    return true;
                } else if (interstitialAdRequest5.f.isEmpty()) {
                    f35466b.d("No Ad Sessions queued for processing.");
                    interstitialAdRequest5.e = null;
                    if (!interstitialAdRequest5.f35491a) {
                        return true;
                    }
                    c();
                    return true;
                } else {
                    interstitialAdRequest5.e = interstitialAdRequest5.f.remove(0);
                    b(interstitialAdRequest5);
                    return true;
                }
            case 9:
                d();
                return true;
        }
    }

    private void b() {
        if (this.h) {
            f35466b.w("Factory has already been destroyed.");
            return;
        }
        f();
        CachedAd remove = this.f35469a.remove();
        while (true) {
            CachedAd cachedAd = remove;
            if (cachedAd != null) {
                ((InterstitialAdAdapter) cachedAd.f35489a.getAdAdapter()).release();
                remove = this.f35469a.remove();
            } else {
                this.h = true;
                return;
            }
        }
    }

    private void b(final ErrorInfo errorInfo) {
        f35466b.e(errorInfo.toString());
        final InterstitialAdFactoryListener interstitialAdFactoryListener = this.k;
        if (interstitialAdFactoryListener != null) {
            f35468d.execute(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAdFactory.7
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    interstitialAdFactoryListener.onError(InterstitialAdFactory.this, errorInfo);
                }
            });
        }
    }

    private void b(final InterstitialAdRequest interstitialAdRequest) {
        final AdSession adSession = interstitialAdRequest.e;
        if (adSession == null) {
            f35466b.e("Unable to load view for null ad session.");
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f35466b.d("Loading view for ad session: ".concat(String.valueOf(adSession)));
        }
        ((InterstitialAdAdapter) adSession.getAdAdapter()).load(this.f, g(), new InterstitialAdAdapter.LoadViewListener() { // from class: com.verizon.ads.interstitialplacement._$$Lambda$InterstitialAdFactory$zx76Tkn6pmFrkPEG38_xydp7MEw
            @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter.LoadViewListener
            public final void onComplete(ErrorInfo errorInfo) {
                InterstitialAdFactory.this.a(interstitialAdRequest, adSession, errorInfo);
            }
        });
    }

    private void c() {
        f35466b.d("Clearing the active ad request.");
        this.i = null;
    }

    private boolean c(InterstitialAdRequest interstitialAdRequest) {
        if (this.i != null) {
            b(new ErrorInfo(InterstitialAdFactory.class.getName(), "Only one active load request allowed at a time", -2));
            return false;
        }
        this.i = interstitialAdRequest;
        return true;
    }

    private void d() {
        if (this.i != null) {
            f35466b.d("Skipping cache replenishment as an ad request is already in progress.");
            return;
        }
        if (this.f35469a.size() <= (this.j >= 0 ? this.j : a(Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "cacheReplenishmentThreshold", 3), 3))) {
            InterstitialAdRequest interstitialAdRequest = new InterstitialAdRequest();
            interstitialAdRequest.f35494d = AdDestination.CACHE;
            a(interstitialAdRequest);
        }
    }

    private AdSession e() {
        CachedAd remove;
        while (true) {
            remove = this.f35469a.remove();
            if (remove == null || remove.f35490b == 0 || System.currentTimeMillis() < remove.f35490b) {
                break;
            } else if (Logger.isLogLevelEnabled(3)) {
                f35466b.d(String.format("Ad in cache expired for placementId: %s", this.e));
            }
        }
        if (remove != null) {
            return remove.f35489a;
        }
        f35466b.i("No ads in cache.");
        return null;
    }

    private void f() {
        if (this.h) {
            f35466b.e("Abort failed. Factory has been destroyed.");
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f35466b.d(String.format("Aborting load request for placementId: %s", this.e));
        }
        if (this.i == null) {
            f35466b.d("No active load to abort");
            return;
        }
        if (!(this.i.e == null || this.i.e.getAdAdapter() == null)) {
            ((InterstitialAdAdapter) this.i.e.getAdAdapter()).abortLoad();
        }
        for (AdSession adSession : this.i.f) {
            if (!(adSession == null || adSession.getAdAdapter() == null)) {
                ((InterstitialAdAdapter) adSession.getAdAdapter()).abortLoad();
            }
        }
        this.i.f35492b = true;
        c();
    }

    private static int g() {
        return Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "interstitialAdRequestTimeout", 30000);
    }

    public static void requestBid(Context context, String str, RequestMetadata requestMetadata, final BidRequestListener bidRequestListener) {
        VASAds.requestBid(context, a(requestMetadata, str), g(), new BidRequestListener() { // from class: com.verizon.ads.interstitialplacement.InterstitialAdFactory.1
            @Override // com.verizon.ads.BidRequestListener
            public final void onComplete(Bid bid, ErrorInfo errorInfo) {
                if (errorInfo != null) {
                    InterstitialAdFactory.a(errorInfo, BidRequestListener.this);
                } else {
                    InterstitialAdFactory.a(bid, BidRequestListener.this);
                }
            }
        });
    }

    public void abortLoad() {
        Handler handler = this.g;
        handler.sendMessage(handler.obtainMessage(6));
    }

    public void destroy() {
        Handler handler = this.g;
        handler.sendMessage(handler.obtainMessage(7));
    }

    public String getPlacementId() {
        return this.e;
    }

    public RequestMetadata getRequestMetadata() {
        return this.l;
    }

    public void load(Bid bid, InterstitialAd.InterstitialAdListener interstitialAdListener) {
        Handler handler = this.g;
        handler.sendMessage(handler.obtainMessage(2, new InterstitialAdRequest(interstitialAdListener, bid)));
    }

    public void load(InterstitialAd.InterstitialAdListener interstitialAdListener) {
        Handler handler = this.g;
        handler.sendMessage(handler.obtainMessage(1, new InterstitialAdRequest(interstitialAdListener)));
    }

    public InterstitialAd loadAdFromCache(InterstitialAd.InterstitialAdListener interstitialAdListener) {
        AdSession e = e();
        Handler handler = this.g;
        handler.sendMessage(handler.obtainMessage(9));
        if (e == null) {
            f35466b.w("No ads found in cache");
            return null;
        }
        e.getAdAdapter();
        if (Logger.isLogLevelEnabled(3)) {
            f35466b.d(String.format("Ad loaded from cache: %s", e));
        }
        return new InterstitialAd(this.e, e, interstitialAdListener);
    }

    public void prefetch() {
        Handler handler = this.g;
        handler.sendMessage(handler.obtainMessage(9));
    }

    public void setCacheReplenishmentThresholdOverride(int i) {
        this.j = a(i, -1);
    }

    public void setListener(InterstitialAdFactoryListener interstitialAdFactoryListener) {
        this.k = interstitialAdFactoryListener;
    }

    public void setRequestMetaData(RequestMetadata requestMetadata) {
        this.l = requestMetadata;
    }
}

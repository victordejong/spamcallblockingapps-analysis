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

    /* renamed from: c */
    private static final HandlerThread f61453c;

    /* renamed from: a */
    final Cache<CachedAd> f61455a;

    /* renamed from: e */
    private final String f61456e;

    /* renamed from: f */
    private final Context f61457f;

    /* renamed from: g */
    private final Handler f61458g;

    /* renamed from: i */
    private volatile InterstitialAdRequest f61460i;

    /* renamed from: k */
    private InterstitialAdFactoryListener f61462k;

    /* renamed from: l */
    private RequestMetadata f61463l;

    /* renamed from: b */
    private static final Logger f61452b = Logger.getInstance(InterstitialAdFactory.class);

    /* renamed from: d */
    private static final ExecutorService f61454d = Executors.newFixedThreadPool(1);

    /* renamed from: h */
    private volatile boolean f61459h = false;

    /* renamed from: j */
    private volatile int f61461j = -1;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination.class */
    public enum AdDestination {
        CALLBACK,
        CACHE
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage.class */
    public static class AdReceivedMessage {

        /* renamed from: a */
        final InterstitialAdRequest f61479a;

        /* renamed from: b */
        final AdSession f61480b;

        /* renamed from: c */
        final ErrorInfo f61481c;

        /* renamed from: d */
        final boolean f61482d;

        AdReceivedMessage(InterstitialAdRequest interstitialAdRequest, AdSession adSession, ErrorInfo errorInfo, boolean z) {
            this.f61479a = interstitialAdRequest;
            this.f61480b = adSession;
            this.f61481c = errorInfo;
            this.f61482d = z;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAdFactory$CachedAd.class */
    public static class CachedAd {

        /* renamed from: a */
        final AdSession f61483a;

        /* renamed from: b */
        final long f61484b;

        CachedAd(AdSession adSession, long j) {
            this.f61483a = adSession;
            this.f61484b = j;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdFactoryListener.class */
    public interface InterstitialAdFactoryListener {
        void onError(InterstitialAdFactory interstitialAdFactory, ErrorInfo errorInfo);

        void onLoaded(InterstitialAdFactory interstitialAdFactory, InterstitialAd interstitialAd);
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest.class */
    public static class InterstitialAdRequest {

        /* renamed from: a */
        boolean f61485a;

        /* renamed from: b */
        boolean f61486b;

        /* renamed from: c */
        Bid f61487c;

        /* renamed from: d */
        AdDestination f61488d;

        /* renamed from: e */
        AdSession f61489e;

        /* renamed from: f */
        List<AdSession> f61490f;

        /* renamed from: g */
        InterstitialAd.InterstitialAdListener f61491g;

        InterstitialAdRequest() {
            this.f61490f = new ArrayList();
        }

        InterstitialAdRequest(InterstitialAd.InterstitialAdListener interstitialAdListener) {
            this(interstitialAdListener, null);
        }

        InterstitialAdRequest(InterstitialAd.InterstitialAdListener interstitialAdListener, Bid bid) {
            this.f61490f = new ArrayList();
            this.f61487c = bid;
            this.f61491g = interstitialAdListener;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAdFactory$ProcessNextAdSessionMessage.class */
    public static class ProcessNextAdSessionMessage {

        /* renamed from: a */
        final InterstitialAdRequest f61492a;

        ProcessNextAdSessionMessage(InterstitialAdRequest interstitialAdRequest) {
            this.f61492a = interstitialAdRequest;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/interstitialplacement/InterstitialAdFactory$SendToDestinationMessage.class */
    public static class SendToDestinationMessage {

        /* renamed from: a */
        final InterstitialAdRequest f61493a;

        /* renamed from: b */
        final ErrorInfo f61494b;

        /* renamed from: c */
        final AdSession f61495c;

        SendToDestinationMessage(InterstitialAdRequest interstitialAdRequest, AdSession adSession, ErrorInfo errorInfo) {
            this.f61493a = interstitialAdRequest;
            this.f61494b = errorInfo;
            this.f61495c = adSession;
        }
    }

    static {
        HandlerThread handlerThread = new HandlerThread(InterstitialAdFactory.class.getName());
        f61453c = handlerThread;
        handlerThread.start();
    }

    public InterstitialAdFactory(Context context, String str, InterstitialAdFactoryListener interstitialAdFactoryListener) {
        if (Logger.isLogLevelEnabled(3)) {
            f61452b.m5567d(String.format("Creating interstitial ad factory for placement Id '%s'", str));
        }
        this.f61456e = str;
        this.f61457f = context;
        this.f61462k = interstitialAdFactoryListener;
        this.f61455a = new SimpleCache();
        this.f61458g = new Handler(f61453c.getLooper(), new Handler.Callback() { // from class: com.verizon.ads.interstitialplacement._$$Lambda$InterstitialAdFactory$HPgKr7n18ll5vPXIgRNpveXg_k8
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean m5443a;
                m5443a = InterstitialAdFactory.this.m5443a(message);
                return m5443a;
            }
        });
    }

    /* renamed from: a */
    private static int m5444a(int i, int i2) {
        return (i < 0 || i > 30) ? i2 : i;
    }

    /* renamed from: a */
    static long m5445a() {
        int i = Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "interstitialAdExpirationTimeout", 3600000);
        if (i > 0) {
            return System.currentTimeMillis() + i;
        }
        return 0L;
    }

    /* renamed from: a */
    private static RequestMetadata m5438a(RequestMetadata requestMetadata, String str) {
        if (requestMetadata == null) {
            requestMetadata = VASAds.getRequestMetadata();
        }
        if (str == null) {
            f61452b.m5559w("Placement id cannot be null");
            return requestMetadata;
        }
        RequestMetadata.Builder builder = new RequestMetadata.Builder(requestMetadata);
        Map<String, Object> placementData = builder.getPlacementData();
        HashMap hashMap = placementData;
        if (placementData == null) {
            hashMap = new HashMap();
        }
        hashMap.put("type", AdType.INTERSTITIAL);
        hashMap.put("id", str);
        return builder.setPlacementData(hashMap).build();
    }

    /* renamed from: a */
    private void m5442a(AdSession adSession, InterstitialAdRequest interstitialAdRequest) {
        if (interstitialAdRequest == null) {
            f61452b.m5565e("InterstitialAdRequest cannot be null");
            return;
        }
        adSession.getAdAdapter();
        if (Logger.isLogLevelEnabled(3)) {
            f61452b.m5567d(String.format("Ad loaded: %s", adSession));
        }
        final InterstitialAd interstitialAd = new InterstitialAd(this.f61456e, adSession, interstitialAdRequest.f61491g);
        final InterstitialAdFactoryListener interstitialAdFactoryListener = this.f61462k;
        if (interstitialAdFactoryListener == null) {
            return;
        }
        f61454d.execute(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAdFactory.6
            @Override // com.verizon.ads.support.SafeRunnable
            public void safeRun() {
                interstitialAdFactoryListener.onLoaded(InterstitialAdFactory.this, interstitialAd);
                final InterstitialAd interstitialAd2 = interstitialAd;
                final long m5445a = InterstitialAdFactory.m5445a();
                if (m5445a != 0) {
                    InterstitialAd.f61424a.post(new Runnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (interstitialAd2.f61431h != null) {
                                InterstitialAd.f61425f.m5565e("Expiration timer already running");
                            } else if (interstitialAd2.f61433j) {
                            } else {
                                long max = Math.max(m5445a - System.currentTimeMillis(), 0L);
                                if (Logger.isLogLevelEnabled(3)) {
                                    InterstitialAd.f61425f.m5567d(String.format("Ad for placementId: %s will expire in %d ms", interstitialAd2.f61434k, Long.valueOf(max)));
                                }
                                interstitialAd2.f61431h = new Runnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAd.2.1
                                    {
                                        RunnableC173742.this = this;
                                    }

                                    @Override // java.lang.Runnable
                                    public void run() {
                                        InterstitialAd.m5449d(interstitialAd2);
                                    }
                                };
                                InterstitialAd.f61424a.postDelayed(interstitialAd2.f61431h, max);
                            }
                        }
                    });
                }
            }
        });
    }

    /* renamed from: a */
    static /* synthetic */ void m5441a(final Bid bid, final BidRequestListener bidRequestListener) {
        if (Logger.isLogLevelEnabled(3)) {
            f61452b.m5567d(String.format("Bid received: %s", bid));
        }
        if (bidRequestListener != null) {
            f61454d.execute(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAdFactory.4
                @Override // com.verizon.ads.support.SafeRunnable
                public final void safeRun() {
                    bidRequestListener.onComplete(bid, null);
                }
            });
        }
    }

    /* renamed from: a */
    private void m5440a(ErrorInfo errorInfo) {
        if (Logger.isLogLevelEnabled(3)) {
            f61452b.m5567d(String.format("Error occurred loading ad for placementId: %s", this.f61456e));
        }
        m5433b(errorInfo);
    }

    /* renamed from: a */
    static /* synthetic */ void m5439a(final ErrorInfo errorInfo, final BidRequestListener bidRequestListener) {
        if (Logger.isLogLevelEnabled(3)) {
            f61452b.m5567d(String.format("Error requesting bid: %s", errorInfo));
        }
        if (bidRequestListener != null) {
            f61454d.execute(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAdFactory.5
                @Override // com.verizon.ads.support.SafeRunnable
                public final void safeRun() {
                    bidRequestListener.onComplete(null, errorInfo);
                }
            });
        }
    }

    /* renamed from: a */
    private void m5437a(final InterstitialAdRequest interstitialAdRequest) {
        if (!m5430c(interstitialAdRequest)) {
            return;
        }
        VASAds.requestAds(this.f61457f, InterstitialAd.class, m5438a(this.f61463l, this.f61456e), m5426g(), new VASAds.AdRequestListener() { // from class: com.verizon.ads.interstitialplacement.InterstitialAdFactory.2
            @Override // com.verizon.ads.VASAds.AdRequestListener
            public void onAdReceived(AdSession adSession, ErrorInfo errorInfo, boolean z) {
                interstitialAdRequest.f61485a = z;
                InterstitialAdFactory.this.f61458g.sendMessage(InterstitialAdFactory.this.f61458g.obtainMessage(3, new AdReceivedMessage(interstitialAdRequest, adSession, errorInfo, z)));
            }

            @Override // com.verizon.ads.VASAds.AdRequestListener
            public /* synthetic */ void prepare(AdSession adSession) {
                VASAds.AdRequestListener._CC.$default$prepare(this, adSession);
            }
        });
    }

    /* renamed from: a */
    public /* synthetic */ void m5436a(InterstitialAdRequest interstitialAdRequest, AdSession adSession, ErrorInfo errorInfo) {
        Handler handler = this.f61458g;
        handler.sendMessage(handler.obtainMessage(5, new SendToDestinationMessage(interstitialAdRequest, adSession, errorInfo)));
    }

    /* renamed from: a */
    public /* synthetic */ boolean m5443a(Message message) {
        switch (message.what) {
            case 1:
                InterstitialAdRequest interstitialAdRequest = (InterstitialAdRequest) message.obj;
                if (this.f61459h) {
                    f61452b.m5565e("Load Ad failed. Factory has been destroyed.");
                    return true;
                }
                AdSession m5428e = m5428e();
                interstitialAdRequest.f61488d = AdDestination.CALLBACK;
                if (m5428e == null) {
                    m5437a(interstitialAdRequest);
                    return true;
                }
                m5442a(m5428e, interstitialAdRequest);
                m5429d();
                return true;
            case 2:
                final InterstitialAdRequest interstitialAdRequest2 = (InterstitialAdRequest) message.obj;
                if (this.f61459h) {
                    f61452b.m5565e("Load Bid failed. Factory has been destroyed.");
                    return true;
                } else if (!m5430c(interstitialAdRequest2)) {
                    return true;
                } else {
                    interstitialAdRequest2.f61488d = AdDestination.CALLBACK;
                    VASAds.requestAd(this.f61457f, interstitialAdRequest2.f61487c, InterstitialAd.class, m5426g(), new VASAds.AdRequestListener() { // from class: com.verizon.ads.interstitialplacement.InterstitialAdFactory.3
                        @Override // com.verizon.ads.VASAds.AdRequestListener
                        public void onAdReceived(AdSession adSession, ErrorInfo errorInfo, boolean z) {
                            interstitialAdRequest2.f61485a = z;
                            InterstitialAdFactory.this.f61458g.sendMessage(InterstitialAdFactory.this.f61458g.obtainMessage(3, new AdReceivedMessage(interstitialAdRequest2, adSession, errorInfo, z)));
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
                InterstitialAdRequest interstitialAdRequest3 = adReceivedMessage.f61479a;
                if (interstitialAdRequest3.f61486b || this.f61459h) {
                    f61452b.m5567d("Ignoring ad received after abort or destroy.");
                    return true;
                }
                interstitialAdRequest3.f61485a = adReceivedMessage.f61482d;
                if (adReceivedMessage.f61481c != null) {
                    Logger logger = f61452b;
                    logger.m5565e("Server responded with an error when attempting to get interstitial ads: " + adReceivedMessage.f61481c.toString());
                    m5431c();
                    if (!AdDestination.CALLBACK.equals(interstitialAdRequest3.f61488d)) {
                        return true;
                    }
                    m5440a(adReceivedMessage.f61481c);
                    return true;
                } else if (interstitialAdRequest3.f61485a && interstitialAdRequest3.f61490f.isEmpty() && interstitialAdRequest3.f61489e == null && adReceivedMessage.f61480b == null) {
                    m5431c();
                    return true;
                } else if (interstitialAdRequest3.f61489e != null) {
                    if (adReceivedMessage.f61480b == null) {
                        return true;
                    }
                    interstitialAdRequest3.f61490f.add(adReceivedMessage.f61480b);
                    return true;
                } else if (adReceivedMessage.f61480b == null) {
                    return true;
                } else {
                    interstitialAdRequest3.f61489e = adReceivedMessage.f61480b;
                    m5432b(interstitialAdRequest3);
                    return true;
                }
            case 4:
            default:
                f61452b.m5559w(String.format("Received unexpected message with what = %d", Integer.valueOf(message.what)));
                return true;
            case 5:
                SendToDestinationMessage sendToDestinationMessage = (SendToDestinationMessage) message.obj;
                InterstitialAdRequest interstitialAdRequest4 = sendToDestinationMessage.f61493a;
                if (interstitialAdRequest4.f61486b || this.f61459h) {
                    f61452b.m5567d("Ignoring send to destination notification after abort or destroy.");
                    return true;
                }
                AdSession adSession = sendToDestinationMessage.f61495c;
                if (AdDestination.CACHE.equals(interstitialAdRequest4.f61488d)) {
                    if (adSession != null) {
                        if (Logger.isLogLevelEnabled(3)) {
                            f61452b.m5567d(String.format("Caching ad session: %s", adSession));
                        }
                        this.f61455a.add(new CachedAd(adSession, m5445a()));
                    }
                } else if (sendToDestinationMessage.f61494b == null) {
                    interstitialAdRequest4.f61488d = AdDestination.CACHE;
                    m5442a(adSession, interstitialAdRequest4);
                } else if (interstitialAdRequest4.f61485a && interstitialAdRequest4.f61490f.isEmpty()) {
                    m5440a(sendToDestinationMessage.f61494b);
                    m5431c();
                    return true;
                }
                Handler handler = this.f61458g;
                handler.sendMessage(handler.obtainMessage(8, new ProcessNextAdSessionMessage(interstitialAdRequest4)));
                return true;
            case 6:
                m5427f();
                return true;
            case 7:
                m5434b();
                return true;
            case 8:
                InterstitialAdRequest interstitialAdRequest5 = ((ProcessNextAdSessionMessage) message.obj).f61492a;
                if (interstitialAdRequest5.f61486b || this.f61459h) {
                    f61452b.m5567d("Ignoring process next ad session after abort or destroy.");
                    return true;
                } else if (!interstitialAdRequest5.f61490f.isEmpty()) {
                    interstitialAdRequest5.f61489e = interstitialAdRequest5.f61490f.remove(0);
                    m5432b(interstitialAdRequest5);
                    return true;
                } else {
                    f61452b.m5567d("No Ad Sessions queued for processing.");
                    interstitialAdRequest5.f61489e = null;
                    if (!interstitialAdRequest5.f61485a) {
                        return true;
                    }
                    m5431c();
                    return true;
                }
            case 9:
                m5429d();
                return true;
        }
    }

    /* renamed from: b */
    private void m5434b() {
        if (this.f61459h) {
            f61452b.m5559w("Factory has already been destroyed.");
            return;
        }
        m5427f();
        CachedAd remove = this.f61455a.remove();
        while (true) {
            CachedAd cachedAd = remove;
            if (cachedAd == null) {
                this.f61459h = true;
                return;
            } else {
                ((InterstitialAdAdapter) cachedAd.f61483a.getAdAdapter()).release();
                remove = this.f61455a.remove();
            }
        }
    }

    /* renamed from: b */
    private void m5433b(final ErrorInfo errorInfo) {
        f61452b.m5565e(errorInfo.toString());
        final InterstitialAdFactoryListener interstitialAdFactoryListener = this.f61462k;
        if (interstitialAdFactoryListener != null) {
            f61454d.execute(new SafeRunnable() { // from class: com.verizon.ads.interstitialplacement.InterstitialAdFactory.7
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    interstitialAdFactoryListener.onError(InterstitialAdFactory.this, errorInfo);
                }
            });
        }
    }

    /* renamed from: b */
    private void m5432b(final InterstitialAdRequest interstitialAdRequest) {
        final AdSession adSession = interstitialAdRequest.f61489e;
        if (adSession == null) {
            f61452b.m5565e("Unable to load view for null ad session.");
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f61452b.m5567d("Loading view for ad session: ".concat(String.valueOf(adSession)));
        }
        ((InterstitialAdAdapter) adSession.getAdAdapter()).load(this.f61457f, m5426g(), new InterstitialAdAdapter.LoadViewListener() { // from class: com.verizon.ads.interstitialplacement._$$Lambda$InterstitialAdFactory$zx76Tkn6pmFrkPEG38_xydp7MEw
            @Override // com.verizon.ads.interstitialplacement.InterstitialAdAdapter.LoadViewListener
            public final void onComplete(ErrorInfo errorInfo) {
                InterstitialAdFactory.this.m5436a(interstitialAdRequest, adSession, errorInfo);
            }
        });
    }

    /* renamed from: c */
    private void m5431c() {
        f61452b.m5567d("Clearing the active ad request.");
        this.f61460i = null;
    }

    /* renamed from: c */
    private boolean m5430c(InterstitialAdRequest interstitialAdRequest) {
        if (this.f61460i != null) {
            m5433b(new ErrorInfo(InterstitialAdFactory.class.getName(), "Only one active load request allowed at a time", -2));
            return false;
        }
        this.f61460i = interstitialAdRequest;
        return true;
    }

    /* renamed from: d */
    private void m5429d() {
        if (this.f61460i != null) {
            f61452b.m5567d("Skipping cache replenishment as an ad request is already in progress.");
            return;
        }
        if (this.f61455a.size() > (this.f61461j >= 0 ? this.f61461j : m5444a(Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "cacheReplenishmentThreshold", 3), 3))) {
            return;
        }
        InterstitialAdRequest interstitialAdRequest = new InterstitialAdRequest();
        interstitialAdRequest.f61488d = AdDestination.CACHE;
        m5437a(interstitialAdRequest);
    }

    /* renamed from: e */
    private AdSession m5428e() {
        CachedAd remove;
        while (true) {
            remove = this.f61455a.remove();
            if (remove == null || remove.f61484b == 0 || System.currentTimeMillis() < remove.f61484b) {
                break;
            } else if (Logger.isLogLevelEnabled(3)) {
                f61452b.m5567d(String.format("Ad in cache expired for placementId: %s", this.f61456e));
            }
        }
        if (remove == null) {
            f61452b.m5563i("No ads in cache.");
            return null;
        }
        return remove.f61483a;
    }

    /* renamed from: f */
    private void m5427f() {
        if (this.f61459h) {
            f61452b.m5565e("Abort failed. Factory has been destroyed.");
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f61452b.m5567d(String.format("Aborting load request for placementId: %s", this.f61456e));
        }
        if (this.f61460i == null) {
            f61452b.m5567d("No active load to abort");
            return;
        }
        if (this.f61460i.f61489e != null && this.f61460i.f61489e.getAdAdapter() != null) {
            ((InterstitialAdAdapter) this.f61460i.f61489e.getAdAdapter()).abortLoad();
        }
        for (AdSession adSession : this.f61460i.f61490f) {
            if (adSession != null && adSession.getAdAdapter() != null) {
                ((InterstitialAdAdapter) adSession.getAdAdapter()).abortLoad();
            }
        }
        this.f61460i.f61486b = true;
        m5431c();
    }

    /* renamed from: g */
    private static int m5426g() {
        return Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "interstitialAdRequestTimeout", 30000);
    }

    public static void requestBid(Context context, String str, RequestMetadata requestMetadata, final BidRequestListener bidRequestListener) {
        VASAds.requestBid(context, m5438a(requestMetadata, str), m5426g(), new BidRequestListener() { // from class: com.verizon.ads.interstitialplacement.InterstitialAdFactory.1
            @Override // com.verizon.ads.BidRequestListener
            public final void onComplete(Bid bid, ErrorInfo errorInfo) {
                if (errorInfo != null) {
                    InterstitialAdFactory.m5439a(errorInfo, bidRequestListener);
                } else {
                    InterstitialAdFactory.m5441a(bid, bidRequestListener);
                }
            }
        });
    }

    public void abortLoad() {
        Handler handler = this.f61458g;
        handler.sendMessage(handler.obtainMessage(6));
    }

    public void destroy() {
        Handler handler = this.f61458g;
        handler.sendMessage(handler.obtainMessage(7));
    }

    public String getPlacementId() {
        return this.f61456e;
    }

    public RequestMetadata getRequestMetadata() {
        return this.f61463l;
    }

    public void load(Bid bid, InterstitialAd.InterstitialAdListener interstitialAdListener) {
        Handler handler = this.f61458g;
        handler.sendMessage(handler.obtainMessage(2, new InterstitialAdRequest(interstitialAdListener, bid)));
    }

    public void load(InterstitialAd.InterstitialAdListener interstitialAdListener) {
        Handler handler = this.f61458g;
        handler.sendMessage(handler.obtainMessage(1, new InterstitialAdRequest(interstitialAdListener)));
    }

    public InterstitialAd loadAdFromCache(InterstitialAd.InterstitialAdListener interstitialAdListener) {
        AdSession m5428e = m5428e();
        Handler handler = this.f61458g;
        handler.sendMessage(handler.obtainMessage(9));
        if (m5428e == null) {
            f61452b.m5559w("No ads found in cache");
            return null;
        }
        m5428e.getAdAdapter();
        if (Logger.isLogLevelEnabled(3)) {
            f61452b.m5567d(String.format("Ad loaded from cache: %s", m5428e));
        }
        return new InterstitialAd(this.f61456e, m5428e, interstitialAdListener);
    }

    public void prefetch() {
        Handler handler = this.f61458g;
        handler.sendMessage(handler.obtainMessage(9));
    }

    public void setCacheReplenishmentThresholdOverride(int i) {
        this.f61461j = m5444a(i, -1);
    }

    public void setListener(InterstitialAdFactoryListener interstitialAdFactoryListener) {
        this.f61462k = interstitialAdFactoryListener;
    }

    public void setRequestMetaData(RequestMetadata requestMetadata) {
        this.f61463l = requestMetadata;
    }
}

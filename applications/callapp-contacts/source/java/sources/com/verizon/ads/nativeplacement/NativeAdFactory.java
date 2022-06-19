package com.verizon.ads.nativeplacement;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.verizon.ads.AdSession;
import com.verizon.ads.Bid;
import com.verizon.ads.BidRequestListener;
import com.verizon.ads.Configuration;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.RequestMetadata;
import com.verizon.ads.VASAds;
import com.verizon.ads.nativeplacement.NativeAd;
import com.verizon.ads.nativeplacement.NativeAdAdapter;
import com.verizon.ads.support.Cache;
import com.verizon.ads.support.SafeRunnable;
import com.verizon.ads.support.SimpleCache;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAdFactory.class */
public class NativeAdFactory {
    public static final int ERROR_AD_LOAD_IN_PROGRESS = -2;
    public static final int ERROR_NO_WATERFALL_PROVIDER = -1;

    /* renamed from: d */
    private static final HandlerThread f61581d;

    /* renamed from: a */
    final Cache<CachedAd> f61583a;

    /* renamed from: f */
    private final Context f61584f;

    /* renamed from: g */
    private final String f61585g;

    /* renamed from: h */
    private final String[] f61586h;

    /* renamed from: i */
    private final Handler f61587i;

    /* renamed from: k */
    private volatile NativeAdRequest f61589k;

    /* renamed from: m */
    private NativeAdFactoryListener f61591m;

    /* renamed from: n */
    private RequestMetadata f61592n;

    /* renamed from: b */
    private static final Logger f61579b = Logger.getInstance(NativeAdFactory.class);

    /* renamed from: c */
    private static final String f61580c = NativeAdFactory.class.getName();

    /* renamed from: e */
    private static final ExecutorService f61582e = Executors.newFixedThreadPool(1);

    /* renamed from: j */
    private volatile boolean f61588j = false;

    /* renamed from: l */
    private volatile int f61590l = -1;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAdFactory$AdDestination.class */
    public enum AdDestination {
        CALLBACK,
        CACHE
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage.class */
    public static class AdReceivedMessage {

        /* renamed from: a */
        final NativeAdRequest f61603a;

        /* renamed from: b */
        final AdSession f61604b;

        /* renamed from: c */
        final ErrorInfo f61605c;

        /* renamed from: d */
        final boolean f61606d;

        AdReceivedMessage(NativeAdRequest nativeAdRequest, AdSession adSession, ErrorInfo errorInfo, boolean z) {
            this.f61603a = nativeAdRequest;
            this.f61604b = adSession;
            this.f61605c = errorInfo;
            this.f61606d = z;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAdFactory$CachedAd.class */
    public static class CachedAd {

        /* renamed from: a */
        final AdSession f61607a;

        /* renamed from: b */
        final long f61608b;

        CachedAd(AdSession adSession, long j) {
            this.f61607a = adSession;
            this.f61608b = j;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAdFactory$NativeAdFactoryListener.class */
    public interface NativeAdFactoryListener {
        void onError(NativeAdFactory nativeAdFactory, ErrorInfo errorInfo);

        void onLoaded(NativeAdFactory nativeAdFactory, NativeAd nativeAd);
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest.class */
    public static class NativeAdRequest {

        /* renamed from: a */
        final NativeAd.NativeAdListener f61609a;

        /* renamed from: b */
        boolean f61610b;

        /* renamed from: c */
        boolean f61611c;

        /* renamed from: d */
        boolean f61612d;

        /* renamed from: e */
        Bid f61613e;

        /* renamed from: f */
        AdDestination f61614f;

        /* renamed from: g */
        AdSession f61615g;

        /* renamed from: h */
        List<AdSession> f61616h;

        NativeAdRequest(Bid bid, boolean z, NativeAd.NativeAdListener nativeAdListener) {
            this.f61616h = new ArrayList();
            this.f61612d = z;
            this.f61609a = nativeAdListener;
            this.f61613e = bid;
        }

        NativeAdRequest(boolean z) {
            this(z, null);
        }

        NativeAdRequest(boolean z, NativeAd.NativeAdListener nativeAdListener) {
            this(null, z, nativeAdListener);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAdFactory$ProcessNextAdSessionMessage.class */
    public static class ProcessNextAdSessionMessage {

        /* renamed from: a */
        final NativeAdRequest f61617a;

        ProcessNextAdSessionMessage(NativeAdRequest nativeAdRequest) {
            this.f61617a = nativeAdRequest;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAdFactory$SendToDestinationMessage.class */
    public static class SendToDestinationMessage {

        /* renamed from: a */
        final NativeAdRequest f61618a;

        /* renamed from: b */
        final AdSession f61619b;

        /* renamed from: c */
        final ErrorInfo f61620c;

        SendToDestinationMessage(NativeAdRequest nativeAdRequest, AdSession adSession, ErrorInfo errorInfo) {
            this.f61618a = nativeAdRequest;
            this.f61619b = adSession;
            this.f61620c = errorInfo;
        }
    }

    static {
        HandlerThread handlerThread = new HandlerThread(NativeAdFactory.class.getName());
        f61581d = handlerThread;
        handlerThread.start();
    }

    public NativeAdFactory(Context context, String str, String[] strArr, NativeAdFactoryListener nativeAdFactoryListener) {
        if (Logger.isLogLevelEnabled(3)) {
            f61579b.m5567d(String.format("Creating native ad factory for placement Id '%s'", str));
        }
        this.f61585g = str;
        this.f61584f = context;
        this.f61586h = strArr != null ? (String[]) strArr.clone() : null;
        this.f61591m = nativeAdFactoryListener;
        this.f61583a = new SimpleCache();
        this.f61587i = new Handler(f61581d.getLooper(), new Handler.Callback() { // from class: com.verizon.ads.nativeplacement._$$Lambda$NativeAdFactory$aGs_6ZhxsCh7R42kCzKCInWHr2I
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean m5386a;
                m5386a = NativeAdFactory.this.m5386a(message);
                return m5386a;
            }
        });
    }

    /* renamed from: a */
    private static int m5387a(int i, int i2) {
        return (i < 0 || i > 30) ? i2 : i;
    }

    /* renamed from: a */
    static long m5388a() {
        int i = Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "nativeAdExpirationTimeout", 3600000);
        if (i > 0) {
            return System.currentTimeMillis() + i;
        }
        return 0L;
    }

    /* renamed from: a */
    private static RequestMetadata m5382a(RequestMetadata requestMetadata, String str, String[] strArr) {
        if (requestMetadata == null) {
            requestMetadata = VASAds.getRequestMetadata();
        }
        if (strArr == null) {
            f61579b.m5559w("Requested native adTypes cannot be null");
            return requestMetadata;
        } else if (str == null) {
            f61579b.m5559w("Placement id cannot be null");
            return requestMetadata;
        } else {
            RequestMetadata.Builder builder = new RequestMetadata.Builder(requestMetadata);
            Map<String, Object> placementData = builder.getPlacementData();
            HashMap hashMap = placementData;
            if (placementData == null) {
                hashMap = new HashMap();
            }
            hashMap.put("type", "native");
            hashMap.put("id", str);
            hashMap.put(VerizonSSPWaterfallProvider.PLACEMENT_DATA_NATIVE_TYPES_KEY, new ArrayList(Arrays.asList(strArr)));
            return builder.setPlacementData(hashMap).build();
        }
    }

    /* renamed from: a */
    private void m5385a(AdSession adSession, NativeAdRequest nativeAdRequest) {
        if (nativeAdRequest == null) {
            f61579b.m5565e("NativeAdRequest cannot be null");
            return;
        }
        adSession.getAdAdapter();
        if (Logger.isLogLevelEnabled(3)) {
            f61579b.m5567d(String.format("Ad loaded: %s", adSession));
        }
        final NativeAd nativeAd = new NativeAd(this.f61585g, adSession, nativeAdRequest.f61609a);
        final NativeAdFactoryListener nativeAdFactoryListener = this.f61591m;
        if (nativeAdFactoryListener == null) {
            return;
        }
        f61582e.execute(new SafeRunnable() { // from class: com.verizon.ads.nativeplacement.NativeAdFactory.3
            @Override // com.verizon.ads.support.SafeRunnable
            public void safeRun() {
                nativeAdFactoryListener.onLoaded(NativeAdFactory.this, nativeAd);
                final NativeAd nativeAd2 = nativeAd;
                final long m5388a = NativeAdFactory.m5388a();
                if (m5388a != 0) {
                    NativeAd.f61553a.post(new Runnable() { // from class: com.verizon.ads.nativeplacement.NativeAd.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (nativeAd2.f61559g != null) {
                                NativeAd.f61555f.m5565e("Expiration timer already running");
                            } else if (nativeAd2.f61561i) {
                            } else {
                                long max = Math.max(m5388a - System.currentTimeMillis(), 0L);
                                if (Logger.isLogLevelEnabled(3)) {
                                    NativeAd.f61555f.m5567d(String.format("Ad will expire in %d ms for placement Id '%s'", Long.valueOf(max), nativeAd2.f61563k));
                                }
                                nativeAd2.f61559g = new Runnable() { // from class: com.verizon.ads.nativeplacement.NativeAd.2.1
                                    {
                                        RunnableC174082.this = this;
                                    }

                                    @Override // java.lang.Runnable
                                    public void run() {
                                        NativeAd.m5393d(nativeAd2);
                                    }
                                };
                                NativeAd.f61553a.postDelayed(nativeAd2.f61559g, max);
                            }
                        }
                    });
                }
            }
        });
    }

    /* renamed from: a */
    public static /* synthetic */ void m5384a(final BidRequestListener bidRequestListener, final Bid bid, final ErrorInfo errorInfo) {
        if (errorInfo != null) {
            if (Logger.isLogLevelEnabled(3)) {
                f61579b.m5567d(String.format("Error requesting bid: %s", errorInfo));
            }
            if (bidRequestListener == null) {
                return;
            }
            f61582e.execute(new SafeRunnable() { // from class: com.verizon.ads.nativeplacement.NativeAdFactory.2
                @Override // com.verizon.ads.support.SafeRunnable
                public final void safeRun() {
                    bidRequestListener.onComplete(null, errorInfo);
                }
            });
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f61579b.m5567d(String.format("Bid received: %s", bid));
        }
        if (bidRequestListener == null) {
            return;
        }
        f61582e.execute(new SafeRunnable() { // from class: com.verizon.ads.nativeplacement.NativeAdFactory.1
            @Override // com.verizon.ads.support.SafeRunnable
            public final void safeRun() {
                bidRequestListener.onComplete(bid, null);
            }
        });
    }

    /* renamed from: a */
    private void m5383a(ErrorInfo errorInfo) {
        if (Logger.isLogLevelEnabled(3)) {
            f61579b.m5567d(String.format("Error occurred loading ad for placementId: %s", this.f61585g));
        }
        m5375b(errorInfo);
    }

    /* renamed from: a */
    private void m5381a(final NativeAdRequest nativeAdRequest) {
        if (!m5374b(nativeAdRequest)) {
            return;
        }
        VASAds.requestAds(this.f61584f, NativeAd.class, m5382a(this.f61592n, this.f61585g, this.f61586h), m5369f(), new VASAds.AdRequestListener() { // from class: com.verizon.ads.nativeplacement._$$Lambda$NativeAdFactory$QUBC6N01R2Ny2F_NYu8IreLvDos
            @Override // com.verizon.ads.VASAds.AdRequestListener
            public final void onAdReceived(AdSession adSession, ErrorInfo errorInfo, boolean z) {
                NativeAdFactory.this.m5373b(nativeAdRequest, adSession, errorInfo, z);
            }

            @Override // com.verizon.ads.VASAds.AdRequestListener
            public /* synthetic */ void prepare(AdSession adSession) {
                VASAds.AdRequestListener._CC.$default$prepare(this, adSession);
            }
        });
    }

    /* renamed from: a */
    private void m5380a(final NativeAdRequest nativeAdRequest, final AdSession adSession) {
        if (adSession == null) {
            f61579b.m5565e("Unable to load components for null ad session.");
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f61579b.m5567d("Loading components for ad session: ".concat(String.valueOf(adSession)));
        }
        ((NativeAdAdapter) adSession.getAdAdapter()).loadComponents(nativeAdRequest.f61612d, Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "nativeAdComponentsTimeout", 20000), new NativeAdAdapter.LoadComponentsListener() { // from class: com.verizon.ads.nativeplacement._$$Lambda$NativeAdFactory$Wv6njovS7blPaH5ONiPglDesNHk
            @Override // com.verizon.ads.nativeplacement.NativeAdAdapter.LoadComponentsListener
            public final void onComplete(ErrorInfo errorInfo) {
                NativeAdFactory.this.m5379a(nativeAdRequest, adSession, errorInfo);
            }
        });
    }

    /* renamed from: a */
    public /* synthetic */ void m5379a(NativeAdRequest nativeAdRequest, AdSession adSession, ErrorInfo errorInfo) {
        Handler handler = this.f61587i;
        handler.sendMessage(handler.obtainMessage(5, new SendToDestinationMessage(nativeAdRequest, adSession, errorInfo)));
    }

    /* renamed from: a */
    public /* synthetic */ void m5378a(NativeAdRequest nativeAdRequest, AdSession adSession, ErrorInfo errorInfo, boolean z) {
        nativeAdRequest.f61610b = z;
        Handler handler = this.f61587i;
        handler.sendMessage(handler.obtainMessage(3, new AdReceivedMessage(nativeAdRequest, adSession, errorInfo, z)));
    }

    /* renamed from: a */
    private void m5377a(boolean z) {
        if (this.f61589k != null) {
            f61579b.m5567d("Skipping cache replenishment as an ad request is already in progress.");
            return;
        }
        if (this.f61583a.size() > (this.f61590l >= 0 ? this.f61590l : m5387a(Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "cacheReplenishmentThreshold", 3), 3))) {
            return;
        }
        NativeAdRequest nativeAdRequest = new NativeAdRequest(z);
        nativeAdRequest.f61614f = AdDestination.CACHE;
        m5381a(nativeAdRequest);
    }

    /* renamed from: a */
    public /* synthetic */ boolean m5386a(Message message) {
        switch (message.what) {
            case 1:
                NativeAdRequest nativeAdRequest = (NativeAdRequest) message.obj;
                if (this.f61588j) {
                    f61579b.m5565e("Load Ad failed. Factory has been destroyed.");
                    return true;
                }
                AdSession m5372c = m5372c();
                nativeAdRequest.f61614f = AdDestination.CALLBACK;
                if (m5372c == null) {
                    m5381a(nativeAdRequest);
                    return true;
                }
                m5385a(m5372c, nativeAdRequest);
                m5377a(nativeAdRequest.f61612d);
                return true;
            case 2:
                final NativeAdRequest nativeAdRequest2 = (NativeAdRequest) message.obj;
                if (this.f61588j) {
                    f61579b.m5565e("Load Bid failed. Factory has been destroyed.");
                    return true;
                } else if (!m5374b(nativeAdRequest2)) {
                    return true;
                } else {
                    nativeAdRequest2.f61614f = AdDestination.CALLBACK;
                    VASAds.requestAd(this.f61584f, nativeAdRequest2.f61613e, NativeAd.class, m5369f(), new VASAds.AdRequestListener() { // from class: com.verizon.ads.nativeplacement._$$Lambda$NativeAdFactory$FLwOKkd_bpjb8bQikM8Nnu7dGZ8
                        @Override // com.verizon.ads.VASAds.AdRequestListener
                        public final void onAdReceived(AdSession adSession, ErrorInfo errorInfo, boolean z) {
                            NativeAdFactory.this.m5378a(nativeAdRequest2, adSession, errorInfo, z);
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
                NativeAdRequest nativeAdRequest3 = adReceivedMessage.f61603a;
                if (nativeAdRequest3.f61611c || this.f61588j) {
                    f61579b.m5567d("Ignoring ad received after abort or destroy.");
                    return true;
                }
                nativeAdRequest3.f61610b = adReceivedMessage.f61606d;
                if (adReceivedMessage.f61605c != null) {
                    Logger logger = f61579b;
                    logger.m5565e("Server responded with an error when attempting to get native ads: " + adReceivedMessage.f61605c.toString());
                    m5370e();
                    if (!AdDestination.CALLBACK.equals(nativeAdRequest3.f61614f)) {
                        return true;
                    }
                    m5383a(adReceivedMessage.f61605c);
                    return true;
                } else if (nativeAdRequest3.f61610b && nativeAdRequest3.f61616h.isEmpty() && nativeAdRequest3.f61615g == null && adReceivedMessage.f61604b == null) {
                    m5370e();
                    return true;
                } else if (nativeAdRequest3.f61615g != null) {
                    if (adReceivedMessage.f61604b == null) {
                        return true;
                    }
                    nativeAdRequest3.f61616h.add(adReceivedMessage.f61604b);
                    return true;
                } else if (adReceivedMessage.f61604b == null) {
                    return true;
                } else {
                    nativeAdRequest3.f61615g = adReceivedMessage.f61604b;
                    m5380a(nativeAdRequest3, nativeAdRequest3.f61615g);
                    return true;
                }
            case 4:
                m5371d();
                return true;
            case 5:
                SendToDestinationMessage sendToDestinationMessage = (SendToDestinationMessage) message.obj;
                NativeAdRequest nativeAdRequest4 = sendToDestinationMessage.f61618a;
                if (nativeAdRequest4.f61611c || this.f61588j) {
                    f61579b.m5567d("Ignoring send to destination notification after abort or destroy.");
                    return true;
                }
                AdSession adSession = sendToDestinationMessage.f61619b;
                if (AdDestination.CACHE.equals(nativeAdRequest4.f61614f)) {
                    if (adSession != null) {
                        if (Logger.isLogLevelEnabled(3)) {
                            f61579b.m5567d(String.format("Caching ad session: %s", adSession));
                        }
                        this.f61583a.add(new CachedAd(adSession, m5388a()));
                    }
                } else if (sendToDestinationMessage.f61620c == null) {
                    nativeAdRequest4.f61614f = AdDestination.CACHE;
                    m5385a(adSession, nativeAdRequest4);
                } else if (nativeAdRequest4.f61610b && nativeAdRequest4.f61616h.isEmpty()) {
                    m5383a(sendToDestinationMessage.f61620c);
                    m5370e();
                    return true;
                }
                Handler handler = this.f61587i;
                handler.sendMessage(handler.obtainMessage(7, new ProcessNextAdSessionMessage(nativeAdRequest4)));
                return true;
            case 6:
                m5376b();
                return true;
            case 7:
                NativeAdRequest nativeAdRequest5 = ((ProcessNextAdSessionMessage) message.obj).f61617a;
                if (nativeAdRequest5.f61611c || this.f61588j) {
                    f61579b.m5567d("Ignoring process next ad session after abort or destroy.");
                    return true;
                } else if (!nativeAdRequest5.f61616h.isEmpty()) {
                    nativeAdRequest5.f61615g = nativeAdRequest5.f61616h.remove(0);
                    m5380a(nativeAdRequest5, nativeAdRequest5.f61615g);
                    return true;
                } else {
                    f61579b.m5567d("No Ad Sessions queued for processing.");
                    nativeAdRequest5.f61615g = null;
                    if (!nativeAdRequest5.f61610b) {
                        return true;
                    }
                    m5370e();
                    return true;
                }
            case 8:
                m5377a(false);
                return true;
            default:
                f61579b.m5559w(String.format("Received unexpected message with what = %d", Integer.valueOf(message.what)));
                return true;
        }
    }

    /* renamed from: b */
    private void m5376b() {
        if (this.f61588j) {
            f61579b.m5559w("Factory has already been destroyed.");
            return;
        }
        m5371d();
        CachedAd remove = this.f61583a.remove();
        while (true) {
            CachedAd cachedAd = remove;
            if (cachedAd == null) {
                this.f61588j = true;
                return;
            } else {
                ((NativeAdAdapter) cachedAd.f61607a.getAdAdapter()).release();
                remove = this.f61583a.remove();
            }
        }
    }

    /* renamed from: b */
    private void m5375b(final ErrorInfo errorInfo) {
        f61579b.m5565e(errorInfo.toString());
        final NativeAdFactoryListener nativeAdFactoryListener = this.f61591m;
        if (nativeAdFactoryListener != null) {
            f61582e.execute(new SafeRunnable() { // from class: com.verizon.ads.nativeplacement.NativeAdFactory.4
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    nativeAdFactoryListener.onError(NativeAdFactory.this, errorInfo);
                }
            });
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m5373b(NativeAdRequest nativeAdRequest, AdSession adSession, ErrorInfo errorInfo, boolean z) {
        nativeAdRequest.f61610b = z;
        Handler handler = this.f61587i;
        handler.sendMessage(handler.obtainMessage(3, new AdReceivedMessage(nativeAdRequest, adSession, errorInfo, z)));
    }

    /* renamed from: b */
    private boolean m5374b(NativeAdRequest nativeAdRequest) {
        if (this.f61589k != null) {
            m5375b(new ErrorInfo(f61580c, "Only one active load request allowed at a time", -2));
            return false;
        }
        this.f61589k = nativeAdRequest;
        return true;
    }

    /* renamed from: c */
    private AdSession m5372c() {
        CachedAd remove;
        while (true) {
            remove = this.f61583a.remove();
            if (remove == null || remove.f61608b == 0 || System.currentTimeMillis() < remove.f61608b) {
                break;
            } else if (Logger.isLogLevelEnabled(3)) {
                f61579b.m5567d(String.format("Ad in cache expired for placementId: %s", this.f61585g));
            }
        }
        if (remove == null) {
            f61579b.m5563i("No ads in cache.");
            return null;
        }
        return remove.f61607a;
    }

    /* renamed from: d */
    private void m5371d() {
        if (this.f61588j) {
            f61579b.m5565e("Abort failed. Factory has been destroyed.");
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f61579b.m5567d(String.format("Aborting load request for placementId: %s", this.f61585g));
        }
        if (this.f61589k == null) {
            f61579b.m5567d("No active load to abort");
            return;
        }
        if (this.f61589k.f61615g != null && this.f61589k.f61615g.getAdAdapter() != null) {
            ((NativeAdAdapter) this.f61589k.f61615g.getAdAdapter()).abortLoadComponents();
        }
        for (AdSession adSession : this.f61589k.f61616h) {
            if (adSession != null && adSession.getAdAdapter() != null) {
                ((NativeAdAdapter) adSession.getAdAdapter()).abortLoadComponents();
            }
        }
        this.f61589k.f61611c = true;
        m5370e();
    }

    /* renamed from: e */
    private void m5370e() {
        f61579b.m5567d("Clearing the active ad request.");
        this.f61589k = null;
    }

    /* renamed from: f */
    private static int m5369f() {
        return Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "nativeAdRequestTimeout", 30000);
    }

    public static void requestBid(Context context, String str, String[] strArr, RequestMetadata requestMetadata, final BidRequestListener bidRequestListener) {
        VASAds.requestBid(context, m5382a(requestMetadata, str, strArr), m5369f(), new BidRequestListener() { // from class: com.verizon.ads.nativeplacement._$$Lambda$NativeAdFactory$HhylDZqh2bmyc4jXhDA6hj7C3FY
            @Override // com.verizon.ads.BidRequestListener
            public final void onComplete(Bid bid, ErrorInfo errorInfo) {
                NativeAdFactory.m5384a(BidRequestListener.this, bid, errorInfo);
            }
        });
    }

    public void abortLoad() {
        Handler handler = this.f61587i;
        handler.sendMessage(handler.obtainMessage(4));
    }

    public void destroy() {
        Handler handler = this.f61587i;
        handler.sendMessage(handler.obtainMessage(6));
    }

    public String getPlacementId() {
        return this.f61585g;
    }

    public RequestMetadata getRequestMetadata() {
        return this.f61592n;
    }

    public void load(Bid bid, NativeAd.NativeAdListener nativeAdListener) {
        Handler handler = this.f61587i;
        handler.sendMessage(handler.obtainMessage(2, new NativeAdRequest(bid, false, nativeAdListener)));
    }

    public void load(NativeAd.NativeAdListener nativeAdListener) {
        Handler handler = this.f61587i;
        handler.sendMessage(handler.obtainMessage(1, new NativeAdRequest(false, nativeAdListener)));
    }

    public NativeAd loadAdFromCache(NativeAd.NativeAdListener nativeAdListener) {
        AdSession m5372c = m5372c();
        Handler handler = this.f61587i;
        handler.sendMessage(handler.obtainMessage(8));
        if (m5372c == null) {
            f61579b.m5559w("No ads found in cache");
            return null;
        }
        m5372c.getAdAdapter();
        if (Logger.isLogLevelEnabled(3)) {
            f61579b.m5567d(String.format("Ad loaded from cache: %s", m5372c));
        }
        return new NativeAd(this.f61585g, m5372c, nativeAdListener);
    }

    public void loadWithoutAssets(Bid bid, NativeAd.NativeAdListener nativeAdListener) {
        Handler handler = this.f61587i;
        handler.sendMessage(handler.obtainMessage(2, new NativeAdRequest(bid, true, nativeAdListener)));
    }

    public void loadWithoutAssets(NativeAd.NativeAdListener nativeAdListener) {
        Handler handler = this.f61587i;
        handler.sendMessage(handler.obtainMessage(1, new NativeAdRequest(true, nativeAdListener)));
    }

    public void prefetch() {
        Handler handler = this.f61587i;
        handler.sendMessage(handler.obtainMessage(8));
    }

    public void setCacheReplenishmentThresholdOverride(int i) {
        this.f61590l = m5387a(i, -1);
    }

    public void setListener(NativeAdFactoryListener nativeAdFactoryListener) {
        this.f61591m = nativeAdFactoryListener;
    }

    public void setRequestMetaData(RequestMetadata requestMetadata) {
        this.f61592n = requestMetadata;
    }
}

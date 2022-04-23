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

    /* renamed from: d  reason: collision with root package name */
    private static final HandlerThread f35545d;

    /* renamed from: a  reason: collision with root package name */
    final Cache<CachedAd> f35546a;
    private final Context f;
    private final String g;
    private final String[] h;
    private final Handler i;
    private volatile NativeAdRequest k;
    private NativeAdFactoryListener m;
    private RequestMetadata n;

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f35543b = Logger.getInstance(NativeAdFactory.class);

    /* renamed from: c  reason: collision with root package name */
    private static final String f35544c = NativeAdFactory.class.getName();
    private static final ExecutorService e = Executors.newFixedThreadPool(1);
    private volatile boolean j = false;
    private volatile int l = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAdFactory$AdDestination.class */
    public enum AdDestination {
        CALLBACK,
        CACHE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAdFactory$AdReceivedMessage.class */
    public static class AdReceivedMessage {

        /* renamed from: a  reason: collision with root package name */
        final NativeAdRequest f35557a;

        /* renamed from: b  reason: collision with root package name */
        final AdSession f35558b;

        /* renamed from: c  reason: collision with root package name */
        final ErrorInfo f35559c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f35560d;

        AdReceivedMessage(NativeAdRequest nativeAdRequest, AdSession adSession, ErrorInfo errorInfo, boolean z) {
            this.f35557a = nativeAdRequest;
            this.f35558b = adSession;
            this.f35559c = errorInfo;
            this.f35560d = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAdFactory$CachedAd.class */
    public static class CachedAd {

        /* renamed from: a  reason: collision with root package name */
        final AdSession f35561a;

        /* renamed from: b  reason: collision with root package name */
        final long f35562b;

        CachedAd(AdSession adSession, long j) {
            this.f35561a = adSession;
            this.f35562b = j;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAdFactory$NativeAdFactoryListener.class */
    public interface NativeAdFactoryListener {
        void onError(NativeAdFactory nativeAdFactory, ErrorInfo errorInfo);

        void onLoaded(NativeAdFactory nativeAdFactory, NativeAd nativeAd);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest.class */
    public static class NativeAdRequest {

        /* renamed from: a  reason: collision with root package name */
        final NativeAd.NativeAdListener f35563a;

        /* renamed from: b  reason: collision with root package name */
        boolean f35564b;

        /* renamed from: c  reason: collision with root package name */
        boolean f35565c;

        /* renamed from: d  reason: collision with root package name */
        boolean f35566d;
        Bid e;
        AdDestination f;
        AdSession g;
        List<AdSession> h;

        NativeAdRequest(Bid bid, boolean z, NativeAd.NativeAdListener nativeAdListener) {
            this.h = new ArrayList();
            this.f35566d = z;
            this.f35563a = nativeAdListener;
            this.e = bid;
        }

        NativeAdRequest(boolean z) {
            this(z, null);
        }

        NativeAdRequest(boolean z, NativeAd.NativeAdListener nativeAdListener) {
            this(null, z, nativeAdListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAdFactory$ProcessNextAdSessionMessage.class */
    public static class ProcessNextAdSessionMessage {

        /* renamed from: a  reason: collision with root package name */
        final NativeAdRequest f35567a;

        ProcessNextAdSessionMessage(NativeAdRequest nativeAdRequest) {
            this.f35567a = nativeAdRequest;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAdFactory$SendToDestinationMessage.class */
    public static class SendToDestinationMessage {

        /* renamed from: a  reason: collision with root package name */
        final NativeAdRequest f35568a;

        /* renamed from: b  reason: collision with root package name */
        final AdSession f35569b;

        /* renamed from: c  reason: collision with root package name */
        final ErrorInfo f35570c;

        SendToDestinationMessage(NativeAdRequest nativeAdRequest, AdSession adSession, ErrorInfo errorInfo) {
            this.f35568a = nativeAdRequest;
            this.f35569b = adSession;
            this.f35570c = errorInfo;
        }
    }

    static {
        HandlerThread handlerThread = new HandlerThread(NativeAdFactory.class.getName());
        f35545d = handlerThread;
        handlerThread.start();
    }

    public NativeAdFactory(Context context, String str, String[] strArr, NativeAdFactoryListener nativeAdFactoryListener) {
        if (Logger.isLogLevelEnabled(3)) {
            f35543b.d(String.format("Creating native ad factory for placement Id '%s'", str));
        }
        this.g = str;
        this.f = context;
        this.h = strArr != null ? (String[]) strArr.clone() : null;
        this.m = nativeAdFactoryListener;
        this.f35546a = new SimpleCache();
        this.i = new Handler(f35545d.getLooper(), new Handler.Callback() { // from class: com.verizon.ads.nativeplacement._$$Lambda$NativeAdFactory$aGs_6ZhxsCh7R42kCzKCInWHr2I
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean a2;
                a2 = NativeAdFactory.this.a(message);
                return a2;
            }
        });
    }

    private static int a(int i, int i2) {
        return (i < 0 || i > 30) ? i2 : i;
    }

    static long a() {
        int i = Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "nativeAdExpirationTimeout", 3600000);
        if (i > 0) {
            return System.currentTimeMillis() + i;
        }
        return 0L;
    }

    private static RequestMetadata a(RequestMetadata requestMetadata, String str, String[] strArr) {
        if (requestMetadata == null) {
            requestMetadata = VASAds.getRequestMetadata();
        }
        if (strArr == null) {
            f35543b.w("Requested native adTypes cannot be null");
            return requestMetadata;
        } else if (str == null) {
            f35543b.w("Placement id cannot be null");
            return requestMetadata;
        } else {
            RequestMetadata.Builder builder = new RequestMetadata.Builder(requestMetadata);
            Map<String, Object> placementData = builder.getPlacementData();
            Map<String, Object> map = placementData;
            if (placementData == null) {
                map = new HashMap<>();
            }
            map.put("type", "native");
            map.put("id", str);
            map.put(VerizonSSPWaterfallProvider.PLACEMENT_DATA_NATIVE_TYPES_KEY, new ArrayList(Arrays.asList(strArr)));
            return builder.setPlacementData(map).build();
        }
    }

    private void a(AdSession adSession, NativeAdRequest nativeAdRequest) {
        if (nativeAdRequest == null) {
            f35543b.e("NativeAdRequest cannot be null");
            return;
        }
        adSession.getAdAdapter();
        if (Logger.isLogLevelEnabled(3)) {
            f35543b.d(String.format("Ad loaded: %s", adSession));
        }
        final NativeAd nativeAd = new NativeAd(this.g, adSession, nativeAdRequest.f35563a);
        final NativeAdFactoryListener nativeAdFactoryListener = this.m;
        if (nativeAdFactoryListener != null) {
            e.execute(new SafeRunnable() { // from class: com.verizon.ads.nativeplacement.NativeAdFactory.3
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    nativeAdFactoryListener.onLoaded(NativeAdFactory.this, nativeAd);
                    final NativeAd nativeAd2 = nativeAd;
                    final long a2 = NativeAdFactory.a();
                    if (a2 != 0) {
                        NativeAd.f35525a.post(new Runnable() { // from class: com.verizon.ads.nativeplacement.NativeAd.2
                            @Override // java.lang.Runnable
                            public void run() {
                                if (nativeAd2.g != null) {
                                    NativeAd.f.e("Expiration timer already running");
                                } else if (!nativeAd2.i) {
                                    long max = Math.max(a2 - System.currentTimeMillis(), 0L);
                                    if (Logger.isLogLevelEnabled(3)) {
                                        NativeAd.f.d(String.format("Ad will expire in %d ms for placement Id '%s'", Long.valueOf(max), nativeAd2.k));
                                    }
                                    nativeAd2.g = new Runnable() { // from class: com.verizon.ads.nativeplacement.NativeAd.2.1
                                        {
                                            AnonymousClass2.this = this;
                                        }

                                        @Override // java.lang.Runnable
                                        public void run() {
                                            NativeAd.d(nativeAd2);
                                        }
                                    };
                                    NativeAd.f35525a.postDelayed(nativeAd2.g, max);
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(final BidRequestListener bidRequestListener, final Bid bid, final ErrorInfo errorInfo) {
        if (errorInfo != null) {
            if (Logger.isLogLevelEnabled(3)) {
                f35543b.d(String.format("Error requesting bid: %s", errorInfo));
            }
            if (bidRequestListener != null) {
                e.execute(new SafeRunnable() { // from class: com.verizon.ads.nativeplacement.NativeAdFactory.2
                    @Override // com.verizon.ads.support.SafeRunnable
                    public final void safeRun() {
                        BidRequestListener.this.onComplete(null, errorInfo);
                    }
                });
                return;
            }
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f35543b.d(String.format("Bid received: %s", bid));
        }
        if (bidRequestListener != null) {
            e.execute(new SafeRunnable() { // from class: com.verizon.ads.nativeplacement.NativeAdFactory.1
                @Override // com.verizon.ads.support.SafeRunnable
                public final void safeRun() {
                    BidRequestListener.this.onComplete(bid, null);
                }
            });
        }
    }

    private void a(ErrorInfo errorInfo) {
        if (Logger.isLogLevelEnabled(3)) {
            f35543b.d(String.format("Error occurred loading ad for placementId: %s", this.g));
        }
        b(errorInfo);
    }

    private void a(final NativeAdRequest nativeAdRequest) {
        if (b(nativeAdRequest)) {
            VASAds.requestAds(this.f, NativeAd.class, a(this.n, this.g, this.h), f(), new VASAds.AdRequestListener() { // from class: com.verizon.ads.nativeplacement._$$Lambda$NativeAdFactory$QUBC6N01R2Ny2F_NYu8IreLvDos
                @Override // com.verizon.ads.VASAds.AdRequestListener
                public final void onAdReceived(AdSession adSession, ErrorInfo errorInfo, boolean z) {
                    NativeAdFactory.this.b(nativeAdRequest, adSession, errorInfo, z);
                }

                @Override // com.verizon.ads.VASAds.AdRequestListener
                public /* synthetic */ void prepare(AdSession adSession) {
                    VASAds.AdRequestListener._CC.$default$prepare(this, adSession);
                }
            });
        }
    }

    private void a(final NativeAdRequest nativeAdRequest, final AdSession adSession) {
        if (adSession == null) {
            f35543b.e("Unable to load components for null ad session.");
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f35543b.d("Loading components for ad session: ".concat(String.valueOf(adSession)));
        }
        ((NativeAdAdapter) adSession.getAdAdapter()).loadComponents(nativeAdRequest.f35566d, Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "nativeAdComponentsTimeout", 20000), new NativeAdAdapter.LoadComponentsListener() { // from class: com.verizon.ads.nativeplacement._$$Lambda$NativeAdFactory$Wv6njovS7blPaH5ONiPglDesNHk
            @Override // com.verizon.ads.nativeplacement.NativeAdAdapter.LoadComponentsListener
            public final void onComplete(ErrorInfo errorInfo) {
                NativeAdFactory.this.a(nativeAdRequest, adSession, errorInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(NativeAdRequest nativeAdRequest, AdSession adSession, ErrorInfo errorInfo) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(5, new SendToDestinationMessage(nativeAdRequest, adSession, errorInfo)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(NativeAdRequest nativeAdRequest, AdSession adSession, ErrorInfo errorInfo, boolean z) {
        nativeAdRequest.f35564b = z;
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(3, new AdReceivedMessage(nativeAdRequest, adSession, errorInfo, z)));
    }

    private void a(boolean z) {
        if (this.k != null) {
            f35543b.d("Skipping cache replenishment as an ad request is already in progress.");
            return;
        }
        if (this.f35546a.size() <= (this.l >= 0 ? this.l : a(Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "cacheReplenishmentThreshold", 3), 3))) {
            NativeAdRequest nativeAdRequest = new NativeAdRequest(z);
            nativeAdRequest.f = AdDestination.CACHE;
            a(nativeAdRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(Message message) {
        switch (message.what) {
            case 1:
                NativeAdRequest nativeAdRequest = (NativeAdRequest) message.obj;
                if (this.j) {
                    f35543b.e("Load Ad failed. Factory has been destroyed.");
                    return true;
                }
                AdSession c2 = c();
                nativeAdRequest.f = AdDestination.CALLBACK;
                if (c2 != null) {
                    a(c2, nativeAdRequest);
                    a(nativeAdRequest.f35566d);
                    return true;
                }
                a(nativeAdRequest);
                return true;
            case 2:
                final NativeAdRequest nativeAdRequest2 = (NativeAdRequest) message.obj;
                if (this.j) {
                    f35543b.e("Load Bid failed. Factory has been destroyed.");
                    return true;
                } else if (!b(nativeAdRequest2)) {
                    return true;
                } else {
                    nativeAdRequest2.f = AdDestination.CALLBACK;
                    VASAds.requestAd(this.f, nativeAdRequest2.e, NativeAd.class, f(), new VASAds.AdRequestListener() { // from class: com.verizon.ads.nativeplacement._$$Lambda$NativeAdFactory$FLwOKkd_bpjb8bQikM8Nnu7dGZ8
                        @Override // com.verizon.ads.VASAds.AdRequestListener
                        public final void onAdReceived(AdSession adSession, ErrorInfo errorInfo, boolean z) {
                            NativeAdFactory.this.a(nativeAdRequest2, adSession, errorInfo, z);
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
                NativeAdRequest nativeAdRequest3 = adReceivedMessage.f35557a;
                if (nativeAdRequest3.f35565c || this.j) {
                    f35543b.d("Ignoring ad received after abort or destroy.");
                    return true;
                }
                nativeAdRequest3.f35564b = adReceivedMessage.f35560d;
                if (adReceivedMessage.f35559c != null) {
                    Logger logger = f35543b;
                    logger.e("Server responded with an error when attempting to get native ads: " + adReceivedMessage.f35559c.toString());
                    e();
                    if (!AdDestination.CALLBACK.equals(nativeAdRequest3.f)) {
                        return true;
                    }
                    a(adReceivedMessage.f35559c);
                    return true;
                } else if (nativeAdRequest3.f35564b && nativeAdRequest3.h.isEmpty() && nativeAdRequest3.g == null && adReceivedMessage.f35558b == null) {
                    e();
                    return true;
                } else if (nativeAdRequest3.g != null) {
                    if (adReceivedMessage.f35558b == null) {
                        return true;
                    }
                    nativeAdRequest3.h.add(adReceivedMessage.f35558b);
                    return true;
                } else if (adReceivedMessage.f35558b == null) {
                    return true;
                } else {
                    nativeAdRequest3.g = adReceivedMessage.f35558b;
                    a(nativeAdRequest3, nativeAdRequest3.g);
                    return true;
                }
            case 4:
                d();
                return true;
            case 5:
                SendToDestinationMessage sendToDestinationMessage = (SendToDestinationMessage) message.obj;
                NativeAdRequest nativeAdRequest4 = sendToDestinationMessage.f35568a;
                if (nativeAdRequest4.f35565c || this.j) {
                    f35543b.d("Ignoring send to destination notification after abort or destroy.");
                    return true;
                }
                AdSession adSession = sendToDestinationMessage.f35569b;
                if (AdDestination.CACHE.equals(nativeAdRequest4.f)) {
                    if (adSession != null) {
                        if (Logger.isLogLevelEnabled(3)) {
                            f35543b.d(String.format("Caching ad session: %s", adSession));
                        }
                        this.f35546a.add(new CachedAd(adSession, a()));
                    }
                } else if (sendToDestinationMessage.f35570c == null) {
                    nativeAdRequest4.f = AdDestination.CACHE;
                    a(adSession, nativeAdRequest4);
                } else if (nativeAdRequest4.f35564b && nativeAdRequest4.h.isEmpty()) {
                    a(sendToDestinationMessage.f35570c);
                    e();
                    return true;
                }
                Handler handler = this.i;
                handler.sendMessage(handler.obtainMessage(7, new ProcessNextAdSessionMessage(nativeAdRequest4)));
                return true;
            case 6:
                b();
                return true;
            case 7:
                NativeAdRequest nativeAdRequest5 = ((ProcessNextAdSessionMessage) message.obj).f35567a;
                if (nativeAdRequest5.f35565c || this.j) {
                    f35543b.d("Ignoring process next ad session after abort or destroy.");
                    return true;
                } else if (nativeAdRequest5.h.isEmpty()) {
                    f35543b.d("No Ad Sessions queued for processing.");
                    nativeAdRequest5.g = null;
                    if (!nativeAdRequest5.f35564b) {
                        return true;
                    }
                    e();
                    return true;
                } else {
                    nativeAdRequest5.g = nativeAdRequest5.h.remove(0);
                    a(nativeAdRequest5, nativeAdRequest5.g);
                    return true;
                }
            case 8:
                a(false);
                return true;
            default:
                f35543b.w(String.format("Received unexpected message with what = %d", Integer.valueOf(message.what)));
                return true;
        }
    }

    private void b() {
        if (this.j) {
            f35543b.w("Factory has already been destroyed.");
            return;
        }
        d();
        CachedAd remove = this.f35546a.remove();
        while (true) {
            CachedAd cachedAd = remove;
            if (cachedAd != null) {
                ((NativeAdAdapter) cachedAd.f35561a.getAdAdapter()).release();
                remove = this.f35546a.remove();
            } else {
                this.j = true;
                return;
            }
        }
    }

    private void b(final ErrorInfo errorInfo) {
        f35543b.e(errorInfo.toString());
        final NativeAdFactoryListener nativeAdFactoryListener = this.m;
        if (nativeAdFactoryListener != null) {
            e.execute(new SafeRunnable() { // from class: com.verizon.ads.nativeplacement.NativeAdFactory.4
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    nativeAdFactoryListener.onError(NativeAdFactory.this, errorInfo);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(NativeAdRequest nativeAdRequest, AdSession adSession, ErrorInfo errorInfo, boolean z) {
        nativeAdRequest.f35564b = z;
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(3, new AdReceivedMessage(nativeAdRequest, adSession, errorInfo, z)));
    }

    private boolean b(NativeAdRequest nativeAdRequest) {
        if (this.k != null) {
            b(new ErrorInfo(f35544c, "Only one active load request allowed at a time", -2));
            return false;
        }
        this.k = nativeAdRequest;
        return true;
    }

    private AdSession c() {
        CachedAd remove;
        while (true) {
            remove = this.f35546a.remove();
            if (remove == null || remove.f35562b == 0 || System.currentTimeMillis() < remove.f35562b) {
                break;
            } else if (Logger.isLogLevelEnabled(3)) {
                f35543b.d(String.format("Ad in cache expired for placementId: %s", this.g));
            }
        }
        if (remove != null) {
            return remove.f35561a;
        }
        f35543b.i("No ads in cache.");
        return null;
    }

    private void d() {
        if (this.j) {
            f35543b.e("Abort failed. Factory has been destroyed.");
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f35543b.d(String.format("Aborting load request for placementId: %s", this.g));
        }
        if (this.k == null) {
            f35543b.d("No active load to abort");
            return;
        }
        if (!(this.k.g == null || this.k.g.getAdAdapter() == null)) {
            ((NativeAdAdapter) this.k.g.getAdAdapter()).abortLoadComponents();
        }
        for (AdSession adSession : this.k.h) {
            if (!(adSession == null || adSession.getAdAdapter() == null)) {
                ((NativeAdAdapter) adSession.getAdAdapter()).abortLoadComponents();
            }
        }
        this.k.f35565c = true;
        e();
    }

    private void e() {
        f35543b.d("Clearing the active ad request.");
        this.k = null;
    }

    private static int f() {
        return Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "nativeAdRequestTimeout", 30000);
    }

    public static void requestBid(Context context, String str, String[] strArr, RequestMetadata requestMetadata, final BidRequestListener bidRequestListener) {
        VASAds.requestBid(context, a(requestMetadata, str, strArr), f(), new BidRequestListener() { // from class: com.verizon.ads.nativeplacement._$$Lambda$NativeAdFactory$HhylDZqh2bmyc4jXhDA6hj7C3FY
            @Override // com.verizon.ads.BidRequestListener
            public final void onComplete(Bid bid, ErrorInfo errorInfo) {
                NativeAdFactory.a(BidRequestListener.this, bid, errorInfo);
            }
        });
    }

    public void abortLoad() {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(4));
    }

    public void destroy() {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(6));
    }

    public String getPlacementId() {
        return this.g;
    }

    public RequestMetadata getRequestMetadata() {
        return this.n;
    }

    public void load(Bid bid, NativeAd.NativeAdListener nativeAdListener) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(2, new NativeAdRequest(bid, false, nativeAdListener)));
    }

    public void load(NativeAd.NativeAdListener nativeAdListener) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(1, new NativeAdRequest(false, nativeAdListener)));
    }

    public NativeAd loadAdFromCache(NativeAd.NativeAdListener nativeAdListener) {
        AdSession c2 = c();
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(8));
        if (c2 == null) {
            f35543b.w("No ads found in cache");
            return null;
        }
        c2.getAdAdapter();
        if (Logger.isLogLevelEnabled(3)) {
            f35543b.d(String.format("Ad loaded from cache: %s", c2));
        }
        return new NativeAd(this.g, c2, nativeAdListener);
    }

    public void loadWithoutAssets(Bid bid, NativeAd.NativeAdListener nativeAdListener) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(2, new NativeAdRequest(bid, true, nativeAdListener)));
    }

    public void loadWithoutAssets(NativeAd.NativeAdListener nativeAdListener) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(1, new NativeAdRequest(true, nativeAdListener)));
    }

    public void prefetch() {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(8));
    }

    public void setCacheReplenishmentThresholdOverride(int i) {
        this.l = a(i, -1);
    }

    public void setListener(NativeAdFactoryListener nativeAdFactoryListener) {
        this.m = nativeAdFactoryListener;
    }

    public void setRequestMetaData(RequestMetadata requestMetadata) {
        this.n = requestMetadata;
    }
}

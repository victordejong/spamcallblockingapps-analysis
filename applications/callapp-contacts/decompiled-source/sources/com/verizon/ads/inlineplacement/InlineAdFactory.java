package com.verizon.ads.inlineplacement;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.ViewGroup;
import com.explorestack.iab.mraid.h;
import com.verizon.ads.AdSession;
import com.verizon.ads.Bid;
import com.verizon.ads.BidRequestListener;
import com.verizon.ads.Configuration;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.RequestMetadata;
import com.verizon.ads.VASAds;
import com.verizon.ads.inlineplacement.InlineAdAdapter;
import com.verizon.ads.inlineplacement.InlineAdView;
import com.verizon.ads.support.Cache;
import com.verizon.ads.support.SafeRunnable;
import com.verizon.ads.support.SimpleCache;
import com.verizon.ads.support.utils.ViewUtils;
import com.verizon.ads.utils.ThreadUtils;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdFactory.class */
public class InlineAdFactory {
    public static final int ERROR_AD_LOAD_IN_PROGRESS = -3;
    public static final int ERROR_NO_WATERFALL_PROVIDER = -1;

    /* renamed from: c  reason: collision with root package name */
    private static final HandlerThread f35389c;

    /* renamed from: b  reason: collision with root package name */
    final Handler f35391b;
    private final String e;
    private final Context f;
    private final Cache<CachedAd> g;
    private volatile InlineAdRequest i;
    private InlineAdFactoryListener k;
    private RequestMetadata l;
    private List<AdSize> m;

    /* renamed from: a  reason: collision with root package name */
    static final Logger f35388a = Logger.getInstance(InlineAdFactory.class);

    /* renamed from: d  reason: collision with root package name */
    private static final ExecutorService f35390d = Executors.newFixedThreadPool(1);
    private volatile boolean h = false;
    private volatile int j = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdFactory$AdDestination.class */
    public enum AdDestination {
        VIEW,
        CACHE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage.class */
    public static class AdReceivedMessage {

        /* renamed from: a  reason: collision with root package name */
        final InlineAdRequest f35405a;

        /* renamed from: b  reason: collision with root package name */
        final AdSession f35406b;

        /* renamed from: c  reason: collision with root package name */
        final ErrorInfo f35407c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f35408d;

        AdReceivedMessage(InlineAdRequest inlineAdRequest, AdSession adSession, ErrorInfo errorInfo, boolean z) {
            this.f35405a = inlineAdRequest;
            this.f35406b = adSession;
            this.f35407c = errorInfo;
            this.f35408d = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdFactory$CachedAd.class */
    public static class CachedAd {

        /* renamed from: a  reason: collision with root package name */
        final AdSession f35409a;

        /* renamed from: b  reason: collision with root package name */
        final long f35410b;

        CachedAd(AdSession adSession, long j) {
            this.f35409a = adSession;
            this.f35410b = j;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener.class */
    public interface InlineAdFactoryListener {
        void onError(InlineAdFactory inlineAdFactory, ErrorInfo errorInfo);

        void onLoaded(InlineAdFactory inlineAdFactory, InlineAdView inlineAdView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest.class */
    public static class InlineAdRequest {

        /* renamed from: a  reason: collision with root package name */
        boolean f35411a;

        /* renamed from: b  reason: collision with root package name */
        boolean f35412b;

        /* renamed from: c  reason: collision with root package name */
        Bid f35413c;

        /* renamed from: d  reason: collision with root package name */
        AdDestination f35414d;
        AdSession e;
        List<AdSession> f = new ArrayList();
        InlineAdView.InlineAdListener g;

        InlineAdRequest() {
        }

        InlineAdRequest(Bid bid, InlineAdView.InlineAdListener inlineAdListener) {
            this.f35413c = bid;
            this.g = inlineAdListener;
        }

        final void a() {
            AdSession adSession = this.e;
            if (!(adSession == null || adSession.getAdAdapter() == null)) {
                ((InlineAdAdapter) this.e.getAdAdapter()).abortLoad();
            }
            for (AdSession adSession2 : this.f) {
                if (!(adSession2 == null || adSession2.getAdAdapter() == null)) {
                    ((InlineAdAdapter) adSession2.getAdAdapter()).abortLoad();
                }
            }
            this.f35412b = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdFactory$ProcessNextAdSessionMessage.class */
    public static class ProcessNextAdSessionMessage {

        /* renamed from: a  reason: collision with root package name */
        final InlineAdRequest f35415a;

        ProcessNextAdSessionMessage(InlineAdRequest inlineAdRequest) {
            this.f35415a = inlineAdRequest;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdFactory$RefreshAdRequest.class */
    public static class RefreshAdRequest extends InlineAdRequest {
        InlineAdView h;

        /* JADX INFO: Access modifiers changed from: package-private */
        public RefreshAdRequest(InlineAdView inlineAdView) {
            this.h = inlineAdView;
            this.f35414d = AdDestination.VIEW;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdFactory$SendToDestinationMessage.class */
    public static class SendToDestinationMessage {

        /* renamed from: a  reason: collision with root package name */
        final InlineAdRequest f35416a;

        /* renamed from: b  reason: collision with root package name */
        final ErrorInfo f35417b;

        /* renamed from: c  reason: collision with root package name */
        final AdSession f35418c;

        SendToDestinationMessage(InlineAdRequest inlineAdRequest, AdSession adSession, ErrorInfo errorInfo) {
            this.f35416a = inlineAdRequest;
            this.f35417b = errorInfo;
            this.f35418c = adSession;
        }
    }

    static {
        HandlerThread handlerThread = new HandlerThread(InlineAdFactory.class.getName());
        f35389c = handlerThread;
        handlerThread.start();
    }

    public InlineAdFactory(Context context, String str, List<AdSize> list, InlineAdFactoryListener inlineAdFactoryListener) {
        if (Logger.isLogLevelEnabled(3)) {
            f35388a.d(String.format("Creating inline ad factory for placement Id '%s'", str));
        }
        this.e = str;
        this.f = context;
        this.k = inlineAdFactoryListener;
        this.m = list;
        this.g = new SimpleCache();
        this.f35391b = new Handler(f35389c.getLooper(), new Handler.Callback() { // from class: com.verizon.ads.inlineplacement._$$Lambda$InlineAdFactory$RANw6cQmuBJPmf3RsmQ4M19kGnI
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean a2;
                a2 = InlineAdFactory.this.a(message);
                return a2;
            }
        });
    }

    private static int a(int i, int i2) {
        return (i < 0 || i > 30) ? i2 : i;
    }

    private static RequestMetadata a(RequestMetadata requestMetadata, String str, List<AdSize> list, Integer num) {
        if (requestMetadata == null) {
            requestMetadata = VASAds.getRequestMetadata();
        }
        if (list == null || list.isEmpty()) {
            f35388a.w("AdSizes cannot be null or empty");
            return requestMetadata;
        } else if (str == null) {
            f35388a.w("Placement id cannot be null");
            return requestMetadata;
        } else {
            ArrayList arrayList = new ArrayList();
            for (AdSize adSize : list) {
                if (adSize.f35387b <= 0 || adSize.f35386a <= 0) {
                    f35388a.w("Ad size dimensions must be greater than zero.  Not using AdSize: ".concat(String.valueOf(adSize)));
                } else {
                    arrayList.add(adSize);
                }
            }
            RequestMetadata.Builder builder = new RequestMetadata.Builder(requestMetadata);
            Map<String, Object> placementData = builder.getPlacementData();
            Map<String, Object> map = placementData;
            if (placementData == null) {
                map = new HashMap<>();
            }
            map.put("type", "inline");
            map.put("id", str);
            map.put(VerizonSSPWaterfallProvider.PLACEMENT_DATA_AD_SIZES_KEY, a(arrayList));
            if (num != null) {
                map.put(VerizonSSPWaterfallProvider.PLACEMENT_DATA_REFRESH_RATE_KEY, num);
            }
            return builder.setPlacementData(map).build();
        }
    }

    private static List<Map<String, Integer>> a(List<AdSize> list) {
        HashMap hashMap;
        if (list.isEmpty()) {
            f35388a.w("AdSizes array cannot be null or empty");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (AdSize adSize : list) {
            if (adSize == null) {
                f35388a.w("AdSize cannot be null");
                hashMap = null;
            } else {
                hashMap = new HashMap();
                hashMap.put(h.f19142a, Integer.valueOf(adSize.f35387b));
                hashMap.put("w", Integer.valueOf(adSize.f35386a));
            }
            arrayList.add(hashMap);
        }
        return arrayList;
    }

    private void a(final AdSession adSession, final InlineAdView.InlineAdListener inlineAdListener, final InlineAdView inlineAdView) {
        if (inlineAdView != null) {
            if (Logger.isLogLevelEnabled(3)) {
                f35388a.d(String.format("Ad refreshed: %s", adSession));
            }
            InlineAdView.f35420b.post(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdView.2
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (inlineAdView.a()) {
                        InlineAdView.f35419a.d("Inline ad destroyed before being refreshed");
                        return;
                    }
                    InlineAdAdapter inlineAdAdapter = (InlineAdAdapter) inlineAdView.g.getAdAdapter();
                    if (inlineAdAdapter != null) {
                        if (inlineAdAdapter.isResized() || inlineAdAdapter.isExpanded()) {
                            InlineAdView.f35419a.d("Inline ad expanded or resized. Stopping refresh.");
                            return;
                        } else {
                            inlineAdAdapter.setListener(null);
                            inlineAdAdapter.release();
                        }
                    }
                    inlineAdView.g.release();
                    inlineAdView.g = adSession;
                    InlineAdAdapter inlineAdAdapter2 = (InlineAdAdapter) adSession.getAdAdapter();
                    inlineAdView.n = inlineAdAdapter2.getAdSize();
                    inlineAdAdapter2.setListener(inlineAdView.l);
                    inlineAdView.a(inlineAdAdapter2.getView());
                    inlineAdView.removeAllViews();
                    inlineAdView.addView(inlineAdAdapter2.getView(), new ViewGroup.LayoutParams(new ViewGroup.LayoutParams(ViewUtils.convertDipsToPixels(inlineAdView.o, inlineAdView.n.getWidth()), ViewUtils.convertDipsToPixels(inlineAdView.o, inlineAdView.n.getHeight()))));
                    InlineAdListener inlineAdListener2 = inlineAdView.e;
                    if (inlineAdListener2 != null) {
                        inlineAdListener2.onAdRefreshed(inlineAdView);
                    }
                }
            });
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f35388a.d(String.format("Ad loaded: %s", adSession));
        }
        ThreadUtils.postOnUiThread(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdFactory.3
            @Override // com.verizon.ads.support.SafeRunnable
            public void safeRun() {
                InlineAdAdapter inlineAdAdapter = (InlineAdAdapter) adSession.getAdAdapter();
                final InlineAdView inlineAdView2 = new InlineAdView(InlineAdFactory.this.f, InlineAdFactory.this.e, inlineAdAdapter.getView(), inlineAdAdapter.getAdSize(), adSession, InlineAdFactory.this.m, inlineAdListener, new InlineAdViewRefresher(InlineAdFactory.this));
                final InlineAdFactoryListener inlineAdFactoryListener = InlineAdFactory.this.k;
                if (inlineAdFactoryListener != null) {
                    InlineAdFactory.f35390d.execute(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdFactory.3.1
                        @Override // com.verizon.ads.support.SafeRunnable
                        public void safeRun() {
                            inlineAdFactoryListener.onLoaded(InlineAdFactory.this, inlineAdView2);
                        }
                    });
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(final BidRequestListener bidRequestListener, final Bid bid, final ErrorInfo errorInfo) {
        if (errorInfo != null) {
            if (Logger.isLogLevelEnabled(3)) {
                f35388a.d(String.format("Error requesting bid: %s", errorInfo));
            }
            if (bidRequestListener != null) {
                f35390d.execute(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdFactory.2
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
            f35388a.d(String.format("Bid received: %s", bid));
        }
        if (bidRequestListener != null) {
            f35390d.execute(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdFactory.1
                @Override // com.verizon.ads.support.SafeRunnable
                public final void safeRun() {
                    BidRequestListener.this.onComplete(bid, null);
                }
            });
        }
    }

    private void a(ErrorInfo errorInfo) {
        if (Logger.isLogLevelEnabled(3)) {
            f35388a.d(String.format("Error occurred loading ad for placementId: %s", this.e));
        }
        b(errorInfo);
    }

    private void a(final InlineAdRequest inlineAdRequest) {
        if (c(inlineAdRequest)) {
            Integer num = null;
            if (inlineAdRequest instanceof RefreshAdRequest) {
                num = ((RefreshAdRequest) inlineAdRequest).h.f;
            }
            VASAds.requestAds(this.f, InlineAdView.class, a(this.l, this.e, this.m, num), b(), new VASAds.AdRequestListener() { // from class: com.verizon.ads.inlineplacement._$$Lambda$InlineAdFactory$VMK9U7D14tCQcKYx3BW_EE0p3yY
                @Override // com.verizon.ads.VASAds.AdRequestListener
                public final void onAdReceived(AdSession adSession, ErrorInfo errorInfo, boolean z) {
                    InlineAdFactory.this.a(inlineAdRequest, adSession, errorInfo, z);
                }

                @Override // com.verizon.ads.VASAds.AdRequestListener
                public /* synthetic */ void prepare(AdSession adSession) {
                    VASAds.AdRequestListener._CC.$default$prepare(this, adSession);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(InlineAdRequest inlineAdRequest, AdSession adSession, ErrorInfo errorInfo) {
        Handler handler = this.f35391b;
        handler.sendMessage(handler.obtainMessage(6, new SendToDestinationMessage(inlineAdRequest, adSession, errorInfo)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(InlineAdRequest inlineAdRequest, AdSession adSession, ErrorInfo errorInfo, boolean z) {
        Handler handler = this.f35391b;
        handler.sendMessage(handler.obtainMessage(4, new AdReceivedMessage(inlineAdRequest, adSession, errorInfo, z)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(Message message) {
        int i = message.what;
        InlineAdView inlineAdView = null;
        switch (i) {
            case 1:
                InlineAdView.InlineAdListener inlineAdListener = (InlineAdView.InlineAdListener) message.obj;
                if (this.h) {
                    f35388a.e("Load Ad failed. Factory has been destroyed.");
                    return true;
                }
                AdSession f = f();
                if (f != null) {
                    a(f, inlineAdListener, (InlineAdView) null);
                    d();
                    return true;
                }
                InlineAdRequest inlineAdRequest = new InlineAdRequest();
                inlineAdRequest.g = inlineAdListener;
                inlineAdRequest.f35414d = AdDestination.VIEW;
                a(inlineAdRequest);
                return true;
            case 2:
                final InlineAdRequest inlineAdRequest2 = (InlineAdRequest) message.obj;
                if (this.h) {
                    f35388a.e("Load Bid failed. Factory has been destroyed.");
                    return true;
                } else if (!c(inlineAdRequest2)) {
                    return true;
                } else {
                    VASAds.requestAd(this.f, inlineAdRequest2.f35413c, InlineAdView.class, b(), new VASAds.AdRequestListener() { // from class: com.verizon.ads.inlineplacement._$$Lambda$InlineAdFactory$8d3cAUK8beQvf59eI_CDRhJcNWQ
                        @Override // com.verizon.ads.VASAds.AdRequestListener
                        public final void onAdReceived(AdSession adSession, ErrorInfo errorInfo, boolean z) {
                            InlineAdFactory.this.b(inlineAdRequest2, adSession, errorInfo, z);
                        }

                        @Override // com.verizon.ads.VASAds.AdRequestListener
                        public /* synthetic */ void prepare(AdSession adSession) {
                            VASAds.AdRequestListener._CC.$default$prepare(this, adSession);
                        }
                    });
                    return true;
                }
            case 3:
                RefreshAdRequest refreshAdRequest = (RefreshAdRequest) message.obj;
                if (this.h) {
                    f35388a.e("Refresh Ad failed. Factory has been destroyed.");
                    return true;
                }
                AdSession f2 = f();
                if (f2 != null) {
                    a(f2, (InlineAdView.InlineAdListener) null, refreshAdRequest.h);
                    d();
                    return true;
                }
                a(refreshAdRequest);
                return true;
            case 4:
                AdReceivedMessage adReceivedMessage = (AdReceivedMessage) message.obj;
                InlineAdRequest inlineAdRequest3 = adReceivedMessage.f35405a;
                if (inlineAdRequest3.f35412b || this.h) {
                    f35388a.d("Ignoring ad received after abort or destroy.");
                    return true;
                }
                inlineAdRequest3.f35411a = adReceivedMessage.f35408d;
                if (adReceivedMessage.f35407c != null) {
                    Logger logger = f35388a;
                    logger.e("Server responded with an error when attempting to get inline ads: " + adReceivedMessage.f35407c.toString());
                    e();
                    if (!AdDestination.VIEW.equals(inlineAdRequest3.f35414d)) {
                        return true;
                    }
                    a(adReceivedMessage.f35407c);
                    return true;
                } else if (inlineAdRequest3.f35411a && inlineAdRequest3.f.isEmpty() && inlineAdRequest3.e == null && adReceivedMessage.f35406b == null) {
                    e();
                    return true;
                } else if (adReceivedMessage.f35406b == null) {
                    f35388a.e("Cannot process Ad Session. The ad adapter is null.");
                    return true;
                } else if (inlineAdRequest3.e != null) {
                    inlineAdRequest3.f.add(adReceivedMessage.f35406b);
                    return true;
                } else {
                    inlineAdRequest3.e = adReceivedMessage.f35406b;
                    b(inlineAdRequest3);
                    return true;
                }
            case 5:
            default:
                f35388a.w(String.format("Received unexpected message with what = %d", Integer.valueOf(message.what)));
                return true;
            case 6:
                SendToDestinationMessage sendToDestinationMessage = (SendToDestinationMessage) message.obj;
                InlineAdRequest inlineAdRequest4 = sendToDestinationMessage.f35416a;
                if (inlineAdRequest4.f35412b || this.h) {
                    f35388a.d("Ignoring send ad to destination after abort or destroy.");
                    return true;
                }
                if (inlineAdRequest4.f35411a) {
                    e();
                }
                AdSession adSession = sendToDestinationMessage.f35418c;
                if (AdDestination.CACHE.equals(inlineAdRequest4.f35414d)) {
                    if (adSession != null) {
                        if (Logger.isLogLevelEnabled(3)) {
                            f35388a.d(String.format("Caching ad session: %s", adSession));
                        }
                        Cache<CachedAd> cache = this.g;
                        int i2 = Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "inlineAdExpirationTimeout", 3600000);
                        cache.add(new CachedAd(adSession, i2 > 0 ? System.currentTimeMillis() + i2 : 0L));
                    }
                } else if (sendToDestinationMessage.f35417b == null) {
                    inlineAdRequest4.f35414d = AdDestination.CACHE;
                    if (inlineAdRequest4 instanceof RefreshAdRequest) {
                        inlineAdView = ((RefreshAdRequest) inlineAdRequest4).h;
                    }
                    a(adSession, inlineAdRequest4.g, inlineAdView);
                } else if (inlineAdRequest4.f35411a && inlineAdRequest4.f.isEmpty()) {
                    a(sendToDestinationMessage.f35417b);
                    e();
                    return true;
                }
                Handler handler = this.f35391b;
                handler.sendMessage(handler.obtainMessage(9, new ProcessNextAdSessionMessage(inlineAdRequest4)));
                return true;
            case 7:
                g();
                return true;
            case 8:
                c();
                return true;
            case 9:
                InlineAdRequest inlineAdRequest5 = ((ProcessNextAdSessionMessage) message.obj).f35415a;
                if (inlineAdRequest5.f35412b || this.h) {
                    f35388a.d("Ignoring process next ad session after abort or destroy.");
                    return true;
                } else if (inlineAdRequest5.f.isEmpty()) {
                    f35388a.d("No Ad Sessions queued for processing.");
                    inlineAdRequest5.e = null;
                    if (!inlineAdRequest5.f35411a) {
                        return true;
                    }
                    e();
                    return true;
                } else {
                    inlineAdRequest5.e = inlineAdRequest5.f.remove(0);
                    b(inlineAdRequest5);
                    return true;
                }
            case 10:
                d();
                return true;
        }
    }

    private static int b() {
        return Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "inlineAdRequestTimeout", 10000);
    }

    private void b(final ErrorInfo errorInfo) {
        f35388a.e(errorInfo.toString());
        final InlineAdFactoryListener inlineAdFactoryListener = this.k;
        if (inlineAdFactoryListener != null) {
            f35390d.execute(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdFactory.4
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    inlineAdFactoryListener.onError(InlineAdFactory.this, errorInfo);
                }
            });
        }
    }

    private void b(final InlineAdRequest inlineAdRequest) {
        final AdSession adSession = inlineAdRequest.e;
        if (Logger.isLogLevelEnabled(3)) {
            f35388a.d("Loading view for ad session: ".concat(String.valueOf(adSession)));
        }
        if (adSession.getAdAdapter() == null) {
            f35388a.e("Cannot load the ad view for a null adapter.");
        } else {
            ((InlineAdAdapter) adSession.getAdAdapter()).loadView(this.f, Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "inlineAdViewTimeout", 5000), new InlineAdAdapter.LoadViewListener() { // from class: com.verizon.ads.inlineplacement._$$Lambda$InlineAdFactory$oQFUNOPkuiN7pFfpr6wIxmgoqoU
                @Override // com.verizon.ads.inlineplacement.InlineAdAdapter.LoadViewListener
                public final void onComplete(ErrorInfo errorInfo) {
                    InlineAdFactory.this.a(inlineAdRequest, adSession, errorInfo);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(InlineAdRequest inlineAdRequest, AdSession adSession, ErrorInfo errorInfo, boolean z) {
        inlineAdRequest.f35411a = z;
        Handler handler = this.f35391b;
        handler.sendMessage(handler.obtainMessage(4, new AdReceivedMessage(inlineAdRequest, adSession, errorInfo, z)));
    }

    private void c() {
        if (this.h) {
            f35388a.w("Factory has already been destroyed.");
            return;
        }
        g();
        CachedAd remove = this.g.remove();
        while (true) {
            CachedAd cachedAd = remove;
            if (cachedAd != null) {
                ((InlineAdAdapter) cachedAd.f35409a.getAdAdapter()).release();
                remove = this.g.remove();
            } else {
                this.h = true;
                return;
            }
        }
    }

    private boolean c(InlineAdRequest inlineAdRequest) {
        if (this.i != null) {
            b(new ErrorInfo(InlineAdFactory.class.getName(), "Only one active load request allowed at a time", -3));
            return false;
        }
        this.i = inlineAdRequest;
        return true;
    }

    private void d() {
        if (this.i != null) {
            f35388a.d("Skipping cache replenishment as an ad request is already in progress.");
            return;
        }
        if (this.g.size() <= (this.j >= 0 ? this.j : a(Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "cacheReplenishmentThreshold", 3), 3))) {
            InlineAdRequest inlineAdRequest = new InlineAdRequest();
            inlineAdRequest.f35414d = AdDestination.CACHE;
            a(inlineAdRequest);
        }
    }

    private void e() {
        f35388a.d("Clearing the active ad request.");
        this.i = null;
    }

    private AdSession f() {
        CachedAd remove;
        while (true) {
            remove = this.g.remove();
            if (remove == null || remove.f35410b == 0 || System.currentTimeMillis() < remove.f35410b) {
                break;
            } else if (Logger.isLogLevelEnabled(3)) {
                f35388a.d(String.format("Ad in cache expired for placementId: %s", this.e));
            }
        }
        if (remove != null) {
            return remove.f35409a;
        }
        f35388a.i("No ads in cache.");
        return null;
    }

    private void g() {
        if (this.h) {
            f35388a.e("Abort failed. Factory has been destroyed.");
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f35388a.d(String.format("Aborting load request for placementId: %s", this.e));
        }
        if (this.i == null) {
            f35388a.d("No active load to abort");
            return;
        }
        this.i.a();
        e();
    }

    public static void requestBid(Context context, String str, List<AdSize> list, RequestMetadata requestMetadata, final BidRequestListener bidRequestListener) {
        VASAds.requestBid(context, a(requestMetadata, str, list, (Integer) null), b(), new BidRequestListener() { // from class: com.verizon.ads.inlineplacement._$$Lambda$InlineAdFactory$ekdGBlnbW5yMdriLHFDJ20E6M_Y
            @Override // com.verizon.ads.BidRequestListener
            public final void onComplete(Bid bid, ErrorInfo errorInfo) {
                InlineAdFactory.a(BidRequestListener.this, bid, errorInfo);
            }
        });
    }

    public void abortLoad() {
        Handler handler = this.f35391b;
        handler.sendMessage(handler.obtainMessage(7));
    }

    public void destroy() {
        Handler handler = this.f35391b;
        handler.sendMessage(handler.obtainMessage(8));
    }

    public List<AdSize> getAdSizes() {
        return this.m;
    }

    public String getPlacementId() {
        return this.e;
    }

    public RequestMetadata getRequestMetadata() {
        return this.l;
    }

    public void load(Bid bid, InlineAdView.InlineAdListener inlineAdListener) {
        Handler handler = this.f35391b;
        handler.sendMessage(handler.obtainMessage(2, new InlineAdRequest(bid, inlineAdListener)));
    }

    public void load(InlineAdView.InlineAdListener inlineAdListener) {
        Handler handler = this.f35391b;
        handler.sendMessage(handler.obtainMessage(1, inlineAdListener));
    }

    public InlineAdView loadAdFromCache(InlineAdView.InlineAdListener inlineAdListener) {
        AdSession f = f();
        Handler handler = this.f35391b;
        handler.sendMessage(handler.obtainMessage(10));
        if (f == null) {
            f35388a.w("No ads found in cache");
            return null;
        }
        InlineAdAdapter inlineAdAdapter = (InlineAdAdapter) f.getAdAdapter();
        if (Logger.isLogLevelEnabled(3)) {
            f35388a.d(String.format("Ad loaded from cache: %s", f));
        }
        return new InlineAdView(this.f, this.e, inlineAdAdapter.getView(), inlineAdAdapter.getAdSize(), f, this.m, inlineAdListener, new InlineAdViewRefresher(this));
    }

    public void prefetch() {
        Handler handler = this.f35391b;
        handler.sendMessage(handler.obtainMessage(10));
    }

    public void setAdSizes(List<AdSize> list) {
        this.m = list;
    }

    public void setCacheReplenishmentThresholdOverride(int i) {
        this.j = a(i, -1);
    }

    public void setListener(InlineAdFactoryListener inlineAdFactoryListener) {
        this.k = inlineAdFactoryListener;
    }

    public void setRequestMetaData(RequestMetadata requestMetadata) {
        this.l = requestMetadata;
    }
}

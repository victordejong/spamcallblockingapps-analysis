package com.verizon.ads.inlineplacement;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.ViewGroup;
import com.explorestack.iab.mraid.C9568h;
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

    /* renamed from: c */
    private static final HandlerThread f61325c;

    /* renamed from: b */
    final Handler f61327b;

    /* renamed from: e */
    private final String f61328e;

    /* renamed from: f */
    private final Context f61329f;

    /* renamed from: g */
    private final Cache<CachedAd> f61330g;

    /* renamed from: i */
    private volatile InlineAdRequest f61332i;

    /* renamed from: k */
    private InlineAdFactoryListener f61334k;

    /* renamed from: l */
    private RequestMetadata f61335l;

    /* renamed from: m */
    private List<AdSize> f61336m;

    /* renamed from: a */
    static final Logger f61324a = Logger.getInstance(InlineAdFactory.class);

    /* renamed from: d */
    private static final ExecutorService f61326d = Executors.newFixedThreadPool(1);

    /* renamed from: h */
    private volatile boolean f61331h = false;

    /* renamed from: j */
    private volatile int f61333j = -1;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdFactory$AdDestination.class */
    public enum AdDestination {
        VIEW,
        CACHE
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage.class */
    public static class AdReceivedMessage {

        /* renamed from: a */
        final InlineAdRequest f61350a;

        /* renamed from: b */
        final AdSession f61351b;

        /* renamed from: c */
        final ErrorInfo f61352c;

        /* renamed from: d */
        final boolean f61353d;

        AdReceivedMessage(InlineAdRequest inlineAdRequest, AdSession adSession, ErrorInfo errorInfo, boolean z) {
            this.f61350a = inlineAdRequest;
            this.f61351b = adSession;
            this.f61352c = errorInfo;
            this.f61353d = z;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdFactory$CachedAd.class */
    public static class CachedAd {

        /* renamed from: a */
        final AdSession f61354a;

        /* renamed from: b */
        final long f61355b;

        CachedAd(AdSession adSession, long j) {
            this.f61354a = adSession;
            this.f61355b = j;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener.class */
    public interface InlineAdFactoryListener {
        void onError(InlineAdFactory inlineAdFactory, ErrorInfo errorInfo);

        void onLoaded(InlineAdFactory inlineAdFactory, InlineAdView inlineAdView);
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest.class */
    public static class InlineAdRequest {

        /* renamed from: a */
        boolean f61356a;

        /* renamed from: b */
        boolean f61357b;

        /* renamed from: c */
        Bid f61358c;

        /* renamed from: d */
        AdDestination f61359d;

        /* renamed from: e */
        AdSession f61360e;

        /* renamed from: f */
        List<AdSession> f61361f = new ArrayList();

        /* renamed from: g */
        InlineAdView.InlineAdListener f61362g;

        InlineAdRequest() {
        }

        InlineAdRequest(Bid bid, InlineAdView.InlineAdListener inlineAdListener) {
            this.f61358c = bid;
            this.f61362g = inlineAdListener;
        }

        /* renamed from: a */
        final void m5481a() {
            AdSession adSession = this.f61360e;
            if (adSession != null && adSession.getAdAdapter() != null) {
                ((InlineAdAdapter) this.f61360e.getAdAdapter()).abortLoad();
            }
            for (AdSession adSession2 : this.f61361f) {
                if (adSession2 != null && adSession2.getAdAdapter() != null) {
                    ((InlineAdAdapter) adSession2.getAdAdapter()).abortLoad();
                }
            }
            this.f61357b = true;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdFactory$ProcessNextAdSessionMessage.class */
    public static class ProcessNextAdSessionMessage {

        /* renamed from: a */
        final InlineAdRequest f61363a;

        ProcessNextAdSessionMessage(InlineAdRequest inlineAdRequest) {
            this.f61363a = inlineAdRequest;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdFactory$RefreshAdRequest.class */
    public static class RefreshAdRequest extends InlineAdRequest {

        /* renamed from: h */
        InlineAdView f61364h;

        public RefreshAdRequest(InlineAdView inlineAdView) {
            this.f61364h = inlineAdView;
            this.f61359d = AdDestination.VIEW;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdFactory$SendToDestinationMessage.class */
    public static class SendToDestinationMessage {

        /* renamed from: a */
        final InlineAdRequest f61365a;

        /* renamed from: b */
        final ErrorInfo f61366b;

        /* renamed from: c */
        final AdSession f61367c;

        SendToDestinationMessage(InlineAdRequest inlineAdRequest, AdSession adSession, ErrorInfo errorInfo) {
            this.f61365a = inlineAdRequest;
            this.f61366b = errorInfo;
            this.f61367c = adSession;
        }
    }

    static {
        HandlerThread handlerThread = new HandlerThread(InlineAdFactory.class.getName());
        f61325c = handlerThread;
        handlerThread.start();
    }

    public InlineAdFactory(Context context, String str, List<AdSize> list, InlineAdFactoryListener inlineAdFactoryListener) {
        if (Logger.isLogLevelEnabled(3)) {
            f61324a.m5567d(String.format("Creating inline ad factory for placement Id '%s'", str));
        }
        this.f61328e = str;
        this.f61329f = context;
        this.f61334k = inlineAdFactoryListener;
        this.f61336m = list;
        this.f61330g = new SimpleCache();
        this.f61327b = new Handler(f61325c.getLooper(), new Handler.Callback() { // from class: com.verizon.ads.inlineplacement._$$Lambda$InlineAdFactory$RANw6cQmuBJPmf3RsmQ4M19kGnI
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean m5504a;
                m5504a = InlineAdFactory.this.m5504a(message);
                return m5504a;
            }
        });
    }

    /* renamed from: a */
    private static int m5505a(int i, int i2) {
        return (i < 0 || i > 30) ? i2 : i;
    }

    /* renamed from: a */
    private static RequestMetadata m5500a(RequestMetadata requestMetadata, String str, List<AdSize> list, Integer num) {
        if (requestMetadata == null) {
            requestMetadata = VASAds.getRequestMetadata();
        }
        if (list == null || list.isEmpty()) {
            f61324a.m5559w("AdSizes cannot be null or empty");
            return requestMetadata;
        } else if (str == null) {
            f61324a.m5559w("Placement id cannot be null");
            return requestMetadata;
        } else {
            ArrayList arrayList = new ArrayList();
            for (AdSize adSize : list) {
                if (adSize.f61323b <= 0 || adSize.f61322a <= 0) {
                    f61324a.m5559w("Ad size dimensions must be greater than zero.  Not using AdSize: ".concat(String.valueOf(adSize)));
                } else {
                    arrayList.add(adSize);
                }
            }
            RequestMetadata.Builder builder = new RequestMetadata.Builder(requestMetadata);
            Map<String, Object> placementData = builder.getPlacementData();
            HashMap hashMap = placementData;
            if (placementData == null) {
                hashMap = new HashMap();
            }
            hashMap.put("type", "inline");
            hashMap.put("id", str);
            hashMap.put(VerizonSSPWaterfallProvider.PLACEMENT_DATA_AD_SIZES_KEY, m5495a(arrayList));
            if (num != null) {
                hashMap.put(VerizonSSPWaterfallProvider.PLACEMENT_DATA_REFRESH_RATE_KEY, num);
            }
            return builder.setPlacementData(hashMap).build();
        }
    }

    /* renamed from: a */
    private static List<Map<String, Integer>> m5495a(List<AdSize> list) {
        HashMap hashMap;
        if (list.isEmpty()) {
            f61324a.m5559w("AdSizes array cannot be null or empty");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (AdSize adSize : list) {
            if (adSize == null) {
                f61324a.m5559w("AdSize cannot be null");
                hashMap = null;
            } else {
                hashMap = new HashMap();
                hashMap.put(C9568h.f32519a, Integer.valueOf(adSize.f61323b));
                hashMap.put("w", Integer.valueOf(adSize.f61322a));
            }
            arrayList.add(hashMap);
        }
        return arrayList;
    }

    /* renamed from: a */
    private void m5503a(final AdSession adSession, final InlineAdView.InlineAdListener inlineAdListener, final InlineAdView inlineAdView) {
        if (inlineAdView != null) {
            if (Logger.isLogLevelEnabled(3)) {
                f61324a.m5567d(String.format("Ad refreshed: %s", adSession));
            }
            InlineAdView.f61369b.post(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdView.2
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    if (inlineAdView.m5480a()) {
                        InlineAdView.f61368a.m5567d("Inline ad destroyed before being refreshed");
                        return;
                    }
                    InlineAdAdapter inlineAdAdapter = (InlineAdAdapter) inlineAdView.f61375g.getAdAdapter();
                    if (inlineAdAdapter != null) {
                        if (inlineAdAdapter.isResized() || inlineAdAdapter.isExpanded()) {
                            InlineAdView.f61368a.m5567d("Inline ad expanded or resized. Stopping refresh.");
                            return;
                        } else {
                            inlineAdAdapter.setListener(null);
                            inlineAdAdapter.release();
                        }
                    }
                    inlineAdView.f61375g.release();
                    inlineAdView.f61375g = adSession;
                    InlineAdAdapter inlineAdAdapter2 = (InlineAdAdapter) adSession.getAdAdapter();
                    inlineAdView.f61381n = inlineAdAdapter2.getAdSize();
                    inlineAdAdapter2.setListener(inlineAdView.f61380l);
                    inlineAdView.m5479a(inlineAdAdapter2.getView());
                    inlineAdView.removeAllViews();
                    inlineAdView.addView(inlineAdAdapter2.getView(), new ViewGroup.LayoutParams(new ViewGroup.LayoutParams(ViewUtils.convertDipsToPixels(inlineAdView.f61382o, inlineAdView.f61381n.getWidth()), ViewUtils.convertDipsToPixels(inlineAdView.f61382o, inlineAdView.f61381n.getHeight()))));
                    InlineAdListener inlineAdListener2 = inlineAdView.f61373e;
                    if (inlineAdListener2 == null) {
                        return;
                    }
                    inlineAdListener2.onAdRefreshed(inlineAdView);
                }
            });
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f61324a.m5567d(String.format("Ad loaded: %s", adSession));
        }
        ThreadUtils.postOnUiThread(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdFactory.3
            @Override // com.verizon.ads.support.SafeRunnable
            public void safeRun() {
                InlineAdAdapter inlineAdAdapter = (InlineAdAdapter) adSession.getAdAdapter();
                final InlineAdView inlineAdView2 = new InlineAdView(InlineAdFactory.this.f61329f, InlineAdFactory.this.f61328e, inlineAdAdapter.getView(), inlineAdAdapter.getAdSize(), adSession, InlineAdFactory.this.f61336m, inlineAdListener, new InlineAdViewRefresher(InlineAdFactory.this));
                final InlineAdFactoryListener inlineAdFactoryListener = InlineAdFactory.this.f61334k;
                if (inlineAdFactoryListener != null) {
                    InlineAdFactory.f61326d.execute(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdFactory.3.1
                        @Override // com.verizon.ads.support.SafeRunnable
                        public void safeRun() {
                            inlineAdFactoryListener.onLoaded(InlineAdFactory.this, inlineAdView2);
                        }
                    });
                }
            }
        });
    }

    /* renamed from: a */
    public static /* synthetic */ void m5502a(final BidRequestListener bidRequestListener, final Bid bid, final ErrorInfo errorInfo) {
        if (errorInfo != null) {
            if (Logger.isLogLevelEnabled(3)) {
                f61324a.m5567d(String.format("Error requesting bid: %s", errorInfo));
            }
            if (bidRequestListener == null) {
                return;
            }
            f61326d.execute(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdFactory.2
                @Override // com.verizon.ads.support.SafeRunnable
                public final void safeRun() {
                    bidRequestListener.onComplete(null, errorInfo);
                }
            });
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f61324a.m5567d(String.format("Bid received: %s", bid));
        }
        if (bidRequestListener == null) {
            return;
        }
        f61326d.execute(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdFactory.1
            @Override // com.verizon.ads.support.SafeRunnable
            public final void safeRun() {
                bidRequestListener.onComplete(bid, null);
            }
        });
    }

    /* renamed from: a */
    private void m5501a(ErrorInfo errorInfo) {
        if (Logger.isLogLevelEnabled(3)) {
            f61324a.m5567d(String.format("Error occurred loading ad for placementId: %s", this.f61328e));
        }
        m5493b(errorInfo);
    }

    /* renamed from: a */
    private void m5499a(final InlineAdRequest inlineAdRequest) {
        if (!m5488c(inlineAdRequest)) {
            return;
        }
        Integer num = null;
        if (inlineAdRequest instanceof RefreshAdRequest) {
            num = ((RefreshAdRequest) inlineAdRequest).f61364h.f61374f;
        }
        VASAds.requestAds(this.f61329f, InlineAdView.class, m5500a(this.f61335l, this.f61328e, this.f61336m, num), m5494b(), new VASAds.AdRequestListener() { // from class: com.verizon.ads.inlineplacement._$$Lambda$InlineAdFactory$VMK9U7D14tCQcKYx3BW_EE0p3yY
            @Override // com.verizon.ads.VASAds.AdRequestListener
            public final void onAdReceived(AdSession adSession, ErrorInfo errorInfo, boolean z) {
                InlineAdFactory.this.m5497a(inlineAdRequest, adSession, errorInfo, z);
            }

            @Override // com.verizon.ads.VASAds.AdRequestListener
            public /* synthetic */ void prepare(AdSession adSession) {
                VASAds.AdRequestListener._CC.$default$prepare(this, adSession);
            }
        });
    }

    /* renamed from: a */
    public /* synthetic */ void m5498a(InlineAdRequest inlineAdRequest, AdSession adSession, ErrorInfo errorInfo) {
        Handler handler = this.f61327b;
        handler.sendMessage(handler.obtainMessage(6, new SendToDestinationMessage(inlineAdRequest, adSession, errorInfo)));
    }

    /* renamed from: a */
    public /* synthetic */ void m5497a(InlineAdRequest inlineAdRequest, AdSession adSession, ErrorInfo errorInfo, boolean z) {
        Handler handler = this.f61327b;
        handler.sendMessage(handler.obtainMessage(4, new AdReceivedMessage(inlineAdRequest, adSession, errorInfo, z)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v150, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.verizon.ads.inlineplacement.InlineAdFactory] */
    /* renamed from: a */
    public /* synthetic */ boolean m5504a(Message message) {
        switch (message.what) {
            case 1:
                InlineAdView.InlineAdListener inlineAdListener = (InlineAdView.InlineAdListener) message.obj;
                if (this.f61331h) {
                    f61324a.m5565e("Load Ad failed. Factory has been destroyed.");
                    return true;
                }
                AdSession m5483f = m5483f();
                if (m5483f != null) {
                    m5503a(m5483f, inlineAdListener, null);
                    m5486d();
                    return true;
                }
                InlineAdRequest inlineAdRequest = new InlineAdRequest();
                inlineAdRequest.f61362g = inlineAdListener;
                inlineAdRequest.f61359d = AdDestination.VIEW;
                m5499a(inlineAdRequest);
                return true;
            case 2:
                final InlineAdRequest inlineAdRequest2 = (InlineAdRequest) message.obj;
                if (this.f61331h) {
                    f61324a.m5565e("Load Bid failed. Factory has been destroyed.");
                    return true;
                } else if (!m5488c(inlineAdRequest2)) {
                    return true;
                } else {
                    VASAds.requestAd(this.f61329f, inlineAdRequest2.f61358c, InlineAdView.class, m5494b(), new VASAds.AdRequestListener() { // from class: com.verizon.ads.inlineplacement._$$Lambda$InlineAdFactory$8d3cAUK8beQvf59eI_CDRhJcNWQ
                        @Override // com.verizon.ads.VASAds.AdRequestListener
                        public final void onAdReceived(AdSession adSession, ErrorInfo errorInfo, boolean z) {
                            InlineAdFactory.this.m5491b(inlineAdRequest2, adSession, errorInfo, z);
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
                if (this.f61331h) {
                    f61324a.m5565e("Refresh Ad failed. Factory has been destroyed.");
                    return true;
                }
                AdSession m5483f2 = m5483f();
                if (m5483f2 == null) {
                    m5499a(refreshAdRequest);
                    return true;
                }
                m5503a(m5483f2, null, refreshAdRequest.f61364h);
                m5486d();
                return true;
            case 4:
                AdReceivedMessage adReceivedMessage = (AdReceivedMessage) message.obj;
                InlineAdRequest inlineAdRequest3 = adReceivedMessage.f61350a;
                if (inlineAdRequest3.f61357b || this.f61331h) {
                    f61324a.m5567d("Ignoring ad received after abort or destroy.");
                    return true;
                }
                inlineAdRequest3.f61356a = adReceivedMessage.f61353d;
                if (adReceivedMessage.f61352c != null) {
                    f61324a.m5565e("Server responded with an error when attempting to get inline ads: " + adReceivedMessage.f61352c.toString());
                    m5484e();
                    if (!AdDestination.VIEW.equals(inlineAdRequest3.f61359d)) {
                        return true;
                    }
                    m5501a(adReceivedMessage.f61352c);
                    return true;
                } else if (inlineAdRequest3.f61356a && inlineAdRequest3.f61361f.isEmpty() && inlineAdRequest3.f61360e == null && adReceivedMessage.f61351b == null) {
                    m5484e();
                    return true;
                } else if (adReceivedMessage.f61351b == null) {
                    f61324a.m5565e("Cannot process Ad Session. The ad adapter is null.");
                    return true;
                } else if (inlineAdRequest3.f61360e != null) {
                    inlineAdRequest3.f61361f.add(adReceivedMessage.f61351b);
                    return true;
                } else {
                    inlineAdRequest3.f61360e = adReceivedMessage.f61351b;
                    m5492b(inlineAdRequest3);
                    return true;
                }
            case 5:
            default:
                f61324a.m5559w(String.format("Received unexpected message with what = %d", Integer.valueOf(message.what)));
                return true;
            case 6:
                SendToDestinationMessage sendToDestinationMessage = (SendToDestinationMessage) message.obj;
                InlineAdRequest inlineAdRequest4 = sendToDestinationMessage.f61365a;
                if (inlineAdRequest4.f61357b || this.f61331h) {
                    f61324a.m5567d("Ignoring send ad to destination after abort or destroy.");
                    return true;
                }
                if (inlineAdRequest4.f61356a) {
                    m5484e();
                }
                AdSession adSession = sendToDestinationMessage.f61367c;
                if (AdDestination.CACHE.equals(inlineAdRequest4.f61359d)) {
                    if (adSession != null) {
                        if (Logger.isLogLevelEnabled(3)) {
                            f61324a.m5567d(String.format("Caching ad session: %s", adSession));
                        }
                        Cache<CachedAd> cache = this.f61330g;
                        int i = Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "inlineAdExpirationTimeout", 3600000);
                        cache.add(new CachedAd(adSession, (i > 0 ? System.currentTimeMillis() + ((long) i) : false) == true ? 1L : 0L));
                    }
                } else if (sendToDestinationMessage.f61366b == null) {
                    inlineAdRequest4.f61359d = AdDestination.CACHE;
                    InlineAdView inlineAdView = null;
                    if (inlineAdRequest4 instanceof RefreshAdRequest) {
                        inlineAdView = ((RefreshAdRequest) inlineAdRequest4).f61364h;
                    }
                    m5503a(adSession, inlineAdRequest4.f61362g, inlineAdView);
                } else if (inlineAdRequest4.f61356a && inlineAdRequest4.f61361f.isEmpty()) {
                    m5501a(sendToDestinationMessage.f61366b);
                    m5484e();
                    return true;
                }
                Handler handler = this.f61327b;
                handler.sendMessage(handler.obtainMessage(9, new ProcessNextAdSessionMessage(inlineAdRequest4)));
                return true;
            case 7:
                m5482g();
                return true;
            case 8:
                m5489c();
                return true;
            case 9:
                InlineAdRequest inlineAdRequest5 = ((ProcessNextAdSessionMessage) message.obj).f61363a;
                if (inlineAdRequest5.f61357b || this.f61331h) {
                    f61324a.m5567d("Ignoring process next ad session after abort or destroy.");
                    return true;
                } else if (!inlineAdRequest5.f61361f.isEmpty()) {
                    inlineAdRequest5.f61360e = inlineAdRequest5.f61361f.remove(0);
                    m5492b(inlineAdRequest5);
                    return true;
                } else {
                    f61324a.m5567d("No Ad Sessions queued for processing.");
                    inlineAdRequest5.f61360e = null;
                    if (!inlineAdRequest5.f61356a) {
                        return true;
                    }
                    m5484e();
                    return true;
                }
            case 10:
                m5486d();
                return true;
        }
    }

    /* renamed from: b */
    private static int m5494b() {
        return Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "inlineAdRequestTimeout", 10000);
    }

    /* renamed from: b */
    private void m5493b(final ErrorInfo errorInfo) {
        f61324a.m5565e(errorInfo.toString());
        final InlineAdFactoryListener inlineAdFactoryListener = this.f61334k;
        if (inlineAdFactoryListener != null) {
            f61326d.execute(new SafeRunnable() { // from class: com.verizon.ads.inlineplacement.InlineAdFactory.4
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    inlineAdFactoryListener.onError(InlineAdFactory.this, errorInfo);
                }
            });
        }
    }

    /* renamed from: b */
    private void m5492b(final InlineAdRequest inlineAdRequest) {
        final AdSession adSession = inlineAdRequest.f61360e;
        if (Logger.isLogLevelEnabled(3)) {
            f61324a.m5567d("Loading view for ad session: ".concat(String.valueOf(adSession)));
        }
        if (adSession.getAdAdapter() == null) {
            f61324a.m5565e("Cannot load the ad view for a null adapter.");
        } else {
            ((InlineAdAdapter) adSession.getAdAdapter()).loadView(this.f61329f, Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "inlineAdViewTimeout", 5000), new InlineAdAdapter.LoadViewListener() { // from class: com.verizon.ads.inlineplacement._$$Lambda$InlineAdFactory$oQFUNOPkuiN7pFfpr6wIxmgoqoU
                @Override // com.verizon.ads.inlineplacement.InlineAdAdapter.LoadViewListener
                public final void onComplete(ErrorInfo errorInfo) {
                    InlineAdFactory.this.m5498a(inlineAdRequest, adSession, errorInfo);
                }
            });
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m5491b(InlineAdRequest inlineAdRequest, AdSession adSession, ErrorInfo errorInfo, boolean z) {
        inlineAdRequest.f61356a = z;
        Handler handler = this.f61327b;
        handler.sendMessage(handler.obtainMessage(4, new AdReceivedMessage(inlineAdRequest, adSession, errorInfo, z)));
    }

    /* renamed from: c */
    private void m5489c() {
        if (this.f61331h) {
            f61324a.m5559w("Factory has already been destroyed.");
            return;
        }
        m5482g();
        CachedAd remove = this.f61330g.remove();
        while (true) {
            CachedAd cachedAd = remove;
            if (cachedAd == null) {
                this.f61331h = true;
                return;
            } else {
                ((InlineAdAdapter) cachedAd.f61354a.getAdAdapter()).release();
                remove = this.f61330g.remove();
            }
        }
    }

    /* renamed from: c */
    private boolean m5488c(InlineAdRequest inlineAdRequest) {
        if (this.f61332i != null) {
            m5493b(new ErrorInfo(InlineAdFactory.class.getName(), "Only one active load request allowed at a time", -3));
            return false;
        }
        this.f61332i = inlineAdRequest;
        return true;
    }

    /* renamed from: d */
    private void m5486d() {
        if (this.f61332i != null) {
            f61324a.m5567d("Skipping cache replenishment as an ad request is already in progress.");
            return;
        }
        if (this.f61330g.size() > (this.f61333j >= 0 ? this.f61333j : m5505a(Configuration.getInt(BuildConfig.LIBRARY_PACKAGE_NAME, "cacheReplenishmentThreshold", 3), 3))) {
            return;
        }
        InlineAdRequest inlineAdRequest = new InlineAdRequest();
        inlineAdRequest.f61359d = AdDestination.CACHE;
        m5499a(inlineAdRequest);
    }

    /* renamed from: e */
    private void m5484e() {
        f61324a.m5567d("Clearing the active ad request.");
        this.f61332i = null;
    }

    /* renamed from: f */
    private AdSession m5483f() {
        CachedAd remove;
        while (true) {
            remove = this.f61330g.remove();
            if (remove == null || remove.f61355b == 0 || System.currentTimeMillis() < remove.f61355b) {
                break;
            } else if (Logger.isLogLevelEnabled(3)) {
                f61324a.m5567d(String.format("Ad in cache expired for placementId: %s", this.f61328e));
            }
        }
        if (remove == null) {
            f61324a.m5563i("No ads in cache.");
            return null;
        }
        return remove.f61354a;
    }

    /* renamed from: g */
    private void m5482g() {
        if (this.f61331h) {
            f61324a.m5565e("Abort failed. Factory has been destroyed.");
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f61324a.m5567d(String.format("Aborting load request for placementId: %s", this.f61328e));
        }
        if (this.f61332i == null) {
            f61324a.m5567d("No active load to abort");
            return;
        }
        this.f61332i.m5481a();
        m5484e();
    }

    public static void requestBid(Context context, String str, List<AdSize> list, RequestMetadata requestMetadata, final BidRequestListener bidRequestListener) {
        VASAds.requestBid(context, m5500a(requestMetadata, str, list, (Integer) null), m5494b(), new BidRequestListener() { // from class: com.verizon.ads.inlineplacement._$$Lambda$InlineAdFactory$ekdGBlnbW5yMdriLHFDJ20E6M_Y
            @Override // com.verizon.ads.BidRequestListener
            public final void onComplete(Bid bid, ErrorInfo errorInfo) {
                InlineAdFactory.m5502a(BidRequestListener.this, bid, errorInfo);
            }
        });
    }

    public void abortLoad() {
        Handler handler = this.f61327b;
        handler.sendMessage(handler.obtainMessage(7));
    }

    public void destroy() {
        Handler handler = this.f61327b;
        handler.sendMessage(handler.obtainMessage(8));
    }

    public List<AdSize> getAdSizes() {
        return this.f61336m;
    }

    public String getPlacementId() {
        return this.f61328e;
    }

    public RequestMetadata getRequestMetadata() {
        return this.f61335l;
    }

    public void load(Bid bid, InlineAdView.InlineAdListener inlineAdListener) {
        Handler handler = this.f61327b;
        handler.sendMessage(handler.obtainMessage(2, new InlineAdRequest(bid, inlineAdListener)));
    }

    public void load(InlineAdView.InlineAdListener inlineAdListener) {
        Handler handler = this.f61327b;
        handler.sendMessage(handler.obtainMessage(1, inlineAdListener));
    }

    public InlineAdView loadAdFromCache(InlineAdView.InlineAdListener inlineAdListener) {
        AdSession m5483f = m5483f();
        Handler handler = this.f61327b;
        handler.sendMessage(handler.obtainMessage(10));
        if (m5483f == null) {
            f61324a.m5559w("No ads found in cache");
            return null;
        }
        InlineAdAdapter inlineAdAdapter = (InlineAdAdapter) m5483f.getAdAdapter();
        if (Logger.isLogLevelEnabled(3)) {
            f61324a.m5567d(String.format("Ad loaded from cache: %s", m5483f));
        }
        return new InlineAdView(this.f61329f, this.f61328e, inlineAdAdapter.getView(), inlineAdAdapter.getAdSize(), m5483f, this.f61336m, inlineAdListener, new InlineAdViewRefresher(this));
    }

    public void prefetch() {
        Handler handler = this.f61327b;
        handler.sendMessage(handler.obtainMessage(10));
    }

    public void setAdSizes(List<AdSize> list) {
        this.f61336m = list;
    }

    public void setCacheReplenishmentThresholdOverride(int i) {
        this.f61333j = m5505a(i, -1);
    }

    public void setListener(InlineAdFactoryListener inlineAdFactoryListener) {
        this.f61334k = inlineAdFactoryListener;
    }

    public void setRequestMetaData(RequestMetadata requestMetadata) {
        this.f61335l = requestMetadata;
    }
}

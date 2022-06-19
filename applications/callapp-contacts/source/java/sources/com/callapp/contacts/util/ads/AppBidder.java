package com.callapp.contacts.util.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ReflectionUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.bidder.AppBidderResult;
import com.callapp.contacts.util.ads.bidder.Bidder;
import com.callapp.contacts.util.ads.bidder.PostBidder;
import com.callapp.contacts.util.ads.bidder.SimpleBidder;
import com.callapp.contacts.util.ads.bidder.Waterfall;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.core.type.TypeReference;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.CallAppBidderManager;
import com.mopub.common.DataKeys;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.mobileads.VastIconXmlManager;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/AppBidder.class */
public class AppBidder {

    /* renamed from: B */
    private static boolean f27928B;

    /* renamed from: C */
    private static boolean f27929C;

    /* renamed from: a */
    public static boolean f27930a;

    /* renamed from: b */
    public static boolean f27931b;

    /* renamed from: c */
    public static boolean f27932c;

    /* renamed from: d */
    public static boolean f27933d;

    /* renamed from: e */
    public static boolean f27934e;

    /* renamed from: f */
    public static boolean f27935f;

    /* renamed from: g */
    public static boolean f27936g;

    /* renamed from: h */
    public static boolean f27937h;

    /* renamed from: i */
    public static boolean f27938i;

    /* renamed from: n */
    private static final HandlerThread f27939n;

    /* renamed from: o */
    private static Handler f27940o;

    /* renamed from: j */
    private JSONBidding f27942j;

    /* renamed from: k */
    private final Context f27943k;

    /* renamed from: l */
    private final NativeAdParamGetter f27944l;

    /* renamed from: m */
    private String f27945m;

    /* renamed from: p */
    private AppBidderResult f27946p;

    /* renamed from: q */
    private AtomicInteger f27947q;

    /* renamed from: r */
    private AtomicInteger f27948r;

    /* renamed from: z */
    private float f27956z;

    /* renamed from: s */
    private final Object f27949s = new Object();

    /* renamed from: t */
    private final Object f27950t = new Object();

    /* renamed from: u */
    private final Object f27951u = new Object();

    /* renamed from: v */
    private final Object f27952v = new Object();

    /* renamed from: w */
    private final Object f27953w = new Object();

    /* renamed from: x */
    private final Object f27954x = new Object();

    /* renamed from: y */
    private double f27955y = 0.0d;

    /* renamed from: A */
    private boolean f27941A = false;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/AppBidder$BidListener.class */
    public interface BidListener {
        /* renamed from: a */
        void mo27237a(double d);

        /* renamed from: a */
        void mo27236a(String str);
    }

    static {
        HandlerThread handlerThread = new HandlerThread(AppBidder.class.toString());
        f27939n = handlerThread;
        handlerThread.start();
        AndroidUtils.m27631a(handlerThread.getLooper());
        f27940o = new Handler(handlerThread.getLooper());
        String m28703a = CallAppRemoteConfigManager.get().m28703a("BiddingAnalyticsEvents");
        f27928B = StringUtils.m26025g(m28703a, "find_ad_flow_started");
        f27929C = StringUtils.m26025g(m28703a, "find_ad_flow_ended");
        f27930a = StringUtils.m26025g(m28703a, "bid_request_sent");
        f27931b = StringUtils.m26025g(m28703a, "bid_response_received");
        f27932c = StringUtils.m26025g(m28703a, "waterfall_flow_started");
        f27933d = StringUtils.m26025g(m28703a, "waterfall_flow_ended");
        f27934e = StringUtils.m26025g(m28703a, "post_bid_flow_started");
        f27935f = StringUtils.m26025g(m28703a, "post_bid_flow_ended");
        f27936g = StringUtils.m26025g(m28703a, "load_ad_started");
        f27937h = StringUtils.m26025g(m28703a, "load_ad_ended");
        f27938i = StringUtils.m26025g(m28703a, "refresh_ad");
    }

    public AppBidder(Context context, String str, NativeAdParamGetter nativeAdParamGetter, float f) {
        this.f27956z = BitmapDescriptorFactory.HUE_RED;
        this.f27943k = context;
        this.f27944l = nativeAdParamGetter;
        this.f27956z = f;
        try {
            this.f27942j = (JSONBidding) Parser.m26917a(str, new TypeReference<JSONBidding>() { // from class: com.callapp.contacts.util.ads.AppBidder.1
            });
        } catch (Exception e) {
            CLog.m27609a(AppBidder.class, e);
        }
    }

    /* renamed from: a */
    public static String m27252a(JSONBidder jSONBidder) {
        return jSONBidder.getClassname() + "_" + jSONBidder.getAdUnitId() + "_" + jSONBidder.getAdType();
    }

    /* renamed from: a */
    static /* synthetic */ void m27257a(AppBidder appBidder) {
        if (appBidder.f27947q.decrementAndGet() == 0) {
            synchronized (appBidder.f27952v) {
                appBidder.f27952v.notify();
            }
        }
        synchronized (appBidder.f27949s) {
            appBidder.f27949s.notify();
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m27256a(AppBidder appBidder, final Context context, final JSONAdUnit jSONAdUnit, final NativeAdParamGetter nativeAdParamGetter, final boolean z, final AdUtils.AdEvents adEvents) {
        f27940o.post(new Runnable() { // from class: com.callapp.contacts.util.ads.AppBidder.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    HashMap hashMap = new HashMap();
                    hashMap.put(DataKeys.CALLAPP_REQUEST_ID, AppBidder.this.f27945m);
                    if (AppBidder.this.f27956z > BitmapDescriptorFactory.HUE_RED) {
                        hashMap.put("callapp_adaptive_ad_width", Float.valueOf(AppBidder.this.f27956z));
                    }
                    int adType = jSONAdUnit.getAdType();
                    if (adType != 0) {
                        if (adType == 1) {
                            AdUtils.m27280a(context, jSONAdUnit.getAdUnitId(), MoPubView.MoPubAdSize.HEIGHT_50, adEvents, z, hashMap);
                            return;
                        } else if (adType == 2) {
                            AdUtils.m27280a(context, jSONAdUnit.getAdUnitId(), MoPubView.MoPubAdSize.HEIGHT_250, adEvents, z, hashMap);
                            return;
                        } else if (adType != 3) {
                            if (adType != 4) {
                                return;
                            }
                            AdUtils.m27283a((Activity) context, jSONAdUnit.getAdUnitId(), adEvents, z);
                            return;
                        }
                    }
                    AdSettings mo26137a = nativeAdParamGetter.mo26137a(jSONAdUnit.getAdUnitId());
                    AdUtils.m27276a(mo26137a, nativeAdParamGetter.mo26138a(mo26137a), nativeAdParamGetter.mo26136b(mo26137a), adEvents, z, (Map<String, Object>) hashMap, false);
                } catch (Exception e) {
                    CLog.m27596b(AppBidder.class, e);
                }
            }
        });
    }

    /* renamed from: a */
    static /* synthetic */ void m27255a(AppBidder appBidder, JSONAdUnit jSONAdUnit, String str) {
        CLog.m27611a(AppBidder.class, "RequestId: " + appBidder.f27945m + ", waterfall type: " + jSONAdUnit.getAdType() + ", adUnitId: " + jSONAdUnit.getAdUnitId() + " - " + str);
    }

    /* renamed from: a */
    static /* synthetic */ void m27254a(AppBidder appBidder, JSONBidder jSONBidder, String str) {
        CLog.m27611a(AppBidder.class, "RequestId: " + appBidder.f27945m + ", bidder type: " + jSONBidder.getAdType() + ", adUnitId: " + jSONBidder.getAdUnitId() + ", classname: " + jSONBidder.getClassname() + " - " + str);
    }

    /* renamed from: a */
    static /* synthetic */ void m27253a(AppBidder appBidder, JSONPostBidder jSONPostBidder, String str) {
        CLog.m27611a(AppBidder.class, "RequestId: " + appBidder.f27945m + ", adUnits: " + jSONPostBidder.getAdUnits() + ", classname: " + jSONPostBidder.getClassname() + " - " + str);
    }

    /* renamed from: b */
    public static <T> T m27248b(String str) {
        if (StringUtils.m26045b((CharSequence) str)) {
            try {
                return (T) ReflectionUtils.m27426a(Class.forName(str));
            } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
                CLog.m27599a(e);
                return null;
            }
        }
        return null;
    }

    /* renamed from: g */
    static /* synthetic */ void m27243g(AppBidder appBidder) {
        if (appBidder.f27948r.decrementAndGet() == 0) {
            synchronized (appBidder.f27953w) {
                appBidder.f27953w.notify();
            }
        }
        synchronized (appBidder.f27950t) {
            appBidder.f27950t.notify();
        }
    }

    /* renamed from: j */
    static /* synthetic */ void m27240j(AppBidder appBidder) {
        synchronized (appBidder.f27951u) {
            appBidder.f27951u.notify();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v181 */
    /* JADX WARN: Type inference failed for: r0v186, types: [double] */
    /* JADX WARN: Type inference failed for: r0v281, types: [long] */
    /* JADX WARN: Type inference failed for: r0v338 */
    /* JADX WARN: Type inference failed for: r0v341 */
    /* JADX WARN: Type inference failed for: r0v344 */
    /* JADX WARN: Type inference failed for: r0v350 */
    /* JADX WARN: Type inference failed for: r0v353 */
    /* JADX WARN: Type inference failed for: r0v354 */
    /* JADX WARN: Type inference failed for: r0v355, types: [long] */
    /* JADX WARN: Type inference failed for: r0v365, types: [long] */
    /* JADX WARN: Type inference failed for: r0v383, types: [double] */
    /* JADX WARN: Type inference failed for: r1v111 */
    /* JADX WARN: Type inference failed for: r1v81, types: [double] */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* JADX WARN: Type inference failed for: r32v0 */
    /* JADX WARN: Type inference failed for: r32v1 */
    /* JADX WARN: Type inference failed for: r32v2 */
    /* JADX WARN: Type inference failed for: r32v3 */
    /* JADX WARN: Type inference failed for: r32v4 */
    /* JADX WARN: Type inference failed for: r32v5 */
    /* JADX WARN: Type inference failed for: r35v2 */
    /* JADX WARN: Type inference failed for: r35v3 */
    /* JADX WARN: Type inference failed for: r35v4 */
    /* JADX WARN: Type inference failed for: r35v5 */
    /* JADX WARN: Type inference failed for: r35v6 */
    /* JADX WARN: Type inference failed for: r35v7 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* renamed from: a */
    public final AppBidderResult m27250a(final boolean z, final AdUtils.AdEvents adEvents) {
        AppBidderResult appBidderResult;
        AppBidderResult appBidderResult2;
        String uuid = UUID.randomUUID().toString();
        if (StringUtils.m26045b((CharSequence) this.f27945m)) {
            CallAppBidderManager.stopRequest(this.f27945m);
            if (f27938i) {
                AnalyticsManager.get().mo28444a(Constants.f26733AD, "refresh_ad", uuid, 0.0d, "oldRequestId", this.f27945m);
            }
        }
        final List<Bidder> synchronizedList = Collections.synchronizedList(new ArrayList());
        final List<Waterfall> synchronizedList2 = Collections.synchronizedList(new ArrayList());
        final List<Bidder> synchronizedList3 = Collections.synchronizedList(new ArrayList());
        this.f27945m = uuid;
        JSONBidding jSONBidding = this.f27942j;
        if (jSONBidding == null || (!CollectionUtils.m26068b(jSONBidding.getBidders()) && !CollectionUtils.m26068b(this.f27942j.getWaterfalls()))) {
            CLog.m27611a(AppBidder.class, "RequestId: " + this.f27945m + " failed - jsonBidding is null or no bidders & waterfalls exists: " + this.f27942j);
        } else {
            CLog.m27611a(AppBidder.class, "RequestId: " + this.f27945m + " starting managed request");
            long time = new Date().getTime();
            if (f27928B) {
                AnalyticsManager.get().m28449a(Constants.f26733AD, "find_ad_flow_started", this.f27945m);
            }
            CallAppBidderManager.startRequest(this.f27945m);
            int size = this.f27942j.getBidders() != null ? this.f27942j.getBidders().size() : 0;
            int size2 = this.f27942j.getWaterfalls() != null ? this.f27942j.getWaterfalls().size() : 0;
            int size3 = this.f27942j.getPostBidders() != null ? this.f27942j.getPostBidders().size() : 0;
            int i = size2 + size;
            StringBuilder sb = new StringBuilder("RequestId: ");
            sb.append(this.f27945m);
            sb.append(", started - bidders: ");
            sb.append(size);
            sb.append(", waterfalls: ");
            sb.append(size2);
            sb.append(", postBidders: ");
            sb.append(size3);
            sb.append(", backFill: ");
            sb.append(this.f27942j.getBackfill() != null);
            CLog.m27611a(AppBidder.class, sb.toString());
            if (i > 0 || CollectionUtils.m26068b(this.f27942j.getPostBidders())) {
                final List<AppBidderResult> synchronizedList4 = Collections.synchronizedList(new ArrayList());
                MultiTaskRunner multiTaskRunner = new MultiTaskRunner();
                this.f27947q = new AtomicInteger(i);
                MultiTaskRunner multiTaskRunner2 = multiTaskRunner;
                if (this.f27942j.getBidders() != null) {
                    Iterator<JSONBidder> it2 = this.f27942j.getBidders().iterator();
                    while (true) {
                        multiTaskRunner2 = multiTaskRunner;
                        if (!it2.hasNext()) {
                            break;
                        }
                        final JSONBidder next = it2.next();
                        multiTaskRunner.m28974a(new Task() { // from class: com.callapp.contacts.util.ads.AppBidder.2
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                AppBidder.m27254a(AppBidder.this, next, "starting");
                                if (z && next.isRefresh()) {
                                    AppBidder.m27254a(AppBidder.this, next, "refresh ad bidder skipped");
                                    AppBidder.m27257a(AppBidder.this);
                                    return;
                                }
                                final long time2 = new Date().getTime();
                                if (AppBidder.f27930a) {
                                    AnalyticsManager.get().mo28444a(Constants.f26733AD, "bid_request_sent", AppBidder.this.f27945m, 0.0d, "ad_network", next.getClassname(), "placement", next.getAdUnitId(), "ad_type", String.valueOf(next.getAdType()));
                                }
                                final SimpleBidder simpleBidder = (SimpleBidder) AppBidder.m27248b(next.getClassname());
                                if (simpleBidder == null) {
                                    AppBidder.m27254a(AppBidder.this, next, "failed to instantiate bidder");
                                    AppBidder.m27257a(AppBidder.this);
                                    return;
                                }
                                synchronizedList.add(simpleBidder);
                                try {
                                    simpleBidder.getBid(AppBidder.this.f27943k, next, new BidListener() { // from class: com.callapp.contacts.util.ads.AppBidder.2.1
                                        @Override // com.callapp.contacts.util.ads.AppBidder.BidListener
                                        /* renamed from: a */
                                        public final void mo27237a(double d) {
                                            long time3 = new Date().getTime();
                                            if (AppBidder.f27931b) {
                                                AnalyticsManager.get().mo28444a(Constants.f26733AD, "bid_response_received", AppBidder.this.f27945m, 0.0d, "ad_network", next.getClassname(), "placement", next.getAdUnitId(), "ad_type", String.valueOf(next.getAdType()), Reporting.EventType.FILL, "true", "price", String.valueOf(d), VastIconXmlManager.DURATION, String.valueOf(time3 - time2));
                                            }
                                            AppBidderResult appBidderResult3 = new AppBidderResult();
                                            appBidderResult3.price = d;
                                            appBidderResult3.bidder = simpleBidder;
                                            appBidderResult3.disableRefresh = next.isCallappDisableRefresh();
                                            CallAppBidderManager.updatePriceIfNeeded(AppBidder.this.f27945m, appBidderResult3.price);
                                            AppBidder appBidder = AppBidder.this;
                                            JSONBidder jSONBidder = next;
                                            AppBidder.m27254a(appBidder, jSONBidder, "loaded, price: " + appBidderResult3.price);
                                            synchronizedList4.add(appBidderResult3);
                                            AppBidder.m27257a(AppBidder.this);
                                        }

                                        @Override // com.callapp.contacts.util.ads.AppBidder.BidListener
                                        /* renamed from: a */
                                        public final void mo27236a(String str) {
                                            long time3 = new Date().getTime();
                                            if (AppBidder.f27931b) {
                                                AnalyticsManager.get().mo28444a(Constants.f26733AD, "bid_response_received", AppBidder.this.f27945m, 0.0d, "ad_network", next.getClassname(), "placement", next.getAdUnitId(), "ad_type", String.valueOf(next.getAdType()), Reporting.EventType.FILL, "false", "error", str, VastIconXmlManager.DURATION, String.valueOf(time3 - time2));
                                            }
                                            AppBidder.m27254a(AppBidder.this, next, "failed, errorMessage: ".concat(String.valueOf(str)));
                                            AppBidder.m27257a(AppBidder.this);
                                        }
                                    }, AppBidder.this.f27944l, AppBidder.this.f27942j.getTimeout(), AppBidder.this.f27945m);
                                } catch (Exception e) {
                                    long time3 = new Date().getTime();
                                    if (AppBidder.f27931b) {
                                        AnalyticsManager.get().mo28444a(Constants.f26733AD, "bid_response_received", AppBidder.this.f27945m, 0.0d, "ad_network", next.getClassname(), "placement", next.getAdUnitId(), "ad_type", String.valueOf(next.getAdType()), Reporting.EventType.FILL, "false", VastIconXmlManager.DURATION, String.valueOf(time3 - time2), "exception", "true");
                                    }
                                    AppBidder.m27254a(AppBidder.this, next, "failed to get bid");
                                    AppBidder.m27257a(AppBidder.this);
                                }
                            }
                        });
                    }
                }
                int i2 = size3;
                if (this.f27942j.getWaterfalls() != null) {
                    Iterator<JSONAdUnit> it3 = this.f27942j.getWaterfalls().iterator();
                    while (true) {
                        i2 = size3;
                        if (!it3.hasNext()) {
                            break;
                        }
                        final JSONAdUnit next2 = it3.next();
                        multiTaskRunner2.m28974a(new Task() { // from class: com.callapp.contacts.util.ads.AppBidder.3
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                AppBidder.m27255a(AppBidder.this, next2, "starting");
                                final Waterfall waterfall = new Waterfall();
                                synchronizedList2.add(waterfall);
                                final long time2 = new Date().getTime();
                                if (AppBidder.f27932c) {
                                    AnalyticsManager.get().mo28444a(Constants.f26733AD, "waterfall_flow_started", AppBidder.this.f27945m, 0.0d, "placement", next2.getAdUnitId(), "ad_type", String.valueOf(next2.getAdType()));
                                }
                                try {
                                    AppBidder appBidder = AppBidder.this;
                                    AppBidder.m27256a(appBidder, appBidder.f27943k, next2, AppBidder.this.f27944l, z, new AdUtils.AdEvents() { // from class: com.callapp.contacts.util.ads.AppBidder.3.1
                                        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                        public void onAdClick() {
                                            if (adEvents != null) {
                                                adEvents.onAdClick();
                                            }
                                        }

                                        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                        public void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
                                            if (AppBidder.f27933d) {
                                                AnalyticsManager.get().mo28444a(Constants.f26733AD, "waterfall_flow_ended", AppBidder.this.f27945m, 0.0d, "placement", next2.getAdUnitId(), Reporting.EventType.FILL, "false", "adType", String.valueOf(next2.getAdType()), "error", String.valueOf(moPubErrorCode), VastIconXmlManager.DURATION, String.valueOf(new Date().getTime() - time2));
                                            }
                                            AppBidder.m27255a(AppBidder.this, next2, "failed, errorCode: ".concat(String.valueOf(moPubErrorCode)));
                                            if (moPubView != null) {
                                                moPubView.destroy();
                                            }
                                            AppBidder.m27257a(AppBidder.this);
                                        }

                                        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                        public void onBannerAdLoaded(MoPubView moPubView, boolean z2) {
                                            long time3 = new Date().getTime();
                                            if (AppBidder.f27933d) {
                                                AnalyticsManager.get().mo28444a(Constants.f26733AD, "waterfall_flow_ended", AppBidder.this.f27945m, 0.0d, "placement", next2.getAdUnitId(), Reporting.EventType.FILL, "true", "adType", String.valueOf(next2.getAdType()), "price", String.valueOf(moPubView.getAdViewController().getPublisherRevenue()), VastIconXmlManager.DURATION, String.valueOf(time3 - time2));
                                            }
                                            if (waterfall.isDestroyed() || AppBidder.this.f27941A) {
                                                moPubView.destroy();
                                            } else {
                                                AppBidderResult appBidderResult3 = new AppBidderResult();
                                                try {
                                                    appBidderResult3.price = moPubView.getAdViewController().getPublisherRevenue();
                                                    CallAppBidderManager.updatePriceIfNeeded(AppBidder.this.f27945m, appBidderResult3.price);
                                                } catch (NumberFormatException e) {
                                                }
                                                appBidderResult3.disableRefresh = z2;
                                                appBidderResult3.moPubView = moPubView;
                                                waterfall.setMoPubView(moPubView);
                                                appBidderResult3.waterfall = waterfall;
                                                AppBidder appBidder2 = AppBidder.this;
                                                JSONAdUnit jSONAdUnit = next2;
                                                AppBidder.m27255a(appBidder2, jSONAdUnit, "loaded, price: " + appBidderResult3.price);
                                                synchronizedList4.add(appBidderResult3);
                                            }
                                            AppBidder.m27257a(AppBidder.this);
                                        }

                                        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                        public void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
                                            if (adEvents != null) {
                                                adEvents.onInterstitialClicked(moPubInterstitial);
                                            }
                                        }

                                        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                        public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
                                            if (adEvents != null) {
                                                adEvents.onInterstitialDismissed(moPubInterstitial);
                                            }
                                        }

                                        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                        public void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
                                            if (AppBidder.f27933d) {
                                                AnalyticsManager.get().mo28444a(Constants.f26733AD, "waterfall_flow_ended", AppBidder.this.f27945m, 0.0d, "placement", next2.getAdUnitId(), Reporting.EventType.FILL, "false", "adType", String.valueOf(next2.getAdType()), "error", String.valueOf(moPubErrorCode), VastIconXmlManager.DURATION, String.valueOf(new Date().getTime() - time2));
                                            }
                                            AppBidder.m27255a(AppBidder.this, next2, "failed, errorCode: ".concat(String.valueOf(moPubErrorCode)));
                                            AppBidder.m27257a(AppBidder.this);
                                        }

                                        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                        public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
                                            long time3 = new Date().getTime();
                                            if (AppBidder.f27933d) {
                                                AnalyticsManager.get().mo28444a(Constants.f26733AD, "waterfall_flow_ended", AppBidder.this.f27945m, 0.0d, "placement", next2.getAdUnitId(), Reporting.EventType.FILL, "true", "adType", String.valueOf(next2.getAdType()), "price", String.valueOf(moPubInterstitial.getAdViewController().getPublisherRevenue()), VastIconXmlManager.DURATION, String.valueOf(time3 - time2));
                                            }
                                            if (waterfall.isDestroyed() || AppBidder.this.f27941A) {
                                                moPubInterstitial.destroy();
                                            } else {
                                                AppBidderResult appBidderResult3 = new AppBidderResult();
                                                try {
                                                    appBidderResult3.price = moPubInterstitial.getAdViewController().getPublisherRevenue();
                                                    CallAppBidderManager.updatePriceIfNeeded(AppBidder.this.f27945m, appBidderResult3.price);
                                                } catch (NumberFormatException e) {
                                                }
                                                appBidderResult3.disableRefresh = true;
                                                appBidderResult3.moPubInterstitial = moPubInterstitial;
                                                waterfall.setInterstitial(moPubInterstitial);
                                                appBidderResult3.waterfall = waterfall;
                                                AppBidder appBidder2 = AppBidder.this;
                                                JSONAdUnit jSONAdUnit = next2;
                                                AppBidder.m27255a(appBidder2, jSONAdUnit, "loaded, price: " + appBidderResult3.price);
                                                synchronizedList4.add(appBidderResult3);
                                            }
                                            AppBidder.m27257a(AppBidder.this);
                                        }

                                        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                        public void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
                                            if (adEvents != null) {
                                                adEvents.onInterstitialShown(moPubInterstitial);
                                            }
                                        }

                                        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                        public void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                                            if (AppBidder.f27933d) {
                                                AnalyticsManager.get().mo28444a(Constants.f26733AD, "waterfall_flow_ended", AppBidder.this.f27945m, 0.0d, "placement", next2.getAdUnitId(), Reporting.EventType.FILL, "false", "adType", String.valueOf(next2.getAdType()), "error", String.valueOf(nativeErrorCode), VastIconXmlManager.DURATION, String.valueOf(new Date().getTime() - time2));
                                            }
                                            AppBidder.m27255a(AppBidder.this, next2, "failed, errorCode: ".concat(String.valueOf(nativeErrorCode)));
                                            AppBidder.m27257a(AppBidder.this);
                                        }

                                        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                        public void onNativeAdLoaded(NativeAd nativeAd, boolean z2) {
                                            long time3 = new Date().getTime();
                                            if (AppBidder.f27933d) {
                                                AnalyticsManager.get().mo28444a(Constants.f26733AD, "waterfall_flow_ended", AppBidder.this.f27945m, 0.0d, "placement", next2.getAdUnitId(), Reporting.EventType.FILL, "true", "adType", String.valueOf(next2.getAdType()), "price", String.valueOf(nativeAd.getBaseNativeAd().getPublisherRevenue()), VastIconXmlManager.DURATION, String.valueOf(time3 - time2));
                                            }
                                            if (waterfall.isDestroyed() || AppBidder.this.f27941A) {
                                                nativeAd.destroy();
                                            } else {
                                                AppBidderResult appBidderResult3 = new AppBidderResult();
                                                appBidderResult3.price = nativeAd.getBaseNativeAd().getPublisherRevenue();
                                                CallAppBidderManager.updatePriceIfNeeded(AppBidder.this.f27945m, appBidderResult3.price);
                                                appBidderResult3.disableRefresh = z2;
                                                appBidderResult3.nativeAd = nativeAd;
                                                waterfall.setNativeAd(nativeAd);
                                                appBidderResult3.waterfall = waterfall;
                                                AppBidder appBidder2 = AppBidder.this;
                                                JSONAdUnit jSONAdUnit = next2;
                                                AppBidder.m27255a(appBidder2, jSONAdUnit, "loaded, price: " + appBidderResult3.price);
                                                synchronizedList4.add(appBidderResult3);
                                            }
                                            AppBidder.m27257a(AppBidder.this);
                                        }
                                    });
                                } catch (Exception e) {
                                    if (AppBidder.f27933d) {
                                        AnalyticsManager.get().mo28444a(Constants.f26733AD, "waterfall_flow_ended", AppBidder.this.f27945m, 0.0d, "placement", next2.getAdUnitId(), Reporting.EventType.FILL, "false", "adType", String.valueOf(next2.getAdType()), VastIconXmlManager.DURATION, String.valueOf(new Date().getTime() - time2), "exception", "true");
                                    }
                                    AppBidder.m27255a(AppBidder.this, next2, "load failed: ".concat(String.valueOf(e)));
                                    AppBidder.m27257a(AppBidder.this);
                                }
                            }
                        });
                    }
                }
                multiTaskRunner2.m28972c();
                synchronized (this.f27952v) {
                    try {
                        this.f27952v.wait(this.f27942j.getTimeout());
                    } catch (InterruptedException e) {
                    }
                }
                while (!this.f27941A && CollectionUtils.m26076a(synchronizedList4) && this.f27947q.get() > 0) {
                    CLog.m27611a(AppBidder.class, "RequestId: " + this.f27945m + ", waiting for result or tasks to complete - remainingRunningTasks: " + this.f27947q + ", results is empty: " + CollectionUtils.m26076a(synchronizedList4));
                    try {
                        synchronized (this.f27949s) {
                            this.f27949s.wait(this.f27942j.getTimeout());
                        }
                    } catch (InterruptedException e2) {
                    }
                }
                multiTaskRunner2.m28971d();
                if (this.f27941A || (!CollectionUtils.m26068b(synchronizedList4) && i2 <= 0 && this.f27942j.getBackfill() == null)) {
                    CLog.m27611a(AppBidder.class, "RequestId: " + this.f27945m + ", no results and no post bidders defined");
                } else {
                    if (CollectionUtils.m26068b(synchronizedList4)) {
                        appBidderResult = null;
                        for (AppBidderResult appBidderResult3 : synchronizedList4) {
                            if (appBidderResult == null || appBidderResult.price < appBidderResult3.price) {
                                appBidderResult = appBidderResult3;
                            }
                        }
                        CLog.m27611a(AppBidder.class, "RequestId: " + this.f27945m + ", winner: " + appBidderResult);
                    } else {
                        CLog.m27611a(AppBidder.class, "RequestId: " + this.f27945m + ", no winner before going to post bidder");
                        appBidderResult = null;
                    }
                    AppBidderResult appBidderResult4 = appBidderResult;
                    if (i2 > 0) {
                        MultiTaskRunner multiTaskRunner3 = new MultiTaskRunner();
                        final ConcurrentSkipListMap concurrentSkipListMap = new ConcurrentSkipListMap();
                        this.f27955y = appBidderResult != null ? appBidderResult.price : (char) 0;
                        this.f27948r = new AtomicInteger(i2);
                        int i3 = 0;
                        for (final JSONPostBidder jSONPostBidder : this.f27942j.getPostBidders()) {
                            jSONPostBidder.setIndex(i3);
                            multiTaskRunner3.m28974a(new Task() { // from class: com.callapp.contacts.util.ads.AppBidder.4
                                @Override // com.callapp.contacts.manager.task.Task
                                public void doTask() {
                                    String str;
                                    final String str2;
                                    final String str3;
                                    AppBidder.m27253a(AppBidder.this, jSONPostBidder, "starting");
                                    if (z && jSONPostBidder.isRefresh()) {
                                        AppBidder.m27253a(AppBidder.this, jSONPostBidder, "refresh ad bidder skipped");
                                        AppBidder.m27243g(AppBidder.this);
                                        return;
                                    }
                                    final PostBidder postBidder = (PostBidder) AppBidder.m27248b(jSONPostBidder.getClassname());
                                    if (postBidder == null) {
                                        AppBidder.m27253a(AppBidder.this, jSONPostBidder, "failed to instantiate bidder");
                                        AppBidder.m27243g(AppBidder.this);
                                        return;
                                    }
                                    synchronizedList3.add(postBidder);
                                    String str4 = "";
                                    if (CollectionUtils.m26068b(jSONPostBidder.getAdUnits())) {
                                        Iterator<JSONPostBidderAdUnit> it4 = jSONPostBidder.getAdUnits().iterator();
                                        String str5 = "";
                                        while (true) {
                                            str = str5;
                                            if (!it4.hasNext()) {
                                                break;
                                            }
                                            JSONPostBidderAdUnit next3 = it4.next();
                                            str4 = str4 + next3.getAdUnitId() + ",";
                                            String str6 = str;
                                            if (CollectionUtils.m26068b(next3.getMultiAdType())) {
                                                Iterator<Integer> it5 = next3.getMultiAdType().iterator();
                                                while (true) {
                                                    str6 = str;
                                                    if (it5.hasNext()) {
                                                        str = str + it5.next() + ",";
                                                    }
                                                }
                                            }
                                            str5 = str6;
                                        }
                                    } else {
                                        str4 = "";
                                        str = str4;
                                    }
                                    final long time2 = new Date().getTime();
                                    try {
                                        if (AppBidder.f27934e) {
                                            AnalyticsManager.get().mo28444a(Constants.f26733AD, "post_bid_flow_started", AppBidder.this.f27945m, 0.0d, "ad_network", jSONPostBidder.getClassname(), "placement", str4, "adType", str, "bid_sent", String.valueOf(AppBidder.this.f27955y));
                                        }
                                        postBidder.setPriceToBeat(AppBidder.this.f27955y);
                                        str2 = str4;
                                        str3 = str;
                                    } catch (Exception e3) {
                                    }
                                    try {
                                        postBidder.getBid(AppBidder.this.f27943k, jSONPostBidder, new BidListener() { // from class: com.callapp.contacts.util.ads.AppBidder.4.1
                                            @Override // com.callapp.contacts.util.ads.AppBidder.BidListener
                                            /* renamed from: a */
                                            public final void mo27237a(double d) {
                                                long time3 = new Date().getTime();
                                                if (AppBidder.f27935f) {
                                                    AnalyticsManager.get().mo28444a(Constants.f26733AD, "post_bid_flow_ended", AppBidder.this.f27945m, 0.0d, "ad_network", jSONPostBidder.getClassname(), "placement", str2, "adType", str3, Reporting.EventType.FILL, "true", "price", String.valueOf(d), VastIconXmlManager.DURATION, String.valueOf(time3 - time2));
                                                }
                                                if (d > AppBidder.this.f27955y) {
                                                    AppBidderResult appBidderResult5 = new AppBidderResult();
                                                    appBidderResult5.price = d;
                                                    appBidderResult5.bidder = postBidder;
                                                    appBidderResult5.disableRefresh = jSONPostBidder.isCallappDisableRefresh();
                                                    CallAppBidderManager.updatePriceIfNeeded(AppBidder.this.f27945m, appBidderResult5.price);
                                                    AppBidder appBidder = AppBidder.this;
                                                    JSONPostBidder jSONPostBidder2 = jSONPostBidder;
                                                    AppBidder.m27253a(appBidder, jSONPostBidder2, "loaded, price: " + appBidderResult5.price);
                                                    concurrentSkipListMap.put(Integer.valueOf(jSONPostBidder.getIndex()), appBidderResult5);
                                                } else {
                                                    AppBidder appBidder2 = AppBidder.this;
                                                    JSONPostBidder jSONPostBidder3 = jSONPostBidder;
                                                    AppBidder.m27253a(appBidder2, jSONPostBidder3, "failed, price is lower than price to beat: " + d + ", " + AppBidder.this.f27955y);
                                                }
                                                AppBidder.m27243g(AppBidder.this);
                                            }

                                            @Override // com.callapp.contacts.util.ads.AppBidder.BidListener
                                            /* renamed from: a */
                                            public final void mo27236a(String str7) {
                                                if (AppBidder.f27935f) {
                                                    AnalyticsManager.get().mo28444a(Constants.f26733AD, "post_bid_flow_ended", AppBidder.this.f27945m, 0.0d, "ad_network", jSONPostBidder.getClassname(), "adType", str3, "placement", str2, Reporting.EventType.FILL, "false", "error", str7, VastIconXmlManager.DURATION, String.valueOf(new Date().getTime() - time2));
                                                }
                                                AppBidder.m27253a(AppBidder.this, jSONPostBidder, "failed, errorMessage: ".concat(String.valueOf(str7)));
                                                AppBidder.m27243g(AppBidder.this);
                                            }
                                        }, AppBidder.this.f27944l, jSONPostBidder.getMultiplier(), AppBidder.this.f27945m, AppBidder.this.f27956z);
                                    } catch (Exception e4) {
                                        if (AppBidder.f27935f) {
                                            AnalyticsManager.get().mo28444a(Constants.f26733AD, "post_bid_flow_ended", AppBidder.this.f27945m, 0.0d, "ad_network", jSONPostBidder.getClassname(), "adType", str, "placement", str4, Reporting.EventType.FILL, "false", VastIconXmlManager.DURATION, String.valueOf(new Date().getTime() - time2), "exception", "true");
                                        }
                                        AppBidder.m27253a(AppBidder.this, jSONPostBidder, "failed to get bid");
                                        AppBidder.m27243g(AppBidder.this);
                                    }
                                }
                            });
                            i3++;
                        }
                        multiTaskRunner3.m28972c();
                        boolean m28698c = CallAppRemoteConfigManager.get().m28698c("StopOnFirstPostBidderResult");
                        if (!m28698c) {
                            synchronized (this.f27953w) {
                                try {
                                    this.f27953w.wait(this.f27942j.getPostBidTimeout());
                                } catch (InterruptedException e3) {
                                }
                            }
                        }
                        ?? postBidTimeout = this.f27942j.getPostBidTimeout();
                        while (!this.f27941A && ((m28698c || CollectionUtils.m26076a(synchronizedList4)) && CollectionUtils.m26071a(concurrentSkipListMap) && this.f27948r.get() > 0)) {
                            CLog.m27611a(AppBidder.class, "RequestId: " + this.f27945m + ", waiting for posr bidders to complete - remainingPostRunningTasks: " + this.f27948r + ", results is empty: " + CollectionUtils.m26076a(synchronizedList4) + ", postBidderResults is empty: " + CollectionUtils.m26071a(concurrentSkipListMap));
                            ?? r0 = postBidTimeout;
                            try {
                                long currentTimeMillis = System.currentTimeMillis();
                                ?? r02 = postBidTimeout;
                                ?? r03 = postBidTimeout;
                                synchronized (this.f27950t) {
                                    this.f27950t.wait(postBidTimeout == true ? 1L : 0L);
                                }
                                if (!m28698c) {
                                    continue;
                                } else if (CollectionUtils.m26067b(concurrentSkipListMap)) {
                                    break;
                                } else {
                                    ?? currentTimeMillis2 = (postBidTimeout == true ? 1L : 0L) - (System.currentTimeMillis() - currentTimeMillis);
                                    postBidTimeout = currentTimeMillis2;
                                    if (currentTimeMillis2 > 0) {
                                        continue;
                                    } else if (CollectionUtils.m26068b(synchronizedList4)) {
                                        break;
                                    } else {
                                        postBidTimeout = this.f27942j.getPostBidTimeout();
                                    }
                                }
                            } catch (InterruptedException e4) {
                                postBidTimeout = r0;
                            }
                        }
                        appBidderResult4 = appBidderResult;
                        if (CollectionUtils.m26067b(concurrentSkipListMap)) {
                            boolean m28698c2 = CallAppRemoteConfigManager.get().m28698c("PriceBasedPostBidderResult");
                            Iterator it4 = concurrentSkipListMap.descendingKeySet().iterator();
                            AppBidderResult appBidderResult5 = appBidderResult;
                            while (true) {
                                appBidderResult2 = appBidderResult5;
                                if (!it4.hasNext()) {
                                    break;
                                }
                                AppBidderResult appBidderResult6 = (AppBidderResult) concurrentSkipListMap.get((Integer) it4.next());
                                if (appBidderResult5 == null || (appBidderResult6 != null && appBidderResult5.price < appBidderResult6.price)) {
                                    appBidderResult5 = appBidderResult6;
                                    appBidderResult2 = appBidderResult5;
                                    if (!m28698c2) {
                                        break;
                                    }
                                }
                            }
                            CLog.m27611a(AppBidder.class, "RequestId: " + this.f27945m + ", after postBidder - winner: " + appBidderResult2);
                            appBidderResult4 = appBidderResult2;
                        }
                    }
                    AppBidderResult appBidderResult7 = appBidderResult4;
                    AppBidderResult appBidderResult8 = appBidderResult7;
                    if (!this.f27941A) {
                        appBidderResult8 = appBidderResult7;
                        if (appBidderResult7 == null) {
                            appBidderResult8 = appBidderResult7;
                            if (this.f27942j.getBackfill() != null) {
                                final long time2 = new Date().getTime();
                                if (f27932c) {
                                    AnalyticsManager.get().mo28444a(Constants.f26733AD, "waterfall_flow_started", this.f27945m, 0.0d, "placement", this.f27942j.getBackfill().getAdUnitId(), "ad_type", String.valueOf(this.f27942j.getBackfill().getAdType()));
                                }
                                new Task() { // from class: com.callapp.contacts.util.ads.AppBidder.5
                                    @Override // com.callapp.contacts.manager.task.Task
                                    public void doTask() {
                                        try {
                                            final Waterfall waterfall = new Waterfall();
                                            AppBidder appBidder = AppBidder.this;
                                            AppBidder.m27256a(appBidder, appBidder.f27943k, AppBidder.this.f27942j.getBackfill(), AppBidder.this.f27944l, z, new AdUtils.AdEvents() { // from class: com.callapp.contacts.util.ads.AppBidder.5.1
                                                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                                public void onAdClick() {
                                                    if (adEvents != null) {
                                                        adEvents.onAdClick();
                                                    }
                                                }

                                                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                                public void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
                                                    if (AppBidder.f27933d) {
                                                        AnalyticsManager.get().mo28444a(Constants.f26733AD, "waterfall_flow_ended", AppBidder.this.f27945m, 0.0d, "placement", AppBidder.this.f27942j.getBackfill().getAdUnitId(), Reporting.EventType.FILL, "false", "adType", String.valueOf(AppBidder.this.f27942j.getBackfill().getAdType()), "error", String.valueOf(moPubErrorCode), VastIconXmlManager.DURATION, String.valueOf(new Date().getTime() - time2));
                                                    }
                                                    AppBidder.m27255a(AppBidder.this, AppBidder.this.f27942j.getBackfill(), "failed, errorCode: ".concat(String.valueOf(moPubErrorCode)));
                                                    if (moPubView != null) {
                                                        moPubView.destroy();
                                                    }
                                                    AppBidder.m27240j(AppBidder.this);
                                                }

                                                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                                public void onBannerAdLoaded(MoPubView moPubView, boolean z2) {
                                                    long time3 = new Date().getTime();
                                                    if (AppBidder.f27933d) {
                                                        AnalyticsManager.get().mo28444a(Constants.f26733AD, "waterfall_flow_ended", AppBidder.this.f27945m, 0.0d, "placement", AppBidder.this.f27942j.getBackfill().getAdUnitId(), Reporting.EventType.FILL, "true", "adType", String.valueOf(AppBidder.this.f27942j.getBackfill().getAdType()), "price", String.valueOf(moPubView.getAdViewController().getPublisherRevenue()), VastIconXmlManager.DURATION, String.valueOf(time3 - time2));
                                                    }
                                                    if (AppBidder.this.f27941A) {
                                                        moPubView.destroy();
                                                    } else {
                                                        AppBidderResult appBidderResult9 = new AppBidderResult();
                                                        try {
                                                            appBidderResult9.price = moPubView.getAdViewController().getPublisherRevenue();
                                                            CallAppBidderManager.updatePriceIfNeeded(AppBidder.this.f27945m, appBidderResult9.price);
                                                        } catch (NumberFormatException e5) {
                                                        }
                                                        appBidderResult9.disableRefresh = z2;
                                                        appBidderResult9.moPubView = moPubView;
                                                        waterfall.setMoPubView(moPubView);
                                                        appBidderResult9.waterfall = waterfall;
                                                        AppBidder appBidder2 = AppBidder.this;
                                                        JSONAdUnit backfill = AppBidder.this.f27942j.getBackfill();
                                                        AppBidder.m27255a(appBidder2, backfill, "loaded, price: " + appBidderResult9.price);
                                                        synchronizedList4.add(appBidderResult9);
                                                    }
                                                    AppBidder.m27240j(AppBidder.this);
                                                }

                                                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                                public void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
                                                    if (adEvents != null) {
                                                        adEvents.onInterstitialClicked(moPubInterstitial);
                                                    }
                                                }

                                                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                                public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
                                                    if (adEvents != null) {
                                                        adEvents.onInterstitialDismissed(moPubInterstitial);
                                                    }
                                                }

                                                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                                public void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
                                                    if (AppBidder.f27933d) {
                                                        AnalyticsManager.get().mo28444a(Constants.f26733AD, "waterfall_flow_ended", AppBidder.this.f27945m, 0.0d, "placement", AppBidder.this.f27942j.getBackfill().getAdUnitId(), Reporting.EventType.FILL, "false", "adType", String.valueOf(AppBidder.this.f27942j.getBackfill().getAdType()), "error", String.valueOf(moPubErrorCode), VastIconXmlManager.DURATION, String.valueOf(new Date().getTime() - time2));
                                                    }
                                                    AppBidder.m27255a(AppBidder.this, AppBidder.this.f27942j.getBackfill(), "failed, errorCode: ".concat(String.valueOf(moPubErrorCode)));
                                                    AppBidder.m27240j(AppBidder.this);
                                                }

                                                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                                public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
                                                    long time3 = new Date().getTime();
                                                    if (AppBidder.f27933d) {
                                                        AnalyticsManager.get().mo28444a(Constants.f26733AD, "waterfall_flow_ended", AppBidder.this.f27945m, 0.0d, "placement", AppBidder.this.f27942j.getBackfill().getAdUnitId(), Reporting.EventType.FILL, "true", "adType", String.valueOf(AppBidder.this.f27942j.getBackfill().getAdType()), "price", String.valueOf(moPubInterstitial.getAdViewController().getPublisherRevenue()), VastIconXmlManager.DURATION, String.valueOf(time3 - time2));
                                                    }
                                                    if (waterfall.isDestroyed() || AppBidder.this.f27941A) {
                                                        moPubInterstitial.destroy();
                                                    } else {
                                                        AppBidderResult appBidderResult9 = new AppBidderResult();
                                                        try {
                                                            appBidderResult9.price = moPubInterstitial.getAdViewController().getPublisherRevenue();
                                                            CallAppBidderManager.updatePriceIfNeeded(AppBidder.this.f27945m, appBidderResult9.price);
                                                        } catch (NumberFormatException e5) {
                                                        }
                                                        appBidderResult9.disableRefresh = true;
                                                        appBidderResult9.moPubInterstitial = moPubInterstitial;
                                                        waterfall.setInterstitial(moPubInterstitial);
                                                        appBidderResult9.waterfall = waterfall;
                                                        AppBidder appBidder2 = AppBidder.this;
                                                        JSONAdUnit backfill = AppBidder.this.f27942j.getBackfill();
                                                        AppBidder.m27255a(appBidder2, backfill, "loaded, price: " + appBidderResult9.price);
                                                        synchronizedList4.add(appBidderResult9);
                                                    }
                                                    AppBidder.m27240j(AppBidder.this);
                                                }

                                                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                                public void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
                                                    if (adEvents != null) {
                                                        adEvents.onInterstitialShown(moPubInterstitial);
                                                    }
                                                }

                                                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                                public void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                                                    if (AppBidder.f27933d) {
                                                        AnalyticsManager.get().mo28444a(Constants.f26733AD, "waterfall_flow_ended", AppBidder.this.f27945m, 0.0d, "placement", AppBidder.this.f27942j.getBackfill().getAdUnitId(), Reporting.EventType.FILL, "false", "adType", String.valueOf(AppBidder.this.f27942j.getBackfill().getAdType()), "error", String.valueOf(nativeErrorCode), VastIconXmlManager.DURATION, String.valueOf(new Date().getTime() - time2));
                                                    }
                                                    AppBidder.m27255a(AppBidder.this, AppBidder.this.f27942j.getBackfill(), "failed, errorCode: ".concat(String.valueOf(nativeErrorCode)));
                                                    AppBidder.m27240j(AppBidder.this);
                                                }

                                                @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                                public void onNativeAdLoaded(NativeAd nativeAd, boolean z2) {
                                                    long time3 = new Date().getTime();
                                                    if (AppBidder.f27933d) {
                                                        AnalyticsManager.get().mo28444a(Constants.f26733AD, "waterfall_flow_ended", AppBidder.this.f27945m, 0.0d, "placement", AppBidder.this.f27942j.getBackfill().getAdUnitId(), Reporting.EventType.FILL, "true", "adType", String.valueOf(AppBidder.this.f27942j.getBackfill().getAdType()), "price", String.valueOf(nativeAd.getBaseNativeAd().getPublisherRevenue()), VastIconXmlManager.DURATION, String.valueOf(time3 - time2));
                                                    }
                                                    if (waterfall.isDestroyed() || AppBidder.this.f27941A) {
                                                        nativeAd.destroy();
                                                    } else {
                                                        AppBidderResult appBidderResult9 = new AppBidderResult();
                                                        appBidderResult9.price = nativeAd.getBaseNativeAd().getPublisherRevenue();
                                                        CallAppBidderManager.updatePriceIfNeeded(AppBidder.this.f27945m, appBidderResult9.price);
                                                        appBidderResult9.disableRefresh = z2;
                                                        appBidderResult9.nativeAd = nativeAd;
                                                        waterfall.setNativeAd(nativeAd);
                                                        appBidderResult9.waterfall = waterfall;
                                                        AppBidder appBidder2 = AppBidder.this;
                                                        JSONAdUnit backfill = AppBidder.this.f27942j.getBackfill();
                                                        AppBidder.m27255a(appBidder2, backfill, "loaded, price: " + appBidderResult9.price);
                                                        synchronizedList4.add(appBidderResult9);
                                                    }
                                                    AppBidder.m27240j(AppBidder.this);
                                                }
                                            });
                                        } catch (Exception e5) {
                                            if (AppBidder.f27933d) {
                                                AnalyticsManager.get().mo28444a(Constants.f26733AD, "waterfall_flow_ended", AppBidder.this.f27945m, 0.0d, "placement", AppBidder.this.f27942j.getBackfill().getAdUnitId(), Reporting.EventType.FILL, "false", "adType", String.valueOf(AppBidder.this.f27942j.getBackfill().getAdType()), VastIconXmlManager.DURATION, String.valueOf(new Date().getTime() - time2), "exception", "true");
                                            }
                                            AppBidder appBidder2 = AppBidder.this;
                                            AppBidder.m27255a(appBidder2, appBidder2.f27942j.getBackfill(), "load failed: ".concat(String.valueOf(e5)));
                                            AppBidder.m27240j(AppBidder.this);
                                        }
                                    }
                                }.execute();
                                synchronized (this.f27954x) {
                                    try {
                                        this.f27954x.wait(this.f27942j.getTimeout());
                                    } catch (InterruptedException e5) {
                                    }
                                }
                                appBidderResult8 = appBidderResult7;
                                if (CollectionUtils.m26068b(synchronizedList4)) {
                                    for (AppBidderResult appBidderResult9 : synchronizedList4) {
                                        if (appBidderResult7 == null || appBidderResult7.price < appBidderResult9.price) {
                                            appBidderResult7 = appBidderResult9;
                                        }
                                    }
                                    CLog.m27611a(AppBidder.class, "RequestId: " + this.f27945m + ", after backfill - winner: " + appBidderResult7);
                                    appBidderResult8 = appBidderResult7;
                                }
                            }
                        }
                    }
                    CLog.m27611a(AppBidder.class, "RequestId: " + this.f27945m + " stopping managed request");
                    CallAppBidderManager.stopRequest(this.f27945m);
                    if (!this.f27941A && appBidderResult8 != null && appBidderResult8.bidder != null) {
                        final CountDownLatch countDownLatch = new CountDownLatch(1);
                        final AppBidderResult appBidderResult10 = appBidderResult8;
                        new Task() { // from class: com.callapp.contacts.util.ads.AppBidder.6
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                CLog.m27611a(AppBidder.class, "RequestId: " + AppBidder.this.f27945m + ", load ad from winner");
                                final long time3 = new Date().getTime();
                                if (AppBidder.f27936g) {
                                    AnalyticsManager.get().mo28444a(Constants.f26733AD, "load_ad_started", AppBidder.this.f27945m, 0.0d, "ad_network", appBidderResult10.bidder.getClass().getSimpleName(), "price", String.valueOf(appBidderResult10.price));
                                }
                                appBidderResult10.bidder.loadAd(new AdUtils.AdEvents() { // from class: com.callapp.contacts.util.ads.AppBidder.6.1
                                    /* renamed from: a */
                                    private void m27239a(int i4) {
                                        if (AppBidder.f27937h) {
                                            AnalyticsManager.get().mo28444a(Constants.f26733AD, "load_ad_ended", AppBidder.this.f27945m, 0.0d, "ad_network", appBidderResult10.bidder.getClass().getSimpleName(), Reporting.EventType.FILL, "true", "adType", String.valueOf(i4), VastIconXmlManager.DURATION, String.valueOf(new Date().getTime() - time3));
                                        }
                                    }

                                    /* renamed from: a */
                                    private void m27238a(int i4, String str) {
                                        if (AppBidder.f27937h) {
                                            AnalyticsManager.get().mo28444a(Constants.f26733AD, "load_ad_ended", AppBidder.this.f27945m, 0.0d, "ad_network", appBidderResult10.bidder.getClass().getSimpleName(), Reporting.EventType.FILL, "false", "adType", String.valueOf(i4), "error", str, VastIconXmlManager.DURATION, String.valueOf(new Date().getTime() - time3));
                                        }
                                    }

                                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                    public void onAdClick() {
                                        if (adEvents != null) {
                                            adEvents.onAdClick();
                                        }
                                    }

                                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                    public void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
                                        m27238a(1, String.valueOf(moPubErrorCode));
                                        CLog.m27611a(AppBidder.class, "RequestId: " + AppBidder.this.f27945m + ", banner failed to load from bidder");
                                        countDownLatch.countDown();
                                    }

                                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                    public void onBannerAdLoaded(MoPubView moPubView, boolean z2) {
                                        m27239a(1);
                                        CLog.m27611a(AppBidder.class, "RequestId: " + AppBidder.this.f27945m + ", banner loaded from bidder");
                                        appBidderResult10.moPubView = moPubView;
                                        countDownLatch.countDown();
                                    }

                                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                    public void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
                                        if (adEvents != null) {
                                            adEvents.onInterstitialClicked(moPubInterstitial);
                                        }
                                    }

                                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                    public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
                                        if (adEvents != null) {
                                            adEvents.onInterstitialDismissed(moPubInterstitial);
                                        }
                                    }

                                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                    public void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
                                        m27238a(4, String.valueOf(moPubErrorCode));
                                        CLog.m27611a(AppBidder.class, "RequestId: " + AppBidder.this.f27945m + ", interstitial failed to load from bidder");
                                        countDownLatch.countDown();
                                    }

                                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                    public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
                                        m27239a(4);
                                        CLog.m27611a(AppBidder.class, "RequestId: " + AppBidder.this.f27945m + ", interstitial loaded from bidder");
                                        appBidderResult10.moPubInterstitial = moPubInterstitial;
                                        countDownLatch.countDown();
                                    }

                                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                    public void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
                                        if (adEvents != null) {
                                            adEvents.onInterstitialShown(moPubInterstitial);
                                        }
                                    }

                                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                    public void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                                        m27238a(0, String.valueOf(nativeErrorCode));
                                        CLog.m27611a(AppBidder.class, "RequestId: " + AppBidder.this.f27945m + ", native failed to load from bidder");
                                        countDownLatch.countDown();
                                    }

                                    @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
                                    public void onNativeAdLoaded(NativeAd nativeAd, boolean z2) {
                                        m27239a(0);
                                        CLog.m27611a(AppBidder.class, "RequestId: " + AppBidder.this.f27945m + ", native loaded from bidder");
                                        appBidderResult10.nativeAd = nativeAd;
                                        countDownLatch.countDown();
                                    }
                                });
                            }
                        }.execute();
                        try {
                            countDownLatch.await();
                        } catch (InterruptedException e6) {
                        }
                    } else if (appBidderResult8 == null) {
                        CLog.m27611a(AppBidder.class, "RequestId: " + this.f27945m + ", no results");
                    }
                    AppBidderResult appBidderResult11 = this.f27946p;
                    if (appBidderResult11 != null) {
                        if (appBidderResult11.bidder != null) {
                            this.f27946p.bidder.destroy();
                        } else if (this.f27946p.waterfall != null) {
                            this.f27946p.waterfall.destroy();
                        }
                    }
                    if (appBidderResult8 != null && appBidderResult8.moPubInterstitial != null) {
                        adEvents.onInterstitialLoaded(appBidderResult8.moPubInterstitial);
                    }
                    if (f27929C) {
                        AnalyticsManager.get().mo28444a(Constants.f26733AD, "find_ad_flow_ended", this.f27945m, 0.0d, VastIconXmlManager.DURATION, String.valueOf(new Date().getTime() - time), Reporting.EventType.FILL, (appBidderResult8 != null) != false ? "true" : "false", "price", String.valueOf((appBidderResult8 != null ? appBidderResult8.price : false) == true ? 1.0d : 0.0d));
                    }
                    this.f27946p = appBidderResult8;
                }
            } else {
                CLog.m27611a(AppBidder.class, "RequestId: " + this.f27945m + " stopping managed request");
                CallAppBidderManager.stopRequest(this.f27945m);
                CLog.m27611a(AppBidder.class, "RequestId: " + this.f27945m + " failed - no bidders & waterfalls exists: " + this.f27942j);
            }
        }
        AppBidderResult appBidderResult12 = this.f27946p;
        Bidder bidder = appBidderResult12 != null ? appBidderResult12.bidder : null;
        for (Bidder bidder2 : synchronizedList) {
            if (this.f27941A || bidder2 != bidder) {
                bidder2.notifyLoss();
                bidder2.destroy();
            }
        }
        for (Bidder bidder3 : synchronizedList3) {
            if (this.f27941A || bidder3 != bidder) {
                bidder3.notifyLoss();
                bidder3.destroy();
            }
        }
        AppBidderResult appBidderResult13 = this.f27946p;
        Waterfall waterfall = appBidderResult13 != null ? appBidderResult13.waterfall : null;
        for (Waterfall waterfall2 : synchronizedList2) {
            if (this.f27941A || waterfall2 != waterfall) {
                waterfall2.destroy();
            }
        }
        return this.f27946p;
    }

    /* renamed from: a */
    public final void m27258a() {
        this.f27941A = true;
        Handler handler = f27940o;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        AppBidderResult appBidderResult = this.f27946p;
        if (appBidderResult != null) {
            if (appBidderResult.bidder != null) {
                this.f27946p.bidder.destroy();
            } else if (this.f27946p.waterfall != null) {
                this.f27946p.waterfall.destroy();
            }
            this.f27946p = null;
        }
        CallAppBidderManager.stopRequest(this.f27945m);
    }
}

package com.callapp.contacts.util.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ReflectionUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.bidder.AppBidderResult;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.core.type.TypeReference;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.CallAppBidderManager;
import com.mopub.common.DataKeys;
import com.mopub.mobileads.MoPubView;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/AppBidder.class */
public class AppBidder {
    private static boolean B;
    private static boolean C;

    /* renamed from: a  reason: collision with root package name */
    public static boolean f16013a;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f16014b;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f16015c;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f16016d;
    public static boolean e;
    public static boolean f;
    public static boolean g;
    public static boolean h;
    public static boolean i;
    private static final HandlerThread n;
    private static Handler o;
    private JSONBidding j;
    private final Context k;
    private final NativeAdParamGetter l;
    private String m;
    private AppBidderResult p;
    private AtomicInteger q;
    private AtomicInteger r;
    private float z;
    private final Object s = new Object();
    private final Object t = new Object();
    private final Object u = new Object();
    private final Object v = new Object();
    private final Object w = new Object();
    private final Object x = new Object();
    private double y = 0.0d;
    private boolean A = false;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/AppBidder$BidListener.class */
    public interface BidListener {
        void a(double d2);

        void a(String str);
    }

    static {
        HandlerThread handlerThread = new HandlerThread(AppBidder.class.toString());
        n = handlerThread;
        handlerThread.start();
        AndroidUtils.a(handlerThread.getLooper());
        o = new Handler(handlerThread.getLooper());
        String a2 = CallAppRemoteConfigManager.get().a("BiddingAnalyticsEvents");
        B = StringUtils.g(a2, "find_ad_flow_started");
        C = StringUtils.g(a2, "find_ad_flow_ended");
        f16013a = StringUtils.g(a2, "bid_request_sent");
        f16014b = StringUtils.g(a2, "bid_response_received");
        f16015c = StringUtils.g(a2, "waterfall_flow_started");
        f16016d = StringUtils.g(a2, "waterfall_flow_ended");
        e = StringUtils.g(a2, "post_bid_flow_started");
        f = StringUtils.g(a2, "post_bid_flow_ended");
        g = StringUtils.g(a2, "load_ad_started");
        h = StringUtils.g(a2, "load_ad_ended");
        i = StringUtils.g(a2, "refresh_ad");
    }

    public AppBidder(Context context, String str, NativeAdParamGetter nativeAdParamGetter, float f2) {
        this.z = BitmapDescriptorFactory.HUE_RED;
        this.k = context;
        this.l = nativeAdParamGetter;
        this.z = f2;
        try {
            this.j = (JSONBidding) Parser.a(str, new TypeReference<JSONBidding>() { // from class: com.callapp.contacts.util.ads.AppBidder.1
            });
        } catch (Exception e2) {
            CLog.a(AppBidder.class, e2);
        }
    }

    public static String a(JSONBidder jSONBidder) {
        return jSONBidder.getClassname() + "_" + jSONBidder.getAdUnitId() + "_" + jSONBidder.getAdType();
    }

    static /* synthetic */ void a(AppBidder appBidder) {
        if (appBidder.q.decrementAndGet() == 0) {
            synchronized (appBidder.v) {
                appBidder.v.notify();
            }
        }
        synchronized (appBidder.s) {
            appBidder.s.notify();
        }
    }

    static /* synthetic */ void a(AppBidder appBidder, final Context context, final JSONAdUnit jSONAdUnit, final NativeAdParamGetter nativeAdParamGetter, final boolean z, final AdUtils.AdEvents adEvents) {
        o.post(new Runnable() { // from class: com.callapp.contacts.util.ads.AppBidder.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    HashMap hashMap = new HashMap();
                    hashMap.put(DataKeys.CALLAPP_REQUEST_ID, AppBidder.this.m);
                    if (AppBidder.this.z > BitmapDescriptorFactory.HUE_RED) {
                        hashMap.put("callapp_adaptive_ad_width", Float.valueOf(AppBidder.this.z));
                    }
                    int adType = jSONAdUnit.getAdType();
                    if (adType != 0) {
                        if (adType == 1) {
                            AdUtils.a(context, jSONAdUnit.getAdUnitId(), MoPubView.MoPubAdSize.HEIGHT_50, adEvents, z, hashMap);
                            return;
                        } else if (adType == 2) {
                            AdUtils.a(context, jSONAdUnit.getAdUnitId(), MoPubView.MoPubAdSize.HEIGHT_250, adEvents, z, hashMap);
                            return;
                        } else if (adType != 3) {
                            if (adType == 4) {
                                AdUtils.a((Activity) context, jSONAdUnit.getAdUnitId(), adEvents, z);
                                return;
                            }
                            return;
                        }
                    }
                    AdSettings a2 = nativeAdParamGetter.a(jSONAdUnit.getAdUnitId());
                    AdUtils.a(a2, nativeAdParamGetter.a(a2), nativeAdParamGetter.b(a2), adEvents, z, (Map<String, Object>) hashMap, false);
                } catch (Exception e2) {
                    CLog.b(AppBidder.class, e2);
                }
            }
        });
    }

    static /* synthetic */ void a(AppBidder appBidder, JSONAdUnit jSONAdUnit, String str) {
        CLog.a(AppBidder.class, "RequestId: " + appBidder.m + ", waterfall type: " + jSONAdUnit.getAdType() + ", adUnitId: " + jSONAdUnit.getAdUnitId() + " - " + str);
    }

    static /* synthetic */ void a(AppBidder appBidder, JSONBidder jSONBidder, String str) {
        CLog.a(AppBidder.class, "RequestId: " + appBidder.m + ", bidder type: " + jSONBidder.getAdType() + ", adUnitId: " + jSONBidder.getAdUnitId() + ", classname: " + jSONBidder.getClassname() + " - " + str);
    }

    static /* synthetic */ void a(AppBidder appBidder, JSONPostBidder jSONPostBidder, String str) {
        CLog.a(AppBidder.class, "RequestId: " + appBidder.m + ", adUnits: " + jSONPostBidder.getAdUnits() + ", classname: " + jSONPostBidder.getClassname() + " - " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T b(String str) {
        if (!StringUtils.b((CharSequence) str)) {
            return null;
        }
        try {
            return (T) ReflectionUtils.a(Class.forName(str));
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
            CLog.a(e2);
            return null;
        }
    }

    static /* synthetic */ void g(AppBidder appBidder) {
        if (appBidder.r.decrementAndGet() == 0) {
            synchronized (appBidder.w) {
                appBidder.w.notify();
            }
        }
        synchronized (appBidder.t) {
            appBidder.t.notify();
        }
    }

    static /* synthetic */ void j(AppBidder appBidder) {
        synchronized (appBidder.u) {
            appBidder.u.notify();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v355, types: [long] */
    /* JADX WARN: Type inference failed for: r35v2, types: [long] */
    /* JADX WARN: Type inference failed for: r35v3, types: [long] */
    /* JADX WARN: Type inference failed for: r35v4 */
    /* JADX WARN: Type inference failed for: r35v5 */
    /* JADX WARN: Type inference failed for: r35v6 */
    /* JADX WARN: Type inference failed for: r35v7, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.callapp.contacts.util.ads.bidder.AppBidderResult a(final boolean r15, final com.callapp.contacts.util.ads.AdUtils.AdEvents r16) {
        /*
            Method dump skipped, instructions count: 2637
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.ads.AppBidder.a(boolean, com.callapp.contacts.util.ads.AdUtils$AdEvents):com.callapp.contacts.util.ads.bidder.AppBidderResult");
    }

    public final void a() {
        this.A = true;
        Handler handler = o;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        AppBidderResult appBidderResult = this.p;
        if (appBidderResult != null) {
            if (appBidderResult.bidder != null) {
                this.p.bidder.destroy();
            } else if (this.p.waterfall != null) {
                this.p.waterfall.destroy();
            }
            this.p = null;
        }
        CallAppBidderManager.stopRequest(this.m);
    }
}

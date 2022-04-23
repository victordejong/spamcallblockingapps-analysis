package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.a.b;
import com.bytedance.sdk.openadsdk.core.a.a;
import com.bytedance.sdk.openadsdk.core.a.c;
import com.bytedance.sdk.openadsdk.core.a.e;
import com.bytedance.sdk.openadsdk.core.a.f;
import com.bytedance.sdk.openadsdk.core.a.h;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.h.d;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.l.g;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.u;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/v.class */
public class v implements TTAdNative {

    /* renamed from: a  reason: collision with root package name */
    private final o f9106a = n.f();

    /* renamed from: b  reason: collision with root package name */
    private final Context f9107b;

    public v(Context context) {
        this.f9107b = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AdSlot adSlot) {
        boolean z = true;
        u.a(adSlot.getImgAcceptedWidth() > 0, "必须设置图片素材尺寸");
        if (adSlot.getImgAcceptedHeight() <= 0) {
            z = false;
        }
        u.a(z, "必须设置图片素材尺寸");
    }

    private void a(g gVar, b bVar) {
        if (!k.f8988c) {
            q.e("TTAdNativeImpl", "please exec TTAdSdk.init before load ad");
            if (bVar != null) {
                bVar.onError(10000, "Please exec TTAdSdk.init before load ad");
                return;
            }
            return;
        }
        k.b().post(gVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(b bVar) {
        if (d.a()) {
            return false;
        }
        if (bVar == null) {
            return true;
        }
        bVar.onError(1000, "广告请求开关已关闭,请联系穿山甲管理员");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(AdSlot adSlot) {
        a(adSlot);
        u.a(adSlot.getNativeAdType() > 0, "必须设置请求原生广告的类型，目前支持TYPE_BANNER和TYPE_INTERACTION_AD");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(AdSlot adSlot) {
        a(adSlot);
        u.a(adSlot.getNativeAdType() == 0, "请求非原生广告的类型，请勿调用setNativeAdType()方法");
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadBannerAd(final AdSlot adSlot, TTAdNative.BannerAdListener bannerAdListener) {
        final a aVar = new a(bannerAdListener);
        a(new g("loadBannerAd") { // from class: com.bytedance.sdk.openadsdk.core.v.8
            @Override // java.lang.Runnable
            public void run() {
                if (!v.this.a(aVar)) {
                    v.this.c(adSlot);
                    try {
                        Method a2 = ad.a("com.bytedance.sdk.openadsdk.TTC1Proxy", "load", Context.class, AdSlot.class, TTAdNative.BannerAdListener.class);
                        if (a2 != null) {
                            a2.invoke(null, v.this.f9107b, adSlot, aVar);
                        }
                    } catch (Throwable th) {
                        q.b("TTAdNativeImpl", "banner component maybe not exist, pls check", th);
                    }
                }
            }
        }, aVar);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadBannerExpressAd(final AdSlot adSlot, TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
        final com.bytedance.sdk.openadsdk.core.a.g gVar = new com.bytedance.sdk.openadsdk.core.a.g(nativeExpressAdListener);
        a(new g("loadBannerExpressAd") { // from class: com.bytedance.sdk.openadsdk.core.v.4
            @Override // java.lang.Runnable
            public void run() {
                if (!v.this.a(gVar)) {
                    adSlot.setNativeAdType(1);
                    com.bytedance.sdk.openadsdk.core.nativeexpress.b.a(v.this.f9107b).a(adSlot, 1, gVar, 5000);
                }
            }
        }, gVar);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadDrawFeedAd(final AdSlot adSlot, TTAdNative.DrawFeedAdListener drawFeedAdListener) {
        final com.bytedance.sdk.openadsdk.core.a.b bVar = new com.bytedance.sdk.openadsdk.core.a.b(drawFeedAdListener);
        a(new g("loadDrawFeedAd") { // from class: com.bytedance.sdk.openadsdk.core.v.6
            @Override // java.lang.Runnable
            public void run() {
                if (!v.this.a(bVar)) {
                    v.this.a(adSlot);
                    try {
                        Method a2 = ad.a("com.bytedance.sdk.openadsdk.TTC5Proxy", "loadDraw", Context.class, AdSlot.class, TTAdNative.DrawFeedAdListener.class);
                        if (a2 != null) {
                            a2.invoke(null, v.this.f9107b, adSlot, bVar);
                        }
                    } catch (Throwable th) {
                        q.b("TTAdNativeImpl", "feed component maybe not exist, pls check2", th);
                    }
                }
            }
        }, bVar);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadExpressDrawFeedAd(final AdSlot adSlot, TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
        final com.bytedance.sdk.openadsdk.core.a.g gVar = new com.bytedance.sdk.openadsdk.core.a.g(nativeExpressAdListener);
        a(new g("loadExpressDrawFeedAd") { // from class: com.bytedance.sdk.openadsdk.core.v.3
            @Override // java.lang.Runnable
            public void run() {
                if (!v.this.a(gVar)) {
                    com.bytedance.sdk.openadsdk.core.nativeexpress.b.a(v.this.f9107b).a(adSlot, 9, gVar, 5000);
                }
            }
        }, gVar);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadFeedAd(final AdSlot adSlot, TTAdNative.FeedAdListener feedAdListener) {
        final c cVar = new c(feedAdListener);
        a(new g("loadFeedAd") { // from class: com.bytedance.sdk.openadsdk.core.v.1
            @Override // java.lang.Runnable
            public void run() {
                if (!v.this.a(cVar)) {
                    v.this.c(adSlot);
                    try {
                        Method a2 = ad.a("com.bytedance.sdk.openadsdk.TTC5Proxy", "loadFeed", Context.class, AdSlot.class, TTAdNative.FeedAdListener.class);
                        if (a2 != null) {
                            a2.invoke(null, v.this.f9107b, adSlot, cVar);
                        }
                    } catch (Throwable th) {
                        q.b("TTAdNativeImpl", "feed component maybe not exist, pls check1", th);
                    }
                }
            }
        }, cVar);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadFullScreenVideoAd(final AdSlot adSlot, TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
        final com.bytedance.sdk.openadsdk.core.a.d dVar = new com.bytedance.sdk.openadsdk.core.a.d(fullScreenVideoAdListener);
        a(new g("loadFullScreenVideoAd") { // from class: com.bytedance.sdk.openadsdk.core.v.13
            @Override // java.lang.Runnable
            public void run() {
                if (!v.this.a(dVar)) {
                    try {
                        Method a2 = ad.a("com.bytedance.sdk.openadsdk.TTC3Proxy", "loadFull", Context.class, AdSlot.class, TTAdNative.FullScreenVideoAdListener.class);
                        if (a2 != null) {
                            a2.invoke(null, v.this.f9107b, adSlot, dVar);
                        }
                    } catch (Throwable th) {
                        q.b("TTAdNativeImpl", "reward component maybe not exist, pls check2", th);
                    }
                }
            }
        }, dVar);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadInteractionAd(final AdSlot adSlot, TTAdNative.InteractionAdListener interactionAdListener) {
        final e eVar = new e(interactionAdListener);
        a(new g("loadInteractionAd") { // from class: com.bytedance.sdk.openadsdk.core.v.9
            @Override // java.lang.Runnable
            public void run() {
                if (!v.this.a(eVar)) {
                    v.this.c(adSlot);
                    try {
                        Method a2 = ad.a("com.bytedance.sdk.openadsdk.TTC4Proxy", "load", Context.class, AdSlot.class, TTAdNative.InteractionAdListener.class);
                        if (a2 != null) {
                            a2.invoke(null, v.this.f9107b, adSlot, eVar);
                        }
                    } catch (Throwable th) {
                        q.b("TTAdNativeImpl", "interaction component maybe not exist, pls check", th);
                    }
                }
            }
        }, eVar);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadInteractionExpressAd(final AdSlot adSlot, TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
        final com.bytedance.sdk.openadsdk.core.a.g gVar = new com.bytedance.sdk.openadsdk.core.a.g(nativeExpressAdListener);
        a(new g("loadInteractionExpressAd") { // from class: com.bytedance.sdk.openadsdk.core.v.5
            @Override // java.lang.Runnable
            public void run() {
                if (!v.this.a(gVar)) {
                    adSlot.setNativeAdType(2);
                    com.bytedance.sdk.openadsdk.core.nativeexpress.b.a(v.this.f9107b).a(adSlot, 2, gVar, 5000);
                }
            }
        }, gVar);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadNativeAd(final AdSlot adSlot, TTAdNative.NativeAdListener nativeAdListener) {
        final f fVar = new f(nativeAdListener);
        a(new g("loadNativeAd") { // from class: com.bytedance.sdk.openadsdk.core.v.7
            @Override // java.lang.Runnable
            public void run() {
                if (!v.this.a(fVar)) {
                    v.this.b(adSlot);
                    o oVar = v.this.f9106a;
                    AdSlot adSlot2 = adSlot;
                    oVar.a(adSlot2, null, adSlot2.getNativeAdType(), new o.a() { // from class: com.bytedance.sdk.openadsdk.core.v.7.1
                        @Override // com.bytedance.sdk.openadsdk.core.o.a
                        public void a(int i, String str) {
                            fVar.onError(i, str);
                        }

                        @Override // com.bytedance.sdk.openadsdk.core.o.a
                        public void a(com.bytedance.sdk.openadsdk.core.e.a aVar) {
                            if (aVar.b() == null || aVar.b().isEmpty()) {
                                fVar.onError(-3, f.a(-3));
                                return;
                            }
                            List<i> b2 = aVar.b();
                            ArrayList arrayList = new ArrayList(b2.size());
                            for (i iVar : b2) {
                                if (iVar.ad()) {
                                    arrayList.add(new com.bytedance.sdk.openadsdk.core.f.a(v.this.f9107b, iVar, adSlot.getNativeAdType()) { // from class: com.bytedance.sdk.openadsdk.core.v.7.1.1
                                    });
                                }
                            }
                            if (!arrayList.isEmpty()) {
                                fVar.onNativeAdLoad(arrayList);
                            } else {
                                fVar.onError(-4, f.a(-4));
                            }
                        }
                    });
                }
            }
        }, fVar);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadNativeExpressAd(final AdSlot adSlot, TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
        final com.bytedance.sdk.openadsdk.core.a.g gVar = new com.bytedance.sdk.openadsdk.core.a.g(nativeExpressAdListener);
        a(new g("loadNativeExpressAd") { // from class: com.bytedance.sdk.openadsdk.core.v.2
            @Override // java.lang.Runnable
            public void run() {
                if (!v.this.a(gVar)) {
                    com.bytedance.sdk.openadsdk.core.nativeexpress.b.a(v.this.f9107b).a(adSlot, 5, gVar, 5000);
                }
            }
        }, gVar);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadRewardVideoAd(final AdSlot adSlot, TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
        final h hVar = new h(rewardVideoAdListener);
        a(new g("loadRewardVideoAd") { // from class: com.bytedance.sdk.openadsdk.core.v.12
            @Override // java.lang.Runnable
            public void run() {
                if (!v.this.a(hVar)) {
                    try {
                        Method a2 = ad.a("com.bytedance.sdk.openadsdk.TTC3Proxy", "loadReward", Context.class, AdSlot.class, TTAdNative.RewardVideoAdListener.class);
                        if (a2 != null) {
                            a2.invoke(null, v.this.f9107b, adSlot, hVar);
                        }
                    } catch (Throwable th) {
                        q.b("TTAdNativeImpl", "reward component maybe not exist, pls check1", th);
                    }
                }
            }
        }, hVar);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadSplashAd(final AdSlot adSlot, TTAdNative.SplashAdListener splashAdListener) {
        final com.bytedance.sdk.openadsdk.core.a.i iVar = new com.bytedance.sdk.openadsdk.core.a.i(splashAdListener);
        a(new g("loadSplashAd") { // from class: com.bytedance.sdk.openadsdk.core.v.11
            @Override // java.lang.Runnable
            public void run() {
                if (!v.this.a(iVar)) {
                    v.this.c(adSlot);
                    try {
                        Method a2 = ad.a("com.bytedance.sdk.openadsdk.TTC2Proxy", "load", Context.class, AdSlot.class, TTAdNative.SplashAdListener.class, Integer.TYPE);
                        if (a2 != null) {
                            a2.invoke(null, v.this.f9107b, adSlot, iVar, 0);
                        }
                    } catch (Throwable th) {
                        q.b("TTAdNativeImpl", "splash component maybe not exist, pls check2", th);
                    }
                }
            }
        }, iVar);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadSplashAd(final AdSlot adSlot, TTAdNative.SplashAdListener splashAdListener, final int i) {
        final com.bytedance.sdk.openadsdk.core.a.i iVar = new com.bytedance.sdk.openadsdk.core.a.i(splashAdListener);
        a(new g("loadSplashAd") { // from class: com.bytedance.sdk.openadsdk.core.v.10
            @Override // java.lang.Runnable
            public void run() {
                if (!v.this.a(iVar)) {
                    v.this.c(adSlot);
                    int i2 = i;
                    int d2 = n.h().d(adSlot.getCodeId());
                    if (d2 != -1) {
                        i2 = d2;
                    }
                    try {
                        Method a2 = ad.a("com.bytedance.sdk.openadsdk.TTC2Proxy", "load", Context.class, AdSlot.class, TTAdNative.SplashAdListener.class, Integer.TYPE);
                        if (a2 != null) {
                            a2.invoke(null, v.this.f9107b, adSlot, iVar, Integer.valueOf(i2));
                        }
                    } catch (Throwable th) {
                        q.b("TTAdNativeImpl", "splash component maybe not exist, pls check1", th);
                    }
                }
            }
        }, iVar);
    }
}

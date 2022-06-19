package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.core.AbstractC4635o;
import com.bytedance.sdk.openadsdk.core.nativeexpress.C4611b;
import com.bytedance.sdk.openadsdk.core.p150a.C4463a;
import com.bytedance.sdk.openadsdk.core.p150a.C4466b;
import com.bytedance.sdk.openadsdk.core.p150a.C4469c;
import com.bytedance.sdk.openadsdk.core.p150a.C4472d;
import com.bytedance.sdk.openadsdk.core.p150a.C4476e;
import com.bytedance.sdk.openadsdk.core.p150a.C4479f;
import com.bytedance.sdk.openadsdk.core.p150a.C4482g;
import com.bytedance.sdk.openadsdk.core.p150a.C4485h;
import com.bytedance.sdk.openadsdk.core.p150a.C4489i;
import com.bytedance.sdk.openadsdk.core.p154e.C4545a;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p155f.C4567a;
import com.bytedance.sdk.openadsdk.core.p157h.C4587d;
import com.bytedance.sdk.openadsdk.p144a.AbstractC4269b;
import com.bytedance.sdk.openadsdk.p184l.AbstractRunnableC5055g;
import com.bytedance.sdk.openadsdk.utils.C5436ad;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5483u;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.core.v */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/v.class */
public class C4654v implements TTAdNative {

    /* renamed from: a */
    private final AbstractC4635o f17019a = C4600n.m34807f();

    /* renamed from: b */
    private final Context f17020b;

    public C4654v(Context context) {
        this.f17020b = context;
    }

    /* renamed from: a */
    public void m34602a(AdSlot adSlot) {
        C5483u.m32080a(adSlot.getImgAcceptedWidth() > 0, "必须设置图片素材尺寸");
        C5483u.m32080a(adSlot.getImgAcceptedHeight() > 0, "必须设置图片素材尺寸");
    }

    /* renamed from: a */
    private void m34597a(AbstractRunnableC5055g abstractRunnableC5055g, AbstractC4269b abstractC4269b) {
        if (C4592k.f16796c) {
            C4592k.m34835b().post(abstractRunnableC5055g);
            return;
        }
        C5478q.m32106e("TTAdNativeImpl", "please exec TTAdSdk.init before load ad");
        if (abstractC4269b == null) {
            return;
        }
        abstractC4269b.onError(10000, "Please exec TTAdSdk.init before load ad");
    }

    /* renamed from: a */
    public boolean m34601a(AbstractC4269b abstractC4269b) {
        if (!C4587d.m34919a()) {
            if (abstractC4269b == null) {
                return true;
            }
            abstractC4269b.onError(1000, "广告请求开关已关闭,请联系穿山甲管理员");
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public void m34596b(AdSlot adSlot) {
        m34602a(adSlot);
        C5483u.m32080a(adSlot.getNativeAdType() > 0, "必须设置请求原生广告的类型，目前支持TYPE_BANNER和TYPE_INTERACTION_AD");
    }

    /* renamed from: c */
    public void m34593c(AdSlot adSlot) {
        m34602a(adSlot);
        C5483u.m32080a(adSlot.getNativeAdType() == 0, "请求非原生广告的类型，请勿调用setNativeAdType()方法");
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadBannerAd(final AdSlot adSlot, TTAdNative.BannerAdListener bannerAdListener) {
        final C4463a c4463a = new C4463a(bannerAdListener);
        m34597a(new AbstractRunnableC5055g("loadBannerAd") { // from class: com.bytedance.sdk.openadsdk.core.v.8
            @Override // java.lang.Runnable
            public void run() {
                if (C4654v.this.m34601a(c4463a)) {
                    return;
                }
                C4654v.this.m34593c(adSlot);
                try {
                    Method m32318a = C5436ad.m32318a("com.bytedance.sdk.openadsdk.TTC1Proxy", "load", Context.class, AdSlot.class, TTAdNative.BannerAdListener.class);
                    if (m32318a == null) {
                        return;
                    }
                    m32318a.invoke(null, C4654v.this.f17020b, adSlot, c4463a);
                } catch (Throwable th) {
                    C5478q.m32111b("TTAdNativeImpl", "banner component maybe not exist, pls check", th);
                }
            }
        }, c4463a);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadBannerExpressAd(final AdSlot adSlot, TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
        final C4482g c4482g = new C4482g(nativeExpressAdListener);
        m34597a(new AbstractRunnableC5055g("loadBannerExpressAd") { // from class: com.bytedance.sdk.openadsdk.core.v.4
            @Override // java.lang.Runnable
            public void run() {
                if (C4654v.this.m34601a(c4482g)) {
                    return;
                }
                adSlot.setNativeAdType(1);
                C4611b.m34754a(C4654v.this.f17020b).m34753a(adSlot, 1, c4482g, 5000);
            }
        }, c4482g);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadDrawFeedAd(final AdSlot adSlot, TTAdNative.DrawFeedAdListener drawFeedAdListener) {
        final C4466b c4466b = new C4466b(drawFeedAdListener);
        m34597a(new AbstractRunnableC5055g("loadDrawFeedAd") { // from class: com.bytedance.sdk.openadsdk.core.v.6
            @Override // java.lang.Runnable
            public void run() {
                if (C4654v.this.m34601a(c4466b)) {
                    return;
                }
                C4654v.this.m34602a(adSlot);
                try {
                    Method m32318a = C5436ad.m32318a("com.bytedance.sdk.openadsdk.TTC5Proxy", "loadDraw", Context.class, AdSlot.class, TTAdNative.DrawFeedAdListener.class);
                    if (m32318a == null) {
                        return;
                    }
                    m32318a.invoke(null, C4654v.this.f17020b, adSlot, c4466b);
                } catch (Throwable th) {
                    C5478q.m32111b("TTAdNativeImpl", "feed component maybe not exist, pls check2", th);
                }
            }
        }, c4466b);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadExpressDrawFeedAd(final AdSlot adSlot, TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
        final C4482g c4482g = new C4482g(nativeExpressAdListener);
        m34597a(new AbstractRunnableC5055g("loadExpressDrawFeedAd") { // from class: com.bytedance.sdk.openadsdk.core.v.3
            @Override // java.lang.Runnable
            public void run() {
                if (C4654v.this.m34601a(c4482g)) {
                    return;
                }
                C4611b.m34754a(C4654v.this.f17020b).m34753a(adSlot, 9, c4482g, 5000);
            }
        }, c4482g);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadFeedAd(final AdSlot adSlot, TTAdNative.FeedAdListener feedAdListener) {
        final C4469c c4469c = new C4469c(feedAdListener);
        m34597a(new AbstractRunnableC5055g("loadFeedAd") { // from class: com.bytedance.sdk.openadsdk.core.v.1
            @Override // java.lang.Runnable
            public void run() {
                if (C4654v.this.m34601a(c4469c)) {
                    return;
                }
                C4654v.this.m34593c(adSlot);
                try {
                    Method m32318a = C5436ad.m32318a("com.bytedance.sdk.openadsdk.TTC5Proxy", "loadFeed", Context.class, AdSlot.class, TTAdNative.FeedAdListener.class);
                    if (m32318a == null) {
                        return;
                    }
                    m32318a.invoke(null, C4654v.this.f17020b, adSlot, c4469c);
                } catch (Throwable th) {
                    C5478q.m32111b("TTAdNativeImpl", "feed component maybe not exist, pls check1", th);
                }
            }
        }, c4469c);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadFullScreenVideoAd(final AdSlot adSlot, TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
        final C4472d c4472d = new C4472d(fullScreenVideoAdListener);
        m34597a(new AbstractRunnableC5055g("loadFullScreenVideoAd") { // from class: com.bytedance.sdk.openadsdk.core.v.13
            @Override // java.lang.Runnable
            public void run() {
                if (C4654v.this.m34601a(c4472d)) {
                    return;
                }
                try {
                    Method m32318a = C5436ad.m32318a("com.bytedance.sdk.openadsdk.TTC3Proxy", "loadFull", Context.class, AdSlot.class, TTAdNative.FullScreenVideoAdListener.class);
                    if (m32318a == null) {
                        return;
                    }
                    m32318a.invoke(null, C4654v.this.f17020b, adSlot, c4472d);
                } catch (Throwable th) {
                    C5478q.m32111b("TTAdNativeImpl", "reward component maybe not exist, pls check2", th);
                }
            }
        }, c4472d);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadInteractionAd(final AdSlot adSlot, TTAdNative.InteractionAdListener interactionAdListener) {
        final C4476e c4476e = new C4476e(interactionAdListener);
        m34597a(new AbstractRunnableC5055g("loadInteractionAd") { // from class: com.bytedance.sdk.openadsdk.core.v.9
            @Override // java.lang.Runnable
            public void run() {
                if (C4654v.this.m34601a(c4476e)) {
                    return;
                }
                C4654v.this.m34593c(adSlot);
                try {
                    Method m32318a = C5436ad.m32318a("com.bytedance.sdk.openadsdk.TTC4Proxy", "load", Context.class, AdSlot.class, TTAdNative.InteractionAdListener.class);
                    if (m32318a == null) {
                        return;
                    }
                    m32318a.invoke(null, C4654v.this.f17020b, adSlot, c4476e);
                } catch (Throwable th) {
                    C5478q.m32111b("TTAdNativeImpl", "interaction component maybe not exist, pls check", th);
                }
            }
        }, c4476e);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadInteractionExpressAd(final AdSlot adSlot, TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
        final C4482g c4482g = new C4482g(nativeExpressAdListener);
        m34597a(new AbstractRunnableC5055g("loadInteractionExpressAd") { // from class: com.bytedance.sdk.openadsdk.core.v.5
            @Override // java.lang.Runnable
            public void run() {
                if (C4654v.this.m34601a(c4482g)) {
                    return;
                }
                adSlot.setNativeAdType(2);
                C4611b.m34754a(C4654v.this.f17020b).m34753a(adSlot, 2, c4482g, 5000);
            }
        }, c4482g);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadNativeAd(final AdSlot adSlot, TTAdNative.NativeAdListener nativeAdListener) {
        final C4479f c4479f = new C4479f(nativeAdListener);
        m34597a(new AbstractRunnableC5055g("loadNativeAd") { // from class: com.bytedance.sdk.openadsdk.core.v.7
            @Override // java.lang.Runnable
            public void run() {
                if (C4654v.this.m34601a(c4479f)) {
                    return;
                }
                C4654v.this.m34596b(adSlot);
                AbstractC4635o abstractC4635o = C4654v.this.f17019a;
                AdSlot adSlot2 = adSlot;
                abstractC4635o.mo34679a(adSlot2, null, adSlot2.getNativeAdType(), new AbstractC4635o.AbstractC4636a() { // from class: com.bytedance.sdk.openadsdk.core.v.7.1
                    @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
                    /* renamed from: a */
                    public void mo34084a(int i, String str) {
                        c4479f.onError(i, str);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
                    /* renamed from: a */
                    public void mo34083a(C4545a c4545a) {
                        if (c4545a.m35343b() == null || c4545a.m35343b().isEmpty()) {
                            c4479f.onError(-3, C4566f.m35036a(-3));
                            return;
                        }
                        List<C4557i> m35343b = c4545a.m35343b();
                        ArrayList arrayList = new ArrayList(m35343b.size());
                        for (C4557i c4557i : m35343b) {
                            if (c4557i.m35199ad()) {
                                arrayList.add(new C4567a(C4654v.this.f17020b, c4557i, adSlot.getNativeAdType()) { // from class: com.bytedance.sdk.openadsdk.core.v.7.1.1
                                });
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            c4479f.onNativeAdLoad(arrayList);
                        } else {
                            c4479f.onError(-4, C4566f.m35036a(-4));
                        }
                    }
                });
            }
        }, c4479f);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadNativeExpressAd(final AdSlot adSlot, TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
        final C4482g c4482g = new C4482g(nativeExpressAdListener);
        m34597a(new AbstractRunnableC5055g("loadNativeExpressAd") { // from class: com.bytedance.sdk.openadsdk.core.v.2
            @Override // java.lang.Runnable
            public void run() {
                if (C4654v.this.m34601a(c4482g)) {
                    return;
                }
                C4611b.m34754a(C4654v.this.f17020b).m34753a(adSlot, 5, c4482g, 5000);
            }
        }, c4482g);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadRewardVideoAd(final AdSlot adSlot, TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
        final C4485h c4485h = new C4485h(rewardVideoAdListener);
        m34597a(new AbstractRunnableC5055g("loadRewardVideoAd") { // from class: com.bytedance.sdk.openadsdk.core.v.12
            @Override // java.lang.Runnable
            public void run() {
                if (C4654v.this.m34601a(c4485h)) {
                    return;
                }
                try {
                    Method m32318a = C5436ad.m32318a("com.bytedance.sdk.openadsdk.TTC3Proxy", "loadReward", Context.class, AdSlot.class, TTAdNative.RewardVideoAdListener.class);
                    if (m32318a == null) {
                        return;
                    }
                    m32318a.invoke(null, C4654v.this.f17020b, adSlot, c4485h);
                } catch (Throwable th) {
                    C5478q.m32111b("TTAdNativeImpl", "reward component maybe not exist, pls check1", th);
                }
            }
        }, c4485h);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadSplashAd(final AdSlot adSlot, TTAdNative.SplashAdListener splashAdListener) {
        final C4489i c4489i = new C4489i(splashAdListener);
        m34597a(new AbstractRunnableC5055g("loadSplashAd") { // from class: com.bytedance.sdk.openadsdk.core.v.11
            @Override // java.lang.Runnable
            public void run() {
                if (C4654v.this.m34601a(c4489i)) {
                    return;
                }
                C4654v.this.m34593c(adSlot);
                try {
                    Method m32318a = C5436ad.m32318a("com.bytedance.sdk.openadsdk.TTC2Proxy", "load", Context.class, AdSlot.class, TTAdNative.SplashAdListener.class, Integer.TYPE);
                    if (m32318a == null) {
                        return;
                    }
                    m32318a.invoke(null, C4654v.this.f17020b, adSlot, c4489i, 0);
                } catch (Throwable th) {
                    C5478q.m32111b("TTAdNativeImpl", "splash component maybe not exist, pls check2", th);
                }
            }
        }, c4489i);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative
    public void loadSplashAd(final AdSlot adSlot, TTAdNative.SplashAdListener splashAdListener, final int i) {
        final C4489i c4489i = new C4489i(splashAdListener);
        m34597a(new AbstractRunnableC5055g("loadSplashAd") { // from class: com.bytedance.sdk.openadsdk.core.v.10
            @Override // java.lang.Runnable
            public void run() {
                if (C4654v.this.m34601a(c4489i)) {
                    return;
                }
                C4654v.this.m34593c(adSlot);
                int i2 = i;
                int m34897d = C4600n.m34805h().m34897d(adSlot.getCodeId());
                if (m34897d != -1) {
                    i2 = m34897d;
                }
                try {
                    Method m32318a = C5436ad.m32318a("com.bytedance.sdk.openadsdk.TTC2Proxy", "load", Context.class, AdSlot.class, TTAdNative.SplashAdListener.class, Integer.TYPE);
                    if (m32318a == null) {
                        return;
                    }
                    m32318a.invoke(null, C4654v.this.f17020b, adSlot, c4489i, Integer.valueOf(i2));
                } catch (Throwable th) {
                    C5478q.m32111b("TTAdNativeImpl", "splash component maybe not exist, pls check1", th);
                }
            }
        }, c4489i);
    }
}

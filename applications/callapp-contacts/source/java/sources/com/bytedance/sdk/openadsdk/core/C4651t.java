package com.bytedance.sdk.openadsdk.core;

import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
/* renamed from: com.bytedance.sdk.openadsdk.core.t */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/t.class */
public class C4651t {

    /* renamed from: a */
    private static C4651t f17005a;

    /* renamed from: b */
    private AbstractC4719c f17006b;

    /* renamed from: d */
    private C4557i f17008d;

    /* renamed from: e */
    private TTRewardVideoAd.RewardAdInteractionListener f17009e;

    /* renamed from: f */
    private AbstractC3234c f17010f;

    /* renamed from: g */
    private TTFullScreenVideoAd.FullScreenVideoAdInteractionListener f17011g;

    /* renamed from: c */
    private boolean f17007c = true;

    /* renamed from: h */
    private boolean f17012h = false;

    private C4651t() {
    }

    /* renamed from: a */
    public static C4651t m34621a() {
        if (f17005a == null) {
            f17005a = new C4651t();
        }
        return f17005a;
    }

    /* renamed from: a */
    public void m34620a(AbstractC3234c abstractC3234c) {
        this.f17010f = abstractC3234c;
    }

    /* renamed from: a */
    public void m34619a(TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener) {
        this.f17011g = fullScreenVideoAdInteractionListener;
    }

    /* renamed from: a */
    public void m34618a(TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener) {
        this.f17009e = rewardAdInteractionListener;
    }

    /* renamed from: a */
    public void m34617a(C4557i c4557i) {
        this.f17008d = c4557i;
    }

    /* renamed from: a */
    public void m34616a(boolean z) {
        this.f17007c = z;
    }

    /* renamed from: b */
    public void m34614b(boolean z) {
        this.f17012h = z;
    }

    /* renamed from: b */
    public boolean m34615b() {
        return this.f17007c;
    }

    /* renamed from: c */
    public C4557i m34613c() {
        return this.f17008d;
    }

    /* renamed from: d */
    public TTRewardVideoAd.RewardAdInteractionListener m34612d() {
        return this.f17009e;
    }

    /* renamed from: e */
    public TTFullScreenVideoAd.FullScreenVideoAdInteractionListener m34611e() {
        return this.f17011g;
    }

    /* renamed from: f */
    public AbstractC3234c m34610f() {
        return this.f17010f;
    }

    /* renamed from: g */
    public void m34609g() {
        this.f17006b = null;
        this.f17008d = null;
        this.f17009e = null;
        this.f17011g = null;
        this.f17010f = null;
        this.f17012h = false;
        this.f17007c = true;
    }
}

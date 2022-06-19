package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.y0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ms0.class */
public final class ms0 {

    /* renamed from: a */
    private final AbstractC1645aa f7638a;

    ms0(AbstractC1645aa abstractC1645aa) {
        this.f7638a = abstractC1645aa;
    }

    /* renamed from: q */
    private final void m6495q(ls0 ls0Var) {
        String m6666a = ls0.m6666a(ls0Var);
        String valueOf = String.valueOf(m6666a);
        y0.k(valueOf.length() != 0 ? "Dispatching AFMA event on publisher webview: ".concat(valueOf) : new String("Dispatching AFMA event on publisher webview: "));
        this.f7638a.m8152u(m6666a);
    }

    /* renamed from: a */
    public final void m6511a() {
        m6495q(new ls0("initialize", null));
    }

    /* renamed from: b */
    public final void m6510b(long j) {
        ls0 ls0Var = new ls0("creation", null);
        ls0Var.f7156a = Long.valueOf(j);
        ls0Var.f7158c = "nativeObjectCreated";
        m6495q(ls0Var);
    }

    /* renamed from: c */
    public final void m6509c(long j) {
        ls0 ls0Var = new ls0("creation", null);
        ls0Var.f7156a = Long.valueOf(j);
        ls0Var.f7158c = "nativeObjectNotCreated";
        m6495q(ls0Var);
    }

    /* renamed from: d */
    public final void m6508d(long j) {
        ls0 ls0Var = new ls0("interstitial", null);
        ls0Var.f7156a = Long.valueOf(j);
        ls0Var.f7158c = "onNativeAdObjectNotAvailable";
        m6495q(ls0Var);
    }

    /* renamed from: e */
    public final void m6507e(long j) {
        ls0 ls0Var = new ls0("interstitial", null);
        ls0Var.f7156a = Long.valueOf(j);
        ls0Var.f7158c = "onAdLoaded";
        m6495q(ls0Var);
    }

    /* renamed from: f */
    public final void m6506f(long j, int i) {
        ls0 ls0Var = new ls0("interstitial", null);
        ls0Var.f7156a = Long.valueOf(j);
        ls0Var.f7158c = "onAdFailedToLoad";
        ls0Var.f7159d = Integer.valueOf(i);
        m6495q(ls0Var);
    }

    /* renamed from: g */
    public final void m6505g(long j) {
        ls0 ls0Var = new ls0("interstitial", null);
        ls0Var.f7156a = Long.valueOf(j);
        ls0Var.f7158c = "onAdOpened";
        m6495q(ls0Var);
    }

    /* renamed from: h */
    public final void m6504h(long j) {
        ls0 ls0Var = new ls0("interstitial", null);
        ls0Var.f7156a = Long.valueOf(j);
        ls0Var.f7158c = "onAdClicked";
        this.f7638a.m8152u(ls0.m6666a(ls0Var));
    }

    /* renamed from: i */
    public final void m6503i(long j) {
        ls0 ls0Var = new ls0("interstitial", null);
        ls0Var.f7156a = Long.valueOf(j);
        ls0Var.f7158c = "onAdClosed";
        m6495q(ls0Var);
    }

    /* renamed from: j */
    public final void m6502j(long j) {
        ls0 ls0Var = new ls0("rewarded", null);
        ls0Var.f7156a = Long.valueOf(j);
        ls0Var.f7158c = "onNativeAdObjectNotAvailable";
        m6495q(ls0Var);
    }

    /* renamed from: k */
    public final void m6501k(long j) {
        ls0 ls0Var = new ls0("rewarded", null);
        ls0Var.f7156a = Long.valueOf(j);
        ls0Var.f7158c = "onRewardedAdLoaded";
        m6495q(ls0Var);
    }

    /* renamed from: l */
    public final void m6500l(long j, int i) {
        ls0 ls0Var = new ls0("rewarded", null);
        ls0Var.f7156a = Long.valueOf(j);
        ls0Var.f7158c = "onRewardedAdFailedToLoad";
        ls0Var.f7159d = Integer.valueOf(i);
        m6495q(ls0Var);
    }

    /* renamed from: m */
    public final void m6499m(long j) {
        ls0 ls0Var = new ls0("rewarded", null);
        ls0Var.f7156a = Long.valueOf(j);
        ls0Var.f7158c = "onRewardedAdOpened";
        m6495q(ls0Var);
    }

    /* renamed from: n */
    public final void m6498n(long j, int i) {
        ls0 ls0Var = new ls0("rewarded", null);
        ls0Var.f7156a = Long.valueOf(j);
        ls0Var.f7158c = "onRewardedAdFailedToShow";
        ls0Var.f7159d = Integer.valueOf(i);
        m6495q(ls0Var);
    }

    /* renamed from: o */
    public final void m6497o(long j) {
        ls0 ls0Var = new ls0("rewarded", null);
        ls0Var.f7156a = Long.valueOf(j);
        ls0Var.f7158c = "onRewardedAdClosed";
        m6495q(ls0Var);
    }

    /* renamed from: p */
    public final void m6496p(long j, AbstractC1877ok abstractC1877ok) {
        ls0 ls0Var = new ls0("rewarded", null);
        ls0Var.f7156a = Long.valueOf(j);
        ls0Var.f7158c = "onUserEarnedReward";
        ls0Var.f7160e = abstractC1877ok.m6328a();
        ls0Var.f7161f = Integer.valueOf(abstractC1877ok.m6327d());
        m6495q(ls0Var);
    }
}

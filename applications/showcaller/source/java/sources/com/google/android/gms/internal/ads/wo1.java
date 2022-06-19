package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wo1.class */
public final class wo1 {

    /* renamed from: a */
    private final h30 f31644a;

    public wo1(h30 h30Var) {
        this.f31644a = h30Var;
    }

    /* renamed from: s */
    private final void m9504s(uo1 uo1Var) {
        String m10280f = uo1.m10280f(uo1Var);
        ei0.m15465e(m10280f.length() != 0 ? "Dispatching AFMA event on publisher webview: ".concat(m10280f) : new String("Dispatching AFMA event on publisher webview: "));
        this.f31644a.mo14750r(m10280f);
    }

    /* renamed from: a */
    public final void m9522a() {
        m9504s(new uo1("initialize", null));
    }

    /* renamed from: b */
    public final void m9521b(long j) {
        uo1 uo1Var = new uo1("creation", null);
        uo1Var.f30687a = Long.valueOf(j);
        uo1Var.f30689c = "nativeObjectCreated";
        m9504s(uo1Var);
    }

    /* renamed from: c */
    public final void m9520c(long j) {
        uo1 uo1Var = new uo1("creation", null);
        uo1Var.f30687a = Long.valueOf(j);
        uo1Var.f30689c = "nativeObjectNotCreated";
        m9504s(uo1Var);
    }

    /* renamed from: d */
    public final void m9519d(long j) {
        uo1 uo1Var = new uo1("interstitial", null);
        uo1Var.f30687a = Long.valueOf(j);
        uo1Var.f30689c = "onNativeAdObjectNotAvailable";
        m9504s(uo1Var);
    }

    /* renamed from: e */
    public final void m9518e(long j) {
        uo1 uo1Var = new uo1("interstitial", null);
        uo1Var.f30687a = Long.valueOf(j);
        uo1Var.f30689c = "onAdLoaded";
        m9504s(uo1Var);
    }

    /* renamed from: f */
    public final void m9517f(long j, int i) {
        uo1 uo1Var = new uo1("interstitial", null);
        uo1Var.f30687a = Long.valueOf(j);
        uo1Var.f30689c = "onAdFailedToLoad";
        uo1Var.f30690d = Integer.valueOf(i);
        m9504s(uo1Var);
    }

    /* renamed from: g */
    public final void m9516g(long j) {
        uo1 uo1Var = new uo1("interstitial", null);
        uo1Var.f30687a = Long.valueOf(j);
        uo1Var.f30689c = "onAdOpened";
        m9504s(uo1Var);
    }

    /* renamed from: h */
    public final void m9515h(long j) {
        uo1 uo1Var = new uo1("interstitial", null);
        uo1Var.f30687a = Long.valueOf(j);
        uo1Var.f30689c = "onAdClicked";
        this.f31644a.mo14750r(uo1.m10280f(uo1Var));
    }

    /* renamed from: i */
    public final void m9514i(long j) {
        uo1 uo1Var = new uo1("interstitial", null);
        uo1Var.f30687a = Long.valueOf(j);
        uo1Var.f30689c = "onAdClosed";
        m9504s(uo1Var);
    }

    /* renamed from: j */
    public final void m9513j(long j) {
        uo1 uo1Var = new uo1("rewarded", null);
        uo1Var.f30687a = Long.valueOf(j);
        uo1Var.f30689c = "onNativeAdObjectNotAvailable";
        m9504s(uo1Var);
    }

    /* renamed from: k */
    public final void m9512k(long j) {
        uo1 uo1Var = new uo1("rewarded", null);
        uo1Var.f30687a = Long.valueOf(j);
        uo1Var.f30689c = "onRewardedAdLoaded";
        m9504s(uo1Var);
    }

    /* renamed from: l */
    public final void m9511l(long j, int i) {
        uo1 uo1Var = new uo1("rewarded", null);
        uo1Var.f30687a = Long.valueOf(j);
        uo1Var.f30689c = "onRewardedAdFailedToLoad";
        uo1Var.f30690d = Integer.valueOf(i);
        m9504s(uo1Var);
    }

    /* renamed from: m */
    public final void m9510m(long j) {
        uo1 uo1Var = new uo1("rewarded", null);
        uo1Var.f30687a = Long.valueOf(j);
        uo1Var.f30689c = "onRewardedAdOpened";
        m9504s(uo1Var);
    }

    /* renamed from: n */
    public final void m9509n(long j, int i) {
        uo1 uo1Var = new uo1("rewarded", null);
        uo1Var.f30687a = Long.valueOf(j);
        uo1Var.f30689c = "onRewardedAdFailedToShow";
        uo1Var.f30690d = Integer.valueOf(i);
        m9504s(uo1Var);
    }

    /* renamed from: o */
    public final void m9508o(long j) {
        uo1 uo1Var = new uo1("rewarded", null);
        uo1Var.f30687a = Long.valueOf(j);
        uo1Var.f30689c = "onRewardedAdClosed";
        m9504s(uo1Var);
    }

    /* renamed from: p */
    public final void m9507p(long j, ce0 ce0Var) {
        uo1 uo1Var = new uo1("rewarded", null);
        uo1Var.f30687a = Long.valueOf(j);
        uo1Var.f30689c = "onUserEarnedReward";
        uo1Var.f30691e = ce0Var.mo10036a();
        uo1Var.f30692f = Integer.valueOf(ce0Var.mo10035d());
        m9504s(uo1Var);
    }

    /* renamed from: q */
    public final void m9506q(long j) {
        uo1 uo1Var = new uo1("rewarded", null);
        uo1Var.f30687a = Long.valueOf(j);
        uo1Var.f30689c = "onAdImpression";
        m9504s(uo1Var);
    }

    /* renamed from: r */
    public final void m9505r(long j) {
        uo1 uo1Var = new uo1("rewarded", null);
        uo1Var.f30687a = Long.valueOf(j);
        uo1Var.f30689c = "onAdClicked";
        m9504s(uo1Var);
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5722o1;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/po1.class */
public final class po1 implements u51, AbstractC6673kq, y21, s31, t31, n41, b31, AbstractC6323bb, zn2 {

    /* renamed from: d */
    private final List<Object> f28081d;

    /* renamed from: e */
    private final co1 f28082e;

    /* renamed from: f */
    private long f28083f;

    public po1(co1 co1Var, sp0 sp0Var) {
        this.f28082e = co1Var;
        this.f28081d = Collections.singletonList(sp0Var);
    }

    /* renamed from: v */
    private final void m12206v(Class<?> cls, String str, Object... objArr) {
        co1 co1Var = this.f28082e;
        List<Object> list = this.f28081d;
        String simpleName = cls.getSimpleName();
        co1Var.m16001a(list, simpleName.length() != 0 ? "Event-".concat(simpleName) : new String("Event-"), str, objArr);
    }

    @Override // com.google.android.gms.internal.ads.b31
    /* renamed from: O */
    public final void mo9146O(zzbcz zzbczVar) {
        m12206v(b31.class, "onAdFailedToLoad", Integer.valueOf(zzbczVar.f33653d), zzbczVar.f33654e, zzbczVar.f33655f);
    }

    @Override // com.google.android.gms.internal.ads.u51
    /* renamed from: S */
    public final void mo10409S(rj2 rj2Var) {
    }

    @Override // com.google.android.gms.internal.ads.t31
    /* renamed from: U */
    public final void mo10844U(Context context) {
        m12206v(t31.class, "onPause", context);
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: a */
    public final void mo8316a(zzfem zzfemVar, String str) {
        m12206v(sn2.class, "onTaskSucceeded", str);
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: b */
    public final void mo8315b(zzfem zzfemVar, String str) {
        m12206v(sn2.class, "onTaskStarted", str);
    }

    @Override // com.google.android.gms.internal.ads.n41
    /* renamed from: d */
    public final void mo10505d() {
        long mo16806b = C5667s.m18153k().mo16806b();
        long j = this.f28083f;
        StringBuilder sb = new StringBuilder(41);
        sb.append("Ad Request Latency : ");
        sb.append(mo16806b - j);
        C5722o1.m17990k(sb.toString());
        m12206v(n41.class, "onAdLoaded", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: f */
    public final void mo8978f() {
        m12206v(y21.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: g */
    public final void mo8977g() {
        m12206v(y21.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: i */
    public final void mo8976i() {
        m12206v(y21.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: j */
    public final void mo8975j() {
        m12206v(y21.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: l */
    public final void mo8314l(zzfem zzfemVar, String str) {
        m12206v(sn2.class, "onTaskCreated", str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6323bb
    /* renamed from: m */
    public final void mo12207m(String str, String str2) {
        m12206v(AbstractC6323bb.class, "onAppEvent", str, str2);
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: n */
    public final void mo8974n(nd0 nd0Var, String str, String str2) {
        m12206v(y21.class, "onRewarded", nd0Var, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.t31
    /* renamed from: p */
    public final void mo10843p(Context context) {
        m12206v(t31.class, "onResume", context);
    }

    @Override // com.google.android.gms.internal.ads.zn2
    /* renamed from: q */
    public final void mo8313q(zzfem zzfemVar, String str, Throwable th) {
        m12206v(sn2.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.internal.ads.t31
    /* renamed from: r */
    public final void mo10842r(Context context) {
        m12206v(t31.class, "onDestroy", context);
    }

    @Override // com.google.android.gms.internal.ads.u51
    /* renamed from: u */
    public final void mo10408u(zzcbj zzcbjVar) {
        this.f28083f = C5667s.m18153k().mo16806b();
        m12206v(u51.class, "onAdRequest", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6673kq
    /* renamed from: z0 */
    public final void mo7877z0() {
        m12206v(AbstractC6673kq.class, "onAdClicked", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.s31
    public final void zzg() {
        m12206v(s31.class, "onAdImpression", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.y21
    public final void zzi() {
        m12206v(y21.class, "onAdClosed", new Object[0]);
    }
}

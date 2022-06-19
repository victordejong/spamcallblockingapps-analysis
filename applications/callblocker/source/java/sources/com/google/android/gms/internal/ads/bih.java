package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.ads.p118a.AbstractC2244a;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bih.class */
public final class bih implements AbstractC2244a, AbstractC2792app, apv, aqi, aql, arg, ash, clg, dxs {

    /* renamed from: a */
    private final List<Object> f11314a;

    /* renamed from: b */
    private final bhv f11315b;

    /* renamed from: c */
    private long f11316c;

    public bih(bhv bhvVar, afh afhVar) {
        this.f11315b = bhvVar;
        this.f11314a = Collections.singletonList(afhVar);
    }

    /* renamed from: a */
    private final void m11890a(Class<?> cls, String str, Object... objArr) {
        bhv bhvVar = this.f11315b;
        List<Object> list = this.f11314a;
        String valueOf = String.valueOf(cls.getSimpleName());
        bhvVar.m11914a(list, valueOf.length() != 0 ? "Event-".concat(valueOf) : new String("Event-"), str, objArr);
    }

    @Override // com.google.android.gms.internal.ads.arg
    /* renamed from: a */
    public final void mo11427a() {
        C3556uu.m7052a(new StringBuilder(41).append("Ad Request Latency : ").append(C2341q.m14737j().mo13861b() - this.f11316c).toString());
        m11890a(arg.class, "onAdLoaded", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.apv
    /* renamed from: a */
    public final void mo11258a(int i) {
        m11890a(apv.class, "onAdFailedToLoad", Integer.valueOf(i));
    }

    @Override // com.google.android.gms.internal.ads.aql
    /* renamed from: a */
    public final void mo11891a(Context context) {
        m11890a(aql.class, "onPause", context);
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: a */
    public final void mo11830a(chd chdVar) {
    }

    @Override // com.google.android.gms.internal.ads.clg
    /* renamed from: a */
    public final void mo11108a(ckw ckwVar, String str) {
        m11890a(ckx.class, "onTaskCreated", str);
    }

    @Override // com.google.android.gms.internal.ads.clg
    /* renamed from: a */
    public final void mo11107a(ckw ckwVar, String str, Throwable th) {
        m11890a(ckx.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: a */
    public final void mo11829a(C3423pw c3423pw) {
        this.f11316c = C2341q.m14737j().mo13861b();
        m11890a(ash.class, "onAdRequest", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    @ParametersAreNonnullByDefault
    /* renamed from: a */
    public final void mo11421a(AbstractC3445qr abstractC3445qr, String str, String str2) {
        m11890a(AbstractC2792app.class, "onRewarded", abstractC3445qr, str, str2);
    }

    @Override // com.google.android.gms.ads.p118a.AbstractC2244a
    /* renamed from: a */
    public final void mo11654a(String str, String str2) {
        m11890a(AbstractC2244a.class, "onAppEvent", str, str2);
    }

    @Override // com.google.android.gms.internal.ads.aqi
    /* renamed from: b */
    public final void mo11652b() {
        m11890a(aqi.class, "onAdImpression", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.aql
    /* renamed from: b */
    public final void mo11889b(Context context) {
        m11890a(aql.class, "onResume", context);
    }

    @Override // com.google.android.gms.internal.ads.clg
    /* renamed from: b */
    public final void mo11106b(ckw ckwVar, String str) {
        m11890a(ckx.class, "onTaskStarted", str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: c */
    public final void mo11414c() {
        m11890a(AbstractC2792app.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.aql
    /* renamed from: c */
    public final void mo11888c(Context context) {
        m11890a(aql.class, "onDestroy", context);
    }

    @Override // com.google.android.gms.internal.ads.clg
    /* renamed from: c */
    public final void mo11105c(ckw ckwVar, String str) {
        m11890a(ckx.class, "onTaskSucceeded", str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: d */
    public final void mo11413d() {
        m11890a(AbstractC2792app.class, "onAdClosed", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.dxs
    /* renamed from: e */
    public final void mo8200e() {
        m11890a(dxs.class, "onAdClicked", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: f */
    public final void mo11412f() {
        m11890a(AbstractC2792app.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: g */
    public final void mo11411g() {
        m11890a(AbstractC2792app.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: h */
    public final void mo11410h() {
        m11890a(AbstractC2792app.class, "onRewardedVideoCompleted", new Object[0]);
    }
}

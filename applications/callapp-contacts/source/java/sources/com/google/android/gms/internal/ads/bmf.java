package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmf.class */
public final class bmf implements AppEventListener, aro, arp, asg, ash, atb, auf, cto, eir {

    /* renamed from: a */
    private final List<Object> f44252a;

    /* renamed from: b */
    private final blt f44253b;

    /* renamed from: c */
    private long f44254c;

    public bmf(blt bltVar, afq afqVar) {
        this.f44253b = bltVar;
        this.f44252a = Collections.singletonList(afqVar);
    }

    /* renamed from: a */
    private final void m17740a(Class<?> cls, String str, Object... objArr) {
        blt bltVar = this.f44253b;
        List<Object> list = this.f44252a;
        String valueOf = String.valueOf(cls.getSimpleName());
        bltVar.m17752a(list, valueOf.length() != 0 ? "Event-".concat(valueOf) : new String("Event-"), str, objArr);
    }

    @Override // com.google.android.gms.internal.ads.atb
    /* renamed from: a */
    public final void mo17408a() {
        long mo19038b = zzr.zzlc().mo19038b();
        long j = this.f44254c;
        StringBuilder sb = new StringBuilder(41);
        sb.append("Ad Request Latency : ");
        sb.append(mo19038b - j);
        zzd.zzed(sb.toString());
        m17740a(atb.class, "onAdLoaded", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.asg
    /* renamed from: a */
    public final void mo17741a(Context context) {
        m17740a(asg.class, "onPause", context);
    }

    @Override // com.google.android.gms.internal.ads.auf
    /* renamed from: a */
    public final void mo17552a(cpk cpkVar) {
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: a */
    public final void mo17238a(ctj ctjVar, String str) {
        m17740a(ctg.class, "onTaskStarted", str);
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: a */
    public final void mo17237a(ctj ctjVar, String str, Throwable th) {
        m17740a(ctg.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: a */
    public final void mo17405a(AbstractC12939tp abstractC12939tp, String str, String str2) {
        m17740a(aro.class, "onRewarded", abstractC12939tp, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.auf
    /* renamed from: a */
    public final void mo17548a(zzauj zzaujVar) {
        this.f44254c = zzr.zzlc().mo19038b();
        m17740a(auf.class, "onAdRequest", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.arp
    /* renamed from: a */
    public final void mo17319a(zzvh zzvhVar) {
        m17740a(arp.class, "onAdFailedToLoad", Integer.valueOf(zzvhVar.errorCode), zzvhVar.zzchs, zzvhVar.zzcht);
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: a */
    public final void mo17236a(String str) {
        m17740a(ctg.class, "onTaskCreated", str);
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: b */
    public final void mo17547b() {
        m17740a(ash.class, "onAdImpression", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.asg
    /* renamed from: b */
    public final void mo17739b(Context context) {
        m17740a(asg.class, "onResume", context);
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: b */
    public final void mo17235b(ctj ctjVar, String str) {
        m17740a(ctg.class, "onTaskSucceeded", str);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: c */
    public final void mo17401c() {
        m17740a(aro.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.asg
    /* renamed from: c */
    public final void mo17738c(Context context) {
        m17740a(asg.class, "onDestroy", context);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: d */
    public final void mo17400d() {
        m17740a(aro.class, "onAdClosed", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: e */
    public final void mo17399e() {
        m17740a(aro.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: f */
    public final void mo17398f() {
        m17740a(aro.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.aro
    /* renamed from: g */
    public final void mo17397g() {
        m17740a(aro.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        m17740a(eir.class, "onAdClicked", new Object[0]);
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public final void onAppEvent(String str, String str2) {
        m17740a(AppEventListener.class, "onAppEvent", str, str2);
    }
}

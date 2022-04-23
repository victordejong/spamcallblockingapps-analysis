package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmf.class */
public final class bmf implements AppEventListener, aro, arp, asg, ash, atb, auf, cto, eir {

    /* renamed from: a  reason: collision with root package name */
    private final List<Object> f24690a;

    /* renamed from: b  reason: collision with root package name */
    private final blt f24691b;

    /* renamed from: c  reason: collision with root package name */
    private long f24692c;

    public bmf(blt bltVar, afq afqVar) {
        this.f24691b = bltVar;
        this.f24690a = Collections.singletonList(afqVar);
    }

    private final void a(Class<?> cls, String str, Object... objArr) {
        blt bltVar = this.f24691b;
        List<Object> list = this.f24690a;
        String valueOf = String.valueOf(cls.getSimpleName());
        bltVar.a(list, valueOf.length() != 0 ? "Event-".concat(valueOf) : new String("Event-"), str, objArr);
    }

    @Override // com.google.android.gms.internal.ads.atb
    public final void a() {
        long b2 = zzr.zzlc().b();
        long j = this.f24692c;
        StringBuilder sb = new StringBuilder(41);
        sb.append("Ad Request Latency : ");
        sb.append(b2 - j);
        zzd.zzed(sb.toString());
        a(atb.class, "onAdLoaded", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.asg
    public final void a(Context context) {
        a(asg.class, "onPause", context);
    }

    @Override // com.google.android.gms.internal.ads.auf
    public final void a(cpk cpkVar) {
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void a(ctj ctjVar, String str) {
        a(ctg.class, "onTaskStarted", str);
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void a(ctj ctjVar, String str, Throwable th) {
        a(ctg.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void a(tp tpVar, String str, String str2) {
        a(aro.class, "onRewarded", tpVar, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.auf
    public final void a(zzauj zzaujVar) {
        this.f24692c = zzr.zzlc().b();
        a(auf.class, "onAdRequest", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.arp
    public final void a(zzvh zzvhVar) {
        a(arp.class, "onAdFailedToLoad", Integer.valueOf(zzvhVar.errorCode), zzvhVar.zzchs, zzvhVar.zzcht);
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void a(String str) {
        a(ctg.class, "onTaskCreated", str);
    }

    @Override // com.google.android.gms.internal.ads.ash
    public final void b() {
        a(ash.class, "onAdImpression", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.asg
    public final void b(Context context) {
        a(asg.class, "onResume", context);
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void b(ctj ctjVar, String str) {
        a(ctg.class, "onTaskSucceeded", str);
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void c() {
        a(aro.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.asg
    public final void c(Context context) {
        a(asg.class, "onDestroy", context);
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void d() {
        a(aro.class, "onAdClosed", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void e() {
        a(aro.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void f() {
        a(aro.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.aro
    public final void g() {
        a(aro.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        a(eir.class, "onAdClicked", new Object[0]);
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public final void onAppEvent(String str, String str2) {
        a(AppEventListener.class, "onAppEvent", str, str2);
    }
}

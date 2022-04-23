package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hy.class */
public final class hy implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzp f29802a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ boolean f29803b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzas f29804c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ String f29805d;
    final /* synthetic */ ik e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hy(ik ikVar, boolean z, zzp zzpVar, boolean z2, zzas zzasVar, String str) {
        this.e = ikVar;
        this.f29802a = zzpVar;
        this.f29803b = z2;
        this.f29804c = zzasVar;
        this.f29805d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        df dfVar = this.e.f29842b;
        if (dfVar == null) {
            this.e.t.c().f29506c.a("Discarding data. Failed to send event to service");
            return;
        }
        o.a(this.f29802a);
        this.e.a(dfVar, this.f29803b ? null : this.f29804c, this.f29802a);
        this.e.i();
    }
}

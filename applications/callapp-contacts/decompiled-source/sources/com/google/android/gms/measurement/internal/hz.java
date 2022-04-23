package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hz.class */
public final class hz implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzp f29806a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ boolean f29807b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzaa f29808c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ zzaa f29809d;
    final /* synthetic */ ik e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hz(ik ikVar, boolean z, zzp zzpVar, boolean z2, zzaa zzaaVar, zzaa zzaaVar2) {
        this.e = ikVar;
        this.f29806a = zzpVar;
        this.f29807b = z2;
        this.f29808c = zzaaVar;
        this.f29809d = zzaaVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        df dfVar = this.e.f29842b;
        if (dfVar == null) {
            this.e.t.c().f29506c.a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        o.a(this.f29806a);
        this.e.a(dfVar, this.f29807b ? null : this.f29808c, this.f29806a);
        this.e.i();
    }
}

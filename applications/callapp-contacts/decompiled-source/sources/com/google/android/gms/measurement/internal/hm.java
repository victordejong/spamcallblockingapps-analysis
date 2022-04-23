package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hm.class */
public final class hm implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzp f29773a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ boolean f29774b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzkl f29775c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ ik f29776d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hm(ik ikVar, zzp zzpVar, boolean z, zzkl zzklVar) {
        this.f29776d = ikVar;
        this.f29773a = zzpVar;
        this.f29774b = z;
        this.f29775c = zzklVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        df dfVar = this.f29776d.f29842b;
        if (dfVar == null) {
            this.f29776d.t.c().f29506c.a("Discarding data. Failed to set user property");
            return;
        }
        o.a(this.f29773a);
        this.f29776d.a(dfVar, this.f29774b ? null : this.f29775c, this.f29773a);
        this.f29776d.i();
    }
}

package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkl.class */
public final class zzkl implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzkq f9689f;

    /* renamed from: g */
    private final /* synthetic */ zzki f9690g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkl(zzki zzkiVar, zzkq zzkqVar) {
        this.f9690g = zzkiVar;
        this.f9689f = zzkqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9690g.m11047v(this.f9689f);
        this.f9690g.m11063l();
    }
}

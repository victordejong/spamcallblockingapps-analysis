package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzai.class */
public final class zzai implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzgq f8850f;

    /* renamed from: g */
    private final /* synthetic */ zzaj f8851g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzai(zzaj zzajVar, zzgq zzgqVar) {
        this.f8851g = zzajVar;
        this.f8850f = zzgqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8850f.mo11073g();
        if (zzx.m10903a()) {
            this.f8850f.mo11083b().m11409x(this);
            return;
        }
        boolean d = this.f8851g.m11714d();
        this.f8851g.f8855c = 0L;
        if (d) {
            this.f8851g.mo11112b();
        }
    }
}

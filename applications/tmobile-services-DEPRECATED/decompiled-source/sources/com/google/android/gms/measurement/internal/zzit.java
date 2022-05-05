package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzit.class */
public final class zzit implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ boolean f9539f;

    /* renamed from: g */
    private final /* synthetic */ zzkr f9540g;

    /* renamed from: h */
    private final /* synthetic */ zzn f9541h;

    /* renamed from: i */
    private final /* synthetic */ zzio f9542i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzit(zzio zzioVar, boolean z, zzkr zzkrVar, zzn zznVar) {
        this.f9542i = zzioVar;
        this.f9539f = z;
        this.f9540g = zzkrVar;
        this.f9541h = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzej zzejVar;
        zzejVar = this.f9542i.f9521d;
        if (zzejVar == null) {
            this.f9542i.mo11081c().m11560D().m11540a("Discarding data. Failed to set user property");
            return;
        }
        this.f9542i.m11199K(zzejVar, this.f9539f ? null : this.f9540g, this.f9541h);
        this.f9542i.m11179e0();
    }
}

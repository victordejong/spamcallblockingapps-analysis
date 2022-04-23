package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fh.class */
final class fh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzkl f29633a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ zzp f29634b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ fl f29635c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fh(fl flVar, zzkl zzklVar, zzp zzpVar) {
        this.f29635c = flVar;
        this.f29633a = zzklVar;
        this.f29634b = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        jo joVar;
        jo joVar2;
        jo joVar3;
        joVar = this.f29635c.f29644a;
        joVar.n();
        if (this.f29633a.zza() == null) {
            joVar3 = this.f29635c.f29644a;
            joVar3.b(this.f29633a, this.f29634b);
            return;
        }
        joVar2 = this.f29635c.f29644a;
        joVar2.a(this.f29633a, this.f29634b);
    }
}

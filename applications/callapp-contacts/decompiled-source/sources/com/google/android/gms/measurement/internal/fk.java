package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fk.class */
final class fk implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29640a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29641b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f29642c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ long f29643d;
    final /* synthetic */ fl e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fk(fl flVar, String str, String str2, String str3, long j) {
        this.e = flVar;
        this.f29640a = str;
        this.f29641b = str2;
        this.f29642c = str3;
        this.f29643d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        jo joVar;
        jo joVar2;
        String str = this.f29640a;
        if (str == null) {
            joVar2 = this.e.f29644a;
            joVar2.f.l().a(this.f29641b, (hc) null);
            return;
        }
        hc hcVar = new hc(this.f29642c, str, this.f29643d);
        joVar = this.e.f29644a;
        joVar.f.l().a(this.f29641b, hcVar);
    }
}

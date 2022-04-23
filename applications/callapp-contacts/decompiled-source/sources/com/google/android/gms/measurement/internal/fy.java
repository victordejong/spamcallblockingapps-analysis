package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fy.class */
final class fy implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ boolean f29665a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ gv f29666b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fy(gv gvVar, boolean z) {
        this.f29666b = gvVar;
        this.f29665a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean r = this.f29666b.t.r();
        boolean q = this.f29666b.t.q();
        this.f29666b.t.m = Boolean.valueOf(this.f29665a);
        if (q == this.f29665a) {
            this.f29666b.t.c().k.a("Default data collection state already set to", Boolean.valueOf(this.f29665a));
        }
        if (this.f29666b.t.r() == r || this.f29666b.t.r() != this.f29666b.t.q()) {
            this.f29666b.t.c().h.a("Default data collection is different than actual status", Boolean.valueOf(this.f29665a), Boolean.valueOf(r));
        }
        this.f29666b.o();
    }
}

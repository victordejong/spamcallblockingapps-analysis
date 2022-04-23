package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/iv.class */
public final class iv {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ iz f29867a;

    /* renamed from: b  reason: collision with root package name */
    private iu f29868b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public iv(iz izVar) {
        this.f29867a = izVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f29867a.S_();
        if (this.f29868b != null) {
            this.f29867a.f29875a.removeCallbacks(this.f29868b);
        }
        if (this.f29867a.t.g.d(null, dc.ar)) {
            this.f29867a.t.b().m.a(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j) {
        this.f29868b = new iu(this, this.f29867a.t.j.a(), j);
        this.f29867a.f29875a.postDelayed(this.f29868b, 2000L);
    }
}

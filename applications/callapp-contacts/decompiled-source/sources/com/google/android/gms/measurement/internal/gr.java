package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gr.class */
public final class gr implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f29715a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f29716b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ long f29717c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ boolean f29718d;
    final /* synthetic */ gv e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gr(gv gvVar, f fVar, int i, long j, boolean z) {
        this.e = gvVar;
        this.f29715a = fVar;
        this.f29716b = i;
        this.f29717c = j;
        this.f29718d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.e.a(this.f29715a);
        gv.a(this.e, this.f29715a, this.f29716b, this.f29717c, false, this.f29718d);
    }
}

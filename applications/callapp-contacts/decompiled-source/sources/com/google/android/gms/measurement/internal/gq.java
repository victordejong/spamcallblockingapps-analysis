package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gq.class */
public final class gq implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f29711a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ long f29712b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ int f29713c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ long f29714d;
    final /* synthetic */ boolean e;
    final /* synthetic */ gv f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gq(gv gvVar, f fVar, long j, int i, long j2, boolean z) {
        this.f = gvVar;
        this.f29711a = fVar;
        this.f29712b = j;
        this.f29713c = i;
        this.f29714d = j2;
        this.e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f.a(this.f29711a);
        this.f.a(this.f29712b, false);
        gv.a(this.f, this.f29711a, this.f29713c, this.f29714d, true, this.e);
    }
}

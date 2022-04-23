package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gs.class */
public final class gs implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f29719a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f29720b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ long f29721c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ boolean f29722d;
    final /* synthetic */ gv e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gs(gv gvVar, f fVar, int i, long j, boolean z) {
        this.e = gvVar;
        this.f29719a = fVar;
        this.f29720b = i;
        this.f29721c = j;
        this.f29722d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.e.a(this.f29719a);
        gv.a(this.e, this.f29719a, this.f29720b, this.f29721c, false, this.f29722d);
    }
}

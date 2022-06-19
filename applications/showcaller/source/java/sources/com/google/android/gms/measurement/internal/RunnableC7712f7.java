package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.f7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/f7.class */
public final class RunnableC7712f7 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ C7676c7 f35252d;

    /* renamed from: e */
    final /* synthetic */ C7676c7 f35253e;

    /* renamed from: f */
    final /* synthetic */ long f35254f;

    /* renamed from: g */
    final /* synthetic */ boolean f35255g;

    /* renamed from: h */
    final /* synthetic */ C7772k7 f35256h;

    public RunnableC7712f7(C7772k7 c7772k7, C7676c7 c7676c7, C7676c7 c7676c72, long j, boolean z) {
        this.f35256h = c7772k7;
        this.f35252d = c7676c7;
        this.f35253e = c7676c72;
        this.f35254f = j;
        this.f35255g = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35256h.m6303n(this.f35252d, this.f35253e, this.f35254f, this.f35255g, null);
    }
}

package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bdq.class */
final /* synthetic */ class bdq implements Runnable {

    /* renamed from: a */
    private final act f11039a;

    private bdq(act actVar) {
        this.f11039a = actVar;
    }

    /* renamed from: a */
    public static Runnable m12067a(act actVar) {
        return new bdq(actVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11039a.destroy();
    }
}

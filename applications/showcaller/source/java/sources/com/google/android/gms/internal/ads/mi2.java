package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mi2.class */
final /* synthetic */ class mi2 implements Runnable {

    /* renamed from: d */
    private final hi2 f26615d;

    private mi2(hi2 hi2Var) {
        this.f26615d = hi2Var;
    }

    /* renamed from: a */
    public static Runnable m13183a(hi2 hi2Var) {
        return new mi2(hi2Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f26615d.mo10505d();
    }
}

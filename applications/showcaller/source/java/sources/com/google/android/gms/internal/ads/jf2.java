package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jf2.class */
final /* synthetic */ class jf2 implements Runnable {

    /* renamed from: d */
    private final a42 f24859d;

    private jf2(a42 a42Var) {
        this.f24859d = a42Var;
    }

    /* renamed from: a */
    public static Runnable m14131a(a42 a42Var) {
        return new jf2(a42Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f24859d.mo10505d();
    }
}

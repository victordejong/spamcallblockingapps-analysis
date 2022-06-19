package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/li0.class */
final /* synthetic */ class li0 implements Runnable {

    /* renamed from: b */
    private final ni0 f7100b;

    /* renamed from: c */
    private final boolean f7101c;

    li0(ni0 ni0Var, boolean z) {
        this.f7100b = ni0Var;
        this.f7101c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7100b.n(this.f7101c);
    }
}

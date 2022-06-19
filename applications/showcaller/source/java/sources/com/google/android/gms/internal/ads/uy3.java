package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uy3.class */
public final class uy3 implements Runnable {

    /* renamed from: d */
    private final dz3 f31022d;

    /* renamed from: e */
    private final jz3 f31023e;

    /* renamed from: f */
    private final Runnable f31024f;

    public uy3(dz3 dz3Var, jz3 jz3Var, Runnable runnable) {
        this.f31022d = dz3Var;
        this.f31023e = jz3Var;
        this.f31024f = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f31022d.m15630o();
        if (this.f31023e.m14009c()) {
            this.f31022d.mo15624v(this.f31023e.f25035a);
        } else {
            this.f31022d.m15623w(this.f31023e.f25037c);
        }
        if (this.f31023e.f25038d) {
            this.f31022d.m15639f("intermediate-response");
        } else {
            this.f31022d.m15638g("done");
        }
        Runnable runnable = this.f31024f;
        if (runnable != null) {
            runnable.run();
        }
    }
}

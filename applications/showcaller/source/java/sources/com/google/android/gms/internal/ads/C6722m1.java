package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.m1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/m1.class */
public final class C6722m1 extends AbstractCallableC7203z1 {

    /* renamed from: i */
    private static volatile String f26376i;

    /* renamed from: j */
    private static final Object f26377j = new Object();

    public C6722m1(C6869q0 c6869q0, String str, String str2, j14 j14Var, int i, int i2) {
        super(c6869q0, "FIES3RTkQwHbrKX6yNHRLvjdTy/vAwaHt4NSjNSY8AdC8m3WKKtOY2UmKZKAKB0T", "2LDOSJy2Fx9VBMC+bm+0OJly9nmnJoeXDwyJmbeZyYc=", j14Var, i, 1);
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC7203z1
    /* renamed from: a */
    protected final void mo8630a() {
        this.f32757e.m14223V("E");
        if (f26376i == null) {
            synchronized (f26377j) {
                if (f26376i == null) {
                    f26376i = (String) this.f32758f.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f32757e) {
            this.f32757e.m14223V(f26376i);
        }
    }
}

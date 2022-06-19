package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.internal.ads.h1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/h1.class */
public final class CallableC6536h1 implements Callable {

    /* renamed from: a */
    private final C6869q0 f23780a;

    /* renamed from: b */
    private final j14 f23781b;

    public CallableC6536h1(C6869q0 c6869q0, j14 j14Var) {
        this.f23780a = c6869q0;
        this.f23781b = j14Var;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        if (this.f23780a.m12069o() != null) {
            this.f23780a.m12069o().get();
        }
        z14 m12070n = this.f23780a.m12070n();
        if (m12070n != null) {
            try {
                synchronized (this.f23781b) {
                    j14 j14Var = this.f23781b;
                    byte[] mo10723K = m12070n.mo10723K();
                    j14Var.m15510p(mo10723K, 0, mo10723K.length, vd3.m10041a());
                }
                return null;
            } catch (zzggm | NullPointerException e) {
                return null;
            }
        }
        return null;
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.p263v.C5852a;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.ads.g1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/g1.class */
public final class C6499g1 extends AbstractCallableC7203z1 {
    public C6499g1(C6869q0 c6869q0, String str, String str2, j14 j14Var, int i, int i2) {
        super(c6869q0, "NSYe0Ak7CUXd9zFZA3bczJ8pTgBK/kfUu9ICpHR+lQrTNc8+V7Owo49e2WIp0407", "Ux7t0A/7z2bV/IDvLZJgV4tTxr0Vvc1KngWKlG2Szwg=", j14Var, i, 24);
    }

    /* renamed from: c */
    private final void m14998c() {
        C5852a m12064t = this.f32754b.m12064t();
        if (m12064t == null) {
            return;
        }
        try {
            C5852a.C5853a m17752c = m12064t.m17752c();
            String m10870a = C6980t0.m10870a(m17752c.m17742a());
            if (m10870a == null) {
                return;
            }
            synchronized (this.f32757e) {
                this.f32757e.m14231L(m10870a);
                this.f32757e.m14230M(m17752c.m17741b());
                this.f32757e.m14222W(6);
            }
        } catch (IOException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC7203z1
    /* renamed from: a */
    protected final void mo8630a() {
        if (this.f32754b.m12075i()) {
            m14998c();
            return;
        }
        synchronized (this.f32757e) {
            this.f32757e.m14231L((String) this.f32758f.invoke(null, this.f32754b.m12081c()));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC7203z1
    /* renamed from: b */
    public final Void mo8629b() {
        if (this.f32754b.m12080d()) {
            super.mo8629b();
            return null;
        } else if (!this.f32754b.m12075i()) {
            return null;
        } else {
            m14998c();
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC7203z1, java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        mo8629b();
        return null;
    }
}

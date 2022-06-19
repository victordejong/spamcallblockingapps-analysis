package com.google.android.gms.internal.ads;

import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.p1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p1.class */
public final class C6833p1 extends AbstractCallableC7203z1 {

    /* renamed from: i */
    private List<Long> f27809i = null;

    public C6833p1(C6869q0 c6869q0, String str, String str2, j14 j14Var, int i, int i2) {
        super(c6869q0, "6LxD9DBfXSlooSx7/LozL06rdHrjyh7Q8PNFejLJXxiRhvgA5vOTtEhIRp3pKXIi", "yXdkchwXd7KBwiPBiUydLTG3hsBC8U5EW7urXPkQrKc=", j14Var, i, 31);
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC7203z1
    /* renamed from: a */
    protected final void mo8630a() {
        this.f32757e.m14206m0(-1L);
        this.f32757e.m14205n0(-1L);
        if (this.f27809i == null) {
            this.f27809i = (List) this.f32758f.invoke(null, this.f32754b.m12081c());
        }
        List<Long> list = this.f27809i;
        if (list == null || list.size() != 2) {
            return;
        }
        synchronized (this.f32757e) {
            this.f32757e.m14206m0(this.f27809i.get(0).longValue());
            this.f32757e.m14205n0(this.f27809i.get(1).longValue());
        }
    }
}

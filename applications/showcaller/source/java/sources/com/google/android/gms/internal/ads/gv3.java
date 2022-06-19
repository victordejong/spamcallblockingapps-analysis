package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gv3.class */
public final class gv3 extends qv3 {

    /* renamed from: n */
    private ir3 f23716n;

    /* renamed from: o */
    private fv3 f23717o;

    /* renamed from: j */
    private static boolean m14797j(byte[] bArr) {
        return bArr[0] == -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.qv3
    /* renamed from: a */
    public final void mo10897a(boolean z) {
        super.mo10897a(z);
        if (z) {
            this.f23716n = null;
            this.f23717o = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.qv3
    /* renamed from: b */
    protected final long mo10896b(C6694la c6694la) {
        if (m14797j(c6694la.m13634q())) {
            int i = (c6694la.m13634q()[2] & 255) >> 4;
            int i2 = i;
            if (i != 6) {
                i2 = i;
                if (i == 7) {
                    i2 = 7;
                }
                int m15706c = dr3.m15706c(c6694la, i2);
                c6694la.m13635p(0);
                return m15706c;
            }
            c6694la.m13632s(4);
            c6694la.m13643h();
            int m15706c2 = dr3.m15706c(c6694la, i2);
            c6694la.m13635p(0);
            return m15706c2;
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.qv3
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    /* renamed from: c */
    protected final boolean mo10895c(C6694la c6694la, long j, ov3 ov3Var) {
        byte[] m13634q = c6694la.m13634q();
        ir3 ir3Var = this.f23716n;
        if (ir3Var == null) {
            ir3 ir3Var2 = new ir3(m13634q, 17);
            this.f23716n = ir3Var2;
            ov3Var.f27753a = ir3Var2.m14292c(Arrays.copyOfRange(m13634q, 9, c6694la.m13638m()), null);
            return true;
        } else if ((m13634q[0] & Byte.MAX_VALUE) == 3) {
            hr3 m15107b = fr3.m15107b(c6694la);
            ir3 m14290e = ir3Var.m14290e(m15107b);
            this.f23716n = m14290e;
            this.f23717o = new fv3(m14290e, m15107b);
            return true;
        } else if (!m14797j(m13634q)) {
            return true;
        } else {
            fv3 fv3Var = this.f23717o;
            if (fv3Var != null) {
                fv3Var.m15042c(j);
                ov3Var.f27754b = this.f23717o;
            }
            Objects.requireNonNull(ov3Var.f27753a);
            return false;
        }
    }
}

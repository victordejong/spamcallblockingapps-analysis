package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mv3.class */
public final class mv3 extends qv3 {

    /* renamed from: n */
    private static final byte[] f26892n = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: o */
    private boolean f26893o;

    /* renamed from: j */
    public static boolean m13066j(C6694la c6694la) {
        if (c6694la.m13639l() < 8) {
            return false;
        }
        byte[] bArr = new byte[8];
        c6694la.m13630u(bArr, 0, 8);
        return Arrays.equals(bArr, f26892n);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.qv3
    /* renamed from: a */
    public final void mo10897a(boolean z) {
        super.mo10897a(z);
        if (z) {
            this.f26893o = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.qv3
    /* renamed from: b */
    protected final long mo10896b(C6694la c6694la) {
        int i;
        int i2;
        byte[] m13634q = c6694la.m13634q();
        int i3 = m13634q[0] & 255;
        int i4 = i3 & 3;
        if (i4 != 0) {
            i = 2;
            if (i4 != 1) {
                i = 2;
                if (i4 != 2) {
                    i = m13634q[1] & 63;
                }
            }
        } else {
            i = 1;
        }
        int i5 = i3 >> 3;
        return m11785h(i * (i5 >= 16 ? 2500 << i2 : i5 >= 12 ? 10000 << (i2 & 1) : (i5 & 3) == 3 ? 60000 : 10000 << i2));
    }

    @Override // com.google.android.gms.internal.ads.qv3
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    /* renamed from: c */
    protected final boolean mo10895c(C6694la c6694la, long j, ov3 ov3Var) {
        boolean z = true;
        if (this.f26893o) {
            Objects.requireNonNull(ov3Var.f27753a);
            if (c6694la.m13655D() != 1332770163) {
                z = false;
            }
            c6694la.m13635p(0);
            return z;
        }
        byte[] copyOf = Arrays.copyOf(c6694la.m13634q(), c6694la.m13638m());
        byte b = copyOf[9];
        List<byte[]> m11812a = qr3.m11812a(copyOf);
        C6947s4 c6947s4 = new C6947s4();
        c6947s4.m11129n("audio/opus");
        c6947s4.m11175B(b & 255);
        c6947s4.m11174C(48000);
        c6947s4.m11127p(m11812a);
        ov3Var.f27753a = c6947s4.m11168I();
        this.f26893o = true;
        return true;
    }
}

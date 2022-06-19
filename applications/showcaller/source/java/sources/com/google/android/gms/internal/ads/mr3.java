package com.google.android.gms.internal.ads;

import java.io.EOFException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mr3.class */
public final class mr3 {

    /* renamed from: a */
    private final C6694la f26846a = new C6694la(10);

    /* renamed from: a */
    public final zzaiv m13094a(vq3 vq3Var, AbstractC6580i8 abstractC6580i8) {
        int i;
        zzaiv zzaivVar = null;
        int i2 = 0;
        while (true) {
            try {
                i = i2;
                ((pq3) vq3Var).mo9882l(this.f26846a.m13634q(), 0, 10, false);
                this.f26846a.m13635p(0);
                if (this.f26846a.m13625z() != 4801587) {
                    break;
                }
                this.f26846a.m13632s(3);
                int m13650a = this.f26846a.m13650a();
                int i3 = m13650a + 10;
                if (zzaivVar == null) {
                    byte[] bArr = new byte[i3];
                    System.arraycopy(this.f26846a.m13634q(), 0, bArr, 0, 10);
                    ((pq3) vq3Var).mo9882l(bArr, 10, m13650a, false);
                    zzaivVar = C6655k8.m13974a(bArr, i3, abstractC6580i8, new C7024u7());
                } else {
                    ((pq3) vq3Var).m12195q(m13650a, false);
                }
                i2 = i + i3;
            } catch (EOFException e) {
            }
        }
        vq3Var.mo9884i();
        ((pq3) vq3Var).m12195q(i, false);
        return zzaivVar;
    }
}

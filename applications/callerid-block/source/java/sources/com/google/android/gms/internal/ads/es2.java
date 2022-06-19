package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/es2.class */
public final class es2 {

    /* renamed from: a */
    public final List<byte[]> f6449a;

    /* renamed from: b */
    public final int f6450b;

    private es2(List<byte[]> list, int i) {
        this.f6449a = list;
        this.f6450b = i;
    }

    /* renamed from: a */
    public static es2 m7593a(sr2 sr2Var) {
        try {
            sr2Var.m5607j(21);
            int m5605l = sr2Var.m5605l();
            int m5605l2 = sr2Var.m5605l();
            int m5610g = sr2Var.m5610g();
            int i = 0;
            for (int i2 = 0; i2 < m5605l2; i2++) {
                sr2Var.m5607j(1);
                int m5604m = sr2Var.m5604m();
                for (int i3 = 0; i3 < m5604m; i3++) {
                    int m5604m2 = sr2Var.m5604m();
                    i += m5604m2 + 4;
                    sr2Var.m5607j(m5604m2);
                }
            }
            sr2Var.m5608i(m5610g);
            byte[] bArr = new byte[i];
            int i4 = 0;
            for (int i5 = 0; i5 < m5605l2; i5++) {
                sr2Var.m5607j(1);
                int m5604m3 = sr2Var.m5604m();
                for (int i6 = 0; i6 < m5604m3; i6++) {
                    int m5604m4 = sr2Var.m5604m();
                    System.arraycopy(qr2.f8261a, 0, bArr, i4, 4);
                    int i7 = i4 + 4;
                    System.arraycopy(sr2Var.f8551a, sr2Var.m5610g(), bArr, i7, m5604m4);
                    i4 = i7 + m5604m4;
                    sr2Var.m5607j(m5604m4);
                }
            }
            return new es2(i == 0 ? null : Collections.singletonList(bArr), (m5605l & 3) + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zziw("Error parsing HEVC config", e);
        }
    }
}

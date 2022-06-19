package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dsv.class */
public final class dsv {

    /* renamed from: a */
    public final List<byte[]> f15601a;

    /* renamed from: b */
    public final int f15602b;

    private dsv(List<byte[]> list, int i) {
        this.f15601a = list;
        this.f15602b = i;
    }

    /* renamed from: a */
    public static dsv m8686a(dsk dskVar) {
        try {
            dskVar.m8731d(21);
            int m8728f = dskVar.m8728f();
            int m8728f2 = dskVar.m8728f();
            int m8732d = dskVar.m8732d();
            int i = 0;
            for (int i2 = 0; i2 < m8728f2; i2++) {
                dskVar.m8731d(1);
                int m8727g = dskVar.m8727g();
                for (int i3 = 0; i3 < m8727g; i3++) {
                    int m8727g2 = dskVar.m8727g();
                    i += m8727g2 + 4;
                    dskVar.m8731d(m8727g2);
                }
            }
            dskVar.m8733c(m8732d);
            byte[] bArr = new byte[i];
            int i4 = 0;
            for (int i5 = 0; i5 < m8728f2; i5++) {
                dskVar.m8731d(1);
                int m8727g3 = dskVar.m8727g();
                for (int i6 = 0; i6 < m8727g3; i6++) {
                    int m8727g4 = dskVar.m8727g();
                    System.arraycopy(dsf.f15547a, 0, bArr, i4, dsf.f15547a.length);
                    int length = i4 + dsf.f15547a.length;
                    System.arraycopy(dskVar.f15569a, dskVar.m8732d(), bArr, length, m8727g4);
                    i4 = length + m8727g4;
                    dskVar.m8731d(m8727g4);
                }
            }
            return new dsv(i == 0 ? null : Collections.singletonList(bArr), (m8728f & 3) + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhi("Error parsing HEVC config", e);
        }
    }
}

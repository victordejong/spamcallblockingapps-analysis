package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.xi */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xi.class */
public final class C7146xi {

    /* renamed from: a */
    public final List<byte[]> f32061a;

    /* renamed from: b */
    public final int f32062b;

    private C7146xi(List<byte[]> list, int i) {
        this.f32061a = list;
        this.f32062b = i;
    }

    /* renamed from: a */
    public static C7146xi m9153a(C6665ki c6665ki) {
        try {
            c6665ki.m13898j(21);
            int m13896l = c6665ki.m13896l();
            int m13896l2 = c6665ki.m13896l();
            int m13901g = c6665ki.m13901g();
            int i = 0;
            for (int i2 = 0; i2 < m13896l2; i2++) {
                c6665ki.m13898j(1);
                int m13895m = c6665ki.m13895m();
                for (int i3 = 0; i3 < m13895m; i3++) {
                    int m13895m2 = c6665ki.m13895m();
                    i += m13895m2 + 4;
                    c6665ki.m13898j(m13895m2);
                }
            }
            c6665ki.m13899i(m13901g);
            byte[] bArr = new byte[i];
            int i4 = 0;
            for (int i5 = 0; i5 < m13896l2; i5++) {
                c6665ki.m13898j(1);
                int m13895m3 = c6665ki.m13895m();
                for (int i6 = 0; i6 < m13895m3; i6++) {
                    int m13895m4 = c6665ki.m13895m();
                    System.arraycopy(C6591ii.f24281a, 0, bArr, i4, 4);
                    int i7 = i4 + 4;
                    System.arraycopy(c6665ki.f25221a, c6665ki.m13901g(), bArr, i7, m13895m4);
                    i4 = i7 + m13895m4;
                    c6665ki.m13898j(m13895m4);
                }
            }
            return new C7146xi(i == 0 ? null : Collections.singletonList(bArr), (m13896l & 3) + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzanp("Error parsing HEVC config", e);
        }
    }
}

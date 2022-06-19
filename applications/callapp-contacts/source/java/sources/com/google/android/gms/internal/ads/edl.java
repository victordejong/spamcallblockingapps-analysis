package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edl.class */
public final class edl {

    /* renamed from: a */
    public final List<byte[]> f48755a;

    /* renamed from: b */
    public final int f48756b;

    private edl(List<byte[]> list, int i) {
        this.f48755a = list;
        this.f48756b = i;
    }

    /* renamed from: a */
    public static edl m15179a(ecy ecyVar) throws zzhw {
        try {
            ecyVar.m15224d(21);
            int m15225d = ecyVar.m15225d();
            int m15225d2 = ecyVar.m15225d();
            int i = ecyVar.f48725b;
            int i2 = 0;
            for (int i3 = 0; i3 < m15225d2; i3++) {
                ecyVar.m15224d(1);
                int m15223e = ecyVar.m15223e();
                for (int i4 = 0; i4 < m15223e; i4++) {
                    int m15223e2 = ecyVar.m15223e();
                    i2 += m15223e2 + 4;
                    ecyVar.m15224d(m15223e2);
                }
            }
            ecyVar.m15226c(i);
            byte[] bArr = new byte[i2];
            int i5 = 0;
            for (int i6 = 0; i6 < m15225d2; i6++) {
                ecyVar.m15224d(1);
                int m15223e3 = ecyVar.m15223e();
                for (int i7 = 0; i7 < m15223e3; i7++) {
                    int m15223e4 = ecyVar.m15223e();
                    System.arraycopy(ecx.f48720a, 0, bArr, i5, ecx.f48720a.length);
                    int length = i5 + ecx.f48720a.length;
                    System.arraycopy(ecyVar.f48724a, ecyVar.f48725b, bArr, length, m15223e4);
                    i5 = length + m15223e4;
                    ecyVar.m15224d(m15223e4);
                }
            }
            return new edl(i2 == 0 ? null : Collections.singletonList(bArr), (m15225d & 3) + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhw("Error parsing HEVC config", e);
        }
    }
}

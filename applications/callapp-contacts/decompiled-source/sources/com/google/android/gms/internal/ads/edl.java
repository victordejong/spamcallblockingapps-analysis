package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edl.class */
public final class edl {

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f27674a;

    /* renamed from: b  reason: collision with root package name */
    public final int f27675b;

    private edl(List<byte[]> list, int i) {
        this.f27674a = list;
        this.f27675b = i;
    }

    public static edl a(ecy ecyVar) throws zzhw {
        try {
            ecyVar.d(21);
            int d2 = ecyVar.d();
            int d3 = ecyVar.d();
            int i = ecyVar.f27650b;
            int i2 = 0;
            for (int i3 = 0; i3 < d3; i3++) {
                ecyVar.d(1);
                int e = ecyVar.e();
                for (int i4 = 0; i4 < e; i4++) {
                    int e2 = ecyVar.e();
                    i2 += e2 + 4;
                    ecyVar.d(e2);
                }
            }
            ecyVar.c(i);
            byte[] bArr = new byte[i2];
            int i5 = 0;
            for (int i6 = 0; i6 < d3; i6++) {
                ecyVar.d(1);
                int e3 = ecyVar.e();
                for (int i7 = 0; i7 < e3; i7++) {
                    int e4 = ecyVar.e();
                    System.arraycopy(ecx.f27645a, 0, bArr, i5, ecx.f27645a.length);
                    int length = i5 + ecx.f27645a.length;
                    System.arraycopy(ecyVar.f27649a, ecyVar.f27650b, bArr, length, e4);
                    i5 = length + e4;
                    ecyVar.d(e4);
                }
            }
            return new edl(i2 == 0 ? null : Collections.singletonList(bArr), (d2 & 3) + 1);
        } catch (ArrayIndexOutOfBoundsException e5) {
            throw new zzhw("Error parsing HEVC config", e5);
        }
    }
}

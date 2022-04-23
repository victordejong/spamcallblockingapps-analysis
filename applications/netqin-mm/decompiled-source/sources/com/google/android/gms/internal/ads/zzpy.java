package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpy.class */
public final class zzpy {

    /* renamed from: a */
    public final List<byte[]> f28836a;

    /* renamed from: b */
    public final int f28837b;

    public zzpy(List<byte[]> list, int i) {
        this.f28836a = list;
        this.f28837b = i;
    }

    /* renamed from: a */
    public static zzpy m11574a(zzpk zzpkVar) throws zzhv {
        try {
            zzpkVar.m11654d(21);
            int g = zzpkVar.m11650g();
            int g2 = zzpkVar.m11650g();
            int b = zzpkVar.m11659b();
            int i = 0;
            for (int i2 = 0; i2 < g2; i2++) {
                zzpkVar.m11654d(1);
                int h = zzpkVar.m11649h();
                for (int i3 = 0; i3 < h; i3++) {
                    int h2 = zzpkVar.m11649h();
                    i += h2 + 4;
                    zzpkVar.m11654d(h2);
                }
            }
            zzpkVar.m11656c(b);
            byte[] bArr = new byte[i];
            int i4 = 0;
            for (int i5 = 0; i5 < g2; i5++) {
                zzpkVar.m11654d(1);
                int h3 = zzpkVar.m11649h();
                for (int i6 = 0; i6 < h3; i6++) {
                    int h4 = zzpkVar.m11649h();
                    System.arraycopy(zzpf.f28764a, 0, bArr, i4, zzpf.f28764a.length);
                    int length = i4 + zzpf.f28764a.length;
                    System.arraycopy(zzpkVar.f28779a, zzpkVar.m11659b(), bArr, length, h4);
                    i4 = length + h4;
                    zzpkVar.m11654d(h4);
                }
            }
            return new zzpy(i == 0 ? null : Collections.singletonList(bArr), (g & 3) + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhv("Error parsing HEVC config", e);
        }
    }
}

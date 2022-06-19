package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lr3.class */
public final class lr3 {

    /* renamed from: a */
    public final List<byte[]> f26259a;

    /* renamed from: b */
    public final int f26260b;

    /* renamed from: c */
    public final String f26261c;

    private lr3(List<byte[]> list, int i, String str) {
        this.f26259a = list;
        this.f26260b = i;
        this.f26261c = str;
    }

    /* renamed from: a */
    public static lr3 m13421a(C6694la c6694la) {
        try {
            c6694la.m13632s(21);
            int m13629v = c6694la.m13629v();
            int m13629v2 = c6694la.m13629v();
            int m13636o = c6694la.m13636o();
            int i = 0;
            for (int i2 = 0; i2 < m13629v2; i2++) {
                c6694la.m13632s(1);
                int m13628w = c6694la.m13628w();
                for (int i3 = 0; i3 < m13628w; i3++) {
                    int m13628w2 = c6694la.m13628w();
                    i += m13628w2 + 4;
                    c6694la.m13632s(m13628w2);
                }
            }
            c6694la.m13635p(m13636o);
            byte[] bArr = new byte[i];
            String str = null;
            int i4 = 0;
            for (int i5 = 0; i5 < m13629v2; i5++) {
                int m13629v3 = c6694la.m13629v();
                int m13628w3 = c6694la.m13628w();
                int i6 = 0;
                while (true) {
                    int i7 = i6;
                    if (i7 < m13628w3) {
                        int m13628w4 = c6694la.m13628w();
                        System.arraycopy(C6322ba.f20319a, 0, bArr, i4, 4);
                        int i8 = i4 + 4;
                        System.arraycopy(c6694la.m13634q(), c6694la.m13636o(), bArr, i8, m13628w4);
                        String str2 = str;
                        int i9 = i7;
                        if ((m13629v3 & 127) == 33) {
                            str2 = str;
                            i9 = i7;
                            if (i7 == 0) {
                                str2 = C6284a9.m16672b(new C6731ma(bArr, i8, i8 + m13628w4));
                                i9 = 0;
                            }
                        }
                        int i10 = i8 + m13628w4;
                        c6694la.m13632s(m13628w4);
                        int i11 = i9 + 1;
                        str = str2;
                        i4 = i10;
                        i6 = i11;
                    }
                }
            }
            return new lr3(i == 0 ? null : Collections.singletonList(bArr), (m13629v & 3) + 1, str);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzaha.zzb("Error parsing HEVC config", e);
        }
    }
}

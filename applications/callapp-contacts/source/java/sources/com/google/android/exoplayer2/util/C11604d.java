package com.google.android.exoplayer2.util;

import android.util.Pair;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.util.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/d.class */
public final class C11604d {

    /* renamed from: a */
    private static final byte[] f38668a = {0, 0, 0, 1};

    /* renamed from: b */
    private static final String[] f38669b = {"", "A", "B", "C"};

    private C11604d() {
    }

    /* renamed from: a */
    public static Pair<Integer, Integer> m19903a(byte[] bArr) {
        C11628u c11628u = new C11628u(bArr);
        c11628u.m19801d(9);
        int m19804c = c11628u.m19804c();
        c11628u.m19801d(20);
        return Pair.create(Integer.valueOf(c11628u.m19787o()), Integer.valueOf(m19804c));
    }

    /* renamed from: a */
    public static String m19907a(int i, int i2, int i3) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    /* renamed from: a */
    public static String m19906a(C11629v c11629v) {
        int i;
        c11629v.m19779a(24);
        int m19774c = c11629v.m19774c(2);
        boolean m19777b = c11629v.m19777b();
        int m19774c2 = c11629v.m19774c(5);
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= 32) {
                break;
            }
            int i4 = i;
            if (c11629v.m19777b()) {
                i4 = i | (1 << i2);
            }
            i2++;
            i3 = i4;
        }
        int[] iArr = new int[6];
        for (int i5 = 0; i5 < 6; i5++) {
            iArr[i5] = c11629v.m19774c(8);
        }
        StringBuilder sb = new StringBuilder(C11599af.m19968a("hvc1.%s%d.%X.%c%d", f38669b[m19774c], Integer.valueOf(m19774c2), Integer.valueOf(i), Character.valueOf(m19777b ? 'H' : 'L'), Integer.valueOf(c11629v.m19774c(8))));
        int i6 = 6;
        while (i6 > 0 && iArr[i6 - 1] == 0) {
            i6--;
        }
        for (int i7 = 0; i7 < i6; i7++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i7])));
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static List<byte[]> m19904a(boolean z) {
        return Collections.singletonList(z ? new byte[]{(byte) 1} : new byte[]{(byte) 0});
    }

    /* renamed from: a */
    public static boolean m19905a(List<byte[]> list) {
        return list.size() == 1 && list.get(0).length == 1 && list.get(0)[0] == 1;
    }

    /* renamed from: a */
    public static byte[] m19902a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = f38668a;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, bArr2.length, i2);
        return bArr3;
    }
}

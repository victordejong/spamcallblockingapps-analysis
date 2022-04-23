package com.google.android.exoplayer2.util;

import android.util.Pair;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f22284a = {0, 0, 0, 1};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f22285b = {"", "A", "B", "C"};

    private d() {
    }

    public static Pair<Integer, Integer> a(byte[] bArr) {
        u uVar = new u(bArr);
        uVar.d(9);
        int c2 = uVar.c();
        uVar.d(20);
        return Pair.create(Integer.valueOf(uVar.o()), Integer.valueOf(c2));
    }

    public static String a(int i, int i2, int i3) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    public static String a(v vVar) {
        vVar.a(24);
        int c2 = vVar.c(2);
        boolean b2 = vVar.b();
        int c3 = vVar.c(5);
        int i = 0;
        for (int i2 = 0; i2 < 32; i2++) {
            i = i;
            if (vVar.b()) {
                i |= 1 << i2;
            }
        }
        int i3 = 6;
        int[] iArr = new int[6];
        for (int i4 = 0; i4 < 6; i4++) {
            iArr[i4] = vVar.c(8);
        }
        StringBuilder sb = new StringBuilder(af.a("hvc1.%s%d.%X.%c%d", f22285b[c2], Integer.valueOf(c3), Integer.valueOf(i), Character.valueOf(b2 ? 'H' : 'L'), Integer.valueOf(vVar.c(8))));
        while (i3 > 0 && iArr[i3 - 1] == 0) {
            i3--;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i5])));
        }
        return sb.toString();
    }

    public static List<byte[]> a(boolean z) {
        return Collections.singletonList(z ? new byte[]{(byte) 1} : new byte[]{(byte) 0});
    }

    public static boolean a(List<byte[]> list) {
        return list.size() == 1 && list.get(0).length == 1 && list.get(0)[0] == 1;
    }

    public static byte[] a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = f22284a;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, bArr2.length, i2);
        return bArr3;
    }
}

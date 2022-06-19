package com.google.android.exoplayer2.p243c1;
/* renamed from: com.google.android.exoplayer2.c1.k */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/k.class */
final class C4981k {
    /* renamed from: a */
    public static int m20998a(AbstractC4979i abstractC4979i, byte[] bArr, int i, int i2) {
        int i3;
        int mo21004f;
        int i4 = 0;
        while (true) {
            i3 = i4;
            if (i3 >= i2 || (mo21004f = abstractC4979i.mo21004f(bArr, i + i3, i2 - i3)) == -1) {
                break;
            }
            i4 = i3 + mo21004f;
        }
        return i3;
    }
}

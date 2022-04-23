package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddi.class */
final class ddi implements Comparable<ddi> {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f26748a;

    private ddi(byte[] bArr) {
        this.f26748a = Arrays.copyOf(bArr, bArr.length);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(ddi ddiVar) {
        int i;
        int i2;
        ddi ddiVar2 = ddiVar;
        byte[] bArr = this.f26748a;
        int length = bArr.length;
        byte[] bArr2 = ddiVar2.f26748a;
        if (length != bArr2.length) {
            int length2 = bArr.length;
            i2 = bArr2.length;
            i = length2;
        } else {
            int i3 = 0;
            while (true) {
                byte[] bArr3 = this.f26748a;
                if (i3 >= bArr3.length) {
                    return 0;
                }
                byte b2 = bArr3[i3];
                byte[] bArr4 = ddiVar2.f26748a;
                if (b2 != bArr4[i3]) {
                    byte b3 = bArr3[i3];
                    i2 = bArr4[i3];
                    i = b3;
                    break;
                }
                i3++;
            }
        }
        return i - i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ddi)) {
            return false;
        }
        return Arrays.equals(this.f26748a, ((ddi) obj).f26748a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f26748a);
    }

    public final String toString() {
        byte[] bArr = this.f26748a;
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b2 : bArr) {
            int i = b2 & 255;
            sb.append("0123456789abcdef".charAt(i / 16));
            sb.append("0123456789abcdef".charAt(i % 16));
        }
        return sb.toString();
    }
}

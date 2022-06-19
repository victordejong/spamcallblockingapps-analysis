package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/c12.class */
final class c12 implements Comparable<c12> {

    /* renamed from: b */
    private final byte[] f6243b;

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(c12 c12Var) {
        int i;
        c12 c12Var2 = c12Var;
        int length = this.f6243b.length;
        int length2 = c12Var2.f6243b.length;
        if (length != length2) {
            i = length - length2;
        } else {
            int i2 = 0;
            while (true) {
                byte[] bArr = this.f6243b;
                i = 0;
                if (i2 >= bArr.length) {
                    break;
                }
                byte b = bArr[i2];
                byte b2 = c12Var2.f6243b[i2];
                if (b != b2) {
                    i = b - b2;
                    break;
                }
                i2++;
            }
        }
        return i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof c12)) {
            return false;
        }
        return Arrays.equals(this.f6243b, ((c12) obj).f6243b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f6243b);
    }

    public final String toString() {
        byte[] bArr = this.f6243b;
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b : bArr) {
            int i = b & 255;
            sb.append("0123456789abcdef".charAt(i >> 4));
            sb.append("0123456789abcdef".charAt(i & 15));
        }
        return sb.toString();
    }
}

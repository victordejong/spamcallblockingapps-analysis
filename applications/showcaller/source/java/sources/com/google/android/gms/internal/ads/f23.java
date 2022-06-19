package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f23.class */
final class f23 implements Comparable<f23> {

    /* renamed from: d */
    private final byte[] f22712d;

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(f23 f23Var) {
        int i;
        f23 f23Var2 = f23Var;
        int length = this.f22712d.length;
        int length2 = f23Var2.f22712d.length;
        if (length != length2) {
            i = length - length2;
        } else {
            int i2 = 0;
            while (true) {
                byte[] bArr = this.f22712d;
                i = 0;
                if (i2 >= bArr.length) {
                    break;
                }
                byte b = bArr[i2];
                byte b2 = f23Var2.f22712d[i2];
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
        if (!(obj instanceof f23)) {
            return false;
        }
        return Arrays.equals(this.f22712d, ((f23) obj).f22712d);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f22712d);
    }

    public final String toString() {
        byte[] bArr = this.f22712d;
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

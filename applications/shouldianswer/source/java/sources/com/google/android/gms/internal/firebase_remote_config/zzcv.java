package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzcv.class */
public abstract class zzcv extends zzcr {
    private static char[] zza(char[] cArr, int i, int i2) {
        char[] cArr2 = new char[i2];
        if (i > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i);
        }
        return cArr2;
    }

    protected abstract int zza(CharSequence charSequence, int i, int i2);

    public final String zza(String str, int i) {
        int length = str.length();
        char[] zzcd = zzct.zzcd();
        int i2 = 0;
        int i3 = i;
        int i4 = 0;
        while (i3 < length) {
            if (i3 >= length) {
                throw new IndexOutOfBoundsException("Index exceeds specified range");
            }
            int i5 = i3 + 1;
            char charAt = str.charAt(i3);
            int i6 = 1;
            char c = charAt;
            if (charAt >= 55296) {
                if (charAt > 57343) {
                    c = charAt;
                } else if (charAt > 56319) {
                    StringBuilder sb = new StringBuilder(82);
                    sb.append("Unexpected low surrogate character '");
                    sb.append(charAt);
                    sb.append("' with value ");
                    sb.append((int) charAt);
                    sb.append(" at index ");
                    sb.append(i5 - 1);
                    throw new IllegalArgumentException(sb.toString());
                } else if (i5 == length) {
                    c = -charAt;
                } else {
                    char charAt2 = str.charAt(i5);
                    if (!Character.isLowSurrogate(charAt2)) {
                        StringBuilder sb2 = new StringBuilder(83);
                        sb2.append("Expected low surrogate but got char '");
                        sb2.append(charAt2);
                        sb2.append("' with value ");
                        sb2.append((int) charAt2);
                        sb2.append(" at index ");
                        sb2.append(i5);
                        throw new IllegalArgumentException(sb2.toString());
                    }
                    c = Character.toCodePoint(charAt, charAt2);
                }
            }
            if (c < 0) {
                throw new IllegalArgumentException("Trailing high surrogate at end of input");
            }
            char[] zzj = zzj(c);
            if (Character.isSupplementaryCodePoint(c)) {
                i6 = 2;
            }
            int i7 = i6 + i3;
            int i8 = i2;
            int i9 = i4;
            char[] cArr = zzcd;
            if (zzj != null) {
                int i10 = i3 - i2;
                int i11 = i4 + i10;
                int length2 = zzj.length + i11;
                cArr = zzcd;
                if (zzcd.length < length2) {
                    cArr = zza(zzcd, i4, ((length2 + length) - i3) + 32);
                }
                int i12 = i4;
                if (i10 > 0) {
                    str.getChars(i2, i3, cArr, i4);
                    i12 = i11;
                }
                int i13 = i12;
                if (zzj.length > 0) {
                    System.arraycopy(zzj, 0, cArr, i12, zzj.length);
                    i13 = i12 + zzj.length;
                }
                i8 = i7;
                i9 = i13;
            }
            i3 = zza(str, i7, length);
            i2 = i8;
            i4 = i9;
            zzcd = cArr;
        }
        int i14 = length - i2;
        if (i14 > 0) {
            int i15 = i14 + i4;
            char[] cArr2 = zzcd;
            if (zzcd.length < i15) {
                cArr2 = zza(zzcd, i4, i15);
            }
            str.getChars(i2, length, cArr2, i4);
            zzcd = cArr2;
            i4 = i15;
        }
        return new String(zzcd, 0, i4);
    }

    protected abstract char[] zzj(int i);
}

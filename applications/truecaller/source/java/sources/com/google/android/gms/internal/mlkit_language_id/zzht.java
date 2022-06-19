package com.google.android.gms.internal.mlkit_language_id;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzht.class */
public final class zzht extends zzho {
    private static int zza(byte[] bArr, int i, long j, int i2) {
        int zzb;
        int zzb2;
        int zzb3;
        if (i2 == 0) {
            zzb = zzhp.zzb(i);
            return zzb;
        } else if (i2 == 1) {
            zzb2 = zzhp.zzb(i, zzhn.zza(bArr, j));
            return zzb2;
        } else if (i2 != 2) {
            throw new AssertionError();
        } else {
            zzb3 = zzhp.zzb(i, zzhn.zza(bArr, j), zzhn.zza(bArr, j + 1));
            return zzb3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91 */
    @Override // com.google.android.gms.internal.mlkit_language_id.zzho
    public final int zza(int i, byte[] bArr, int i2, int i3) {
        int i4;
        char c;
        if ((i2 | i3 | (bArr.length - i3)) >= 0) {
            ?? r0 = i2;
            int i5 = (int) (i3 - r0);
            if (i5 >= 16) {
                i4 = 0;
                char c2 = r0;
                while (true) {
                    char c3 = c2;
                    if (i4 >= i5) {
                        i4 = i5;
                        break;
                    } else if (zzhn.zza(bArr, (long) c3) < 0) {
                        break;
                    } else {
                        i4++;
                        c2 = c3 + 1;
                    }
                }
            } else {
                i4 = 0;
            }
            char c4 = r0 + i4;
            int i6 = i5 - i4;
            while (true) {
                byte b = 0;
                while (true) {
                    c = c4;
                    if (i6 <= 0) {
                        break;
                    }
                    c = c4 + 1;
                    b = zzhn.zza(bArr, (long) c4);
                    if (b < 0) {
                        break;
                    }
                    i6--;
                    c4 = c;
                }
                if (i6 == 0) {
                    return 0;
                }
                int i7 = i6 - 1;
                if (b < -32) {
                    if (i7 == 0) {
                        return b;
                    }
                    i6 = i7 - 1;
                    if (b < -62 || zzhn.zza(bArr, (long) c) > -65) {
                        return -1;
                    }
                    c4 = c + 1;
                } else if (b < -16) {
                    if (i7 < 2) {
                        return zza(bArr, b, c, i7);
                    }
                    i6 = i7 - 2;
                    long j = c + 1;
                    byte zza = zzhn.zza(bArr, (long) c);
                    if (zza > -65) {
                        return -1;
                    }
                    if (b == -32 && zza < -96) {
                        return -1;
                    }
                    if (b == -19 && zza >= -96) {
                        return -1;
                    }
                    c4 = j + 1;
                    if (zzhn.zza(bArr, j) > -65) {
                        return -1;
                    }
                } else if (i7 < 3) {
                    return zza(bArr, b, c, i7);
                } else {
                    i6 = i7 - 3;
                    long j2 = c + 1;
                    byte zza2 = zzhn.zza(bArr, (long) c);
                    if (zza2 > -65 || (((zza2 + 112) + (b << 28)) >> 30) != 0) {
                        return -1;
                    }
                    long j3 = j2 + 1;
                    if (zzhn.zza(bArr, j2) > -65) {
                        return -1;
                    }
                    c4 = j3 + 1;
                    if (zzhn.zza(bArr, j3) > -65) {
                        return -1;
                    }
                }
            }
        } else {
            throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v118, types: [long] */
    /* JADX WARN: Type inference failed for: r0v130, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* JADX WARN: Type inference failed for: r0v96, types: [long] */
    @Override // com.google.android.gms.internal.mlkit_language_id.zzho
    public final int zza(CharSequence charSequence, byte[] bArr, int i, int i2) {
        char c;
        char c2;
        char c3;
        int i3;
        char c4;
        int i4;
        char charAt;
        char c5 = i;
        long j = i2 + c5;
        int length = charSequence.length();
        if (length > i2 || bArr.length - i2 < i) {
            char charAt2 = charSequence.charAt(length - 1);
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(charAt2);
            sb.append(" at index ");
            sb.append(i + i2);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i5 = 0;
        while (true) {
            c = 128;
            c2 = 1;
            if (i5 >= length || (charAt = charSequence.charAt(i5)) >= 128) {
                break;
            }
            zzhn.zza(bArr, (long) c5, (byte) charAt);
            i5++;
            c5 = 1 + c5;
        }
        int i6 = i5;
        char c6 = c5;
        if (i5 == length) {
            return c5;
        }
        while (i6 < length) {
            char charAt3 = charSequence.charAt(i6);
            if (charAt3 < c && c6 < j) {
                zzhn.zza(bArr, (long) c6, (byte) charAt3);
                ?? r0 = c6 + c2;
                i3 = i6;
                c2 = c2;
                c4 = c;
                c3 = r0;
            } else if (charAt3 < 2048 && c6 <= j - 2) {
                long j2 = c6 + c2;
                zzhn.zza(bArr, (long) c6, (byte) ((charAt3 >>> 6) | 960));
                zzhn.zza(bArr, j2, (byte) ((charAt3 & '?') | 128));
                c3 = j2 + c2;
                i3 = i6;
                c4 = 128;
            } else if ((charAt3 >= 55296 && 57343 >= charAt3) || c6 > j - 3) {
                if (c6 > j - 4) {
                    if (55296 <= charAt3 && charAt3 <= 57343 && ((i4 = i6 + 1) == length || !Character.isSurrogatePair(charAt3, charSequence.charAt(i4)))) {
                        throw new zzhq(i6, length);
                    }
                    StringBuilder sb2 = new StringBuilder(46);
                    sb2.append("Failed writing ");
                    sb2.append(charAt3);
                    sb2.append(" at index ");
                    sb2.append((long) c6);
                    throw new ArrayIndexOutOfBoundsException(sb2.toString());
                }
                i3 = i6 + 1;
                if (i3 != length) {
                    char charAt4 = charSequence.charAt(i3);
                    if (Character.isSurrogatePair(charAt3, charAt4)) {
                        int codePoint = Character.toCodePoint(charAt3, charAt4);
                        long j3 = c6 + 1;
                        zzhn.zza(bArr, (long) c6, (byte) ((codePoint >>> 18) | 240));
                        long j4 = j3 + 1;
                        c4 = 128;
                        zzhn.zza(bArr, j3, (byte) (((codePoint >>> 12) & 63) | 128));
                        long j5 = j4 + 1;
                        zzhn.zza(bArr, j4, (byte) (((codePoint >>> 6) & 63) | 128));
                        c2 = 1;
                        c3 = j5 + 1;
                        zzhn.zza(bArr, j5, (byte) ((codePoint & 63) | 128));
                    } else {
                        i6 = i3;
                    }
                }
                throw new zzhq(i6 - 1, length);
            } else {
                long j6 = c6 + c2;
                zzhn.zza(bArr, (long) c6, (byte) ((charAt3 >>> '\f') | 480));
                long j7 = j6 + c2;
                zzhn.zza(bArr, j6, (byte) (((charAt3 >>> 6) & 63) | 128));
                zzhn.zza(bArr, j7, (byte) ((charAt3 & '?') | 128));
                c3 = j7 + 1;
                c2 = 1;
                i3 = i6;
                c4 = 128;
            }
            c = c4;
            i6 = i3 + 1;
            c6 = c3;
        }
        return c6;
    }
}

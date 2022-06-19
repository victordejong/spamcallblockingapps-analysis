package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzii.class */
final class zzii extends zzif {
    @Override // com.google.android.gms.internal.measurement.zzif
    final int zza(int i, byte[] bArr, int i2, int i3) {
        int zzd;
        int zzd2;
        while (i2 < i3 && bArr[i2] >= 0) {
            i2++;
        }
        int i4 = i2;
        if (i2 >= i3) {
            return 0;
        }
        while (i4 < i3) {
            int i5 = i4 + 1;
            byte b = bArr[i4];
            i4 = i5;
            if (b < 0) {
                if (b < -32) {
                    if (i5 >= i3) {
                        return b;
                    }
                    if (b < -62) {
                        return -1;
                    }
                    i4 = i5 + 1;
                    if (bArr[i5] > -65) {
                        return -1;
                    }
                } else if (b < -16) {
                    if (i5 >= i3 - 1) {
                        zzd = zzie.zzd(bArr, i5, i3);
                        return zzd;
                    }
                    int i6 = i5 + 1;
                    byte b2 = bArr[i5];
                    if (b2 > -65) {
                        return -1;
                    }
                    if (b == -32 && b2 < -96) {
                        return -1;
                    }
                    if (b == -19 && b2 >= -96) {
                        return -1;
                    }
                    i4 = i6 + 1;
                    if (bArr[i6] > -65) {
                        return -1;
                    }
                } else if (i5 >= i3 - 2) {
                    zzd2 = zzie.zzd(bArr, i5, i3);
                    return zzd2;
                } else {
                    int i7 = i5 + 1;
                    byte b3 = bArr[i5];
                    if (b3 > -65 || (((b << 28) + (b3 + 112)) >> 30) != 0) {
                        return -1;
                    }
                    int i8 = i7 + 1;
                    if (bArr[i7] > -65) {
                        return -1;
                    }
                    i4 = i8 + 1;
                    if (bArr[i8] > -65) {
                        return -1;
                    }
                }
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzif
    public final int zza(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        char charAt;
        int length = charSequence.length();
        int i6 = i2 + i;
        int i7 = 0;
        while (i7 < length && (i5 = i7 + i) < i6 && (charAt = charSequence.charAt(i7)) < 128) {
            bArr[i5] = (byte) charAt;
            i7++;
        }
        if (i7 == length) {
            return i + length;
        }
        int i8 = i + i7;
        int i9 = i7;
        while (i9 < length) {
            char charAt2 = charSequence.charAt(i9);
            if (charAt2 < 128 && i8 < i6) {
                i3 = i8 + 1;
                bArr[i8] = (byte) charAt2;
            } else if (charAt2 < 2048 && i8 <= i6 - 2) {
                int i10 = i8 + 1;
                bArr[i8] = (byte) ((charAt2 >>> 6) | 960);
                i3 = i10 + 1;
                bArr[i10] = (byte) ((charAt2 & '?') | 128);
            } else if ((charAt2 >= 55296 && 57343 >= charAt2) || i8 > i6 - 3) {
                if (i8 > i6 - 4) {
                    if (55296 <= charAt2 && charAt2 <= 57343 && ((i4 = i9 + 1) == charSequence.length() || !Character.isSurrogatePair(charAt2, charSequence.charAt(i4)))) {
                        throw new zzih(i9, length);
                    }
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Failed writing ");
                    sb.append(charAt2);
                    sb.append(" at index ");
                    sb.append(i8);
                    throw new ArrayIndexOutOfBoundsException(sb.toString());
                }
                int i11 = i9 + 1;
                if (i11 != charSequence.length()) {
                    char charAt3 = charSequence.charAt(i11);
                    if (Character.isSurrogatePair(charAt2, charAt3)) {
                        int codePoint = Character.toCodePoint(charAt2, charAt3);
                        int i12 = i8 + 1;
                        bArr[i8] = (byte) ((codePoint >>> 18) | 240);
                        int i13 = i12 + 1;
                        bArr[i12] = (byte) (((codePoint >>> 12) & 63) | 128);
                        int i14 = i13 + 1;
                        bArr[i13] = (byte) (((codePoint >>> 6) & 63) | 128);
                        bArr[i14] = (byte) ((codePoint & 63) | 128);
                        i9 = i11;
                        i3 = i14 + 1;
                    } else {
                        i9 = i11;
                    }
                }
                throw new zzih(i9 - 1, length);
            } else {
                int i15 = i8 + 1;
                bArr[i8] = (byte) ((charAt2 >>> '\f') | 480);
                int i16 = i15 + 1;
                bArr[i15] = (byte) (((charAt2 >>> 6) & 63) | 128);
                i3 = i16 + 1;
                bArr[i16] = (byte) ((charAt2 & '?') | 128);
            }
            i9++;
            i8 = i3;
        }
        return i8;
    }

    @Override // com.google.android.gms.internal.measurement.zzif
    public final String zzb(byte[] bArr, int i, int i2) {
        boolean zzd;
        boolean zzd2;
        boolean zze;
        boolean zzf;
        boolean zzd3;
        if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b = bArr[i];
                zzd3 = zzig.zzd(b);
                if (!zzd3) {
                    break;
                }
                i++;
                zzig.zzb(b, cArr, i4);
                i4++;
            }
            int i5 = i4;
            int i6 = i;
            int i7 = i5;
            while (i6 < i3) {
                int i8 = i6 + 1;
                byte b2 = bArr[i6];
                zzd = zzig.zzd(b2);
                if (zzd) {
                    zzig.zzb(b2, cArr, i7);
                    i7++;
                    i6 = i8;
                    while (i6 < i3) {
                        byte b3 = bArr[i6];
                        zzd2 = zzig.zzd(b3);
                        if (zzd2) {
                            i6++;
                            zzig.zzb(b3, cArr, i7);
                            i7++;
                        }
                    }
                } else {
                    zze = zzig.zze(b2);
                    if (!zze) {
                        zzf = zzig.zzf(b2);
                        if (zzf) {
                            if (i8 >= i3 - 1) {
                                throw zzfo.zzh();
                            }
                            int i9 = i8 + 1;
                            zzig.zzb(b2, bArr[i8], bArr[i9], cArr, i7);
                            i6 = i9 + 1;
                            i7++;
                        } else if (i8 >= i3 - 2) {
                            throw zzfo.zzh();
                        } else {
                            int i10 = i8 + 1;
                            byte b4 = bArr[i8];
                            int i11 = i10 + 1;
                            zzig.zzb(b2, b4, bArr[i10], bArr[i11], cArr, i7);
                            i6 = i11 + 1;
                            i7 = i7 + 1 + 1;
                        }
                    } else if (i8 >= i3) {
                        throw zzfo.zzh();
                    } else {
                        zzig.zzb(b2, bArr[i8], cArr, i7);
                        i6 = i8 + 1;
                        i7++;
                    }
                }
            }
            return new String(cArr, 0, i7);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
    }
}

package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzkk.class */
final class zzkk extends zzkj {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [int] */
    /* JADX WARN: Type inference failed for: r0v40, types: [int] */
    @Override // com.google.android.gms.internal.measurement.zzkj
    final int zzb(int i, byte[] bArr, int i2, int i3) {
        byte b;
        while (i2 < i3 && bArr[i2] >= 0) {
            i2++;
        }
        int i4 = i2;
        if (i2 >= i3) {
            b = 0;
        } else {
            while (true) {
                if (i4 < i3) {
                    int i5 = i4 + 1;
                    byte b2 = bArr[i4];
                    i4 = i5;
                    if (b2 < 0) {
                        if (b2 >= -32) {
                            if (b2 >= -16) {
                                if (i5 < i3 - 2) {
                                    int i6 = i5 + 1;
                                    byte b3 = bArr[i5];
                                    if (b3 > -65 || (((b2 << 28) + (b3 + 112)) >> 30) != 0) {
                                        break;
                                    }
                                    int i7 = i6 + 1;
                                    if (bArr[i6] > -65) {
                                        break;
                                    }
                                    i4 = i7 + 1;
                                    if (bArr[i7] > -65) {
                                        break;
                                    }
                                } else {
                                    b = zzkn.zzh(bArr, i5, i3);
                                    break;
                                }
                            } else if (i5 < i3 - 1) {
                                int i8 = i5 + 1;
                                byte b4 = bArr[i5];
                                if (b4 > -65 || ((b2 == -32 && b4 < -96) || (b2 == -19 && b4 >= -96))) {
                                    break;
                                }
                                i4 = i8 + 1;
                                if (bArr[i8] > -65) {
                                    break;
                                }
                            } else {
                                b = zzkn.zzh(bArr, i5, i3);
                                break;
                            }
                        } else if (i5 >= i3) {
                            b = b2;
                            break;
                        } else if (b2 < -62) {
                            break;
                        } else {
                            i4 = i5 + 1;
                            if (bArr[i5] > -65) {
                                break;
                            }
                        }
                    }
                } else {
                    b = 0;
                    break;
                }
            }
            b = -1;
        }
        return b;
    }

    @Override // com.google.android.gms.internal.measurement.zzkj
    public final String zzc(byte[] bArr, int i, int i2) throws zzic {
        int i3;
        int i4;
        byte b;
        byte b2;
        int length = bArr.length;
        if ((i | i2 | ((length - i) - i2)) >= 0) {
            int i5 = i + i2;
            char[] cArr = new char[i2];
            int i6 = 0;
            int i7 = i;
            while (true) {
                i3 = i6;
                i4 = i7;
                if (i7 >= i5) {
                    break;
                }
                if (!zzki.zza(bArr[i7])) {
                    i3 = i6;
                    i4 = i7;
                    break;
                }
                i7++;
                cArr[i6] = (char) b2;
                i6++;
            }
            while (i4 < i5) {
                int i8 = i4 + 1;
                byte b3 = bArr[i4];
                if (zzki.zza(b3)) {
                    cArr[i3] = (char) b3;
                    int i9 = i3 + 1;
                    while (true) {
                        int i10 = i9;
                        i3 = i10;
                        i4 = i8;
                        if (i8 < i5) {
                            if (!zzki.zza(bArr[i8])) {
                                i3 = i10;
                                i4 = i8;
                                break;
                            }
                            i8++;
                            i9 = i10 + 1;
                            cArr[i10] = (char) b;
                        }
                    }
                } else if (zzki.zzb(b3)) {
                    if (i8 >= i5) {
                        throw zzic.zzf();
                    }
                    zzki.zzc(b3, bArr[i8], cArr, i3);
                    i4 = i8 + 1;
                    i3++;
                } else if (zzki.zzd(b3)) {
                    if (i8 >= i5 - 1) {
                        throw zzic.zzf();
                    }
                    int i11 = i8 + 1;
                    zzki.zze(b3, bArr[i8], bArr[i11], cArr, i3);
                    i4 = i11 + 1;
                    i3++;
                } else if (i8 >= i5 - 2) {
                    throw zzic.zzf();
                } else {
                    int i12 = i8 + 1;
                    int i13 = i12 + 1;
                    zzki.zzf(b3, bArr[i8], bArr[i12], bArr[i13], cArr, i3);
                    i3 += 2;
                    i4 = i13 + 1;
                }
            }
            return new String(cArr, 0, i3);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    @Override // com.google.android.gms.internal.measurement.zzkj
    public final int zzd(CharSequence charSequence, byte[] bArr, int i, int i2) {
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
            } else if ((charAt2 >= 55296 && charAt2 <= 57343) || i8 > i6 - 3) {
                if (i8 > i6 - 4) {
                    if (charAt2 >= 55296 && charAt2 <= 57343 && ((i4 = i9 + 1) == charSequence.length() || !Character.isSurrogatePair(charAt2, charSequence.charAt(i4)))) {
                        throw new zzkl(i9, length);
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
                throw new zzkl(i9 - 1, length);
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
}

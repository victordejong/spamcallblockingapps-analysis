package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeoo.class */
final class zzeoo extends zzeol {
    @Override // com.google.android.gms.internal.ads.zzeol
    public final int zzb(int i, byte[] bArr, int i2, int i3) {
        int zzn;
        int zzn2;
        byte b;
        int i4;
        int zzj;
        int zzaq;
        int zzaq2;
        int i5 = i2;
        if (i != 0) {
            if (i2 >= i3) {
                return i;
            }
            byte b2 = (byte) i;
            if (b2 < -32) {
                if (b2 < -62) {
                    return -1;
                }
                i4 = i2 + 1;
                if (bArr[i2] > -65) {
                    return -1;
                }
            } else if (b2 < -16) {
                byte b3 = (byte) ((i >> 8) ^ (-1));
                byte b4 = b3;
                int i6 = i2;
                if (b3 == 0) {
                    i6 = i2 + 1;
                    b4 = bArr[i2];
                    if (i6 >= i3) {
                        zzaq2 = zzeok.zzaq(b2, b4);
                        return zzaq2;
                    }
                }
                if (b4 > -65) {
                    return -1;
                }
                if (b2 == -32 && b4 < -96) {
                    return -1;
                }
                if (b2 == -19 && b4 >= -96) {
                    return -1;
                }
                i4 = i6 + 1;
                if (bArr[i6] > -65) {
                    return -1;
                }
            } else {
                byte b5 = (byte) ((i >> 8) ^ (-1));
                if (b5 == 0) {
                    int i7 = i2 + 1;
                    b5 = bArr[i2];
                    if (i7 >= i3) {
                        zzaq = zzeok.zzaq(b2, b5);
                        return zzaq;
                    }
                    i2 = i7;
                    b = 0;
                } else {
                    b = (byte) (i >> 16);
                }
                byte b6 = b;
                int i8 = i2;
                if (b == 0) {
                    i8 = i2 + 1;
                    b6 = bArr[i2];
                    if (i8 >= i3) {
                        zzj = zzeok.zzj(b2, b5, b6);
                        return zzj;
                    }
                }
                if (b5 > -65 || (((b2 << 28) + (b5 + 112)) >> 30) != 0 || b6 > -65) {
                    return -1;
                }
                i4 = i8 + 1;
                if (bArr[i8] > -65) {
                    return -1;
                }
            }
            i5 = i4;
        }
        while (i5 < i3 && bArr[i5] >= 0) {
            i5++;
        }
        int i9 = i5;
        if (i5 >= i3) {
            return 0;
        }
        while (i9 < i3) {
            int i10 = i9 + 1;
            byte b7 = bArr[i9];
            i9 = i10;
            if (b7 < 0) {
                if (b7 < -32) {
                    if (i10 >= i3) {
                        return b7;
                    }
                    if (b7 < -62) {
                        return -1;
                    }
                    i9 = i10 + 1;
                    if (bArr[i10] > -65) {
                        return -1;
                    }
                } else if (b7 < -16) {
                    if (i10 >= i3 - 1) {
                        zzn = zzeok.zzn(bArr, i10, i3);
                        return zzn;
                    }
                    int i11 = i10 + 1;
                    byte b8 = bArr[i10];
                    if (b8 > -65) {
                        return -1;
                    }
                    if (b7 == -32 && b8 < -96) {
                        return -1;
                    }
                    if (b7 == -19 && b8 >= -96) {
                        return -1;
                    }
                    i9 = i11 + 1;
                    if (bArr[i11] > -65) {
                        return -1;
                    }
                } else if (i10 >= i3 - 2) {
                    zzn2 = zzeok.zzn(bArr, i10, i3);
                    return zzn2;
                } else {
                    int i12 = i10 + 1;
                    byte b9 = bArr[i10];
                    if (b9 > -65 || (((b7 << 28) + (b9 + 112)) >> 30) != 0) {
                        return -1;
                    }
                    int i13 = i12 + 1;
                    if (bArr[i12] > -65) {
                        return -1;
                    }
                    i9 = i13 + 1;
                    if (bArr[i13] > -65) {
                        return -1;
                    }
                }
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzeol
    public final int zzb(CharSequence charSequence, byte[] bArr, int i, int i2) {
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
                        throw new zzeon(i9, length);
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
                throw new zzeon(i9 - 1, length);
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

    @Override // com.google.android.gms.internal.ads.zzeol
    public final String zzo(byte[] bArr, int i, int i2) throws zzelo {
        boolean zze;
        boolean zze2;
        boolean zzf;
        boolean zzg;
        boolean zze3;
        if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b = bArr[i];
                zze3 = zzeom.zze(b);
                if (!zze3) {
                    break;
                }
                i++;
                zzeom.zza(b, cArr, i4);
                i4++;
            }
            int i5 = i4;
            int i6 = i;
            int i7 = i5;
            while (i6 < i3) {
                int i8 = i6 + 1;
                byte b2 = bArr[i6];
                zze = zzeom.zze(b2);
                if (zze) {
                    zzeom.zza(b2, cArr, i7);
                    i7++;
                    i6 = i8;
                    while (i6 < i3) {
                        byte b3 = bArr[i6];
                        zze2 = zzeom.zze(b3);
                        if (zze2) {
                            i6++;
                            zzeom.zza(b3, cArr, i7);
                            i7++;
                        }
                    }
                } else {
                    zzf = zzeom.zzf(b2);
                    if (!zzf) {
                        zzg = zzeom.zzg(b2);
                        if (zzg) {
                            if (i8 >= i3 - 1) {
                                throw zzelo.zzbji();
                            }
                            int i9 = i8 + 1;
                            zzeom.zza(b2, bArr[i8], bArr[i9], cArr, i7);
                            i6 = i9 + 1;
                            i7++;
                        } else if (i8 >= i3 - 2) {
                            throw zzelo.zzbji();
                        } else {
                            int i10 = i8 + 1;
                            byte b4 = bArr[i8];
                            int i11 = i10 + 1;
                            zzeom.zza(b2, b4, bArr[i10], bArr[i11], cArr, i7);
                            i6 = i11 + 1;
                            i7 = i7 + 1 + 1;
                        }
                    } else if (i8 >= i3) {
                        throw zzelo.zzbji();
                    } else {
                        zzeom.zza(b2, bArr[i8], cArr, i7);
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

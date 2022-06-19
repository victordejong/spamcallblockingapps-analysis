package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeoq.class */
final class zzeoq extends zzeol {
    private static int zza(byte[] bArr, int i, long j, int i2) {
        int zzhw;
        int zzaq;
        int zzj;
        if (i2 == 0) {
            zzhw = zzeok.zzhw(i);
            return zzhw;
        } else if (i2 == 1) {
            zzaq = zzeok.zzaq(i, zzeoh.zza(bArr, j));
            return zzaq;
        } else if (i2 != 2) {
            throw new AssertionError();
        } else {
            zzj = zzeok.zzj(i, zzeoh.zza(bArr, j), zzeoh.zza(bArr, j + 1));
            return zzj;
        }
    }

    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* JADX WARN: Type inference failed for: r0v123, types: [long] */
    /* JADX WARN: Type inference failed for: r0v134, types: [long] */
    /* JADX WARN: Type inference failed for: r0v155, types: [long] */
    /* JADX WARN: Type inference failed for: r0v164, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v174, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzeol
    public final int zzb(int i, byte[] bArr, int i2, int i3) {
        int i4;
        char c;
        byte b;
        int zzj;
        int zzaq;
        int zzaq2;
        if ((i2 | i3 | (bArr.length - i3)) >= 0) {
            char c2 = i2;
            long j = i3;
            char c3 = c2;
            if (i != 0) {
                if (c2 >= j) {
                    return i;
                }
                byte b2 = (byte) i;
                if (b2 < -32) {
                    if (b2 < -62) {
                        return -1;
                    }
                    c3 = c2 + 1;
                    if (zzeoh.zza(bArr, c2) > -65) {
                        return -1;
                    }
                } else if (b2 < -16) {
                    byte b3 = (byte) ((i >> 8) ^ (-1));
                    byte b4 = b3;
                    char c4 = c2;
                    if (b3 == 0) {
                        c4 = c2 + 1;
                        b4 = zzeoh.zza(bArr, c2);
                        if (c4 >= j) {
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
                    c3 = c4 + 1;
                    if (zzeoh.zza(bArr, c4) > -65) {
                        return -1;
                    }
                } else {
                    byte b5 = (byte) ((i >> 8) ^ (-1));
                    if (b5 == 0) {
                        ?? r0 = c2 + 1;
                        b5 = zzeoh.zza(bArr, c2);
                        if (r0 >= j) {
                            zzaq = zzeok.zzaq(b2, b5);
                            return zzaq;
                        }
                        c2 = r0;
                        b = 0;
                    } else {
                        b = (byte) (i >> 16);
                    }
                    byte b6 = b;
                    char c5 = c2;
                    if (b == 0) {
                        c5 = c2 + 1;
                        b6 = zzeoh.zza(bArr, c2);
                        if (c5 >= j) {
                            zzj = zzeok.zzj(b2, b5, b6);
                            return zzj;
                        }
                    }
                    if (b5 > -65 || (((b2 << 28) + (b5 + 112)) >> 30) != 0 || b6 > -65 || zzeoh.zza(bArr, c5) > -65) {
                        return -1;
                    }
                    c3 = c5 + 1;
                }
            }
            int i5 = (int) (j - c3);
            if (i5 >= 16) {
                char c6 = c3;
                i4 = 0;
                while (true) {
                    if (i4 >= i5) {
                        i4 = i5;
                        break;
                    } else if (zzeoh.zza(bArr, c6) < 0) {
                        break;
                    } else {
                        i4++;
                        c6++;
                    }
                }
            } else {
                i4 = 0;
            }
            char c7 = c3 + i4;
            int i6 = i5 - i4;
            while (true) {
                byte b7 = 0;
                while (true) {
                    c = c7;
                    if (i6 <= 0) {
                        break;
                    }
                    c = c7 + 1;
                    b7 = zzeoh.zza(bArr, c7);
                    if (b7 < 0) {
                        break;
                    }
                    i6--;
                    c7 = c;
                }
                if (i6 == 0) {
                    return 0;
                }
                int i7 = i6 - 1;
                if (b7 < -32) {
                    if (i7 == 0) {
                        return b7;
                    }
                    i6 = i7 - 1;
                    if (b7 < -62 || zzeoh.zza(bArr, c) > -65) {
                        return -1;
                    }
                    c7 = c + 1;
                } else if (b7 < -16) {
                    if (i7 < 2) {
                        return zza(bArr, b7, c, i7);
                    }
                    i6 = i7 - 2;
                    long j2 = c + 1;
                    byte zza = zzeoh.zza(bArr, c);
                    if (zza > -65) {
                        return -1;
                    }
                    if (b7 == -32 && zza < -96) {
                        return -1;
                    }
                    if (b7 == -19 && zza >= -96) {
                        return -1;
                    }
                    c7 = j2 + 1;
                    if (zzeoh.zza(bArr, j2) > -65) {
                        return -1;
                    }
                } else if (i7 < 3) {
                    return zza(bArr, b7, c, i7);
                } else {
                    i6 = i7 - 3;
                    long j3 = c + 1;
                    byte zza2 = zzeoh.zza(bArr, c);
                    if (zza2 > -65 || (((b7 << 28) + (zza2 + 112)) >> 30) != 0) {
                        return -1;
                    }
                    long j4 = j3 + 1;
                    if (zzeoh.zza(bArr, j3) > -65 || zzeoh.zza(bArr, j4) > -65) {
                        return -1;
                    }
                    c7 = j4 + 1;
                }
            }
        } else {
            throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v118, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzeol
    public final int zzb(CharSequence charSequence, byte[] bArr, int i, int i2) {
        char c;
        char c2;
        int i3;
        char charAt;
        char c3 = i;
        long j = i2 + c3;
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
        int i4 = 0;
        while (true) {
            c = 1;
            if (i4 >= length || (charAt = charSequence.charAt(i4)) >= 128) {
                break;
            }
            zzeoh.zza(bArr, (long) c3, (byte) charAt);
            i4++;
            c3 = 1 + c3;
        }
        int i5 = i4;
        char c4 = c3;
        if (i4 == length) {
            return c3;
        }
        while (i5 < length) {
            char charAt3 = charSequence.charAt(i5);
            if (charAt3 < 128 && c4 < j) {
                zzeoh.zza(bArr, (long) c4, (byte) charAt3);
                c2 = c4 + c;
                c = c;
            } else if (charAt3 < 2048 && c4 <= j - 2) {
                long j2 = c4 + c;
                zzeoh.zza(bArr, (long) c4, (byte) ((charAt3 >>> 6) | 960));
                zzeoh.zza(bArr, j2, (byte) ((charAt3 & '?') | 128));
                c2 = j2 + c;
            } else if ((charAt3 >= 55296 && 57343 >= charAt3) || c4 > j - 3) {
                if (c4 > j - 4) {
                    if (55296 <= charAt3 && charAt3 <= 57343 && ((i3 = i5 + 1) == length || !Character.isSurrogatePair(charAt3, charSequence.charAt(i3)))) {
                        throw new zzeon(i5, length);
                    }
                    StringBuilder sb2 = new StringBuilder(46);
                    sb2.append("Failed writing ");
                    sb2.append(charAt3);
                    sb2.append(" at index ");
                    sb2.append((long) c4);
                    throw new ArrayIndexOutOfBoundsException(sb2.toString());
                }
                int i6 = i5 + 1;
                if (i6 != length) {
                    char charAt4 = charSequence.charAt(i6);
                    if (Character.isSurrogatePair(charAt3, charAt4)) {
                        int codePoint = Character.toCodePoint(charAt3, charAt4);
                        long j3 = c4 + 1;
                        zzeoh.zza(bArr, (long) c4, (byte) ((codePoint >>> 18) | 240));
                        long j4 = j3 + 1;
                        zzeoh.zza(bArr, j3, (byte) (((codePoint >>> 12) & 63) | 128));
                        long j5 = j4 + 1;
                        zzeoh.zza(bArr, j4, (byte) (((codePoint >>> 6) & 63) | 128));
                        c = 1;
                        c2 = j5 + 1;
                        zzeoh.zza(bArr, j5, (byte) ((codePoint & 63) | 128));
                        i5 = i6;
                    } else {
                        i5 = i6;
                    }
                }
                throw new zzeon(i5 - 1, length);
            } else {
                long j6 = c4 + c;
                zzeoh.zza(bArr, (long) c4, (byte) ((charAt3 >>> '\f') | 480));
                long j7 = j6 + c;
                zzeoh.zza(bArr, j6, (byte) (((charAt3 >>> 6) & 63) | 128));
                zzeoh.zza(bArr, j7, (byte) ((charAt3 & '?') | 128));
                c2 = j7 + 1;
                c = 1;
            }
            i5++;
            c4 = c2;
        }
        return c4;
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
                byte zza = zzeoh.zza(bArr, i);
                zze3 = zzeom.zze(zza);
                if (!zze3) {
                    break;
                }
                i++;
                zzeom.zza(zza, cArr, i4);
                i4++;
            }
            int i5 = i4;
            int i6 = i;
            int i7 = i5;
            while (i6 < i3) {
                int i8 = i6 + 1;
                byte zza2 = zzeoh.zza(bArr, i6);
                zze = zzeom.zze(zza2);
                if (zze) {
                    zzeom.zza(zza2, cArr, i7);
                    i7++;
                    i6 = i8;
                    while (i6 < i3) {
                        byte zza3 = zzeoh.zza(bArr, i6);
                        zze2 = zzeom.zze(zza3);
                        if (zze2) {
                            i6++;
                            zzeom.zza(zza3, cArr, i7);
                            i7++;
                        }
                    }
                } else {
                    zzf = zzeom.zzf(zza2);
                    if (!zzf) {
                        zzg = zzeom.zzg(zza2);
                        if (zzg) {
                            if (i8 >= i3 - 1) {
                                throw zzelo.zzbji();
                            }
                            int i9 = i8 + 1;
                            zzeom.zza(zza2, zzeoh.zza(bArr, i8), zzeoh.zza(bArr, i9), cArr, i7);
                            i6 = i9 + 1;
                            i7++;
                        } else if (i8 >= i3 - 2) {
                            throw zzelo.zzbji();
                        } else {
                            int i10 = i8 + 1;
                            int i11 = i10 + 1;
                            zzeom.zza(zza2, zzeoh.zza(bArr, i8), zzeoh.zza(bArr, i10), zzeoh.zza(bArr, i11), cArr, i7);
                            i6 = i11 + 1;
                            i7 = i7 + 1 + 1;
                        }
                    } else if (i8 >= i3) {
                        throw zzelo.zzbji();
                    } else {
                        zzeom.zza(zza2, zzeoh.zza(bArr, i8), cArr, i7);
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

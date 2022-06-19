package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzkm.class */
final class zzkm extends zzkj {
    private static int zze(byte[] bArr, int i, long j, int i2) {
        int zzj;
        int zzk;
        int zzl;
        if (i2 == 0) {
            zzj = zzkn.zzj(i);
            return zzj;
        } else if (i2 == 1) {
            zzk = zzkn.zzk(i, zzkh.zzp(bArr, j));
            return zzk;
        } else if (i2 != 2) {
            throw new AssertionError();
        } else {
            zzl = zzkn.zzl(i, zzkh.zzp(bArr, j), zzkh.zzp(bArr, j + 1));
            return zzl;
        }
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    @Override // com.google.android.gms.internal.measurement.zzkj
    final int zzb(int i, byte[] bArr, int i2, int i3) {
        int i4;
        byte b;
        char c;
        int length = bArr.length;
        if ((i2 | i3 | (length - i3)) >= 0) {
            ?? r0 = i2;
            int i5 = (int) (i3 - r0);
            if (i5 >= 16) {
                char c2 = r0;
                int i6 = 0;
                while (true) {
                    if (i6 >= i5) {
                        i4 = i5;
                        break;
                    }
                    i4 = i6;
                    if (zzkh.zzp(bArr, c2) < 0) {
                        break;
                    }
                    i6++;
                    c2++;
                }
            } else {
                i4 = 0;
            }
            char c3 = r0 + i4;
            int i7 = i5 - i4;
            while (true) {
                int i8 = i7;
                b = 0;
                while (true) {
                    c = c3;
                    if (i8 <= 0) {
                        break;
                    }
                    c = c3 + 1;
                    b = zzkh.zzp(bArr, c3);
                    if (b < 0) {
                        break;
                    }
                    i8--;
                    c3 = c;
                }
                if (i8 != 0) {
                    int i9 = i8 - 1;
                    if (b >= -32) {
                        if (b >= -16) {
                            if (i9 >= 3) {
                                int i10 = i9 - 3;
                                long j = c + 1;
                                byte zzp = zzkh.zzp(bArr, c);
                                if (zzp > -65 || (((b << 28) + (zzp + 112)) >> 30) != 0) {
                                    break;
                                }
                                long j2 = j + 1;
                                if (zzkh.zzp(bArr, j) > -65) {
                                    break;
                                }
                                c3 = j2 + 1;
                                i7 = i10;
                                if (zzkh.zzp(bArr, j2) > -65) {
                                    break;
                                }
                            } else {
                                b = zze(bArr, b, c, i9);
                                break;
                            }
                        } else if (i9 >= 2) {
                            int i11 = i9 - 2;
                            long j3 = c + 1;
                            byte zzp2 = zzkh.zzp(bArr, c);
                            if (zzp2 > -65 || ((b == -32 && zzp2 < -96) || (b == -19 && zzp2 >= -96))) {
                                break;
                            }
                            c3 = j3 + 1;
                            i7 = i11;
                            if (zzkh.zzp(bArr, j3) > -65) {
                                break;
                            }
                        } else {
                            b = zze(bArr, b, c, i9);
                            break;
                        }
                    } else if (i9 == 0) {
                        break;
                    } else {
                        int i12 = i9 - 1;
                        if (b < -62) {
                            break;
                        }
                        c3 = c + 1;
                        i7 = i12;
                        if (zzkh.zzp(bArr, c) > -65) {
                            break;
                        }
                    }
                } else {
                    b = 0;
                    break;
                }
            }
            b = -1;
            return b;
        }
        throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(length), Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    @Override // com.google.android.gms.internal.measurement.zzkj
    public final String zzc(byte[] bArr, int i, int i2) throws zzic {
        int i3;
        int i4;
        byte zzp;
        byte zzp2;
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
                if (!zzki.zza(zzkh.zzp(bArr, i7))) {
                    i3 = i6;
                    i4 = i7;
                    break;
                }
                i7++;
                cArr[i6] = (char) zzp2;
                i6++;
            }
            while (i4 < i5) {
                int i8 = i4 + 1;
                byte zzp3 = zzkh.zzp(bArr, i4);
                if (zzki.zza(zzp3)) {
                    cArr[i3] = (char) zzp3;
                    int i9 = i3 + 1;
                    while (true) {
                        int i10 = i9;
                        i3 = i10;
                        i4 = i8;
                        if (i8 < i5) {
                            if (!zzki.zza(zzkh.zzp(bArr, i8))) {
                                i3 = i10;
                                i4 = i8;
                                break;
                            }
                            i8++;
                            i9 = i10 + 1;
                            cArr[i10] = (char) zzp;
                        }
                    }
                } else if (zzki.zzb(zzp3)) {
                    if (i8 >= i5) {
                        throw zzic.zzf();
                    }
                    zzki.zzc(zzp3, zzkh.zzp(bArr, i8), cArr, i3);
                    i4 = i8 + 1;
                    i3++;
                } else if (zzki.zzd(zzp3)) {
                    if (i8 >= i5 - 1) {
                        throw zzic.zzf();
                    }
                    int i11 = i8 + 1;
                    zzki.zze(zzp3, zzkh.zzp(bArr, i8), zzkh.zzp(bArr, i11), cArr, i3);
                    i4 = i11 + 1;
                    i3++;
                } else if (i8 >= i5 - 2) {
                    throw zzic.zzf();
                } else {
                    int i12 = i8 + 1;
                    int i13 = i12 + 1;
                    zzki.zzf(zzp3, zzkh.zzp(bArr, i8), zzkh.zzp(bArr, i12), zzkh.zzp(bArr, i13), cArr, i3);
                    i3 += 2;
                    i4 = i13 + 1;
                }
            }
            return new String(cArr, 0, i3);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v102, types: [long] */
    /* JADX WARN: Type inference failed for: r0v108, types: [long] */
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    @Override // com.google.android.gms.internal.measurement.zzkj
    public final int zzd(CharSequence charSequence, byte[] bArr, int i, int i2) {
        char c;
        int i3;
        char charAt;
        char c2 = i;
        long j = i2 + c2;
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
            zzkh.zzq(bArr, c2, (byte) charAt);
            i4++;
            c2 = 1 + c2;
        }
        if (i4 == length) {
            return c2;
        }
        while (i4 < length) {
            char charAt3 = charSequence.charAt(i4);
            if (charAt3 < 128 && c2 < j) {
                zzkh.zzq(bArr, c2, (byte) charAt3);
                c2 += c;
                c = c;
            } else if (charAt3 < 2048 && c2 <= (-2) + j) {
                long j2 = c2 + c;
                zzkh.zzq(bArr, c2, (byte) ((charAt3 >>> 6) | 960));
                zzkh.zzq(bArr, j2, (byte) ((charAt3 & '?') | 128));
                c2 = j2 + c;
            } else if ((charAt3 >= 55296 && charAt3 <= 57343) || c2 > (-3) + j) {
                if (c2 > (-4) + j) {
                    if (charAt3 >= 55296 && charAt3 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(charAt3, charSequence.charAt(i3)))) {
                        throw new zzkl(i4, length);
                    }
                    StringBuilder sb2 = new StringBuilder(46);
                    sb2.append("Failed writing ");
                    sb2.append(charAt3);
                    sb2.append(" at index ");
                    sb2.append((long) c2);
                    throw new ArrayIndexOutOfBoundsException(sb2.toString());
                }
                int i5 = i4 + 1;
                if (i5 != length) {
                    char charAt4 = charSequence.charAt(i5);
                    if (Character.isSurrogatePair(charAt3, charAt4)) {
                        int codePoint = Character.toCodePoint(charAt3, charAt4);
                        long j3 = c2 + 1;
                        zzkh.zzq(bArr, c2, (byte) ((codePoint >>> 18) | 240));
                        long j4 = j3 + 1;
                        zzkh.zzq(bArr, j3, (byte) (((codePoint >>> 12) & 63) | 128));
                        long j5 = j4 + 1;
                        zzkh.zzq(bArr, j4, (byte) (((codePoint >>> 6) & 63) | 128));
                        c = 1;
                        c2 = j5 + 1;
                        zzkh.zzq(bArr, j5, (byte) ((codePoint & 63) | 128));
                        i4 = i5;
                    } else {
                        i4 = i5;
                    }
                }
                throw new zzkl(i4 - 1, length);
            } else {
                long j6 = c2 + c;
                zzkh.zzq(bArr, c2, (byte) ((charAt3 >>> '\f') | 480));
                long j7 = j6 + c;
                zzkh.zzq(bArr, j6, (byte) (((charAt3 >>> 6) & 63) | 128));
                zzkh.zzq(bArr, j7, (byte) ((charAt3 & '?') | 128));
                c2 = j7 + 1;
                c = 1;
            }
            i4++;
        }
        return c2;
    }
}

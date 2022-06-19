package com.google.android.gms.internal.clearcut;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzfj.class */
public final class zzfj extends zzfg {
    private static int zza(byte[] bArr, int i, long j, int i2) {
        int zzam;
        int zzp;
        int zzd;
        if (i2 == 0) {
            zzam = zzff.zzam(i);
            return zzam;
        } else if (i2 == 1) {
            zzp = zzff.zzp(i, zzfd.zza(bArr, j));
            return zzp;
        } else if (i2 != 2) {
            throw new AssertionError();
        } else {
            zzd = zzff.zzd(i, zzfd.zza(bArr, j), zzfd.zza(bArr, j + 1));
            return zzd;
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
    @Override // com.google.android.gms.internal.clearcut.zzfg
    public final int zzb(int i, byte[] bArr, int i2, int i3) {
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
                    } else if (zzfd.zza(bArr, c3) < 0) {
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
                    b = zzfd.zza(bArr, c4);
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
                    if (b < -62 || zzfd.zza(bArr, c) > -65) {
                        return -1;
                    }
                    c4 = c + 1;
                } else if (b < -16) {
                    if (i7 < 2) {
                        return zza(bArr, b, c, i7);
                    }
                    i6 = i7 - 2;
                    long j = c + 1;
                    byte zza = zzfd.zza(bArr, c);
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
                    if (zzfd.zza(bArr, j) > -65) {
                        return -1;
                    }
                } else if (i7 < 3) {
                    return zza(bArr, b, c, i7);
                } else {
                    i6 = i7 - 3;
                    long j2 = c + 1;
                    byte zza2 = zzfd.zza(bArr, c);
                    if (zza2 > -65 || (((zza2 + 112) + (b << 28)) >> 30) != 0) {
                        return -1;
                    }
                    long j3 = j2 + 1;
                    if (zzfd.zza(bArr, j2) > -65) {
                        return -1;
                    }
                    c4 = j3 + 1;
                    if (zzfd.zza(bArr, j3) > -65) {
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
    @Override // com.google.android.gms.internal.clearcut.zzfg
    public final int zzb(CharSequence charSequence, byte[] bArr, int i, int i2) {
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
            zzfd.zza(bArr, (long) c5, (byte) charAt);
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
                zzfd.zza(bArr, (long) c6, (byte) charAt3);
                ?? r0 = c6 + c2;
                i3 = i6;
                c2 = c2;
                c4 = c;
                c3 = r0;
            } else if (charAt3 < 2048 && c6 <= j - 2) {
                long j2 = c6 + c2;
                zzfd.zza(bArr, (long) c6, (byte) ((charAt3 >>> 6) | 960));
                zzfd.zza(bArr, j2, (byte) ((charAt3 & '?') | 128));
                c3 = j2 + c2;
                i3 = i6;
                c4 = 128;
            } else if ((charAt3 >= 55296 && 57343 >= charAt3) || c6 > j - 3) {
                if (c6 > j - 4) {
                    if (55296 <= charAt3 && charAt3 <= 57343 && ((i4 = i6 + 1) == length || !Character.isSurrogatePair(charAt3, charSequence.charAt(i4)))) {
                        throw new zzfi(i6, length);
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
                        zzfd.zza(bArr, (long) c6, (byte) ((codePoint >>> 18) | 240));
                        long j4 = j3 + 1;
                        c4 = 128;
                        zzfd.zza(bArr, j3, (byte) (((codePoint >>> 12) & 63) | 128));
                        long j5 = j4 + 1;
                        zzfd.zza(bArr, j4, (byte) (((codePoint >>> 6) & 63) | 128));
                        c2 = 1;
                        c3 = j5 + 1;
                        zzfd.zza(bArr, j5, (byte) ((codePoint & 63) | 128));
                    } else {
                        i6 = i3;
                    }
                }
                throw new zzfi(i6 - 1, length);
            } else {
                long j6 = c6 + c2;
                zzfd.zza(bArr, (long) c6, (byte) ((charAt3 >>> '\f') | 480));
                long j7 = j6 + c2;
                zzfd.zza(bArr, j6, (byte) (((charAt3 >>> 6) & 63) | 128));
                zzfd.zza(bArr, j7, (byte) ((charAt3 & '?') | 128));
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

    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r0v133, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    @Override // com.google.android.gms.internal.clearcut.zzfg
    public final void zzb(CharSequence charSequence, ByteBuffer byteBuffer) {
        char c;
        int i;
        char c2;
        int i2;
        char c3;
        int i3;
        char charAt;
        long zzb = zzfd.zzb(byteBuffer);
        char position = byteBuffer.position() + zzb;
        long limit = byteBuffer.limit() + zzb;
        int length = charSequence.length();
        if (length > limit - position) {
            char charAt2 = charSequence.charAt(length - 1);
            int limit2 = byteBuffer.limit();
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(charAt2);
            sb.append(" at index ");
            sb.append(limit2);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i4 = 0;
        while (true) {
            c = 128;
            if (i4 >= length || (charAt = charSequence.charAt(i4)) >= 128) {
                break;
            }
            zzfd.zza(position, (byte) charAt);
            i4++;
            position++;
        }
        char c4 = position;
        int i5 = i4;
        if (i4 == length) {
            i = (int) (position - zzb);
        } else {
            while (i5 < length) {
                char charAt3 = charSequence.charAt(i5);
                if (charAt3 >= c || c4 >= limit) {
                    if (charAt3 < 2048 && c4 <= limit - 2) {
                        long j = c4 + 1;
                        zzfd.zza(c4, (byte) ((charAt3 >>> 6) | 960));
                        zzfd.zza(j, (byte) ((charAt3 & '?') | 128));
                        c3 = j + 1;
                    } else if ((charAt3 >= 55296 && 57343 >= charAt3) || c4 > limit - 3) {
                        if (c4 > limit - 4) {
                            if (55296 <= charAt3 && charAt3 <= 57343 && ((i3 = i5 + 1) == length || !Character.isSurrogatePair(charAt3, charSequence.charAt(i3)))) {
                                throw new zzfi(i5, length);
                            }
                            StringBuilder sb2 = new StringBuilder(46);
                            sb2.append("Failed writing ");
                            sb2.append(charAt3);
                            sb2.append(" at index ");
                            sb2.append((long) c4);
                            throw new ArrayIndexOutOfBoundsException(sb2.toString());
                        }
                        i2 = i5 + 1;
                        if (i2 != length) {
                            char charAt4 = charSequence.charAt(i2);
                            if (Character.isSurrogatePair(charAt3, charAt4)) {
                                int codePoint = Character.toCodePoint(charAt3, charAt4);
                                long j2 = c4 + 1;
                                zzfd.zza(c4, (byte) ((codePoint >>> 18) | 240));
                                long j3 = j2 + 1;
                                c2 = 128;
                                zzfd.zza(j2, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j4 = j3 + 1;
                                zzfd.zza(j3, (byte) (((codePoint >>> 6) & 63) | 128));
                                zzfd.zza(j4, (byte) ((codePoint & 63) | 128));
                                c3 = j4 + 1;
                            } else {
                                i5 = i2;
                            }
                        }
                        throw new zzfi(i5 - 1, length);
                    } else {
                        long j5 = c4 + 1;
                        zzfd.zza(c4, (byte) ((charAt3 >>> '\f') | 480));
                        long j6 = j5 + 1;
                        zzfd.zza(j5, (byte) (((charAt3 >>> 6) & 63) | 128));
                        zzfd.zza(j6, (byte) ((charAt3 & '?') | 128));
                        c3 = j6 + 1;
                    }
                    i2 = i5;
                    c2 = 128;
                } else {
                    zzfd.zza(c4, (byte) charAt3);
                    i2 = i5;
                    c2 = c;
                    c3 = c4 + 1;
                }
                c = c2;
                i5 = i2 + 1;
                c4 = c3;
            }
            i = (int) (c4 - zzb);
        }
        byteBuffer.position(i);
    }
}

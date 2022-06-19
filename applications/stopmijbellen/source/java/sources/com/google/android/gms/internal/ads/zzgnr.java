package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgnr.class */
abstract class zzgnr {
    public static final String zzd(ByteBuffer byteBuffer, int i, int i2) throws zzgkx {
        byte b;
        byte b2;
        if ((i | i2 | ((byteBuffer.limit() - i) - i2)) >= 0) {
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                if (!zzgnq.zzd(byteBuffer.get(i))) {
                    break;
                }
                i++;
                cArr[i4] = (char) b2;
                i4++;
            }
            int i5 = i4;
            int i6 = i;
            int i7 = i5;
            while (i6 < i3) {
                int i8 = i6 + 1;
                byte b3 = byteBuffer.get(i6);
                if (zzgnq.zzd(b3)) {
                    cArr[i7] = (char) b3;
                    int i9 = i7 + 1;
                    while (true) {
                        int i10 = i9;
                        i7 = i10;
                        i6 = i8;
                        if (i8 < i3) {
                            if (!zzgnq.zzd(byteBuffer.get(i8))) {
                                i7 = i10;
                                i6 = i8;
                                break;
                            }
                            i8++;
                            i9 = i10 + 1;
                            cArr[i10] = (char) b;
                        }
                    }
                } else if (zzgnq.zzf(b3)) {
                    if (i8 >= i3) {
                        throw zzgkx.zzd();
                    }
                    zzgnq.zzc(b3, byteBuffer.get(i8), cArr, i7);
                    i6 = i8 + 1;
                    i7++;
                } else if (zzgnq.zze(b3)) {
                    if (i8 >= i3 - 1) {
                        throw zzgkx.zzd();
                    }
                    int i11 = i8 + 1;
                    zzgnq.zzb(b3, byteBuffer.get(i8), byteBuffer.get(i11), cArr, i7);
                    i6 = i11 + 1;
                    i7++;
                } else if (i8 >= i3 - 2) {
                    throw zzgkx.zzd();
                } else {
                    int i12 = i8 + 1;
                    int i13 = i12 + 1;
                    zzgnq.zza(b3, byteBuffer.get(i8), byteBuffer.get(i12), byteBuffer.get(i13), cArr, i7);
                    i7 += 2;
                    i6 = i13 + 1;
                }
            }
            return new String(cArr, 0, i7);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)));
    }

    public abstract int zza(int i, byte[] bArr, int i2, int i3);

    public abstract String zzb(byte[] bArr, int i, int i2) throws zzgkx;

    public final boolean zzc(byte[] bArr, int i, int i2) {
        return zza(0, bArr, i, i2) == 0;
    }
}

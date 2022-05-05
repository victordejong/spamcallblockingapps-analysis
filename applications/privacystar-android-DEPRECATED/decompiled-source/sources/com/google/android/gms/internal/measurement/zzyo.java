package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzyo.class */
final class zzyo extends zzyl {
    private static int zza(byte[] bArr, int i, long j, int i2) {
        int zzbw;
        int zzq;
        int zzc;
        switch (i2) {
            case 0:
                zzbw = zzyj.zzbw(i);
                return zzbw;
            case 1:
                zzq = zzyj.zzq(i, zzyh.zza(bArr, j));
                return zzq;
            case 2:
                zzc = zzyj.zzc(i, zzyh.zza(bArr, j), zzyh.zza(bArr, j + 1));
                return zzc;
            default:
                throw new AssertionError();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Type inference failed for: r13v4, types: [long] */
    /* JADX WARN: Type inference failed for: r15v10, types: [long] */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v17 */
    /* JADX WARN: Type inference failed for: r15v2, types: [long] */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // com.google.android.gms.internal.measurement.zzyl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int zzb(int r9, byte[] r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzyo.zzb(int, byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v40, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // com.google.android.gms.internal.measurement.zzyl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 663
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzyo.zzb(java.lang.CharSequence, byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Type inference failed for: r20v6 */
    /* JADX WARN: Type inference failed for: r20v7 */
    /* JADX WARN: Type inference failed for: r20v8 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1, types: [long] */
    /* JADX WARN: Type inference failed for: r22v5 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // com.google.android.gms.internal.measurement.zzyl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(java.lang.CharSequence r8, java.nio.ByteBuffer r9) {
        /*
            Method dump skipped, instructions count: 712
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzyo.zzb(java.lang.CharSequence, java.nio.ByteBuffer):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzyl
    public final String zzh(byte[] bArr, int i, int i2) throws zzvt {
        boolean zzd;
        boolean zzd2;
        boolean zze;
        boolean zzf;
        boolean zzd3;
        if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i3 = i + i2;
        char[] cArr = new char[i2];
        int i4 = 0;
        while (i < i3) {
            byte zza = zzyh.zza(bArr, i);
            zzd3 = zzyk.zzd(zza);
            if (!zzd3) {
                break;
            }
            i++;
            zzyk.zza(zza, cArr, i4);
            i4++;
        }
        int i5 = i;
        int i6 = i4;
        while (i5 < i3) {
            int i7 = i5 + 1;
            byte zza2 = zzyh.zza(bArr, i5);
            zzd = zzyk.zzd(zza2);
            if (zzd) {
                i6++;
                zzyk.zza(zza2, cArr, i6);
                i5 = i7;
                while (i5 < i3) {
                    byte zza3 = zzyh.zza(bArr, i5);
                    zzd2 = zzyk.zzd(zza3);
                    if (zzd2) {
                        i5++;
                        zzyk.zza(zza3, cArr, i6);
                        i6++;
                    }
                }
            } else {
                zze = zzyk.zze(zza2);
                if (!zze) {
                    zzf = zzyk.zzf(zza2);
                    if (zzf) {
                        if (i7 >= i3 - 1) {
                            throw zzvt.zzwr();
                        }
                        int i8 = i7 + 1;
                        zzyk.zza(zza2, zzyh.zza(bArr, i7), zzyh.zza(bArr, i8), cArr, i6);
                        i5 = i8 + 1;
                        i6++;
                    } else if (i7 >= i3 - 2) {
                        throw zzvt.zzwr();
                    } else {
                        int i9 = i7 + 1;
                        int i10 = i9 + 1;
                        zzyk.zza(zza2, zzyh.zza(bArr, i7), zzyh.zza(bArr, i9), zzyh.zza(bArr, i10), cArr, i6);
                        i5 = i10 + 1;
                        i6 = i6 + 1 + 1;
                    }
                } else if (i7 >= i3) {
                    throw zzvt.zzwr();
                } else {
                    zzyk.zza(zza2, zzyh.zza(bArr, i7), cArr, i6);
                    i5 = i7 + 1;
                    i6++;
                }
            }
        }
        return new String(cArr, 0, i6);
    }
}

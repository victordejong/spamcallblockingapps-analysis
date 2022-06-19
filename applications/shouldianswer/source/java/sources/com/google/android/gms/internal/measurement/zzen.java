package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzen.class */
public abstract class zzen extends zzdv {
    private static final Logger zzb = Logger.getLogger(zzen.class.getName());
    private static final boolean zzc = zzib.zza();
    zzep zza;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzen$zza.class */
    public static final class zza extends IOException {
        zza() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        zza(java.lang.String r5, java.lang.Throwable r6) {
            /*
                r4 = this;
                r0 = r5
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r5 = r0
                r0 = r5
                int r0 = r0.length()
                if (r0 == 0) goto L16
                java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                r1 = r5
                java.lang.String r0 = r0.concat(r1)
                r5 = r0
                goto L20
            L16:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                java.lang.String r2 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                r1.<init>(r2)
                r5 = r0
            L20:
                r0 = r4
                r1 = r5
                r2 = r6
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzen.zza.<init>(java.lang.String, java.lang.Throwable):void");
        }

        zza(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzen$zzb.class */
    public static final class zzb extends zzen {
        private final byte[] zzb;
        private final int zzc;
        private final int zzd;
        private int zze;

        zzb(byte[] bArr, int i, int i2) {
            super();
            if (bArr != null) {
                int i3 = i2 + 0;
                if ((i2 | 0 | (bArr.length - i3)) < 0) {
                    throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)));
                }
                this.zzb = bArr;
                this.zzc = 0;
                this.zze = 0;
                this.zzd = i3;
                return;
            }
            throw new NullPointerException("buffer");
        }

        private final void zzc(byte[] bArr, int i, int i2) {
            try {
                System.arraycopy(bArr, i, this.zzb, this.zze, i2);
                this.zze += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final int zza() {
            return this.zzd - this.zze;
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(byte b) {
            try {
                byte[] bArr = this.zzb;
                int i = this.zze;
                this.zze = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i) {
            if (i >= 0) {
                zzb(i);
            } else {
                zza(i);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i, int i2) {
            zzb((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i, long j) {
            zza(i, 0);
            zza(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i, zzdu zzduVar) {
            zza(i, 2);
            zza(zzduVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i, zzgo zzgoVar) {
            zza(1, 3);
            zzc(2, i);
            zza(3, 2);
            zza(zzgoVar);
            zza(1, 4);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i, zzgo zzgoVar, zzhd zzhdVar) {
            zza(i, 2);
            zzdl zzdlVar = (zzdl) zzgoVar;
            int zzbj = zzdlVar.zzbj();
            int i2 = zzbj;
            if (zzbj == -1) {
                i2 = zzhdVar.zzb(zzdlVar);
                zzdlVar.zzc(i2);
            }
            zzb(i2);
            zzhdVar.zza((zzhd) zzgoVar, (zzis) this.zza);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i, String str) {
            zza(i, 2);
            zza(str);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i, boolean z) {
            zza(i, 0);
            zza(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v39, types: [long] */
        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(long j) {
            char c = j;
            if (zzen.zzc) {
                c = j;
                char c2 = j;
                if (zza() >= 10) {
                    while ((c2 & 65408) != 0) {
                        byte[] bArr = this.zzb;
                        int i = this.zze;
                        this.zze = i + 1;
                        zzib.zza(bArr, i, (byte) ((c2 & 127) | 128));
                        c2 >>>= 7;
                    }
                    byte[] bArr2 = this.zzb;
                    int i2 = this.zze;
                    this.zze = i2 + 1;
                    zzib.zza(bArr2, i2, (byte) c2);
                    return;
                }
            }
            while ((c & 65408) != 0) {
                try {
                    byte[] bArr3 = this.zzb;
                    int i3 = this.zze;
                    this.zze = i3 + 1;
                    bArr3[i3] = (byte) ((c & 127) | 128);
                    c >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
                }
            }
            byte[] bArr4 = this.zzb;
            int i4 = this.zze;
            this.zze = i4 + 1;
            bArr4[i4] = (byte) c;
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(zzdu zzduVar) {
            zzb(zzduVar.zza());
            zzduVar.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(zzgo zzgoVar) {
            zzb(zzgoVar.zzbn());
            zzgoVar.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(String str) {
            int i = this.zze;
            try {
                int zzg = zzg(str.length() * 3);
                int zzg2 = zzg(str.length());
                if (zzg2 != zzg) {
                    zzb(zzie.zza(str));
                    this.zze = zzie.zza(str, this.zzb, this.zze, zza());
                    return;
                }
                this.zze = i + zzg2;
                int zza = zzie.zza(str, this.zzb, this.zze, zza());
                this.zze = i;
                zzb((zza - i) - zzg2);
                this.zze = zza;
            } catch (zzih e) {
                this.zze = i;
                zza(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zza(e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzdv
        public final void zza(byte[] bArr, int i, int i2) {
            zzc(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzb(int i) {
            int i2 = i;
            if (zzen.zzc) {
                i2 = i;
                if (!zzdr.zza()) {
                    i2 = i;
                    if (zza() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.zzb;
                            int i3 = this.zze;
                            this.zze = i3 + 1;
                            zzib.zza(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.zzb;
                        int i4 = this.zze;
                        this.zze = i4 + 1;
                        zzib.zza(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.zzb;
                            int i6 = this.zze;
                            this.zze = i6 + 1;
                            zzib.zza(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.zzb;
                        int i7 = this.zze;
                        this.zze = i7 + 1;
                        zzib.zza(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.zzb;
                            int i9 = this.zze;
                            this.zze = i9 + 1;
                            zzib.zza(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.zzb;
                        int i10 = this.zze;
                        this.zze = i10 + 1;
                        zzib.zza(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.zzb;
                            int i12 = this.zze;
                            this.zze = i12 + 1;
                            zzib.zza(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.zzb;
                        int i13 = this.zze;
                        this.zze = i13 + 1;
                        zzib.zza(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.zzb;
                        int i14 = this.zze;
                        this.zze = i14 + 1;
                        zzib.zza(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.zzb;
                    int i15 = this.zze;
                    this.zze = i15 + 1;
                    bArr10[i15] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
                }
            }
            byte[] bArr11 = this.zzb;
            int i16 = this.zze;
            this.zze = i16 + 1;
            bArr11[i16] = (byte) i2;
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzb(int i, int i2) {
            zza(i, 0);
            zza(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzb(int i, zzdu zzduVar) {
            zza(1, 3);
            zzc(2, i);
            zza(3, zzduVar);
            zza(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzb(byte[] bArr, int i, int i2) {
            zzb(i2);
            zzc(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzc(int i, int i2) {
            zza(i, 0);
            zzb(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzc(int i, long j) {
            zza(i, 1);
            zzc(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzc(long j) {
            try {
                byte[] bArr = this.zzb;
                int i = this.zze;
                this.zze = i + 1;
                bArr[i] = (byte) j;
                byte[] bArr2 = this.zzb;
                int i2 = this.zze;
                this.zze = i2 + 1;
                bArr2[i2] = (byte) (j >> 8);
                byte[] bArr3 = this.zzb;
                int i3 = this.zze;
                this.zze = i3 + 1;
                bArr3[i3] = (byte) (j >> 16);
                byte[] bArr4 = this.zzb;
                int i4 = this.zze;
                this.zze = i4 + 1;
                bArr4[i4] = (byte) (j >> 24);
                byte[] bArr5 = this.zzb;
                int i5 = this.zze;
                this.zze = i5 + 1;
                bArr5[i5] = (byte) (j >> 32);
                byte[] bArr6 = this.zzb;
                int i6 = this.zze;
                this.zze = i6 + 1;
                bArr6[i6] = (byte) (j >> 40);
                byte[] bArr7 = this.zzb;
                int i7 = this.zze;
                this.zze = i7 + 1;
                bArr7[i7] = (byte) (j >> 48);
                byte[] bArr8 = this.zzb;
                int i8 = this.zze;
                this.zze = i8 + 1;
                bArr8[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzd(int i) {
            try {
                byte[] bArr = this.zzb;
                int i2 = this.zze;
                this.zze = i2 + 1;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.zzb;
                int i3 = this.zze;
                this.zze = i3 + 1;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.zzb;
                int i4 = this.zze;
                this.zze = i4 + 1;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.zzb;
                int i5 = this.zze;
                this.zze = i5 + 1;
                bArr4[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zze(int i, int i2) {
            zza(i, 5);
            zzd(i2);
        }
    }

    private zzen() {
    }

    public static int zza(int i, zzft zzftVar) {
        int zze = zze(i);
        int zzb2 = zzftVar.zzb();
        return zze + zzg(zzb2) + zzb2;
    }

    public static int zza(zzft zzftVar) {
        int zzb2 = zzftVar.zzb();
        return zzg(zzb2) + zzb2;
    }

    public static int zza(zzgo zzgoVar, zzhd zzhdVar) {
        zzdl zzdlVar = (zzdl) zzgoVar;
        int zzbj = zzdlVar.zzbj();
        int i = zzbj;
        if (zzbj == -1) {
            i = zzhdVar.zzb(zzdlVar);
            zzdlVar.zzc(i);
        }
        return zzg(i) + i;
    }

    public static zzen zza(byte[] bArr) {
        return new zzb(bArr, 0, bArr.length);
    }

    public static int zzb(double d) {
        return 8;
    }

    public static int zzb(float f) {
        return 4;
    }

    public static int zzb(int i, double d) {
        return zze(i) + 8;
    }

    public static int zzb(int i, float f) {
        return zze(i) + 4;
    }

    public static int zzb(int i, zzft zzftVar) {
        return (zze(1) << 1) + zzg(2, i) + zza(3, zzftVar);
    }

    public static int zzb(int i, zzgo zzgoVar) {
        return (zze(1) << 1) + zzg(2, i) + zze(3) + zzb(zzgoVar);
    }

    public static int zzb(int i, zzgo zzgoVar, zzhd zzhdVar) {
        return zze(i) + zza(zzgoVar, zzhdVar);
    }

    public static int zzb(int i, String str) {
        return zze(i) + zzb(str);
    }

    public static int zzb(int i, boolean z) {
        return zze(i) + 1;
    }

    public static int zzb(zzdu zzduVar) {
        int zza2 = zzduVar.zza();
        return zzg(zza2) + zza2;
    }

    public static int zzb(zzgo zzgoVar) {
        int zzbn = zzgoVar.zzbn();
        return zzg(zzbn) + zzbn;
    }

    public static int zzb(String str) {
        int i;
        try {
            i = zzie.zza(str);
        } catch (zzih e) {
            i = str.getBytes(zzff.zza).length;
        }
        return zzg(i) + i;
    }

    public static int zzb(boolean z) {
        return 1;
    }

    public static int zzb(byte[] bArr) {
        int length = bArr.length;
        return zzg(length) + length;
    }

    public static int zzc(int i, zzdu zzduVar) {
        int zze = zze(i);
        int zza2 = zzduVar.zza();
        return zze + zzg(zza2) + zza2;
    }

    @Deprecated
    public static int zzc(int i, zzgo zzgoVar, zzhd zzhdVar) {
        int zze = zze(i);
        zzdl zzdlVar = (zzdl) zzgoVar;
        int zzbj = zzdlVar.zzbj();
        int i2 = zzbj;
        if (zzbj == -1) {
            i2 = zzhdVar.zzb(zzdlVar);
            zzdlVar.zzc(i2);
        }
        return (zze << 1) + i2;
    }

    @Deprecated
    public static int zzc(zzgo zzgoVar) {
        return zzgoVar.zzbn();
    }

    public static int zzd(int i, long j) {
        return zze(i) + zze(j);
    }

    public static int zzd(int i, zzdu zzduVar) {
        return (zze(1) << 1) + zzg(2, i) + zzc(3, zzduVar);
    }

    public static int zzd(long j) {
        return zze(j);
    }

    public static int zze(int i) {
        return zzg(i << 3);
    }

    public static int zze(int i, long j) {
        return zze(i) + zze(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    public static int zze(long j) {
        int i;
        ?? r5;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            i = 6;
            r5 = j >>> 28;
        } else {
            i = 2;
            r5 = j;
        }
        int i2 = i;
        byte b = r5;
        if ((0 & r5) != 0) {
            i2 = i + 2;
            b = r5 >>> 14;
        }
        int i3 = i2;
        if ((b & (-16384)) != 0) {
            i3 = i2 + 1;
        }
        return i3;
    }

    public static int zzf(int i) {
        if (i >= 0) {
            return zzg(i);
        }
        return 10;
    }

    public static int zzf(int i, int i2) {
        return zze(i) + zzf(i2);
    }

    public static int zzf(int i, long j) {
        return zze(i) + zze(zzi(j));
    }

    public static int zzf(long j) {
        return zze(zzi(j));
    }

    public static int zzg(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int zzg(int i, int i2) {
        return zze(i) + zzg(i2);
    }

    public static int zzg(int i, long j) {
        return zze(i) + 8;
    }

    public static int zzg(long j) {
        return 8;
    }

    public static int zzh(int i) {
        return zzg(zzm(i));
    }

    public static int zzh(int i, int i2) {
        return zze(i) + zzg(zzm(i2));
    }

    public static int zzh(int i, long j) {
        return zze(i) + 8;
    }

    public static int zzh(long j) {
        return 8;
    }

    public static int zzi(int i) {
        return 4;
    }

    public static int zzi(int i, int i2) {
        return zze(i) + 4;
    }

    private static long zzi(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int zzj(int i) {
        return 4;
    }

    public static int zzj(int i, int i2) {
        return zze(i) + 4;
    }

    public static int zzk(int i) {
        return zzf(i);
    }

    public static int zzk(int i, int i2) {
        return zze(i) + zzf(i2);
    }

    @Deprecated
    public static int zzl(int i) {
        return zzg(i);
    }

    private static int zzm(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public abstract int zza();

    public abstract void zza(byte b);

    public final void zza(double d) {
        zzc(Double.doubleToRawLongBits(d));
    }

    public final void zza(float f) {
        zzd(Float.floatToRawIntBits(f));
    }

    public abstract void zza(int i);

    public final void zza(int i, double d) {
        zzc(i, Double.doubleToRawLongBits(d));
    }

    public final void zza(int i, float f) {
        zze(i, Float.floatToRawIntBits(f));
    }

    public abstract void zza(int i, int i2);

    public abstract void zza(int i, long j);

    public abstract void zza(int i, zzdu zzduVar);

    public abstract void zza(int i, zzgo zzgoVar);

    public abstract void zza(int i, zzgo zzgoVar, zzhd zzhdVar);

    public abstract void zza(int i, String str);

    public abstract void zza(int i, boolean z);

    public abstract void zza(long j);

    public abstract void zza(zzdu zzduVar);

    public abstract void zza(zzgo zzgoVar);

    public abstract void zza(String str);

    final void zza(String str, zzih zzihVar) {
        zzb.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzihVar);
        byte[] bytes = str.getBytes(zzff.zza);
        try {
            zzb(bytes.length);
            zza(bytes, 0, bytes.length);
        } catch (zza e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zza(e2);
        }
    }

    public final void zza(boolean z) {
        zza(z ? (byte) 1 : (byte) 0);
    }

    public final void zzb() {
        if (zza() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    public abstract void zzb(int i);

    public abstract void zzb(int i, int i2);

    public final void zzb(int i, long j) {
        zza(i, zzi(j));
    }

    public abstract void zzb(int i, zzdu zzduVar);

    public final void zzb(long j) {
        zza(zzi(j));
    }

    public abstract void zzb(byte[] bArr, int i, int i2);

    public final void zzc(int i) {
        zzb(zzm(i));
    }

    public abstract void zzc(int i, int i2);

    public abstract void zzc(int i, long j);

    public abstract void zzc(long j);

    public abstract void zzd(int i);

    public final void zzd(int i, int i2) {
        zzc(i, zzm(i2));
    }

    public abstract void zze(int i, int i2);
}

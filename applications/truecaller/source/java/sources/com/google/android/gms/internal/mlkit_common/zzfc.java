package com.google.android.gms.internal.mlkit_common;

import io.agora.rtc.Constants;
import java.io.IOException;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzfc.class */
public abstract class zzfc extends zzem {
    private static final Logger zzb = Logger.getLogger(zzfc.class.getName());
    private static final boolean zzc = zzip.zza();
    public zzff zza;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzfc$zza.class */
    public static final class zza extends zzfc {
        private final byte[] zzb;
        private final int zzc;
        private final int zzd;
        private int zze;

        public zza(byte[] bArr, int i, int i2) {
            super();
            Objects.requireNonNull(bArr, "buffer");
            if ((i2 | 0 | (bArr.length - i2)) >= 0) {
                this.zzb = bArr;
                this.zzc = 0;
                this.zze = 0;
                this.zzd = i2;
                return;
            }
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)));
        }

        private final void zzc(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.zzb, this.zze, i2);
                this.zze += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final int zza() {
            return this.zzd - this.zze;
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zza(byte b) throws IOException {
            try {
                byte[] bArr = this.zzb;
                int i = this.zze;
                this.zze = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zza(int i) throws IOException {
            if (i >= 0) {
                zzb(i);
            } else {
                zza(i);
            }
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zza(int i, int i2) throws IOException {
            zzb((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zza(int i, long j) throws IOException {
            zza(i, 0);
            zza(j);
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zza(int i, zzep zzepVar) throws IOException {
            zza(i, 2);
            zza(zzepVar);
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zza(int i, zzhb zzhbVar) throws IOException {
            zza(1, 3);
            zzc(2, i);
            zza(3, 2);
            zza(zzhbVar);
            zza(1, 4);
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zza(int i, zzhb zzhbVar, zzhr zzhrVar) throws IOException {
            zza(i, 2);
            zzeg zzegVar = (zzeg) zzhbVar;
            int zzg = zzegVar.zzg();
            int i2 = zzg;
            if (zzg == -1) {
                i2 = zzhrVar.zzd(zzegVar);
                zzegVar.zza(i2);
            }
            zzb(i2);
            zzhrVar.zza((zzhr) zzhbVar, (zzjd) this.zza);
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zza(int i, String str) throws IOException {
            zza(i, 2);
            zza(str);
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zza(int i, boolean z) throws IOException {
            zza(i, 0);
            zza(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v39, types: [long] */
        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zza(long j) throws IOException {
            char c = j;
            if (zzfc.zzc) {
                c = j;
                char c2 = j;
                if (zza() >= 10) {
                    while ((c2 & 65408) != 0) {
                        byte[] bArr = this.zzb;
                        int i = this.zze;
                        this.zze = i + 1;
                        zzip.zza(bArr, i, (byte) ((c2 & Constants.ERR_WATERMARKR_INFO) | 128));
                        c2 >>>= 7;
                    }
                    byte[] bArr2 = this.zzb;
                    int i2 = this.zze;
                    this.zze = i2 + 1;
                    zzip.zza(bArr2, i2, (byte) c2);
                    return;
                }
            }
            while ((c & 65408) != 0) {
                try {
                    byte[] bArr3 = this.zzb;
                    int i3 = this.zze;
                    this.zze = i3 + 1;
                    bArr3[i3] = (byte) ((c & Constants.ERR_WATERMARKR_INFO) | 128);
                    c >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
                }
            }
            byte[] bArr4 = this.zzb;
            int i4 = this.zze;
            this.zze = i4 + 1;
            bArr4[i4] = (byte) c;
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zza(zzep zzepVar) throws IOException {
            zzb(zzepVar.zza());
            zzepVar.zza(this);
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zza(zzhb zzhbVar) throws IOException {
            zzb(zzhbVar.zzj());
            zzhbVar.zza(this);
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zza(String str) throws IOException {
            int i = this.zze;
            try {
                int zzg = zzfc.zzg(str.length() * 3);
                int zzg2 = zzfc.zzg(str.length());
                if (zzg2 != zzg) {
                    zzb(zzir.zza(str));
                    this.zze = zzir.zza(str, this.zzb, this.zze, zza());
                    return;
                }
                int i2 = i + zzg2;
                this.zze = i2;
                int zza = zzir.zza(str, this.zzb, i2, zza());
                this.zze = i;
                zzb((zza - i) - zzg2);
                this.zze = zza;
            } catch (zzis e) {
                this.zze = i;
                zza(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzb(e2);
            }
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzem
        public final void zza(byte[] bArr, int i, int i2) throws IOException {
            zzc(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zzb(int i) throws IOException {
            int i2 = i;
            if (zzfc.zzc) {
                i2 = i;
                if (!zzen.zza()) {
                    i2 = i;
                    if (zza() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.zzb;
                            int i3 = this.zze;
                            this.zze = i3 + 1;
                            zzip.zza(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.zzb;
                        int i4 = this.zze;
                        this.zze = i4 + 1;
                        zzip.zza(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.zzb;
                            int i6 = this.zze;
                            this.zze = i6 + 1;
                            zzip.zza(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.zzb;
                        int i7 = this.zze;
                        this.zze = i7 + 1;
                        zzip.zza(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.zzb;
                            int i9 = this.zze;
                            this.zze = i9 + 1;
                            zzip.zza(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.zzb;
                        int i10 = this.zze;
                        this.zze = i10 + 1;
                        zzip.zza(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.zzb;
                            int i12 = this.zze;
                            this.zze = i12 + 1;
                            zzip.zza(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.zzb;
                        int i13 = this.zze;
                        this.zze = i13 + 1;
                        zzip.zza(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.zzb;
                        int i14 = this.zze;
                        this.zze = i14 + 1;
                        zzip.zza(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.zzb;
                    int i15 = this.zze;
                    this.zze = i15 + 1;
                    bArr10[i15] = (byte) ((i2 & Constants.ERR_WATERMARKR_INFO) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
                }
            }
            byte[] bArr11 = this.zzb;
            int i16 = this.zze;
            this.zze = i16 + 1;
            bArr11[i16] = (byte) i2;
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zzb(int i, int i2) throws IOException {
            zza(i, 0);
            zza(i2);
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zzb(int i, zzep zzepVar) throws IOException {
            zza(1, 3);
            zzc(2, i);
            zza(3, zzepVar);
            zza(1, 4);
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zzb(byte[] bArr, int i, int i2) throws IOException {
            zzb(i2);
            zzc(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zzc(int i, int i2) throws IOException {
            zza(i, 0);
            zzb(i2);
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zzc(int i, long j) throws IOException {
            zza(i, 1);
            zzc(j);
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zzc(long j) throws IOException {
            try {
                byte[] bArr = this.zzb;
                int i = this.zze;
                int i2 = i + 1;
                this.zze = i2;
                bArr[i] = (byte) j;
                int i3 = i2 + 1;
                this.zze = i3;
                bArr[i2] = (byte) (j >> 8);
                int i4 = i3 + 1;
                this.zze = i4;
                bArr[i3] = (byte) (j >> 16);
                int i5 = i4 + 1;
                this.zze = i5;
                bArr[i4] = (byte) (j >> 24);
                int i6 = i5 + 1;
                this.zze = i6;
                bArr[i5] = (byte) (j >> 32);
                int i7 = i6 + 1;
                this.zze = i7;
                bArr[i6] = (byte) (j >> 40);
                int i8 = i7 + 1;
                this.zze = i8;
                bArr[i7] = (byte) (j >> 48);
                this.zze = i8 + 1;
                bArr[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zzd(int i) throws IOException {
            try {
                byte[] bArr = this.zzb;
                int i2 = this.zze;
                int i3 = i2 + 1;
                this.zze = i3;
                bArr[i2] = (byte) i;
                int i4 = i3 + 1;
                this.zze = i4;
                bArr[i3] = (byte) (i >> 8);
                int i5 = i4 + 1;
                this.zze = i5;
                bArr[i4] = (byte) (i >> 16);
                this.zze = i5 + 1;
                bArr[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfc
        public final void zze(int i, int i2) throws IOException {
            zza(i, 5);
            zzd(i2);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzfc$zzb.class */
    public static final class zzb extends IOException {
        public zzb() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public zzb(java.lang.String r5, java.lang.Throwable r6) {
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_common.zzfc.zzb.<init>(java.lang.String, java.lang.Throwable):void");
        }

        public zzb(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    private zzfc() {
    }

    public static int zza(int i, zzgg zzggVar) {
        int zzg = zzg(i << 3);
        int zzb2 = zzggVar.zzb();
        return zzg(zzb2) + zzb2 + zzg;
    }

    public static int zza(zzgg zzggVar) {
        int zzb2 = zzggVar.zzb();
        return zzg(zzb2) + zzb2;
    }

    public static int zza(zzhb zzhbVar, zzhr zzhrVar) {
        zzeg zzegVar = (zzeg) zzhbVar;
        int zzg = zzegVar.zzg();
        int i = zzg;
        if (zzg == -1) {
            i = zzhrVar.zzd(zzegVar);
            zzegVar.zza(i);
        }
        return zzg(i) + i;
    }

    public static zzfc zza(byte[] bArr) {
        return new zza(bArr, 0, bArr.length);
    }

    public static int zzb(double d) {
        return 8;
    }

    public static int zzb(float f) {
        return 4;
    }

    public static int zzb(int i, double d) {
        return zzg(i << 3) + 8;
    }

    public static int zzb(int i, float f) {
        return zzg(i << 3) + 4;
    }

    public static int zzb(int i, zzgg zzggVar) {
        int zzg = zzg(8);
        return zza(3, zzggVar) + zzg(2, i) + (zzg << 1);
    }

    public static int zzb(int i, zzhb zzhbVar) {
        int zzg = zzg(8);
        int zzg2 = zzg(2, i);
        return zzb(zzhbVar) + zzg(24) + zzg2 + (zzg << 1);
    }

    public static int zzb(int i, zzhb zzhbVar, zzhr zzhrVar) {
        return zza(zzhbVar, zzhrVar) + zzg(i << 3);
    }

    public static int zzb(int i, String str) {
        return zzb(str) + zzg(i << 3);
    }

    public static int zzb(int i, boolean z) {
        return zzg(i << 3) + 1;
    }

    public static int zzb(zzep zzepVar) {
        int zza2 = zzepVar.zza();
        return zzg(zza2) + zza2;
    }

    public static int zzb(zzhb zzhbVar) {
        int zzj = zzhbVar.zzj();
        return zzg(zzj) + zzj;
    }

    public static int zzb(String str) {
        int i;
        try {
            i = zzir.zza(str);
        } catch (zzis e) {
            i = str.getBytes(zzfs.zza).length;
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

    public static int zzc(int i, zzep zzepVar) {
        int zzg = zzg(i << 3);
        int zza2 = zzepVar.zza();
        return zzg(zza2) + zza2 + zzg;
    }

    @Deprecated
    public static int zzc(int i, zzhb zzhbVar, zzhr zzhrVar) {
        int zzg = zzg(i << 3);
        zzeg zzegVar = (zzeg) zzhbVar;
        int zzg2 = zzegVar.zzg();
        int i2 = zzg2;
        if (zzg2 == -1) {
            i2 = zzhrVar.zzd(zzegVar);
            zzegVar.zza(i2);
        }
        return (zzg << 1) + i2;
    }

    @Deprecated
    public static int zzc(zzhb zzhbVar) {
        return zzhbVar.zzj();
    }

    public static int zzd(int i, long j) {
        return zze(j) + zzg(i << 3);
    }

    public static int zzd(int i, zzep zzepVar) {
        int zzg = zzg(8);
        return zzc(3, zzepVar) + zzg(2, i) + (zzg << 1);
    }

    public static int zzd(long j) {
        return zze(j);
    }

    public static int zze(int i) {
        return zzg(i << 3);
    }

    public static int zze(int i, long j) {
        return zze(j) + zzg(i << 3);
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
        return zzf(i2) + zzg(i << 3);
    }

    public static int zzf(int i, long j) {
        return zze(zzi(j)) + zzg(i << 3);
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
        return zzg(i2) + zzg(i << 3);
    }

    public static int zzg(int i, long j) {
        return zzg(i << 3) + 8;
    }

    public static int zzg(long j) {
        return 8;
    }

    public static int zzh(int i) {
        return zzg(zzm(i));
    }

    public static int zzh(int i, int i2) {
        return zzg(zzm(i2)) + zzg(i << 3);
    }

    public static int zzh(int i, long j) {
        return zzg(i << 3) + 8;
    }

    public static int zzh(long j) {
        return 8;
    }

    public static int zzi(int i) {
        return 4;
    }

    public static int zzi(int i, int i2) {
        return zzg(i << 3) + 4;
    }

    private static long zzi(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int zzj(int i) {
        return 4;
    }

    public static int zzj(int i, int i2) {
        return zzg(i << 3) + 4;
    }

    public static int zzk(int i) {
        return zzf(i);
    }

    public static int zzk(int i, int i2) {
        return zzf(i2) + zzg(i << 3);
    }

    @Deprecated
    public static int zzl(int i) {
        return zzg(i);
    }

    private static int zzm(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public abstract int zza();

    public abstract void zza(byte b) throws IOException;

    public final void zza(double d) throws IOException {
        zzc(Double.doubleToRawLongBits(d));
    }

    public final void zza(float f) throws IOException {
        zzd(Float.floatToRawIntBits(f));
    }

    public abstract void zza(int i) throws IOException;

    public final void zza(int i, double d) throws IOException {
        zzc(i, Double.doubleToRawLongBits(d));
    }

    public final void zza(int i, float f) throws IOException {
        zze(i, Float.floatToRawIntBits(f));
    }

    public abstract void zza(int i, int i2) throws IOException;

    public abstract void zza(int i, long j) throws IOException;

    public abstract void zza(int i, zzep zzepVar) throws IOException;

    public abstract void zza(int i, zzhb zzhbVar) throws IOException;

    public abstract void zza(int i, zzhb zzhbVar, zzhr zzhrVar) throws IOException;

    public abstract void zza(int i, String str) throws IOException;

    public abstract void zza(int i, boolean z) throws IOException;

    public abstract void zza(long j) throws IOException;

    public abstract void zza(zzep zzepVar) throws IOException;

    public abstract void zza(zzhb zzhbVar) throws IOException;

    public abstract void zza(String str) throws IOException;

    public final void zza(String str, zzis zzisVar) throws IOException {
        zzb.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzisVar);
        byte[] bytes = str.getBytes(zzfs.zza);
        try {
            zzb(bytes.length);
            zza(bytes, 0, bytes.length);
        } catch (zzb e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzb(e2);
        }
    }

    public final void zza(boolean z) throws IOException {
        zza(z ? (byte) 1 : (byte) 0);
    }

    public final void zzb() {
        if (zza() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    public abstract void zzb(int i) throws IOException;

    public abstract void zzb(int i, int i2) throws IOException;

    public final void zzb(int i, long j) throws IOException {
        zza(i, zzi(j));
    }

    public abstract void zzb(int i, zzep zzepVar) throws IOException;

    public final void zzb(long j) throws IOException {
        zza(zzi(j));
    }

    public abstract void zzb(byte[] bArr, int i, int i2) throws IOException;

    public final void zzc(int i) throws IOException {
        zzb(zzm(i));
    }

    public abstract void zzc(int i, int i2) throws IOException;

    public abstract void zzc(int i, long j) throws IOException;

    public abstract void zzc(long j) throws IOException;

    public abstract void zzd(int i) throws IOException;

    public final void zzd(int i, int i2) throws IOException {
        zzc(i, zzm(i2));
    }

    public abstract void zze(int i, int i2) throws IOException;
}

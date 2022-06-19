package com.google.android.gms.internal.firebase_remote_config;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzgs.class */
public abstract class zzgs extends zzfy {
    private static final Logger logger = Logger.getLogger(zzgs.class.getName());
    private static final boolean zzpv = zzkd.zzjd();
    zzgu zzpw;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzgs$zza.class */
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zzgs.zza.<init>(java.lang.String, java.lang.Throwable):void");
        }

        zza(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzgs$zzb.class */
    public static final class zzb extends zzgs {
        private final byte[] buffer;
        private final int limit;
        private final int offset;
        private int position;

        zzb(byte[] bArr, int i, int i2) {
            super();
            if (bArr != null) {
                int i3 = i2 + 0;
                if ((i2 | 0 | (bArr.length - i3)) < 0) {
                    throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)));
                }
                this.buffer = bArr;
                this.offset = 0;
                this.position = 0;
                this.limit = i3;
                return;
            }
            throw new NullPointerException("buffer");
        }

        private final void write(byte[] bArr, int i, int i2) {
            try {
                System.arraycopy(bArr, i, this.buffer, this.position, i2);
                this.position += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zza(int i, long j) {
            zzc(i, 0);
            zzf(j);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zza(int i, zzfx zzfxVar) {
            zzc(i, 2);
            zzb(zzfxVar);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zza(int i, zziq zziqVar) {
            zzc(1, 3);
            zze(2, i);
            zzc(3, 2);
            zzb(zziqVar);
            zzc(1, 4);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zza(int i, zziq zziqVar, zzjf zzjfVar) {
            zzc(i, 2);
            zzfq zzfqVar = (zzfq) zziqVar;
            int zzeq = zzfqVar.zzeq();
            int i2 = zzeq;
            if (zzeq == -1) {
                i2 = zzjfVar.zzw(zzfqVar);
                zzfqVar.zzr(i2);
            }
            zzan(i2);
            zzjfVar.zza(zziqVar, this.zzpw);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zzam(int i) {
            if (i >= 0) {
                zzan(i);
            } else {
                zzf(i);
            }
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zzan(int i) {
            int i2 = i;
            if (zzgs.zzpv) {
                i2 = i;
                if (!zzfu.zzeu()) {
                    i2 = i;
                    if (zzgb() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.buffer;
                            int i3 = this.position;
                            this.position = i3 + 1;
                            zzkd.zza(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.buffer;
                        int i4 = this.position;
                        this.position = i4 + 1;
                        zzkd.zza(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.buffer;
                            int i6 = this.position;
                            this.position = i6 + 1;
                            zzkd.zza(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.buffer;
                        int i7 = this.position;
                        this.position = i7 + 1;
                        zzkd.zza(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.buffer;
                            int i9 = this.position;
                            this.position = i9 + 1;
                            zzkd.zza(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.buffer;
                        int i10 = this.position;
                        this.position = i10 + 1;
                        zzkd.zza(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.buffer;
                            int i12 = this.position;
                            this.position = i12 + 1;
                            zzkd.zza(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.buffer;
                        int i13 = this.position;
                        this.position = i13 + 1;
                        zzkd.zza(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.buffer;
                        int i14 = this.position;
                        this.position = i14 + 1;
                        zzkd.zza(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.buffer;
                    int i15 = this.position;
                    this.position = i15 + 1;
                    bArr10[i15] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
                }
            }
            byte[] bArr11 = this.buffer;
            int i16 = this.position;
            this.position = i16 + 1;
            bArr11[i16] = (byte) i2;
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zzap(int i) {
            try {
                byte[] bArr = this.buffer;
                int i2 = this.position;
                this.position = i2 + 1;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.buffer;
                int i3 = this.position;
                this.position = i3 + 1;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.buffer;
                int i4 = this.position;
                this.position = i4 + 1;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.buffer;
                int i5 = this.position;
                this.position = i5 + 1;
                bArr4[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zzb(int i, zzfx zzfxVar) {
            zzc(1, 3);
            zze(2, i);
            zza(3, zzfxVar);
            zzc(1, 4);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zzb(int i, String str) {
            zzc(i, 2);
            zzbk(str);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zzb(zzfx zzfxVar) {
            zzan(zzfxVar.size());
            zzfxVar.zza(this);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zzb(zziq zziqVar) {
            zzan(zziqVar.zzgs());
            zziqVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzfy
        public final void zzb(byte[] bArr, int i, int i2) {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zzbk(String str) {
            int i = this.position;
            try {
                int zzas = zzas(str.length() * 3);
                int zzas2 = zzas(str.length());
                if (zzas2 != zzas) {
                    zzan(zzkg.zzb(str));
                    this.position = zzkg.zza(str, this.buffer, this.position, zzgb());
                    return;
                }
                this.position = i + zzas2;
                int zza = zzkg.zza(str, this.buffer, this.position, zzgb());
                this.position = i;
                zzan((zza - i) - zzas2);
                this.position = zza;
            } catch (zzkj e) {
                this.position = i;
                zza(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zza(e2);
            }
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zzc(byte b) {
            try {
                byte[] bArr = this.buffer;
                int i = this.position;
                this.position = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zzc(int i, int i2) {
            zzan((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zzc(int i, long j) {
            zzc(i, 1);
            zzh(j);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zzc(int i, boolean z) {
            zzc(i, 0);
            zzc(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zzd(int i, int i2) {
            zzc(i, 0);
            zzam(i2);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zzd(byte[] bArr, int i, int i2) {
            zzan(i2);
            write(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zze(int i, int i2) {
            zzc(i, 0);
            zzan(i2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v39, types: [long] */
        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zzf(long j) {
            char c = j;
            if (zzgs.zzpv) {
                c = j;
                char c2 = j;
                if (zzgb() >= 10) {
                    while ((c2 & 65408) != 0) {
                        byte[] bArr = this.buffer;
                        int i = this.position;
                        this.position = i + 1;
                        zzkd.zza(bArr, i, (byte) ((c2 & 127) | 128));
                        c2 >>>= 7;
                    }
                    byte[] bArr2 = this.buffer;
                    int i2 = this.position;
                    this.position = i2 + 1;
                    zzkd.zza(bArr2, i2, (byte) c2);
                    return;
                }
            }
            while ((c & 65408) != 0) {
                try {
                    byte[] bArr3 = this.buffer;
                    int i3 = this.position;
                    this.position = i3 + 1;
                    bArr3[i3] = (byte) ((c & 127) | 128);
                    c >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
                }
            }
            byte[] bArr4 = this.buffer;
            int i4 = this.position;
            this.position = i4 + 1;
            bArr4[i4] = (byte) c;
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zzg(int i, int i2) {
            zzc(i, 5);
            zzap(i2);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final int zzgb() {
            return this.limit - this.position;
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzgs
        public final void zzh(long j) {
            try {
                byte[] bArr = this.buffer;
                int i = this.position;
                this.position = i + 1;
                bArr[i] = (byte) j;
                byte[] bArr2 = this.buffer;
                int i2 = this.position;
                this.position = i2 + 1;
                bArr2[i2] = (byte) (j >> 8);
                byte[] bArr3 = this.buffer;
                int i3 = this.position;
                this.position = i3 + 1;
                bArr3[i3] = (byte) (j >> 16);
                byte[] bArr4 = this.buffer;
                int i4 = this.position;
                this.position = i4 + 1;
                bArr4[i4] = (byte) (j >> 24);
                byte[] bArr5 = this.buffer;
                int i5 = this.position;
                this.position = i5 + 1;
                bArr5[i5] = (byte) (j >> 32);
                byte[] bArr6 = this.buffer;
                int i6 = this.position;
                this.position = i6 + 1;
                bArr6[i6] = (byte) (j >> 40);
                byte[] bArr7 = this.buffer;
                int i7 = this.position;
                this.position = i7 + 1;
                bArr7[i7] = (byte) (j >> 48);
                byte[] bArr8 = this.buffer;
                int i8 = this.position;
                this.position = i8 + 1;
                bArr8[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }
    }

    private zzgs() {
    }

    public static int zza(int i, zzhv zzhvVar) {
        int zzaq = zzaq(i);
        int zzgs = zzhvVar.zzgs();
        return zzaq + zzas(zzgs) + zzgs;
    }

    public static int zza(zzhv zzhvVar) {
        int zzgs = zzhvVar.zzgs();
        return zzas(zzgs) + zzgs;
    }

    public static int zza(zziq zziqVar, zzjf zzjfVar) {
        zzfq zzfqVar = (zzfq) zziqVar;
        int zzeq = zzfqVar.zzeq();
        int i = zzeq;
        if (zzeq == -1) {
            i = zzjfVar.zzw(zzfqVar);
            zzfqVar.zzr(i);
        }
        return zzas(i) + i;
    }

    public static int zzaq(int i) {
        return zzas(i << 3);
    }

    public static int zzar(int i) {
        if (i >= 0) {
            return zzas(i);
        }
        return 10;
    }

    public static int zzas(int i) {
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

    public static int zzat(int i) {
        return zzas(zzax(i));
    }

    public static int zzau(int i) {
        return 4;
    }

    public static int zzav(int i) {
        return 4;
    }

    public static int zzaw(int i) {
        return zzar(i);
    }

    private static int zzax(int i) {
        return (i >> 31) ^ (i << 1);
    }

    @Deprecated
    public static int zzay(int i) {
        return zzas(i);
    }

    public static int zzb(int i, double d) {
        return zzaq(i) + 8;
    }

    public static int zzb(int i, float f) {
        return zzaq(i) + 4;
    }

    public static int zzb(int i, zzhv zzhvVar) {
        return (zzaq(1) << 1) + zzi(2, i) + zza(3, zzhvVar);
    }

    public static int zzb(int i, zziq zziqVar) {
        return (zzaq(1) << 1) + zzi(2, i) + zzaq(3) + zzc(zziqVar);
    }

    public static int zzb(int i, zziq zziqVar, zzjf zzjfVar) {
        return zzaq(i) + zza(zziqVar, zzjfVar);
    }

    public static int zzbl(String str) {
        int i;
        try {
            i = zzkg.zzb(str);
        } catch (zzkj e) {
            i = str.getBytes(zzhm.UTF_8).length;
        }
        return zzas(i) + i;
    }

    public static int zzc(float f) {
        return 4;
    }

    public static int zzc(int i, zzfx zzfxVar) {
        int zzaq = zzaq(i);
        int size = zzfxVar.size();
        return zzaq + zzas(size) + size;
    }

    @Deprecated
    public static int zzc(int i, zziq zziqVar, zzjf zzjfVar) {
        int zzaq = zzaq(i);
        zzfq zzfqVar = (zzfq) zziqVar;
        int zzeq = zzfqVar.zzeq();
        int i2 = zzeq;
        if (zzeq == -1) {
            i2 = zzjfVar.zzw(zzfqVar);
            zzfqVar.zzr(i2);
        }
        return (zzaq << 1) + i2;
    }

    public static int zzc(int i, String str) {
        return zzaq(i) + zzbl(str);
    }

    public static int zzc(zzfx zzfxVar) {
        int size = zzfxVar.size();
        return zzas(size) + size;
    }

    public static int zzc(zziq zziqVar) {
        int zzgs = zziqVar.zzgs();
        return zzas(zzgs) + zzgs;
    }

    public static zzgs zzc(byte[] bArr) {
        return new zzb(bArr, 0, bArr.length);
    }

    public static int zzd(double d) {
        return 8;
    }

    public static int zzd(int i, long j) {
        return zzaq(i) + zzj(j);
    }

    public static int zzd(int i, zzfx zzfxVar) {
        return (zzaq(1) << 1) + zzi(2, i) + zzc(3, zzfxVar);
    }

    public static int zzd(int i, boolean z) {
        return zzaq(i) + 1;
    }

    @Deprecated
    public static int zzd(zziq zziqVar) {
        return zziqVar.zzgs();
    }

    public static int zzd(byte[] bArr) {
        int length = bArr.length;
        return zzas(length) + length;
    }

    public static int zze(int i, long j) {
        return zzaq(i) + zzj(j);
    }

    public static int zze(boolean z) {
        return 1;
    }

    public static int zzf(int i, long j) {
        return zzaq(i) + zzj(zzn(j));
    }

    public static int zzg(int i, long j) {
        return zzaq(i) + 8;
    }

    public static int zzh(int i, int i2) {
        return zzaq(i) + zzar(i2);
    }

    public static int zzh(int i, long j) {
        return zzaq(i) + 8;
    }

    public static int zzi(int i, int i2) {
        return zzaq(i) + zzas(i2);
    }

    public static int zzi(long j) {
        return zzj(j);
    }

    public static int zzj(int i, int i2) {
        return zzaq(i) + zzas(zzax(i2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    public static int zzj(long j) {
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

    public static int zzk(int i, int i2) {
        return zzaq(i) + 4;
    }

    public static int zzk(long j) {
        return zzj(zzn(j));
    }

    public static int zzl(int i, int i2) {
        return zzaq(i) + 4;
    }

    public static int zzl(long j) {
        return 8;
    }

    public static int zzm(int i, int i2) {
        return zzaq(i) + zzar(i2);
    }

    public static int zzm(long j) {
        return 8;
    }

    private static long zzn(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public final void zza(int i, double d) {
        zzc(i, Double.doubleToRawLongBits(d));
    }

    public final void zza(int i, float f) {
        zzg(i, Float.floatToRawIntBits(f));
    }

    public abstract void zza(int i, long j);

    public abstract void zza(int i, zzfx zzfxVar);

    public abstract void zza(int i, zziq zziqVar);

    public abstract void zza(int i, zziq zziqVar, zzjf zzjfVar);

    final void zza(String str, zzkj zzkjVar) {
        logger.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzkjVar);
        byte[] bytes = str.getBytes(zzhm.UTF_8);
        try {
            zzan(bytes.length);
            zzb(bytes, 0, bytes.length);
        } catch (zza e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zza(e2);
        }
    }

    public abstract void zzam(int i);

    public abstract void zzan(int i);

    public final void zzao(int i) {
        zzan(zzax(i));
    }

    public abstract void zzap(int i);

    public final void zzb(float f) {
        zzap(Float.floatToRawIntBits(f));
    }

    public final void zzb(int i, long j) {
        zza(i, zzn(j));
    }

    public abstract void zzb(int i, zzfx zzfxVar);

    public abstract void zzb(int i, String str);

    public abstract void zzb(zzfx zzfxVar);

    public abstract void zzb(zziq zziqVar);

    public abstract void zzbk(String str);

    public abstract void zzc(byte b);

    public final void zzc(double d) {
        zzh(Double.doubleToRawLongBits(d));
    }

    public abstract void zzc(int i, int i2);

    public abstract void zzc(int i, long j);

    public abstract void zzc(int i, boolean z);

    public abstract void zzd(int i, int i2);

    public final void zzd(boolean z) {
        zzc(z ? (byte) 1 : (byte) 0);
    }

    public abstract void zzd(byte[] bArr, int i, int i2);

    public abstract void zze(int i, int i2);

    public final void zzf(int i, int i2) {
        zze(i, zzax(i2));
    }

    public abstract void zzf(long j);

    public abstract void zzg(int i, int i2);

    public final void zzg(long j) {
        zzf(zzn(j));
    }

    public abstract int zzgb();

    public abstract void zzh(long j);
}

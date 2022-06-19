package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzdd;
import com.google.android.gms.internal.firebase-perf.zzdt;
import com.google.android.gms.internal.firebase-perf.zzdw;
import com.google.android.gms.internal.firebase-perf.zzew;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase-perf.zzge;
import com.google.android.gms.internal.firebase-perf.zzhj;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzdu.class */
public abstract class zzdu extends zzde {
    private static final Logger logger = Logger.getLogger(com.google.android.gms.internal.firebase-perf.zzdu.class.getName());
    private static final boolean zzmv = zzhc.zzij();
    zzdw zzmw;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzdu$zza.class */
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_perf.zzdu.zza.<init>(java.lang.String, java.lang.Throwable):void");
        }

        zza(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzdu$zzb.class */
    public static final class zzb extends zzdu {
        private final byte[] buffer;
        private final int limit;
        private final int offset;
        private int position;

        zzb(byte[] bArr, int i, int i2) {
            super(null);
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

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zza(int i, long j) {
            zze(i, 0);
            zzak(j);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zza(int i, zzdd zzddVar) {
            zze(i, 2);
            zza(zzddVar);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zza(int i, zzfr zzfrVar) {
            zze(1, 3);
            zzg(2, i);
            zze(3, 2);
            zzb(zzfrVar);
            zze(1, 4);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zza(int i, zzfr zzfrVar, zzge zzgeVar) {
            zze(i, 2);
            zzcy zzcyVar = (zzcy) zzfrVar;
            int zzff = zzcyVar.zzff();
            int i2 = zzff;
            if (zzff == -1) {
                i2 = zzgeVar.zzl(zzcyVar);
                zzcyVar.zzp(i2);
            }
            zzv(i2);
            zzgeVar.zza(zzfrVar, this.zzmw);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zza(int i, String str) {
            zze(i, 2);
            zzaf(str);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zza(int i, boolean z) {
            zze(i, 0);
            zzc(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zza(zzdd zzddVar) {
            zzv(zzddVar.size());
            zzddVar.zza(this);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzde
        public final void zza(byte[] bArr, int i, int i2) {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zzaf(String str) {
            int i = this.position;
            try {
                int zzaa = zzaa(str.length() * 3);
                int zzaa2 = zzaa(str.length());
                if (zzaa2 != zzaa) {
                    zzv(zzhf.zza(str));
                    this.position = zzhf.zza(str, this.buffer, this.position, zzft());
                    return;
                }
                this.position = i + zzaa2;
                int zza = zzhf.zza(str, this.buffer, this.position, zzft());
                this.position = i;
                zzv((zza - i) - zzaa2);
                this.position = zza;
            } catch (zzhj e) {
                this.position = i;
                zza(str, (zzhj) e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zza(e2);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v39, types: [long] */
        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zzak(long j) {
            char c = j;
            if (zzdu.zzmv) {
                c = j;
                char c2 = j;
                if (zzft() >= 10) {
                    while ((c2 & 65408) != 0) {
                        byte[] bArr = this.buffer;
                        int i = this.position;
                        this.position = i + 1;
                        zzhc.zza(bArr, i, (byte) ((c2 & 127) | 128));
                        c2 >>>= 7;
                    }
                    byte[] bArr2 = this.buffer;
                    int i2 = this.position;
                    this.position = i2 + 1;
                    zzhc.zza(bArr2, i2, (byte) c2);
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

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zzam(long j) {
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

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zzb(int i, zzdd zzddVar) {
            zze(1, 3);
            zzg(2, i);
            zza(3, zzddVar);
            zze(1, 4);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zzb(zzfr zzfrVar) {
            zzv(zzfrVar.zzgp());
            zzfrVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zzb(byte[] bArr, int i, int i2) {
            zzv(i2);
            write(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
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

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zzc(int i, long j) {
            zze(i, 1);
            zzam(j);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zze(int i, int i2) {
            zzv((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zzf(int i, int i2) {
            zze(i, 0);
            zzu(i2);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final int zzft() {
            return this.limit - this.position;
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zzg(int i, int i2) {
            zze(i, 0);
            zzv(i2);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zzi(int i, int i2) {
            zze(i, 5);
            zzx(i2);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zzu(int i) {
            if (i >= 0) {
                zzv(i);
            } else {
                zzak(i);
            }
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zzv(int i) {
            int i2 = i;
            if (zzdu.zzmv) {
                i2 = i;
                if (!zzdb.zzfh()) {
                    i2 = i;
                    if (zzft() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.buffer;
                            int i3 = this.position;
                            this.position = i3 + 1;
                            zzhc.zza(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.buffer;
                        int i4 = this.position;
                        this.position = i4 + 1;
                        zzhc.zza(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.buffer;
                            int i6 = this.position;
                            this.position = i6 + 1;
                            zzhc.zza(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.buffer;
                        int i7 = this.position;
                        this.position = i7 + 1;
                        zzhc.zza(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.buffer;
                            int i9 = this.position;
                            this.position = i9 + 1;
                            zzhc.zza(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.buffer;
                        int i10 = this.position;
                        this.position = i10 + 1;
                        zzhc.zza(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.buffer;
                            int i12 = this.position;
                            this.position = i12 + 1;
                            zzhc.zza(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.buffer;
                        int i13 = this.position;
                        this.position = i13 + 1;
                        zzhc.zza(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.buffer;
                        int i14 = this.position;
                        this.position = i14 + 1;
                        zzhc.zza(bArr9, i14, (byte) (i11 >>> 7));
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

        @Override // com.google.android.gms.internal.firebase_perf.zzdu
        public final void zzx(int i) {
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
    }

    private zzdu() {
    }

    /* synthetic */ zzdu(zzdt zzdtVar) {
        this();
    }

    public static int zza(int i, zzew zzewVar) {
        int zzy = zzy(i);
        int zzgp = zzewVar.zzgp();
        return zzy + zzaa(zzgp) + zzgp;
    }

    public static int zza(zzew zzewVar) {
        int zzgp = zzewVar.zzgp();
        return zzaa(zzgp) + zzgp;
    }

    public static int zza(zzfr zzfrVar, zzge zzgeVar) {
        zzcy zzcyVar = (zzcy) zzfrVar;
        int zzff = zzcyVar.zzff();
        int i = zzff;
        if (zzff == -1) {
            i = zzgeVar.zzl(zzcyVar);
            zzcyVar.zzp(i);
        }
        return zzaa(i) + i;
    }

    public static int zzaa(int i) {
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

    public static int zzab(int i) {
        return zzaa(zzag(i));
    }

    public static int zzac(int i) {
        return 4;
    }

    public static int zzad(int i) {
        return 4;
    }

    public static int zzae(int i) {
        return zzz(i);
    }

    public static int zzaf(int i) {
        return zzaa(i) + i;
    }

    private static int zzag(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public static int zzag(String str) {
        int i;
        try {
            i = zzhf.zza(str);
        } catch (zzhj e) {
            i = str.getBytes(zzei.UTF_8).length;
        }
        return zzaa(i) + i;
    }

    @Deprecated
    public static int zzah(int i) {
        return zzaa(i);
    }

    public static int zzan(long j) {
        return zzao(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    public static int zzao(long j) {
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

    public static int zzap(long j) {
        return zzao(zzas(j));
    }

    public static int zzaq(long j) {
        return 8;
    }

    public static int zzar(long j) {
        return 8;
    }

    private static long zzas(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int zzb(double d) {
        return 8;
    }

    public static int zzb(float f) {
        return 4;
    }

    public static int zzb(int i, double d) {
        return zzy(i) + 8;
    }

    public static int zzb(int i, float f) {
        return zzy(i) + 4;
    }

    public static int zzb(int i, zzew zzewVar) {
        return (zzy(1) << 1) + zzk(2, i) + zza(3, zzewVar);
    }

    public static int zzb(int i, zzfr zzfrVar) {
        return (zzy(1) << 1) + zzk(2, i) + zzy(3) + zzc(zzfrVar);
    }

    public static int zzb(int i, zzfr zzfrVar, zzge zzgeVar) {
        return zzy(i) + zza(zzfrVar, zzgeVar);
    }

    public static int zzb(int i, String str) {
        return zzy(i) + zzag(str);
    }

    public static int zzb(int i, boolean z) {
        return zzy(i) + 1;
    }

    public static int zzb(zzdd zzddVar) {
        int size = zzddVar.size();
        return zzaa(size) + size;
    }

    public static com.google.android.gms.internal.firebase-perf.zzdu zzb(byte[] bArr) {
        return new zzb(bArr, 0, bArr.length);
    }

    public static int zzc(int i, zzdd zzddVar) {
        int zzy = zzy(i);
        int size = zzddVar.size();
        return zzy + zzaa(size) + size;
    }

    @Deprecated
    public static int zzc(int i, zzfr zzfrVar, zzge zzgeVar) {
        int zzy = zzy(i);
        zzcy zzcyVar = (zzcy) zzfrVar;
        int zzff = zzcyVar.zzff();
        int i2 = zzff;
        if (zzff == -1) {
            i2 = zzgeVar.zzl(zzcyVar);
            zzcyVar.zzp(i2);
        }
        return (zzy << 1) + i2;
    }

    public static int zzc(zzfr zzfrVar) {
        int zzgp = zzfrVar.zzgp();
        return zzaa(zzgp) + zzgp;
    }

    public static int zzc(byte[] bArr) {
        int length = bArr.length;
        return zzaa(length) + length;
    }

    public static int zzd(int i, long j) {
        return zzy(i) + zzao(j);
    }

    public static int zzd(int i, zzdd zzddVar) {
        return (zzy(1) << 1) + zzk(2, i) + zzc(3, zzddVar);
    }

    @Deprecated
    public static int zzd(zzfr zzfrVar) {
        return zzfrVar.zzgp();
    }

    public static int zze(int i, long j) {
        return zzy(i) + zzao(j);
    }

    public static int zze(boolean z) {
        return 1;
    }

    public static int zzf(int i, long j) {
        return zzy(i) + zzao(zzas(j));
    }

    public static int zzg(int i, long j) {
        return zzy(i) + 8;
    }

    public static int zzh(int i, long j) {
        return zzy(i) + 8;
    }

    public static int zzj(int i, int i2) {
        return zzy(i) + zzz(i2);
    }

    public static int zzk(int i, int i2) {
        return zzy(i) + zzaa(i2);
    }

    public static int zzl(int i, int i2) {
        return zzy(i) + zzaa(zzag(i2));
    }

    public static int zzm(int i, int i2) {
        return zzy(i) + 4;
    }

    public static int zzn(int i, int i2) {
        return zzy(i) + 4;
    }

    public static int zzo(int i, int i2) {
        return zzy(i) + zzz(i2);
    }

    public static int zzy(int i) {
        return zzaa(i << 3);
    }

    public static int zzz(int i) {
        if (i >= 0) {
            return zzaa(i);
        }
        return 10;
    }

    public final void zza(double d) {
        zzam(Double.doubleToRawLongBits(d));
    }

    public final void zza(float f) {
        zzx(Float.floatToRawIntBits(f));
    }

    public final void zza(int i, double d) {
        zzc(i, Double.doubleToRawLongBits(d));
    }

    public final void zza(int i, float f) {
        zzi(i, Float.floatToRawIntBits(f));
    }

    public abstract void zza(int i, long j);

    public abstract void zza(int i, zzdd zzddVar);

    public abstract void zza(int i, zzfr zzfrVar);

    public abstract void zza(int i, zzfr zzfrVar, zzge zzgeVar);

    public abstract void zza(int i, String str);

    public abstract void zza(int i, boolean z);

    public abstract void zza(zzdd zzddVar);

    final void zza(String str, zzhj zzhjVar) {
        logger.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzhjVar);
        byte[] bytes = str.getBytes(zzei.UTF_8);
        try {
            zzv(bytes.length);
            zza(bytes, 0, bytes.length);
        } catch (zza e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zza(e2);
        }
    }

    public abstract void zzaf(String str);

    public abstract void zzak(long j);

    public final void zzal(long j) {
        zzak(zzas(j));
    }

    public abstract void zzam(long j);

    public final void zzb(int i, long j) {
        zza(i, zzas(j));
    }

    public abstract void zzb(int i, zzdd zzddVar);

    public abstract void zzb(zzfr zzfrVar);

    public abstract void zzb(byte[] bArr, int i, int i2);

    public abstract void zzc(byte b);

    public abstract void zzc(int i, long j);

    public final void zzd(boolean z) {
        zzc(z ? (byte) 1 : (byte) 0);
    }

    public abstract void zze(int i, int i2);

    public abstract void zzf(int i, int i2);

    public abstract int zzft();

    public final void zzfu() {
        if (zzft() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    public abstract void zzg(int i, int i2);

    public final void zzh(int i, int i2) {
        zzg(i, zzag(i2));
    }

    public abstract void zzi(int i, int i2);

    public abstract void zzu(int i);

    public abstract void zzv(int i);

    public final void zzw(int i) {
        zzv(zzag(i));
    }

    public abstract void zzx(int i);
}

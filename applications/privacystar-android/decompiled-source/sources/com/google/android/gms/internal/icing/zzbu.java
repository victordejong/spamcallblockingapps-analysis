package com.google.android.gms.internal.icing;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbu.class */
public abstract class zzbu extends zzbh {
    private static final Logger logger = Logger.getLogger(zzbu.class.getName());
    private static final boolean zzeg = zzfd.zzcs();
    zzbw zzeh;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbu$zza.class */
    static final class zza extends zzbu {
        private final byte[] buffer;
        private final int limit;
        private final int offset;
        private int position;

        zza(byte[] bArr, int i, int i2) {
            super();
            if (bArr == null) {
                throw new NullPointerException("buffer");
            }
            int i3 = i2 + 0;
            if ((i2 | 0 | (bArr.length - i3)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)));
            }
            this.buffer = bArr;
            this.offset = 0;
            this.position = 0;
            this.limit = i3;
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void write(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.buffer, this.position, i2);
                this.position += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zza(byte b) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i = this.position;
                this.position = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zza(int i, long j) throws IOException {
            zzb(i, 0);
            zzb(j);
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zza(int i, zzbi zzbiVar) throws IOException {
            zzb(i, 2);
            zza(zzbiVar);
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zza(int i, zzdr zzdrVar) throws IOException {
            zzb(1, 3);
            zzd(2, i);
            zzb(3, 2);
            zzb(zzdrVar);
            zzb(1, 4);
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        final void zza(int i, zzdr zzdrVar, zzef zzefVar) throws IOException {
            zzb(i, 2);
            zzbb zzbbVar = (zzbb) zzdrVar;
            int zzm = zzbbVar.zzm();
            int i2 = zzm;
            if (zzm == -1) {
                i2 = zzefVar.zzj(zzbbVar);
                zzbbVar.zze(i2);
            }
            zzm(i2);
            zzefVar.zza(zzdrVar, this.zzeh);
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zza(int i, String str) throws IOException {
            zzb(i, 2);
            zzh(str);
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zza(int i, boolean z) throws IOException {
            zzb(i, 0);
            zza(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zza(zzbi zzbiVar) throws IOException {
            zzm(zzbiVar.size());
            zzbiVar.zza(this);
        }

        @Override // com.google.android.gms.internal.icing.zzbh
        public final void zza(byte[] bArr, int i, int i2) throws IOException {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final int zzab() {
            return this.limit - this.position;
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zzb(int i, int i2) throws IOException {
            zzm((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zzb(int i, zzbi zzbiVar) throws IOException {
            zzb(1, 3);
            zzd(2, i);
            zza(3, zzbiVar);
            zzb(1, 4);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3, types: [long] */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.icing.zzbu
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void zzb(long r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 242
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzbu.zza.zzb(long):void");
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zzb(zzdr zzdrVar) throws IOException {
            zzm(zzdrVar.zzan());
            zzdrVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zzb(byte[] bArr, int i, int i2) throws IOException {
            zzm(i2);
            write(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zzc(int i, int i2) throws IOException {
            zzb(i, 0);
            zzl(i2);
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zzc(int i, long j) throws IOException {
            zzb(i, 1);
            zzd(j);
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zzd(int i, int i2) throws IOException {
            zzb(i, 0);
            zzm(i2);
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zzd(long j) throws IOException {
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
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zzf(int i, int i2) throws IOException {
            zzb(i, 5);
            zzo(i2);
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zzh(String str) throws IOException {
            int i = this.position;
            try {
                int zzr = zzr(str.length() * 3);
                int zzr2 = zzr(str.length());
                if (zzr2 == zzr) {
                    this.position = i + zzr2;
                    int zza = zzff.zza(str, this.buffer, this.position, zzab());
                    this.position = i;
                    zzm((zza - i) - zzr2);
                    this.position = zza;
                    return;
                }
                zzm(zzff.zza(str));
                this.position = zzff.zza(str, this.buffer, this.position, zzab());
            } catch (zzfi e) {
                this.position = i;
                zza(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzb(e2);
            }
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zzl(int i) throws IOException {
            if (i >= 0) {
                zzm(i);
            } else {
                zzb(i);
            }
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zzm(int i) throws IOException {
            int i2 = i;
            if (zzbu.zzeg) {
                i2 = i;
                if (zzab() >= 10) {
                    while ((i & (-128)) != 0) {
                        byte[] bArr = this.buffer;
                        int i3 = this.position;
                        this.position = i3 + 1;
                        zzfd.zza(bArr, i3, (byte) ((i & 127) | 128));
                        i >>>= 7;
                    }
                    byte[] bArr2 = this.buffer;
                    int i4 = this.position;
                    this.position = i4 + 1;
                    zzfd.zza(bArr2, i4, (byte) i);
                    return;
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.buffer;
                    int i5 = this.position;
                    this.position = i5 + 1;
                    bArr3[i5] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
                }
            }
            byte[] bArr4 = this.buffer;
            int i6 = this.position;
            this.position = i6 + 1;
            bArr4[i6] = (byte) i2;
        }

        @Override // com.google.android.gms.internal.icing.zzbu
        public final void zzo(int i) throws IOException {
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
                bArr4[i5] = (byte) (i >> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbu$zzb.class */
    public static final class zzb extends IOException {
        zzb() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        zzb(java.lang.String r5, java.lang.Throwable r6) {
            /*
                r4 = this;
                java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r7 = r0
                r0 = r5
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r5 = r0
                r0 = r5
                int r0 = r0.length()
                if (r0 == 0) goto L_0x001b
                r0 = r7
                r1 = r5
                java.lang.String r0 = r0.concat(r1)
                r5 = r0
                goto L_0x0024
            L_0x001b:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                r2 = r7
                r1.<init>(r2)
                r5 = r0
            L_0x0024:
                r0 = r4
                r1 = r5
                r2 = r6
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzbu.zzb.<init>(java.lang.String, java.lang.Throwable):void");
        }

        zzb(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    private zzbu() {
    }

    public static int zza(int i, zzcz zzczVar) {
        int zzp = zzp(i);
        int zzan = zzczVar.zzan();
        return zzp + zzr(zzan) + zzan;
    }

    public static int zza(zzcz zzczVar) {
        int zzan = zzczVar.zzan();
        return zzr(zzan) + zzan;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(zzdr zzdrVar, zzef zzefVar) {
        zzbb zzbbVar = (zzbb) zzdrVar;
        int zzm = zzbbVar.zzm();
        int i = zzm;
        if (zzm == -1) {
            i = zzefVar.zzj(zzbbVar);
            zzbbVar.zze(i);
        }
        return zzr(i) + i;
    }

    public static int zzb(double d) {
        return 8;
    }

    public static int zzb(float f) {
        return 4;
    }

    public static int zzb(int i, double d) {
        return zzp(i) + 8;
    }

    public static int zzb(int i, float f) {
        return zzp(i) + 4;
    }

    public static int zzb(int i, zzcz zzczVar) {
        return (zzp(1) << 1) + zzh(2, i) + zza(3, zzczVar);
    }

    public static int zzb(int i, zzdr zzdrVar) {
        return (zzp(1) << 1) + zzh(2, i) + zzp(3) + zzc(zzdrVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(int i, zzdr zzdrVar, zzef zzefVar) {
        return zzp(i) + zza(zzdrVar, zzefVar);
    }

    public static int zzb(int i, String str) {
        return zzp(i) + zzi(str);
    }

    public static int zzb(int i, boolean z) {
        return zzp(i) + 1;
    }

    public static int zzb(zzbi zzbiVar) {
        int size = zzbiVar.size();
        return zzr(size) + size;
    }

    public static zzbu zzb(byte[] bArr) {
        return new zza(bArr, 0, bArr.length);
    }

    public static int zzc(int i, zzbi zzbiVar) {
        int zzp = zzp(i);
        int size = zzbiVar.size();
        return zzp + zzr(size) + size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static int zzc(int i, zzdr zzdrVar, zzef zzefVar) {
        int zzp = zzp(i);
        zzbb zzbbVar = (zzbb) zzdrVar;
        int zzm = zzbbVar.zzm();
        int i2 = zzm;
        if (zzm == -1) {
            i2 = zzefVar.zzj(zzbbVar);
            zzbbVar.zze(i2);
        }
        return (zzp << 1) + i2;
    }

    public static int zzc(zzdr zzdrVar) {
        int zzan = zzdrVar.zzan();
        return zzr(zzan) + zzan;
    }

    public static int zzc(byte[] bArr) {
        int length = bArr.length;
        return zzr(length) + length;
    }

    public static int zzd(int i, long j) {
        return zzp(i) + zzf(j);
    }

    public static int zzd(int i, zzbi zzbiVar) {
        return (zzp(1) << 1) + zzh(2, i) + zzc(3, zzbiVar);
    }

    @Deprecated
    public static int zzd(zzdr zzdrVar) {
        return zzdrVar.zzan();
    }

    public static int zze(int i, long j) {
        return zzp(i) + zzf(j);
    }

    public static int zze(long j) {
        return zzf(j);
    }

    public static int zzf(int i, long j) {
        return zzp(i) + zzf(zzj(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zzf(long r5) {
        /*
            r0 = -128(0xffffffffffffff80, double:NaN)
            r1 = r5
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000c
            r0 = 1
            return r0
        L_0x000c:
            r0 = r5
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0015
            r0 = 10
            return r0
        L_0x0015:
            r0 = -34359738368(0xfffffff800000000, double:NaN)
            r1 = r5
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x002a
            r0 = 6
            r7 = r0
            r0 = r5
            r1 = 28
            long r0 = r0 >>> r1
            r5 = r0
            goto L_0x002c
        L_0x002a:
            r0 = 2
            r7 = r0
        L_0x002c:
            r0 = r7
            r8 = r0
            r0 = r5
            r9 = r0
            r0 = -2097152(0xffffffffffe00000, double:NaN)
            r1 = r5
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0045
            r0 = r7
            r1 = 2
            int r0 = r0 + r1
            r8 = r0
            r0 = r5
            r1 = 14
            long r0 = r0 >>> r1
            r9 = r0
        L_0x0045:
            r0 = r8
            r7 = r0
            r0 = r9
            r1 = -16384(0xffffffffffffc000, double:NaN)
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0056
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r7 = r0
        L_0x0056:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzbu.zzf(long):int");
    }

    public static int zzf(boolean z) {
        return 1;
    }

    public static int zzg(int i, int i2) {
        return zzp(i) + zzq(i2);
    }

    public static int zzg(int i, long j) {
        return zzp(i) + 8;
    }

    public static int zzg(long j) {
        return zzf(zzj(j));
    }

    public static int zzh(int i, int i2) {
        return zzp(i) + zzr(i2);
    }

    public static int zzh(int i, long j) {
        return zzp(i) + 8;
    }

    public static int zzh(long j) {
        return 8;
    }

    public static int zzi(int i, int i2) {
        return zzp(i) + zzr(zzw(i2));
    }

    public static int zzi(long j) {
        return 8;
    }

    public static int zzi(String str) {
        int i;
        try {
            i = zzff.zza(str);
        } catch (zzfi e) {
            i = str.getBytes(zzcm.UTF_8).length;
        }
        return zzr(i) + i;
    }

    public static int zzj(int i, int i2) {
        return zzp(i) + 4;
    }

    private static long zzj(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int zzk(int i, int i2) {
        return zzp(i) + 4;
    }

    public static int zzl(int i, int i2) {
        return zzp(i) + zzq(i2);
    }

    public static int zzp(int i) {
        return zzr(i << 3);
    }

    public static int zzq(int i) {
        if (i >= 0) {
            return zzr(i);
        }
        return 10;
    }

    public static int zzr(int i) {
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

    public static int zzs(int i) {
        return zzr(zzw(i));
    }

    public static int zzt(int i) {
        return 4;
    }

    public static int zzu(int i) {
        return 4;
    }

    public static int zzv(int i) {
        return zzq(i);
    }

    private static int zzw(int i) {
        return (i >> 31) ^ (i << 1);
    }

    @Deprecated
    public static int zzx(int i) {
        return zzr(i);
    }

    public abstract void write(byte[] bArr, int i, int i2) throws IOException;

    public abstract void zza(byte b) throws IOException;

    public final void zza(double d) throws IOException {
        zzd(Double.doubleToRawLongBits(d));
    }

    public final void zza(float f) throws IOException {
        zzo(Float.floatToRawIntBits(f));
    }

    public final void zza(int i, double d) throws IOException {
        zzc(i, Double.doubleToRawLongBits(d));
    }

    public final void zza(int i, float f) throws IOException {
        zzf(i, Float.floatToRawIntBits(f));
    }

    public abstract void zza(int i, long j) throws IOException;

    public abstract void zza(int i, zzbi zzbiVar) throws IOException;

    public abstract void zza(int i, zzdr zzdrVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(int i, zzdr zzdrVar, zzef zzefVar) throws IOException;

    public abstract void zza(int i, String str) throws IOException;

    public abstract void zza(int i, boolean z) throws IOException;

    public abstract void zza(zzbi zzbiVar) throws IOException;

    final void zza(String str, zzfi zzfiVar) throws IOException {
        logger.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzfiVar);
        byte[] bytes = str.getBytes(zzcm.UTF_8);
        try {
            zzm(bytes.length);
            zza(bytes, 0, bytes.length);
        } catch (zzb e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzb(e2);
        }
    }

    public abstract int zzab();

    public abstract void zzb(int i, int i2) throws IOException;

    public final void zzb(int i, long j) throws IOException {
        zza(i, zzj(j));
    }

    public abstract void zzb(int i, zzbi zzbiVar) throws IOException;

    public abstract void zzb(long j) throws IOException;

    public abstract void zzb(zzdr zzdrVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzb(byte[] bArr, int i, int i2) throws IOException;

    public abstract void zzc(int i, int i2) throws IOException;

    public abstract void zzc(int i, long j) throws IOException;

    public final void zzc(long j) throws IOException {
        zzb(zzj(j));
    }

    public abstract void zzd(int i, int i2) throws IOException;

    public abstract void zzd(long j) throws IOException;

    public final void zze(int i, int i2) throws IOException {
        zzd(i, zzw(i2));
    }

    public final void zze(boolean z) throws IOException {
        zza(z ? (byte) 1 : (byte) 0);
    }

    public abstract void zzf(int i, int i2) throws IOException;

    public abstract void zzh(String str) throws IOException;

    public abstract void zzl(int i) throws IOException;

    public abstract void zzm(int i) throws IOException;

    public final void zzn(int i) throws IOException {
        zzm(zzw(i));
    }

    public abstract void zzo(int i) throws IOException;
}

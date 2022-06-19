package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzekl.class */
public abstract class zzekl extends zzejo {
    private static final Logger logger = Logger.getLogger(zzekl.class.getName());
    private static final boolean zzinc = zzeoh.zzblc();
    zzekn zzind;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzekl$zza.class */
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzekl.zza.<init>(java.lang.String, java.lang.Throwable):void");
        }

        zza(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzekl$zzb.class */
    public static final class zzb extends zzekl {
        private final byte[] buffer;
        private final int limit;
        private final int offset;
        private int position;

        zzb(byte[] bArr, int i, int i2) {
            super();
            Objects.requireNonNull(bArr, "buffer");
            if ((i2 | 0 | (bArr.length - i2)) >= 0) {
                this.buffer = bArr;
                this.offset = 0;
                this.position = 0;
                this.limit = i2;
                return;
            }
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)));
        }

        private final void write(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.buffer, this.position, i2);
                this.position += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void writeTag(int i, int i2) throws IOException {
            zzgs((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zza(int i, zzejr zzejrVar) throws IOException {
            writeTag(i, 2);
            zzai(zzejrVar);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zza(int i, zzemo zzemoVar) throws IOException {
            writeTag(1, 3);
            zzad(2, i);
            writeTag(3, 2);
            zzg(zzemoVar);
            writeTag(1, 4);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zza(int i, zzemo zzemoVar, zzenj zzenjVar) throws IOException {
            writeTag(i, 2);
            zzejh zzejhVar = (zzejh) zzemoVar;
            int zzbga = zzejhVar.zzbga();
            int i2 = zzbga;
            if (zzbga == -1) {
                i2 = zzenjVar.zzau(zzejhVar);
                zzejhVar.zzfv(i2);
            }
            zzgs(i2);
            zzenjVar.zza(zzemoVar, this.zzind);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzac(int i, int i2) throws IOException {
            writeTag(i, 0);
            zzgr(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzad(int i, int i2) throws IOException {
            writeTag(i, 0);
            zzgs(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzaf(int i, int i2) throws IOException {
            writeTag(i, 5);
            zzgu(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzai(zzejr zzejrVar) throws IOException {
            zzgs(zzejrVar.size());
            zzejrVar.zza(this);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzb(int i, zzejr zzejrVar) throws IOException {
            writeTag(1, 3);
            zzad(2, i);
            zza(3, zzejrVar);
            writeTag(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final int zzbhs() {
            return this.limit - this.position;
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzd(byte b) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i = this.position;
                this.position = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v39, types: [long] */
        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzfh(long j) throws IOException {
            char c = j;
            if (zzekl.zzinc) {
                c = j;
                char c2 = j;
                if (zzbhs() >= 10) {
                    while ((c2 & 65408) != 0) {
                        byte[] bArr = this.buffer;
                        int i = this.position;
                        this.position = i + 1;
                        zzeoh.zza(bArr, i, (byte) ((c2 & 127) | 128));
                        c2 >>>= 7;
                    }
                    byte[] bArr2 = this.buffer;
                    int i2 = this.position;
                    this.position = i2 + 1;
                    zzeoh.zza(bArr2, i2, (byte) c2);
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

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzfj(long j) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i = this.position;
                int i2 = i + 1;
                this.position = i2;
                bArr[i] = (byte) j;
                int i3 = i2 + 1;
                this.position = i3;
                bArr[i2] = (byte) (j >> 8);
                int i4 = i3 + 1;
                this.position = i4;
                bArr[i3] = (byte) (j >> 16);
                int i5 = i4 + 1;
                this.position = i5;
                bArr[i4] = (byte) (j >> 24);
                int i6 = i5 + 1;
                this.position = i6;
                bArr[i5] = (byte) (j >> 32);
                int i7 = i6 + 1;
                this.position = i7;
                bArr[i6] = (byte) (j >> 40);
                int i8 = i7 + 1;
                this.position = i8;
                bArr[i7] = (byte) (j >> 48);
                this.position = i8 + 1;
                bArr[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzg(zzemo zzemoVar) throws IOException {
            zzgs(zzemoVar.zzbik());
            zzemoVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzgr(int i) throws IOException {
            if (i >= 0) {
                zzgs(i);
            } else {
                zzfh(i);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzgs(int i) throws IOException {
            int i2 = i;
            if (zzekl.zzinc) {
                i2 = i;
                if (!zzejk.zzbgc()) {
                    i2 = i;
                    if (zzbhs() >= 5) {
                        if ((i & ByteCompanionObject.MIN_VALUE) == 0) {
                            byte[] bArr = this.buffer;
                            int i3 = this.position;
                            this.position = i3 + 1;
                            zzeoh.zza(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.buffer;
                        int i4 = this.position;
                        this.position = i4 + 1;
                        zzeoh.zza(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & ByteCompanionObject.MIN_VALUE) == 0) {
                            byte[] bArr3 = this.buffer;
                            int i6 = this.position;
                            this.position = i6 + 1;
                            zzeoh.zza(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.buffer;
                        int i7 = this.position;
                        this.position = i7 + 1;
                        zzeoh.zza(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & ByteCompanionObject.MIN_VALUE) == 0) {
                            byte[] bArr5 = this.buffer;
                            int i9 = this.position;
                            this.position = i9 + 1;
                            zzeoh.zza(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.buffer;
                        int i10 = this.position;
                        this.position = i10 + 1;
                        zzeoh.zza(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & ByteCompanionObject.MIN_VALUE) == 0) {
                            byte[] bArr7 = this.buffer;
                            int i12 = this.position;
                            this.position = i12 + 1;
                            zzeoh.zza(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.buffer;
                        int i13 = this.position;
                        this.position = i13 + 1;
                        zzeoh.zza(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.buffer;
                        int i14 = this.position;
                        this.position = i14 + 1;
                        zzeoh.zza(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & ByteCompanionObject.MIN_VALUE) != 0) {
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

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzgu(int i) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i2 = this.position;
                int i3 = i2 + 1;
                this.position = i3;
                bArr[i2] = (byte) i;
                int i4 = i3 + 1;
                this.position = i4;
                bArr[i3] = (byte) (i >> 8);
                int i5 = i4 + 1;
                this.position = i5;
                bArr[i4] = (byte) (i >> 16);
                this.position = i5 + 1;
                bArr[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzh(int i, boolean z) throws IOException {
            writeTag(i, 0);
            zzd(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.ads.zzejo
        public final void zzh(byte[] bArr, int i, int i2) throws IOException {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzhz(String str) throws IOException {
            int i = this.position;
            try {
                int zzgx = zzgx(str.length() * 3);
                int zzgx2 = zzgx(str.length());
                if (zzgx2 != zzgx) {
                    zzgs(zzeok.zzd(str));
                    this.position = zzeok.zza(str, this.buffer, this.position, zzbhs());
                    return;
                }
                int i2 = i + zzgx2;
                this.position = i2;
                int zza = zzeok.zza(str, this.buffer, i2, zzbhs());
                this.position = i;
                zzgs((zza - i) - zzgx2);
                this.position = zza;
            } catch (zzeon e) {
                this.position = i;
                zza(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zza(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzi(int i, long j) throws IOException {
            writeTag(i, 0);
            zzfh(j);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzi(int i, String str) throws IOException {
            writeTag(i, 2);
            zzhz(str);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzk(int i, long j) throws IOException {
            writeTag(i, 1);
            zzfj(j);
        }

        @Override // com.google.android.gms.internal.ads.zzekl
        public final void zzk(byte[] bArr, int i, int i2) throws IOException {
            zzgs(i2);
            write(bArr, 0, i2);
        }
    }

    private zzekl() {
    }

    public static int zza(int i, zzelt zzeltVar) {
        int zzgx = zzgx(i << 3);
        int zzbik = zzeltVar.zzbik();
        return zzgx + zzgx(zzbik) + zzbik;
    }

    public static int zza(zzelt zzeltVar) {
        int zzbik = zzeltVar.zzbik();
        return zzgx(zzbik) + zzbik;
    }

    public static int zza(zzemo zzemoVar, zzenj zzenjVar) {
        zzejh zzejhVar = (zzejh) zzemoVar;
        int zzbga = zzejhVar.zzbga();
        int i = zzbga;
        if (zzbga == -1) {
            i = zzenjVar.zzau(zzejhVar);
            zzejhVar.zzfv(i);
        }
        return zzgx(i) + i;
    }

    public static int zzag(int i, int i2) {
        return zzgx(i << 3) + zzgw(i2);
    }

    public static int zzah(int i, int i2) {
        return zzgx(i << 3) + zzgx(i2);
    }

    public static int zzai(int i, int i2) {
        return zzgx(i << 3) + zzgx(zzhc(i2));
    }

    public static int zzaj(int i, int i2) {
        return zzgx(i << 3) + 4;
    }

    public static int zzaj(zzejr zzejrVar) {
        int size = zzejrVar.size();
        return zzgx(size) + size;
    }

    public static int zzak(int i, int i2) {
        return zzgx(i << 3) + 4;
    }

    public static int zzal(int i, int i2) {
        return zzgx(i << 3) + zzgw(i2);
    }

    public static int zzb(int i, float f) {
        return zzgx(i << 3) + 4;
    }

    public static int zzb(int i, zzelt zzeltVar) {
        return (zzgx(8) << 1) + zzah(2, i) + zza(3, zzeltVar);
    }

    public static int zzb(int i, zzemo zzemoVar) {
        return (zzgx(8) << 1) + zzah(2, i) + zzgx(24) + zzh(zzemoVar);
    }

    public static int zzb(int i, zzemo zzemoVar, zzenj zzenjVar) {
        return zzgx(i << 3) + zza(zzemoVar, zzenjVar);
    }

    public static int zzbs(boolean z) {
        return 1;
    }

    public static int zzc(int i, double d) {
        return zzgx(i << 3) + 8;
    }

    public static int zzc(int i, zzejr zzejrVar) {
        int zzgx = zzgx(i << 3);
        int size = zzejrVar.size();
        return zzgx + zzgx(size) + size;
    }

    @Deprecated
    public static int zzc(int i, zzemo zzemoVar, zzenj zzenjVar) {
        int zzgx = zzgx(i << 3);
        zzejh zzejhVar = (zzejh) zzemoVar;
        int zzbga = zzejhVar.zzbga();
        int i2 = zzbga;
        if (zzbga == -1) {
            i2 = zzenjVar.zzau(zzejhVar);
            zzejhVar.zzfv(i2);
        }
        return (zzgx << 1) + i2;
    }

    public static int zzd(double d) {
        return 8;
    }

    public static int zzd(int i, zzejr zzejrVar) {
        return (zzgx(8) << 1) + zzah(2, i) + zzc(3, zzejrVar);
    }

    public static int zzfk(long j) {
        return zzfl(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    public static int zzfl(long j) {
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

    public static int zzfm(long j) {
        return zzfl(zzfp(j));
    }

    public static int zzfn(long j) {
        return 8;
    }

    public static int zzfo(long j) {
        return 8;
    }

    private static long zzfp(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int zzg(float f) {
        return 4;
    }

    public static int zzgv(int i) {
        return zzgx(i << 3);
    }

    public static int zzgw(int i) {
        if (i >= 0) {
            return zzgx(i);
        }
        return 10;
    }

    public static int zzgx(int i) {
        if ((i & ByteCompanionObject.MIN_VALUE) == 0) {
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

    public static int zzgy(int i) {
        return zzgx(zzhc(i));
    }

    public static int zzgz(int i) {
        return 4;
    }

    public static int zzh(zzemo zzemoVar) {
        int zzbik = zzemoVar.zzbik();
        return zzgx(zzbik) + zzbik;
    }

    public static int zzha(int i) {
        return 4;
    }

    public static int zzhb(int i) {
        return zzgw(i);
    }

    private static int zzhc(int i) {
        return (i >> 31) ^ (i << 1);
    }

    @Deprecated
    public static int zzhd(int i) {
        return zzgx(i);
    }

    public static int zzi(int i, boolean z) {
        return zzgx(i << 3) + 1;
    }

    @Deprecated
    public static int zzi(zzemo zzemoVar) {
        return zzemoVar.zzbik();
    }

    public static int zzia(String str) {
        int i;
        try {
            i = zzeok.zzd(str);
        } catch (zzeon e) {
            i = str.getBytes(zzeld.UTF_8).length;
        }
        return zzgx(i) + i;
    }

    public static int zzj(int i, String str) {
        return zzgx(i << 3) + zzia(str);
    }

    public static int zzl(int i, long j) {
        return zzgx(i << 3) + zzfl(j);
    }

    public static int zzm(int i, long j) {
        return zzgx(i << 3) + zzfl(j);
    }

    public static int zzn(int i, long j) {
        return zzgx(i << 3) + zzfl(zzfp(j));
    }

    public static int zzo(int i, long j) {
        return zzgx(i << 3) + 8;
    }

    public static int zzp(int i, long j) {
        return zzgx(i << 3) + 8;
    }

    public static zzekl zzv(byte[] bArr) {
        return new zzb(bArr, 0, bArr.length);
    }

    public static int zzw(byte[] bArr) {
        int length = bArr.length;
        return zzgx(length) + length;
    }

    public abstract void writeTag(int i, int i2) throws IOException;

    public final void zza(int i, float f) throws IOException {
        zzaf(i, Float.floatToRawIntBits(f));
    }

    public abstract void zza(int i, zzejr zzejrVar) throws IOException;

    public abstract void zza(int i, zzemo zzemoVar) throws IOException;

    public abstract void zza(int i, zzemo zzemoVar, zzenj zzenjVar) throws IOException;

    final void zza(String str, zzeon zzeonVar) throws IOException {
        logger.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzeonVar);
        byte[] bytes = str.getBytes(zzeld.UTF_8);
        try {
            zzgs(bytes.length);
            zzh(bytes, 0, bytes.length);
        } catch (zza e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zza(e2);
        }
    }

    public abstract void zzac(int i, int i2) throws IOException;

    public abstract void zzad(int i, int i2) throws IOException;

    public final void zzae(int i, int i2) throws IOException {
        zzad(i, zzhc(i2));
    }

    public abstract void zzaf(int i, int i2) throws IOException;

    public abstract void zzai(zzejr zzejrVar) throws IOException;

    public final void zzb(int i, double d) throws IOException {
        zzk(i, Double.doubleToRawLongBits(d));
    }

    public abstract void zzb(int i, zzejr zzejrVar) throws IOException;

    public abstract int zzbhs();

    public final void zzbht() {
        if (zzbhs() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    public final void zzbr(boolean z) throws IOException {
        zzd(z ? (byte) 1 : (byte) 0);
    }

    public final void zzc(double d) throws IOException {
        zzfj(Double.doubleToRawLongBits(d));
    }

    public abstract void zzd(byte b) throws IOException;

    public final void zzf(float f) throws IOException {
        zzgu(Float.floatToRawIntBits(f));
    }

    public abstract void zzfh(long j) throws IOException;

    public final void zzfi(long j) throws IOException {
        zzfh(zzfp(j));
    }

    public abstract void zzfj(long j) throws IOException;

    public abstract void zzg(zzemo zzemoVar) throws IOException;

    public abstract void zzgr(int i) throws IOException;

    public abstract void zzgs(int i) throws IOException;

    public final void zzgt(int i) throws IOException {
        zzgs(zzhc(i));
    }

    public abstract void zzgu(int i) throws IOException;

    public abstract void zzh(int i, boolean z) throws IOException;

    public abstract void zzhz(String str) throws IOException;

    public abstract void zzi(int i, long j) throws IOException;

    public abstract void zzi(int i, String str) throws IOException;

    public final void zzj(int i, long j) throws IOException {
        zzi(i, zzfp(j));
    }

    public abstract void zzk(int i, long j) throws IOException;

    public abstract void zzk(byte[] bArr, int i, int i2) throws IOException;
}

package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbn.class */
public abstract class zzbn extends zzba {
    private static final Logger logger = Logger.getLogger(zzbn.class.getName());
    private static final boolean zzfy = zzfd.zzed();
    zzbp zzfz;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbn$zza.class */
    public static class zza extends zzbn {
        private final byte[] buffer;
        private final int limit;
        private final int offset;
        private int position;

        zza(byte[] bArr, int i, int i2) {
            super();
            if (bArr != null) {
                int i3 = i + i2;
                if ((i | i2 | (bArr.length - i3)) < 0) {
                    throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
                }
                this.buffer = bArr;
                this.offset = i;
                this.position = i;
                this.limit = i3;
                return;
            }
            throw new NullPointerException("buffer");
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public void flush() {
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void write(byte[] bArr, int i, int i2) {
            try {
                System.arraycopy(bArr, i, this.buffer, this.position, i2);
                this.position += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(byte b) {
            try {
                byte[] bArr = this.buffer;
                int i = this.position;
                this.position = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(int i, long j) {
            zzb(i, 0);
            zzb(j);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(int i, zzbb zzbbVar) {
            zzb(i, 2);
            zza(zzbbVar);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(int i, zzdo zzdoVar) {
            zzb(i, 2);
            zzb(zzdoVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(int i, zzdo zzdoVar, zzef zzefVar) {
            zzb(i, 2);
            zzas zzasVar = (zzas) zzdoVar;
            int zzs = zzasVar.zzs();
            int i2 = zzs;
            if (zzs == -1) {
                i2 = zzefVar.zzm(zzasVar);
                zzasVar.zzf(i2);
            }
            zzo(i2);
            zzefVar.zza(zzdoVar, this.zzfz);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(int i, String str) {
            zzb(i, 2);
            zzg(str);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(zzbb zzbbVar) {
            zzo(zzbbVar.size());
            zzbbVar.zza(this);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        final void zza(zzdo zzdoVar, zzef zzefVar) {
            zzas zzasVar = (zzas) zzdoVar;
            int zzs = zzasVar.zzs();
            int i = zzs;
            if (zzs == -1) {
                i = zzefVar.zzm(zzasVar);
                zzasVar.zzf(i);
            }
            zzo(i);
            zzefVar.zza(zzdoVar, this.zzfz);
        }

        @Override // com.google.android.gms.internal.clearcut.zzba
        public final void zza(byte[] bArr, int i, int i2) {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final int zzag() {
            return this.limit - this.position;
        }

        public final int zzai() {
            return this.position - this.offset;
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzb(int i, int i2) {
            zzo((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzb(int i, zzbb zzbbVar) {
            zzb(1, 3);
            zzd(2, i);
            zza(3, zzbbVar);
            zzb(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzb(int i, zzdo zzdoVar) {
            zzb(1, 3);
            zzd(2, i);
            zza(3, zzdoVar);
            zzb(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzb(int i, boolean z) {
            zzb(i, 0);
            zza(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v39, types: [long] */
        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzb(long j) {
            char c = j;
            if (zzbn.zzfy) {
                c = j;
                char c2 = j;
                if (zzag() >= 10) {
                    while ((c2 & 65408) != 0) {
                        byte[] bArr = this.buffer;
                        int i = this.position;
                        this.position = i + 1;
                        zzfd.zza(bArr, i, (byte) ((c2 & 127) | 128));
                        c2 >>>= 7;
                    }
                    byte[] bArr2 = this.buffer;
                    int i2 = this.position;
                    this.position = i2 + 1;
                    zzfd.zza(bArr2, i2, (byte) c2);
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
                    throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
                }
            }
            byte[] bArr4 = this.buffer;
            int i4 = this.position;
            this.position = i4 + 1;
            bArr4[i4] = (byte) c;
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzb(zzdo zzdoVar) {
            zzo(zzdoVar.zzas());
            zzdoVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzc(int i, int i2) {
            zzb(i, 0);
            zzn(i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzc(int i, long j) {
            zzb(i, 1);
            zzd(j);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzd(int i, int i2) {
            zzb(i, 0);
            zzo(i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzd(long j) {
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
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzd(byte[] bArr, int i, int i2) {
            zzo(i2);
            write(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzf(int i, int i2) {
            zzb(i, 5);
            zzq(i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzg(String str) {
            int i = this.position;
            try {
                int zzt = zzt(str.length() * 3);
                int zzt2 = zzt(str.length());
                if (zzt2 != zzt) {
                    zzo(zzff.zza(str));
                    this.position = zzff.zza(str, this.buffer, this.position, zzag());
                    return;
                }
                this.position = i + zzt2;
                int zza = zzff.zza(str, this.buffer, this.position, zzag());
                this.position = i;
                zzo((zza - i) - zzt2);
                this.position = zza;
            } catch (zzfi e) {
                this.position = i;
                zza(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzc(e2);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzn(int i) {
            if (i >= 0) {
                zzo(i);
            } else {
                zzb(i);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzo(int i) {
            int i2 = i;
            if (zzbn.zzfy) {
                i2 = i;
                if (zzag() >= 10) {
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
                    throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
                }
            }
            byte[] bArr4 = this.buffer;
            int i6 = this.position;
            this.position = i6 + 1;
            bArr4[i6] = (byte) i2;
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzq(int i) {
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
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbn$zzb.class */
    public static final class zzb extends zza {
        private final ByteBuffer zzga;
        private int zzgb;

        zzb(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.zzga = byteBuffer;
            this.zzgb = byteBuffer.position();
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn.zza, com.google.android.gms.internal.clearcut.zzbn
        public final void flush() {
            this.zzga.position(this.zzgb + zzai());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbn$zzc.class */
    public static final class zzc extends IOException {
        zzc() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        zzc(java.lang.String r5) {
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
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzbn.zzc.<init>(java.lang.String):void");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        zzc(java.lang.String r5, java.lang.Throwable r6) {
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzbn.zzc.<init>(java.lang.String, java.lang.Throwable):void");
        }

        zzc(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbn$zzd.class */
    public static final class zzd extends zzbn {
        private final int zzgb;
        private final ByteBuffer zzgc;
        private final ByteBuffer zzgd;

        zzd(ByteBuffer byteBuffer) {
            super();
            this.zzgc = byteBuffer;
            this.zzgd = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.zzgb = byteBuffer.position();
        }

        private final void zzi(String str) {
            try {
                zzff.zza(str, this.zzgd);
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(e);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void flush() {
            this.zzgc.position(this.zzgd.position());
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void write(byte[] bArr, int i, int i2) {
            try {
                this.zzgd.put(bArr, i, i2);
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(e);
            } catch (BufferOverflowException e2) {
                throw new zzc(e2);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(byte b) {
            try {
                this.zzgd.put(b);
            } catch (BufferOverflowException e) {
                throw new zzc(e);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(int i, long j) {
            zzb(i, 0);
            zzb(j);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(int i, zzbb zzbbVar) {
            zzb(i, 2);
            zza(zzbbVar);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(int i, zzdo zzdoVar) {
            zzb(i, 2);
            zzb(zzdoVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(int i, zzdo zzdoVar, zzef zzefVar) {
            zzb(i, 2);
            zza(zzdoVar, zzefVar);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(int i, String str) {
            zzb(i, 2);
            zzg(str);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(zzbb zzbbVar) {
            zzo(zzbbVar.size());
            zzbbVar.zza(this);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        final void zza(zzdo zzdoVar, zzef zzefVar) {
            zzas zzasVar = (zzas) zzdoVar;
            int zzs = zzasVar.zzs();
            int i = zzs;
            if (zzs == -1) {
                i = zzefVar.zzm(zzasVar);
                zzasVar.zzf(i);
            }
            zzo(i);
            zzefVar.zza(zzdoVar, this.zzfz);
        }

        @Override // com.google.android.gms.internal.clearcut.zzba
        public final void zza(byte[] bArr, int i, int i2) {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final int zzag() {
            return this.zzgd.remaining();
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzb(int i, int i2) {
            zzo((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzb(int i, zzbb zzbbVar) {
            zzb(1, 3);
            zzd(2, i);
            zza(3, zzbbVar);
            zzb(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzb(int i, zzdo zzdoVar) {
            zzb(1, 3);
            zzd(2, i);
            zza(3, zzdoVar);
            zzb(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzb(int i, boolean z) {
            zzb(i, 0);
            zza(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
            r6 = r6;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10, types: [long] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        @Override // com.google.android.gms.internal.clearcut.zzbn
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void zzb(long r6) {
            /*
                r5 = this;
            L0:
                r0 = -128(0xffffffffffffff80, double:NaN)
                r1 = r6
                long r0 = r0 & r1
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L16
                r0 = r5
                java.nio.ByteBuffer r0 = r0.zzgd     // Catch: java.nio.BufferOverflowException -> L30
                r1 = r6
                int r1 = (int) r1     // Catch: java.nio.BufferOverflowException -> L30
                byte r1 = (byte) r1     // Catch: java.nio.BufferOverflowException -> L30
                java.nio.ByteBuffer r0 = r0.put(r1)     // Catch: java.nio.BufferOverflowException -> L30
                return
            L16:
                r0 = r5
                java.nio.ByteBuffer r0 = r0.zzgd     // Catch: java.nio.BufferOverflowException -> L30
                r1 = r6
                int r1 = (int) r1     // Catch: java.nio.BufferOverflowException -> L30
                r2 = 127(0x7f, float:1.78E-43)
                r1 = r1 & r2
                r2 = 128(0x80, float:1.794E-43)
                r1 = r1 | r2
                byte r1 = (byte) r1     // Catch: java.nio.BufferOverflowException -> L30
                java.nio.ByteBuffer r0 = r0.put(r1)     // Catch: java.nio.BufferOverflowException -> L30
                r0 = r6
                r1 = 7
                long r0 = r0 >>> r1
                r6 = r0
                goto L0
            L30:
                r8 = move-exception
                com.google.android.gms.internal.clearcut.zzbn$zzc r0 = new com.google.android.gms.internal.clearcut.zzbn$zzc
                r1 = r0
                r2 = r8
                r1.<init>(r2)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzbn.zzd.zzb(long):void");
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzb(zzdo zzdoVar) {
            zzo(zzdoVar.zzas());
            zzdoVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzc(int i, int i2) {
            zzb(i, 0);
            zzn(i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzc(int i, long j) {
            zzb(i, 1);
            zzd(j);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzd(int i, int i2) {
            zzb(i, 0);
            zzo(i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzd(long j) {
            try {
                this.zzgd.putLong(j);
            } catch (BufferOverflowException e) {
                throw new zzc(e);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzd(byte[] bArr, int i, int i2) {
            zzo(i2);
            write(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzf(int i, int i2) {
            zzb(i, 5);
            zzq(i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzg(String str) {
            int position = this.zzgd.position();
            try {
                int zzt = zzt(str.length() * 3);
                int zzt2 = zzt(str.length());
                if (zzt2 != zzt) {
                    zzo(zzff.zza(str));
                    zzi(str);
                    return;
                }
                int position2 = this.zzgd.position() + zzt2;
                this.zzgd.position(position2);
                zzi(str);
                int position3 = this.zzgd.position();
                this.zzgd.position(position);
                zzo(position3 - position2);
                this.zzgd.position(position3);
            } catch (zzfi e) {
                this.zzgd.position(position);
                zza(str, e);
            } catch (IllegalArgumentException e2) {
                throw new zzc(e2);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzn(int i) {
            if (i >= 0) {
                zzo(i);
            } else {
                zzb(i);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzo(int i) {
            while ((i & (-128)) != 0) {
                try {
                    this.zzgd.put((byte) ((i & 127) | 128));
                    i >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new zzc(e);
                }
            }
            this.zzgd.put((byte) i);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzq(int i) {
            try {
                this.zzgd.putInt(i);
            } catch (BufferOverflowException e) {
                throw new zzc(e);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbn$zze.class */
    public static final class zze extends zzbn {
        private final ByteBuffer zzgc;
        private final ByteBuffer zzgd;
        private final long zzge;
        private final long zzgf;
        private final long zzgg;
        private final long zzgh;
        private long zzgi;

        zze(ByteBuffer byteBuffer) {
            super();
            this.zzgc = byteBuffer;
            this.zzgd = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.zzge = zzfd.zzb(byteBuffer);
            this.zzgf = this.zzge + byteBuffer.position();
            this.zzgg = this.zzge + byteBuffer.limit();
            this.zzgh = this.zzgg - 10;
            this.zzgi = this.zzgf;
        }

        private final void zzk(long j) {
            this.zzgd.position((int) (j - this.zzge));
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void flush() {
            this.zzgc.position((int) (this.zzgi - this.zzge));
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void write(byte[] bArr, int i, int i2) {
            if (bArr != null && i >= 0 && i2 >= 0 && bArr.length - i2 >= i) {
                long j = this.zzgg;
                long j2 = i2;
                long j3 = this.zzgi;
                if (j - j2 >= j3) {
                    zzfd.zza(bArr, i, j3, j2);
                    this.zzgi += j2;
                    return;
                }
            }
            if (bArr == null) {
                throw new NullPointerException("value");
            }
            throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.zzgi), Long.valueOf(this.zzgg), Integer.valueOf(i2)));
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(byte b) {
            long j = this.zzgi;
            if (j < this.zzgg) {
                this.zzgi = 1 + j;
                zzfd.zza(j, b);
                return;
            }
            throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j), Long.valueOf(this.zzgg), 1));
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(int i, long j) {
            zzb(i, 0);
            zzb(j);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(int i, zzbb zzbbVar) {
            zzb(i, 2);
            zza(zzbbVar);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(int i, zzdo zzdoVar) {
            zzb(i, 2);
            zzb(zzdoVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(int i, zzdo zzdoVar, zzef zzefVar) {
            zzb(i, 2);
            zza(zzdoVar, zzefVar);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(int i, String str) {
            zzb(i, 2);
            zzg(str);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zza(zzbb zzbbVar) {
            zzo(zzbbVar.size());
            zzbbVar.zza(this);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        final void zza(zzdo zzdoVar, zzef zzefVar) {
            zzas zzasVar = (zzas) zzdoVar;
            int zzs = zzasVar.zzs();
            int i = zzs;
            if (zzs == -1) {
                i = zzefVar.zzm(zzasVar);
                zzasVar.zzf(i);
            }
            zzo(i);
            zzefVar.zza(zzdoVar, this.zzfz);
        }

        @Override // com.google.android.gms.internal.clearcut.zzba
        public final void zza(byte[] bArr, int i, int i2) {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final int zzag() {
            return (int) (this.zzgg - this.zzgi);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzb(int i, int i2) {
            zzo((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzb(int i, zzbb zzbbVar) {
            zzb(1, 3);
            zzd(2, i);
            zza(3, zzbbVar);
            zzb(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzb(int i, zzdo zzdoVar) {
            zzb(1, 3);
            zzd(2, i);
            zza(3, zzdoVar);
            zzb(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzb(int i, boolean z) {
            zzb(i, 0);
            zza(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v17, types: [long] */
        /* JADX WARN: Type inference failed for: r0v30, types: [long] */
        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzb(long j) {
            char c = j;
            char c2 = j;
            if (this.zzgi <= this.zzgh) {
                while ((c2 & 65408) != 0) {
                    long j2 = this.zzgi;
                    this.zzgi = j2 + 1;
                    zzfd.zza(j2, (byte) ((c2 & 127) | 128));
                    c2 >>>= 7;
                }
                long j3 = this.zzgi;
                this.zzgi = 1 + j3;
                zzfd.zza(j3, (byte) c2);
                return;
            }
            while (true) {
                long j4 = this.zzgi;
                if (j4 >= this.zzgg) {
                    throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j4), Long.valueOf(this.zzgg), 1));
                }
                if ((c & 65408) == 0) {
                    this.zzgi = 1 + j4;
                    zzfd.zza(j4, (byte) c);
                    return;
                }
                this.zzgi = j4 + 1;
                zzfd.zza(j4, (byte) ((c & 127) | 128));
                c >>>= 7;
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzb(zzdo zzdoVar) {
            zzo(zzdoVar.zzas());
            zzdoVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzc(int i, int i2) {
            zzb(i, 0);
            zzn(i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzc(int i, long j) {
            zzb(i, 1);
            zzd(j);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzd(int i, int i2) {
            zzb(i, 0);
            zzo(i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzd(long j) {
            this.zzgd.putLong((int) (this.zzgi - this.zzge), j);
            this.zzgi += 8;
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzd(byte[] bArr, int i, int i2) {
            zzo(i2);
            write(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzf(int i, int i2) {
            zzb(i, 5);
            zzq(i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzg(String str) {
            long j = this.zzgi;
            try {
                int zzt = zzt(str.length() * 3);
                int zzt2 = zzt(str.length());
                if (zzt2 != zzt) {
                    int zza = zzff.zza(str);
                    zzo(zza);
                    zzk(this.zzgi);
                    zzff.zza(str, this.zzgd);
                    this.zzgi += zza;
                    return;
                }
                int i = ((int) (this.zzgi - this.zzge)) + zzt2;
                this.zzgd.position(i);
                zzff.zza(str, this.zzgd);
                int position = this.zzgd.position() - i;
                zzo(position);
                this.zzgi += position;
            } catch (zzfi e) {
                this.zzgi = j;
                zzk(this.zzgi);
                zza(str, e);
            } catch (IllegalArgumentException e2) {
                throw new zzc(e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new zzc(e3);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzn(int i) {
            if (i >= 0) {
                zzo(i);
            } else {
                zzb(i);
            }
        }

        /* JADX WARN: Type inference failed for: r0v19, types: [long] */
        /* JADX WARN: Type inference failed for: r0v5, types: [long] */
        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzo(int i) {
            char c;
            int i2 = i;
            if (this.zzgi <= this.zzgh) {
                while (true) {
                    c = this.zzgi;
                    if ((i & (-128)) == 0) {
                        break;
                    }
                    this.zzgi = c + 1;
                    zzfd.zza(c, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
            } else {
                while (true) {
                    c = this.zzgi;
                    if (c >= this.zzgg) {
                        throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(c), Long.valueOf(this.zzgg), 1));
                    }
                    if ((i2 & (-128)) == 0) {
                        i = i2;
                        break;
                    }
                    this.zzgi = c + 1;
                    zzfd.zza(c, (byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                }
            }
            this.zzgi = 1 + c;
            zzfd.zza(c, (byte) i);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        public final void zzq(int i) {
            this.zzgd.putInt((int) (this.zzgi - this.zzge), i);
            this.zzgi += 4;
        }
    }

    private zzbn() {
    }

    public static int zza(int i, zzcv zzcvVar) {
        int zzr = zzr(i);
        int zzas = zzcvVar.zzas();
        return zzr + zzt(zzas) + zzas;
    }

    public static int zza(zzcv zzcvVar) {
        int zzas = zzcvVar.zzas();
        return zzt(zzas) + zzas;
    }

    public static zzbn zza(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return new zzb(byteBuffer);
        }
        if (!byteBuffer.isDirect() || byteBuffer.isReadOnly()) {
            throw new IllegalArgumentException("ByteBuffer is read-only");
        }
        return zzfd.zzee() ? new zze(byteBuffer) : new zzd(byteBuffer);
    }

    public static int zzb(double d) {
        return 8;
    }

    public static int zzb(float f) {
        return 4;
    }

    public static int zzb(int i, double d) {
        return zzr(i) + 8;
    }

    public static int zzb(int i, float f) {
        return zzr(i) + 4;
    }

    public static int zzb(int i, zzcv zzcvVar) {
        return (zzr(1) << 1) + zzh(2, i) + zza(3, zzcvVar);
    }

    public static int zzb(int i, zzdo zzdoVar, zzef zzefVar) {
        return zzr(i) + zzb(zzdoVar, zzefVar);
    }

    public static int zzb(int i, String str) {
        return zzr(i) + zzh(str);
    }

    public static int zzb(zzbb zzbbVar) {
        int size = zzbbVar.size();
        return zzt(size) + size;
    }

    public static int zzb(zzdo zzdoVar, zzef zzefVar) {
        zzas zzasVar = (zzas) zzdoVar;
        int zzs = zzasVar.zzs();
        int i = zzs;
        if (zzs == -1) {
            i = zzefVar.zzm(zzasVar);
            zzasVar.zzf(i);
        }
        return zzt(i) + i;
    }

    public static int zzb(boolean z) {
        return 1;
    }

    public static int zzc(int i, zzbb zzbbVar) {
        int zzr = zzr(i);
        int size = zzbbVar.size();
        return zzr + zzt(size) + size;
    }

    public static int zzc(int i, zzdo zzdoVar) {
        return zzr(i) + zzc(zzdoVar);
    }

    @Deprecated
    public static int zzc(int i, zzdo zzdoVar, zzef zzefVar) {
        int zzr = zzr(i);
        zzas zzasVar = (zzas) zzdoVar;
        int zzs = zzasVar.zzs();
        int i2 = zzs;
        if (zzs == -1) {
            i2 = zzefVar.zzm(zzasVar);
            zzasVar.zzf(i2);
        }
        return (zzr << 1) + i2;
    }

    public static int zzc(int i, boolean z) {
        return zzr(i) + 1;
    }

    public static int zzc(zzdo zzdoVar) {
        int zzas = zzdoVar.zzas();
        return zzt(zzas) + zzas;
    }

    public static zzbn zzc(byte[] bArr) {
        return new zza(bArr, 0, bArr.length);
    }

    public static int zzd(int i, long j) {
        return zzr(i) + zzf(j);
    }

    public static int zzd(int i, zzbb zzbbVar) {
        return (zzr(1) << 1) + zzh(2, i) + zzc(3, zzbbVar);
    }

    public static int zzd(int i, zzdo zzdoVar) {
        return (zzr(1) << 1) + zzh(2, i) + zzc(3, zzdoVar);
    }

    @Deprecated
    public static int zzd(zzdo zzdoVar) {
        return zzdoVar.zzas();
    }

    public static int zzd(byte[] bArr) {
        int length = bArr.length;
        return zzt(length) + length;
    }

    public static int zze(int i, long j) {
        return zzr(i) + zzf(j);
    }

    public static int zze(long j) {
        return zzf(j);
    }

    public static int zzf(int i, long j) {
        return zzr(i) + zzf(zzj(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    public static int zzf(long j) {
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

    public static int zzg(int i, int i2) {
        return zzr(i) + zzs(i2);
    }

    public static int zzg(int i, long j) {
        return zzr(i) + 8;
    }

    public static int zzg(long j) {
        return zzf(zzj(j));
    }

    public static int zzh(int i, int i2) {
        return zzr(i) + zzt(i2);
    }

    public static int zzh(int i, long j) {
        return zzr(i) + 8;
    }

    public static int zzh(long j) {
        return 8;
    }

    public static int zzh(String str) {
        int i;
        try {
            i = zzff.zza(str);
        } catch (zzfi e) {
            i = str.getBytes(zzci.UTF_8).length;
        }
        return zzt(i) + i;
    }

    public static int zzi(int i, int i2) {
        return zzr(i) + zzt(zzy(i2));
    }

    public static int zzi(long j) {
        return 8;
    }

    public static int zzj(int i, int i2) {
        return zzr(i) + 4;
    }

    private static long zzj(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int zzk(int i, int i2) {
        return zzr(i) + 4;
    }

    public static int zzl(int i, int i2) {
        return zzr(i) + zzs(i2);
    }

    public static int zzr(int i) {
        return zzt(i << 3);
    }

    public static int zzs(int i) {
        if (i >= 0) {
            return zzt(i);
        }
        return 10;
    }

    public static int zzt(int i) {
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

    public static int zzu(int i) {
        return zzt(zzy(i));
    }

    public static int zzv(int i) {
        return 4;
    }

    public static int zzw(int i) {
        return 4;
    }

    public static int zzx(int i) {
        return zzs(i);
    }

    private static int zzy(int i) {
        return (i >> 31) ^ (i << 1);
    }

    @Deprecated
    public static int zzz(int i) {
        return zzt(i);
    }

    public abstract void flush();

    public abstract void write(byte[] bArr, int i, int i2);

    public abstract void zza(byte b);

    public final void zza(double d) {
        zzd(Double.doubleToRawLongBits(d));
    }

    public final void zza(float f) {
        zzq(Float.floatToRawIntBits(f));
    }

    public final void zza(int i, double d) {
        zzc(i, Double.doubleToRawLongBits(d));
    }

    public final void zza(int i, float f) {
        zzf(i, Float.floatToRawIntBits(f));
    }

    public abstract void zza(int i, long j);

    public abstract void zza(int i, zzbb zzbbVar);

    public abstract void zza(int i, zzdo zzdoVar);

    public abstract void zza(int i, zzdo zzdoVar, zzef zzefVar);

    public abstract void zza(int i, String str);

    public abstract void zza(zzbb zzbbVar);

    abstract void zza(zzdo zzdoVar, zzef zzefVar);

    final void zza(String str, zzfi zzfiVar) {
        logger.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzfiVar);
        byte[] bytes = str.getBytes(zzci.UTF_8);
        try {
            zzo(bytes.length);
            zza(bytes, 0, bytes.length);
        } catch (zzc e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzc(e2);
        }
    }

    public final void zza(boolean z) {
        zza(z ? (byte) 1 : (byte) 0);
    }

    public abstract int zzag();

    public abstract void zzb(int i, int i2);

    public final void zzb(int i, long j) {
        zza(i, zzj(j));
    }

    public abstract void zzb(int i, zzbb zzbbVar);

    public abstract void zzb(int i, zzdo zzdoVar);

    public abstract void zzb(int i, boolean z);

    public abstract void zzb(long j);

    public abstract void zzb(zzdo zzdoVar);

    public abstract void zzc(int i, int i2);

    public abstract void zzc(int i, long j);

    public final void zzc(long j) {
        zzb(zzj(j));
    }

    public abstract void zzd(int i, int i2);

    public abstract void zzd(long j);

    public abstract void zzd(byte[] bArr, int i, int i2);

    public final void zze(int i, int i2) {
        zzd(i, zzy(i2));
    }

    public abstract void zzf(int i, int i2);

    public abstract void zzg(String str);

    public abstract void zzn(int i);

    public abstract void zzo(int i);

    public final void zzp(int i) {
        zzo(zzy(i));
    }

    public abstract void zzq(int i);
}

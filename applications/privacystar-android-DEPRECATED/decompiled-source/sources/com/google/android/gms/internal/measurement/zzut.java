package com.google.android.gms.internal.measurement;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzut.class */
public abstract class zzut extends zzuc {
    private static final Logger logger = Logger.getLogger(zzut.class.getName());
    private static final boolean zzbuv = zzyh.zzyi();
    zzuv zzbuw;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzut$zza.class */
    static class zza extends zzut {
        private final byte[] buffer;
        private final int limit;
        private final int offset;
        private int position;

        zza(byte[] bArr, int i, int i2) {
            super();
            if (bArr == null) {
                throw new NullPointerException("buffer");
            }
            int i3 = i + i2;
            if ((i | i2 | (bArr.length - i3)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            this.buffer = bArr;
            this.offset = i;
            this.position = i;
            this.limit = i3;
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public void flush() {
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void write(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.buffer, this.position, i2);
                this.position += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zza(int i, long j) throws IOException {
            zzc(i, 0);
            zzav(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zza(int i, zzud zzudVar) throws IOException {
            zzc(i, 2);
            zza(zzudVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zza(int i, zzwt zzwtVar) throws IOException {
            zzc(i, 2);
            zzb(zzwtVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        final void zza(int i, zzwt zzwtVar, zzxj zzxjVar) throws IOException {
            zzc(i, 2);
            zztw zztwVar = (zztw) zzwtVar;
            int zztu = zztwVar.zztu();
            int i2 = zztu;
            if (zztu == -1) {
                i2 = zzxjVar.zzae(zztwVar);
                zztwVar.zzah(i2);
            }
            zzay(i2);
            zzxjVar.zza(zzwtVar, this.zzbuw);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zza(zzud zzudVar) throws IOException {
            zzay(zzudVar.size());
            zzudVar.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        final void zza(zzwt zzwtVar, zzxj zzxjVar) throws IOException {
            zztw zztwVar = (zztw) zzwtVar;
            int zztu = zztwVar.zztu();
            int i = zztu;
            if (zztu == -1) {
                i = zzxjVar.zzae(zztwVar);
                zztwVar.zzah(i);
            }
            zzay(i);
            zzxjVar.zza(zzwtVar, this.zzbuw);
        }

        @Override // com.google.android.gms.internal.measurement.zzuc
        public final void zza(byte[] bArr, int i, int i2) throws IOException {
            write(bArr, i, i2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3, types: [long] */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.measurement.zzut
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void zzav(long r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 242
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzut.zza.zzav(long):void");
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzax(int i) throws IOException {
            if (i >= 0) {
                zzay(i);
            } else {
                zzav(i);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzax(long j) throws IOException {
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

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzay(int i) throws IOException {
            int i2 = i;
            if (zzut.zzbuv) {
                i2 = i;
                if (zzvg() >= 10) {
                    while ((i & (-128)) != 0) {
                        byte[] bArr = this.buffer;
                        int i3 = this.position;
                        this.position = i3 + 1;
                        zzyh.zza(bArr, i3, (byte) ((i & 127) | 128));
                        i >>>= 7;
                    }
                    byte[] bArr2 = this.buffer;
                    int i4 = this.position;
                    this.position = i4 + 1;
                    zzyh.zza(bArr2, i4, (byte) i);
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

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzb(int i, zzud zzudVar) throws IOException {
            zzc(1, 3);
            zze(2, i);
            zza(3, zzudVar);
            zzc(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzb(int i, zzwt zzwtVar) throws IOException {
            zzc(1, 3);
            zze(2, i);
            zza(3, zzwtVar);
            zzc(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzb(int i, String str) throws IOException {
            zzc(i, 2);
            zzfw(str);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzb(int i, boolean z) throws IOException {
            zzc(i, 0);
            zzc(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzb(zzwt zzwtVar) throws IOException {
            zzay(zzwtVar.zzvu());
            zzwtVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzba(int i) throws IOException {
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

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzc(byte b) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i = this.position;
                this.position = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzc(int i, int i2) throws IOException {
            zzay((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzc(int i, long j) throws IOException {
            zzc(i, 1);
            zzax(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzd(int i, int i2) throws IOException {
            zzc(i, 0);
            zzax(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zze(int i, int i2) throws IOException {
            zzc(i, 0);
            zzay(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zze(byte[] bArr, int i, int i2) throws IOException {
            zzay(i2);
            write(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzfw(String str) throws IOException {
            int i = this.position;
            try {
                int zzbd = zzbd(str.length() * 3);
                int zzbd2 = zzbd(str.length());
                if (zzbd2 == zzbd) {
                    this.position = i + zzbd2;
                    int zza = zzyj.zza(str, this.buffer, this.position, zzvg());
                    this.position = i;
                    zzay((zza - i) - zzbd2);
                    this.position = zza;
                    return;
                }
                zzay(zzyj.zza(str));
                this.position = zzyj.zza(str, this.buffer, this.position, zzvg());
            } catch (zzyn e) {
                this.position = i;
                zza(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzc(e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzg(int i, int i2) throws IOException {
            zzc(i, 5);
            zzba(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final int zzvg() {
            return this.limit - this.position;
        }

        public final int zzvi() {
            return this.position - this.offset;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzut$zzb.class */
    public static final class zzb extends zza {
        private final ByteBuffer zzbux;
        private int zzbuy;

        zzb(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.zzbux = byteBuffer;
            this.zzbuy = byteBuffer.position();
        }

        @Override // com.google.android.gms.internal.measurement.zzut.zza, com.google.android.gms.internal.measurement.zzut
        public final void flush() {
            this.zzbux.position(this.zzbuy + zzvi());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzut$zzc.class */
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
                java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r6 = r0
                r0 = r5
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r5 = r0
                r0 = r5
                int r0 = r0.length()
                if (r0 == 0) goto L_0x001b
                r0 = r6
                r1 = r5
                java.lang.String r0 = r0.concat(r1)
                r5 = r0
                goto L_0x0024
            L_0x001b:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                r2 = r6
                r1.<init>(r2)
                r5 = r0
            L_0x0024:
                r0 = r4
                r1 = r5
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzut.zzc.<init>(java.lang.String):void");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        zzc(java.lang.String r5, java.lang.Throwable r6) {
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzut.zzc.<init>(java.lang.String, java.lang.Throwable):void");
        }

        zzc(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzut$zzd.class */
    public static final class zzd extends zzut {
        private final int zzbuy;
        private final ByteBuffer zzbuz;
        private final ByteBuffer zzbva;

        zzd(ByteBuffer byteBuffer) {
            super();
            this.zzbuz = byteBuffer;
            this.zzbva = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.zzbuy = byteBuffer.position();
        }

        private final void zzfy(String str) throws IOException {
            try {
                zzyj.zza(str, this.zzbva);
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void flush() {
            this.zzbuz.position(this.zzbva.position());
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void write(byte[] bArr, int i, int i2) throws IOException {
            try {
                this.zzbva.put(bArr, i, i2);
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(e);
            } catch (BufferOverflowException e2) {
                throw new zzc(e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zza(int i, long j) throws IOException {
            zzc(i, 0);
            zzav(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zza(int i, zzud zzudVar) throws IOException {
            zzc(i, 2);
            zza(zzudVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zza(int i, zzwt zzwtVar) throws IOException {
            zzc(i, 2);
            zzb(zzwtVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        final void zza(int i, zzwt zzwtVar, zzxj zzxjVar) throws IOException {
            zzc(i, 2);
            zza(zzwtVar, zzxjVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zza(zzud zzudVar) throws IOException {
            zzay(zzudVar.size());
            zzudVar.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        final void zza(zzwt zzwtVar, zzxj zzxjVar) throws IOException {
            zztw zztwVar = (zztw) zzwtVar;
            int zztu = zztwVar.zztu();
            int i = zztu;
            if (zztu == -1) {
                i = zzxjVar.zzae(zztwVar);
                zztwVar.zzah(i);
            }
            zzay(i);
            zzxjVar.zza(zzwtVar, this.zzbuw);
        }

        @Override // com.google.android.gms.internal.measurement.zzuc
        public final void zza(byte[] bArr, int i, int i2) throws IOException {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzav(long j) throws IOException {
            while (((-128) & j) != 0) {
                try {
                    this.zzbva.put((byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new zzc(e);
                }
            }
            this.zzbva.put((byte) j);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzax(int i) throws IOException {
            if (i >= 0) {
                zzay(i);
            } else {
                zzav(i);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzax(long j) throws IOException {
            try {
                this.zzbva.putLong(j);
            } catch (BufferOverflowException e) {
                throw new zzc(e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzay(int i) throws IOException {
            while ((i & (-128)) != 0) {
                try {
                    this.zzbva.put((byte) ((i & 127) | 128));
                    i >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new zzc(e);
                }
            }
            this.zzbva.put((byte) i);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzb(int i, zzud zzudVar) throws IOException {
            zzc(1, 3);
            zze(2, i);
            zza(3, zzudVar);
            zzc(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzb(int i, zzwt zzwtVar) throws IOException {
            zzc(1, 3);
            zze(2, i);
            zza(3, zzwtVar);
            zzc(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzb(int i, String str) throws IOException {
            zzc(i, 2);
            zzfw(str);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzb(int i, boolean z) throws IOException {
            zzc(i, 0);
            zzc(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzb(zzwt zzwtVar) throws IOException {
            zzay(zzwtVar.zzvu());
            zzwtVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzba(int i) throws IOException {
            try {
                this.zzbva.putInt(i);
            } catch (BufferOverflowException e) {
                throw new zzc(e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzc(byte b) throws IOException {
            try {
                this.zzbva.put(b);
            } catch (BufferOverflowException e) {
                throw new zzc(e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzc(int i, int i2) throws IOException {
            zzay((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzc(int i, long j) throws IOException {
            zzc(i, 1);
            zzax(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzd(int i, int i2) throws IOException {
            zzc(i, 0);
            zzax(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zze(int i, int i2) throws IOException {
            zzc(i, 0);
            zzay(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zze(byte[] bArr, int i, int i2) throws IOException {
            zzay(i2);
            write(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzfw(String str) throws IOException {
            int position = this.zzbva.position();
            try {
                int zzbd = zzbd(str.length() * 3);
                int zzbd2 = zzbd(str.length());
                if (zzbd2 == zzbd) {
                    int position2 = this.zzbva.position() + zzbd2;
                    this.zzbva.position(position2);
                    zzfy(str);
                    int position3 = this.zzbva.position();
                    this.zzbva.position(position);
                    zzay(position3 - position2);
                    this.zzbva.position(position3);
                    return;
                }
                zzay(zzyj.zza(str));
                zzfy(str);
            } catch (zzyn e) {
                this.zzbva.position(position);
                zza(str, e);
            } catch (IllegalArgumentException e2) {
                throw new zzc(e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzg(int i, int i2) throws IOException {
            zzc(i, 5);
            zzba(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final int zzvg() {
            return this.zzbva.remaining();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzut$zze.class */
    public static final class zze extends zzut {
        private final ByteBuffer zzbuz;
        private final ByteBuffer zzbva;
        private final long zzbvb;
        private final long zzbvc;
        private final long zzbvd;
        private final long zzbve;
        private long zzbvf;

        zze(ByteBuffer byteBuffer) {
            super();
            this.zzbuz = byteBuffer;
            this.zzbva = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.zzbvb = zzyh.zzb(byteBuffer);
            this.zzbvc = this.zzbvb + byteBuffer.position();
            this.zzbvd = this.zzbvb + byteBuffer.limit();
            this.zzbve = this.zzbvd - 10;
            this.zzbvf = this.zzbvc;
        }

        private final void zzbe(long j) {
            this.zzbva.position((int) (j - this.zzbvb));
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void flush() {
            this.zzbuz.position((int) (this.zzbvf - this.zzbvb));
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void write(byte[] bArr, int i, int i2) throws IOException {
            if (bArr != null && i >= 0 && i2 >= 0 && bArr.length - i2 >= i) {
                long j = i2;
                if (this.zzbvd - j >= this.zzbvf) {
                    zzyh.zza(bArr, i, this.zzbvf, j);
                    this.zzbvf += j;
                    return;
                }
            }
            if (bArr == null) {
                throw new NullPointerException(FirebaseAnalytics.Param.VALUE);
            }
            throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.zzbvf), Long.valueOf(this.zzbvd), Integer.valueOf(i2)));
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zza(int i, long j) throws IOException {
            zzc(i, 0);
            zzav(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zza(int i, zzud zzudVar) throws IOException {
            zzc(i, 2);
            zza(zzudVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zza(int i, zzwt zzwtVar) throws IOException {
            zzc(i, 2);
            zzb(zzwtVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        final void zza(int i, zzwt zzwtVar, zzxj zzxjVar) throws IOException {
            zzc(i, 2);
            zza(zzwtVar, zzxjVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zza(zzud zzudVar) throws IOException {
            zzay(zzudVar.size());
            zzudVar.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        final void zza(zzwt zzwtVar, zzxj zzxjVar) throws IOException {
            zztw zztwVar = (zztw) zzwtVar;
            int zztu = zztwVar.zztu();
            int i = zztu;
            if (zztu == -1) {
                i = zzxjVar.zzae(zztwVar);
                zztwVar.zzah(i);
            }
            zzay(i);
            zzxjVar.zza(zzwtVar, this.zzbuw);
        }

        @Override // com.google.android.gms.internal.measurement.zzuc
        public final void zza(byte[] bArr, int i, int i2) throws IOException {
            write(bArr, i, i2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v0, types: [long] */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.measurement.zzut
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void zzav(long r10) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 198
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzut.zze.zzav(long):void");
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzax(int i) throws IOException {
            if (i >= 0) {
                zzay(i);
            } else {
                zzav(i);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzax(long j) throws IOException {
            this.zzbva.putLong((int) (this.zzbvf - this.zzbvb), j);
            this.zzbvf += 8;
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzay(int i) throws IOException {
            int i2 = i;
            if (this.zzbvf <= this.zzbve) {
                while ((i & (-128)) != 0) {
                    long j = this.zzbvf;
                    this.zzbvf = j + 1;
                    zzyh.zza(j, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
                long j2 = this.zzbvf;
                this.zzbvf = 1 + j2;
                zzyh.zza(j2, (byte) i);
                return;
            }
            while (this.zzbvf < this.zzbvd) {
                if ((i2 & (-128)) == 0) {
                    long j3 = this.zzbvf;
                    this.zzbvf = 1 + j3;
                    zzyh.zza(j3, (byte) i2);
                    return;
                }
                long j4 = this.zzbvf;
                this.zzbvf = j4 + 1;
                zzyh.zza(j4, (byte) ((i2 & 127) | 128));
                i2 >>>= 7;
            }
            throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.zzbvf), Long.valueOf(this.zzbvd), 1));
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzb(int i, zzud zzudVar) throws IOException {
            zzc(1, 3);
            zze(2, i);
            zza(3, zzudVar);
            zzc(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzb(int i, zzwt zzwtVar) throws IOException {
            zzc(1, 3);
            zze(2, i);
            zza(3, zzwtVar);
            zzc(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzb(int i, String str) throws IOException {
            zzc(i, 2);
            zzfw(str);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzb(int i, boolean z) throws IOException {
            zzc(i, 0);
            zzc(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzb(zzwt zzwtVar) throws IOException {
            zzay(zzwtVar.zzvu());
            zzwtVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzba(int i) throws IOException {
            this.zzbva.putInt((int) (this.zzbvf - this.zzbvb), i);
            this.zzbvf += 4;
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzc(byte b) throws IOException {
            if (this.zzbvf >= this.zzbvd) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.zzbvf), Long.valueOf(this.zzbvd), 1));
            }
            long j = this.zzbvf;
            this.zzbvf = 1 + j;
            zzyh.zza(j, b);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzc(int i, int i2) throws IOException {
            zzay((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzc(int i, long j) throws IOException {
            zzc(i, 1);
            zzax(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzd(int i, int i2) throws IOException {
            zzc(i, 0);
            zzax(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zze(int i, int i2) throws IOException {
            zzc(i, 0);
            zzay(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zze(byte[] bArr, int i, int i2) throws IOException {
            zzay(i2);
            write(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzfw(String str) throws IOException {
            long j = this.zzbvf;
            try {
                int zzbd = zzbd(str.length() * 3);
                int zzbd2 = zzbd(str.length());
                if (zzbd2 == zzbd) {
                    int i = ((int) (this.zzbvf - this.zzbvb)) + zzbd2;
                    this.zzbva.position(i);
                    zzyj.zza(str, this.zzbva);
                    int position = this.zzbva.position() - i;
                    zzay(position);
                    this.zzbvf += position;
                    return;
                }
                int zza = zzyj.zza(str);
                zzay(zza);
                zzbe(this.zzbvf);
                zzyj.zza(str, this.zzbva);
                this.zzbvf += zza;
            } catch (zzyn e) {
                this.zzbvf = j;
                zzbe(this.zzbvf);
                zza(str, e);
            } catch (IllegalArgumentException e2) {
                throw new zzc(e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new zzc(e3);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final void zzg(int i, int i2) throws IOException {
            zzc(i, 5);
            zzba(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzut
        public final int zzvg() {
            return (int) (this.zzbvd - this.zzbvf);
        }
    }

    private zzut() {
    }

    public static int zza(int i, zzwa zzwaVar) {
        int zzbb = zzbb(i);
        int zzvu = zzwaVar.zzvu();
        return zzbb + zzbd(zzvu) + zzvu;
    }

    public static int zza(zzwa zzwaVar) {
        int zzvu = zzwaVar.zzvu();
        return zzbd(zzvu) + zzvu;
    }

    public static zzut zza(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return new zzb(byteBuffer);
        }
        if (byteBuffer.isDirect() && !byteBuffer.isReadOnly()) {
            return zzyh.zzyj() ? new zze(byteBuffer) : new zzd(byteBuffer);
        }
        throw new IllegalArgumentException("ByteBuffer is read-only");
    }

    public static int zzay(long j) {
        return zzaz(j);
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
    public static int zzaz(long r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzut.zzaz(long):int");
    }

    public static int zzb(float f) {
        return 4;
    }

    public static int zzb(int i, double d) {
        return zzbb(i) + 8;
    }

    public static int zzb(int i, float f) {
        return zzbb(i) + 4;
    }

    public static int zzb(int i, zzwa zzwaVar) {
        return (zzbb(1) << 1) + zzi(2, i) + zza(3, zzwaVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(int i, zzwt zzwtVar, zzxj zzxjVar) {
        return zzbb(i) + zzb(zzwtVar, zzxjVar);
    }

    public static int zzb(zzud zzudVar) {
        int size = zzudVar.size();
        return zzbd(size) + size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(zzwt zzwtVar, zzxj zzxjVar) {
        zztw zztwVar = (zztw) zzwtVar;
        int zztu = zztwVar.zztu();
        int i = zztu;
        if (zztu == -1) {
            i = zzxjVar.zzae(zztwVar);
            zztwVar.zzah(i);
        }
        return zzbd(i) + i;
    }

    public static int zzba(long j) {
        return zzaz(zzbd(j));
    }

    public static int zzbb(int i) {
        return zzbd(i << 3);
    }

    public static int zzbb(long j) {
        return 8;
    }

    public static int zzbc(int i) {
        if (i >= 0) {
            return zzbd(i);
        }
        return 10;
    }

    public static int zzbc(long j) {
        return 8;
    }

    public static int zzbd(int i) {
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

    private static long zzbd(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int zzbe(int i) {
        return zzbd(zzbi(i));
    }

    public static int zzbf(int i) {
        return 4;
    }

    public static int zzbg(int i) {
        return 4;
    }

    public static int zzbh(int i) {
        return zzbc(i);
    }

    private static int zzbi(int i) {
        return (i >> 31) ^ (i << 1);
    }

    @Deprecated
    public static int zzbj(int i) {
        return zzbd(i);
    }

    public static int zzc(double d) {
        return 8;
    }

    public static int zzc(int i, zzud zzudVar) {
        int zzbb = zzbb(i);
        int size = zzudVar.size();
        return zzbb + zzbd(size) + size;
    }

    public static int zzc(int i, zzwt zzwtVar) {
        return zzbb(i) + zzc(zzwtVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static int zzc(int i, zzwt zzwtVar, zzxj zzxjVar) {
        int zzbb = zzbb(i);
        zztw zztwVar = (zztw) zzwtVar;
        int zztu = zztwVar.zztu();
        int i2 = zztu;
        if (zztu == -1) {
            i2 = zzxjVar.zzae(zztwVar);
            zztwVar.zzah(i2);
        }
        return (zzbb << 1) + i2;
    }

    public static int zzc(int i, String str) {
        return zzbb(i) + zzfx(str);
    }

    public static int zzc(int i, boolean z) {
        return zzbb(i) + 1;
    }

    public static int zzc(zzwt zzwtVar) {
        int zzvu = zzwtVar.zzvu();
        return zzbd(zzvu) + zzvu;
    }

    public static int zzd(int i, long j) {
        return zzbb(i) + zzaz(j);
    }

    public static int zzd(int i, zzud zzudVar) {
        return (zzbb(1) << 1) + zzi(2, i) + zzc(3, zzudVar);
    }

    public static int zzd(int i, zzwt zzwtVar) {
        return (zzbb(1) << 1) + zzi(2, i) + zzc(3, zzwtVar);
    }

    @Deprecated
    public static int zzd(zzwt zzwtVar) {
        return zzwtVar.zzvu();
    }

    public static int zze(int i, long j) {
        return zzbb(i) + zzaz(j);
    }

    public static int zzf(int i, long j) {
        return zzbb(i) + zzaz(zzbd(j));
    }

    public static int zzfx(String str) {
        int i;
        try {
            i = zzyj.zza(str);
        } catch (zzyn e) {
            i = str.getBytes(zzvo.UTF_8).length;
        }
        return zzbd(i) + i;
    }

    public static int zzg(int i, long j) {
        return zzbb(i) + 8;
    }

    public static int zzh(int i, int i2) {
        return zzbb(i) + zzbc(i2);
    }

    public static int zzh(int i, long j) {
        return zzbb(i) + 8;
    }

    public static int zzi(int i, int i2) {
        return zzbb(i) + zzbd(i2);
    }

    public static int zzj(int i, int i2) {
        return zzbb(i) + zzbd(zzbi(i2));
    }

    public static zzut zzj(byte[] bArr) {
        return new zza(bArr, 0, bArr.length);
    }

    public static int zzk(int i, int i2) {
        return zzbb(i) + 4;
    }

    public static int zzk(byte[] bArr) {
        int length = bArr.length;
        return zzbd(length) + length;
    }

    public static int zzl(int i, int i2) {
        return zzbb(i) + 4;
    }

    public static int zzm(int i, int i2) {
        return zzbb(i) + zzbc(i2);
    }

    public static int zzv(boolean z) {
        return 1;
    }

    public abstract void flush() throws IOException;

    public abstract void write(byte[] bArr, int i, int i2) throws IOException;

    public final void zza(float f) throws IOException {
        zzba(Float.floatToRawIntBits(f));
    }

    public final void zza(int i, double d) throws IOException {
        zzc(i, Double.doubleToRawLongBits(d));
    }

    public final void zza(int i, float f) throws IOException {
        zzg(i, Float.floatToRawIntBits(f));
    }

    public abstract void zza(int i, long j) throws IOException;

    public abstract void zza(int i, zzud zzudVar) throws IOException;

    public abstract void zza(int i, zzwt zzwtVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(int i, zzwt zzwtVar, zzxj zzxjVar) throws IOException;

    public abstract void zza(zzud zzudVar) throws IOException;

    abstract void zza(zzwt zzwtVar, zzxj zzxjVar) throws IOException;

    final void zza(String str, zzyn zzynVar) throws IOException {
        logger.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzynVar);
        byte[] bytes = str.getBytes(zzvo.UTF_8);
        try {
            zzay(bytes.length);
            zza(bytes, 0, bytes.length);
        } catch (zzc e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzc(e2);
        }
    }

    public abstract void zzav(long j) throws IOException;

    public final void zzaw(long j) throws IOException {
        zzav(zzbd(j));
    }

    public abstract void zzax(int i) throws IOException;

    public abstract void zzax(long j) throws IOException;

    public abstract void zzay(int i) throws IOException;

    public final void zzaz(int i) throws IOException {
        zzay(zzbi(i));
    }

    public final void zzb(double d) throws IOException {
        zzax(Double.doubleToRawLongBits(d));
    }

    public final void zzb(int i, long j) throws IOException {
        zza(i, zzbd(j));
    }

    public abstract void zzb(int i, zzud zzudVar) throws IOException;

    public abstract void zzb(int i, zzwt zzwtVar) throws IOException;

    public abstract void zzb(int i, String str) throws IOException;

    public abstract void zzb(int i, boolean z) throws IOException;

    public abstract void zzb(zzwt zzwtVar) throws IOException;

    public abstract void zzba(int i) throws IOException;

    public abstract void zzc(byte b) throws IOException;

    public abstract void zzc(int i, int i2) throws IOException;

    public abstract void zzc(int i, long j) throws IOException;

    public abstract void zzd(int i, int i2) throws IOException;

    public abstract void zze(int i, int i2) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zze(byte[] bArr, int i, int i2) throws IOException;

    public final void zzf(int i, int i2) throws IOException {
        zze(i, zzbi(i2));
    }

    public abstract void zzfw(String str) throws IOException;

    public abstract void zzg(int i, int i2) throws IOException;

    public final void zzu(boolean z) throws IOException {
        zzc(z ? (byte) 1 : (byte) 0);
    }

    public abstract int zzvg();
}

package com.google.android.gms.internal.measurement;

import com.google.protobuf.CodedOutputStream;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4;
import p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5;
import p131c.p161d.p170b.p224d.p252g.p258f.C4512i2;
import p131c.p161d.p170b.p224d.p252g.p258f.C4522j5;
import p131c.p161d.p170b.p224d.p252g.p258f.C4547m5;
import p131c.p161d.p170b.p224d.p252g.p258f.C4623y2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhi.class */
public abstract class zzhi extends zzgq {

    /* renamed from: b */
    public static final Logger f29487b = Logger.getLogger(zzhi.class.getName());

    /* renamed from: c */
    public static final boolean f29488c = C4522j5.m25439a();

    /* renamed from: a */
    public C4623y2 f29489a;

    /* renamed from: com.google.android.gms.internal.measurement.zzhi$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhi$a.class */
    public static final class C7276a extends zzhi {

        /* renamed from: d */
        public final byte[] f29490d;

        /* renamed from: e */
        public final int f29491e;

        /* renamed from: f */
        public int f29492f;

        public C7276a(byte[] bArr, int i, int i2) {
            super();
            if (bArr == null) {
                throw new NullPointerException("buffer");
            } else if ((i2 | 0 | (bArr.length - i2)) >= 0) {
                this.f29490d = bArr;
                this.f29492f = 0;
                this.f29491e = i2;
            } else {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)));
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: a */
        public final int mo9701a() {
            return this.f29491e - this.f29492f;
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: a */
        public final void mo9700a(byte b) throws IOException {
            try {
                byte[] bArr = this.f29490d;
                int i = this.f29492f;
                this.f29492f = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f29492f), Integer.valueOf(this.f29491e), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: a */
        public final void mo9699a(int i) throws IOException {
            if (i >= 0) {
                mo9686b(i);
            } else {
                mo9691a(i);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: a */
        public final void mo9698a(int i, int i2) throws IOException {
            mo9686b((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: a */
        public final void mo9697a(int i, long j) throws IOException {
            mo9698a(i, 0);
            mo9691a(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: a */
        public final void mo9696a(int i, zzgp zzgpVar) throws IOException {
            mo9698a(i, 2);
            mo9690a(zzgpVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: a */
        public final void mo9695a(int i, zzjj zzjjVar) throws IOException {
            mo9698a(1, 3);
            mo9682c(2, i);
            mo9698a(3, 2);
            mo9689a(zzjjVar);
            mo9698a(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: a */
        public final void mo9694a(int i, zzjj zzjjVar, AbstractC4560o4 o4Var) throws IOException {
            mo9698a(i, 2);
            zzgg zzggVar = (zzgg) zzjjVar;
            int i2 = zzggVar.mo9664i();
            int i3 = i2;
            if (i2 == -1) {
                i3 = o4Var.mo25346b(zzggVar);
                zzggVar.mo9673a(i3);
            }
            mo9686b(i3);
            o4Var.mo25349a((AbstractC4560o4) zzjjVar, (AbstractC4582r5) this.f29489a);
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: a */
        public final void mo9693a(int i, String str) throws IOException {
            mo9698a(i, 2);
            mo9688a(str);
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: a */
        public final void mo9692a(int i, boolean z) throws IOException {
            mo9698a(i, 0);
            mo9700a(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3, types: [long] */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo9691a(long r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 249
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzhi.C7276a.mo9691a(long):void");
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: a */
        public final void mo9690a(zzgp zzgpVar) throws IOException {
            mo9686b(zzgpVar.zza());
            zzgpVar.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: a */
        public final void mo9689a(zzjj zzjjVar) throws IOException {
            mo9686b(zzjjVar.mo9615c());
            zzjjVar.mo9616a(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: a */
        public final void mo9688a(String str) throws IOException {
            int i = this.f29492f;
            try {
                int g = zzhi.m9718g(str.length() * 3);
                int g2 = zzhi.m9718g(str.length());
                if (g2 == g) {
                    int i2 = i + g2;
                    this.f29492f = i2;
                    int a = C4547m5.m25364a(str, this.f29490d, i2, mo9701a());
                    this.f29492f = i;
                    mo9686b((a - i) - g2);
                    this.f29492f = a;
                    return;
                }
                mo9686b(C4547m5.m25365a(str));
                this.f29492f = C4547m5.m25364a(str, this.f29490d, this.f29492f, mo9701a());
            } catch (zzlf e) {
                this.f29492f = i;
                m9754a(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zza(e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzgq
        /* renamed from: a */
        public final void mo9687a(byte[] bArr, int i, int i2) throws IOException {
            m9679c(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: b */
        public final void mo9686b(int i) throws IOException {
            int i2 = i;
            if (zzhi.f29488c) {
                i2 = i;
                if (!C4512i2.m25452a()) {
                    i2 = i;
                    if (mo9701a() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.f29490d;
                            int i3 = this.f29492f;
                            this.f29492f = i3 + 1;
                            C4522j5.m25427a(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.f29490d;
                        int i4 = this.f29492f;
                        this.f29492f = i4 + 1;
                        C4522j5.m25427a(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.f29490d;
                            int i6 = this.f29492f;
                            this.f29492f = i6 + 1;
                            C4522j5.m25427a(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.f29490d;
                        int i7 = this.f29492f;
                        this.f29492f = i7 + 1;
                        C4522j5.m25427a(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.f29490d;
                            int i9 = this.f29492f;
                            this.f29492f = i9 + 1;
                            C4522j5.m25427a(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.f29490d;
                        int i10 = this.f29492f;
                        this.f29492f = i10 + 1;
                        C4522j5.m25427a(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.f29490d;
                            int i12 = this.f29492f;
                            this.f29492f = i12 + 1;
                            C4522j5.m25427a(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.f29490d;
                        int i13 = this.f29492f;
                        this.f29492f = i13 + 1;
                        C4522j5.m25427a(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.f29490d;
                        int i14 = this.f29492f;
                        this.f29492f = i14 + 1;
                        C4522j5.m25427a(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f29490d;
                    int i15 = this.f29492f;
                    this.f29492f = i15 + 1;
                    bArr10[i15] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f29492f), Integer.valueOf(this.f29491e), 1), e);
                }
            }
            byte[] bArr11 = this.f29490d;
            int i16 = this.f29492f;
            this.f29492f = i16 + 1;
            bArr11[i16] = (byte) i2;
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: b */
        public final void mo9685b(int i, int i2) throws IOException {
            mo9698a(i, 0);
            mo9699a(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: b */
        public final void mo9684b(int i, zzgp zzgpVar) throws IOException {
            mo9698a(1, 3);
            mo9682c(2, i);
            mo9696a(3, zzgpVar);
            mo9698a(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: b */
        public final void mo9683b(byte[] bArr, int i, int i2) throws IOException {
            mo9686b(i2);
            m9679c(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: c */
        public final void mo9682c(int i, int i2) throws IOException {
            mo9698a(i, 0);
            mo9686b(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: c */
        public final void mo9681c(int i, long j) throws IOException {
            mo9698a(i, 1);
            mo9680c(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: c */
        public final void mo9680c(long j) throws IOException {
            try {
                byte[] bArr = this.f29490d;
                int i = this.f29492f;
                int i2 = i + 1;
                this.f29492f = i2;
                bArr[i] = (byte) j;
                byte[] bArr2 = this.f29490d;
                int i3 = i2 + 1;
                this.f29492f = i3;
                bArr2[i2] = (byte) (j >> 8);
                byte[] bArr3 = this.f29490d;
                int i4 = i3 + 1;
                this.f29492f = i4;
                bArr3[i3] = (byte) (j >> 16);
                byte[] bArr4 = this.f29490d;
                int i5 = i4 + 1;
                this.f29492f = i5;
                bArr4[i4] = (byte) (j >> 24);
                byte[] bArr5 = this.f29490d;
                int i6 = i5 + 1;
                this.f29492f = i6;
                bArr5[i5] = (byte) (j >> 32);
                byte[] bArr6 = this.f29490d;
                int i7 = i6 + 1;
                this.f29492f = i7;
                bArr6[i6] = (byte) (j >> 40);
                byte[] bArr7 = this.f29490d;
                int i8 = i7 + 1;
                this.f29492f = i8;
                bArr7[i7] = (byte) (j >> 48);
                byte[] bArr8 = this.f29490d;
                this.f29492f = i8 + 1;
                bArr8[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f29492f), Integer.valueOf(this.f29491e), 1), e);
            }
        }

        /* renamed from: c */
        public final void m9679c(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.f29490d, this.f29492f, i2);
                this.f29492f += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f29492f), Integer.valueOf(this.f29491e), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: d */
        public final void mo9678d(int i) throws IOException {
            try {
                byte[] bArr = this.f29490d;
                int i2 = this.f29492f;
                int i3 = i2 + 1;
                this.f29492f = i3;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.f29490d;
                int i4 = i3 + 1;
                this.f29492f = i4;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.f29490d;
                int i5 = i4 + 1;
                this.f29492f = i5;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.f29490d;
                this.f29492f = i5 + 1;
                bArr4[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f29492f), Integer.valueOf(this.f29491e), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzhi
        /* renamed from: e */
        public final void mo9677e(int i, int i2) throws IOException {
            mo9698a(i, 5);
            mo9678d(i2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhi$zza.class */
    public static final class zza extends IOException {
        public zza() {
            super(CodedOutputStream.OutOfSpaceException.MESSAGE);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public zza(java.lang.String r5, java.lang.Throwable r6) {
            /*
                r4 = this;
                r0 = r5
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r5 = r0
                r0 = r5
                int r0 = r0.length()
                if (r0 == 0) goto L_0x0016
                java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                r1 = r5
                java.lang.String r0 = r0.concat(r1)
                r5 = r0
                goto L_0x0020
            L_0x0016:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                java.lang.String r2 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                r1.<init>(r2)
                r5 = r0
            L_0x0020:
                r0 = r4
                r1 = r5
                r2 = r6
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzhi.zza.<init>(java.lang.String, java.lang.Throwable):void");
        }

        public zza(Throwable th) {
            super(CodedOutputStream.OutOfSpaceException.MESSAGE, th);
        }
    }

    public zzhi() {
    }

    /* renamed from: a */
    public static int m9757a(int i, zzio zzioVar) {
        int g = m9718g(i << 3);
        int a = zzioVar.m9629a();
        return g + m9718g(a) + a;
    }

    /* renamed from: a */
    public static int m9756a(zzio zzioVar) {
        int a = zzioVar.m9629a();
        return m9718g(a) + a;
    }

    /* renamed from: a */
    public static int m9755a(zzjj zzjjVar, AbstractC4560o4 o4Var) {
        zzgg zzggVar = (zzgg) zzjjVar;
        int i = zzggVar.mo9664i();
        int i2 = i;
        if (i == -1) {
            i2 = o4Var.mo25346b(zzggVar);
            zzggVar.mo9673a(i2);
        }
        return m9718g(i2) + i2;
    }

    /* renamed from: a */
    public static zzhi m9752a(byte[] bArr) {
        return new C7276a(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static int m9750b(double d) {
        return 8;
    }

    /* renamed from: b */
    public static int m9749b(float f) {
        return 4;
    }

    /* renamed from: b */
    public static int m9748b(int i, double d) {
        return m9718g(i << 3) + 8;
    }

    /* renamed from: b */
    public static int m9747b(int i, float f) {
        return m9718g(i << 3) + 4;
    }

    /* renamed from: b */
    public static int m9745b(int i, zzio zzioVar) {
        return (m9718g(8) << 1) + m9717g(2, i) + m9757a(3, zzioVar);
    }

    /* renamed from: b */
    public static int m9744b(int i, zzjj zzjjVar) {
        return (m9718g(8) << 1) + m9717g(2, i) + m9718g(24) + m9738b(zzjjVar);
    }

    /* renamed from: b */
    public static int m9743b(int i, zzjj zzjjVar, AbstractC4560o4 o4Var) {
        return m9718g(i << 3) + m9755a(zzjjVar, o4Var);
    }

    /* renamed from: b */
    public static int m9742b(int i, String str) {
        return m9718g(i << 3) + m9737b(str);
    }

    /* renamed from: b */
    public static int m9741b(int i, boolean z) {
        return m9718g(i << 3) + 1;
    }

    /* renamed from: b */
    public static int m9739b(zzgp zzgpVar) {
        int zza2 = zzgpVar.zza();
        return m9718g(zza2) + zza2;
    }

    /* renamed from: b */
    public static int m9738b(zzjj zzjjVar) {
        int c = zzjjVar.mo9615c();
        return m9718g(c) + c;
    }

    /* renamed from: b */
    public static int m9737b(String str) {
        int i;
        try {
            i = C4547m5.m25365a(str);
        } catch (zzlf e) {
            i = str.getBytes(zzia.f29511a).length;
        }
        return m9718g(i) + i;
    }

    /* renamed from: b */
    public static int m9736b(boolean z) {
        return 1;
    }

    /* renamed from: b */
    public static int m9735b(byte[] bArr) {
        int length = bArr.length;
        return m9718g(length) + length;
    }

    /* renamed from: c */
    public static int m9732c(int i, zzgp zzgpVar) {
        int g = m9718g(i << 3);
        int zza2 = zzgpVar.zza();
        return g + m9718g(zza2) + zza2;
    }

    @Deprecated
    /* renamed from: c */
    public static int m9731c(int i, zzjj zzjjVar, AbstractC4560o4 o4Var) {
        int g = m9718g(i << 3);
        zzgg zzggVar = (zzgg) zzjjVar;
        int i2 = zzggVar.mo9664i();
        int i3 = i2;
        if (i2 == -1) {
            i3 = o4Var.mo25346b(zzggVar);
            zzggVar.mo9673a(i3);
        }
        return (g << 1) + i3;
    }

    @Deprecated
    /* renamed from: c */
    public static int m9730c(zzjj zzjjVar) {
        return zzjjVar.mo9615c();
    }

    /* renamed from: d */
    public static int m9728d(int i, long j) {
        return m9718g(i << 3) + m9723e(j);
    }

    /* renamed from: d */
    public static int m9727d(int i, zzgp zzgpVar) {
        return (m9718g(8) << 1) + m9717g(2, i) + m9732c(3, zzgpVar);
    }

    /* renamed from: d */
    public static int m9726d(long j) {
        return m9723e(j);
    }

    /* renamed from: e */
    public static int m9725e(int i) {
        return m9718g(i << 3);
    }

    /* renamed from: e */
    public static int m9724e(int i, long j) {
        return m9718g(i << 3) + m9723e(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m9723e(long r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzhi.m9723e(long):int");
    }

    /* renamed from: f */
    public static int m9722f(int i) {
        if (i >= 0) {
            return m9718g(i);
        }
        return 10;
    }

    /* renamed from: f */
    public static int m9721f(int i, int i2) {
        return m9718g(i << 3) + m9722f(i2);
    }

    /* renamed from: f */
    public static int m9720f(int i, long j) {
        return m9718g(i << 3) + m9723e(m9708i(j));
    }

    /* renamed from: f */
    public static int m9719f(long j) {
        return m9723e(m9708i(j));
    }

    /* renamed from: g */
    public static int m9718g(int i) {
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

    /* renamed from: g */
    public static int m9717g(int i, int i2) {
        return m9718g(i << 3) + m9718g(i2);
    }

    /* renamed from: g */
    public static int m9716g(int i, long j) {
        return m9718g(i << 3) + 8;
    }

    /* renamed from: g */
    public static int m9715g(long j) {
        return 8;
    }

    /* renamed from: h */
    public static int m9714h(int i) {
        return m9718g(m9702m(i));
    }

    /* renamed from: h */
    public static int m9713h(int i, int i2) {
        return m9718g(i << 3) + m9718g(m9702m(i2));
    }

    /* renamed from: h */
    public static int m9712h(int i, long j) {
        return m9718g(i << 3) + 8;
    }

    /* renamed from: h */
    public static int m9711h(long j) {
        return 8;
    }

    /* renamed from: i */
    public static int m9710i(int i) {
        return 4;
    }

    /* renamed from: i */
    public static int m9709i(int i, int i2) {
        return m9718g(i << 3) + 4;
    }

    /* renamed from: i */
    public static long m9708i(long j) {
        return (j >> 63) ^ (j << 1);
    }

    /* renamed from: j */
    public static int m9707j(int i) {
        return 4;
    }

    /* renamed from: j */
    public static int m9706j(int i, int i2) {
        return m9718g(i << 3) + 4;
    }

    /* renamed from: k */
    public static int m9705k(int i) {
        return m9722f(i);
    }

    /* renamed from: k */
    public static int m9704k(int i, int i2) {
        return m9718g(i << 3) + m9722f(i2);
    }

    @Deprecated
    /* renamed from: l */
    public static int m9703l(int i) {
        return m9718g(i);
    }

    /* renamed from: m */
    public static int m9702m(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* renamed from: a */
    public abstract int mo9701a();

    /* renamed from: a */
    public abstract void mo9700a(byte b) throws IOException;

    /* renamed from: a */
    public final void m9761a(double d) throws IOException {
        mo9680c(Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m9760a(float f) throws IOException {
        mo9678d(Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo9699a(int i) throws IOException;

    /* renamed from: a */
    public final void m9759a(int i, double d) throws IOException {
        mo9681c(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m9758a(int i, float f) throws IOException {
        mo9677e(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo9698a(int i, int i2) throws IOException;

    /* renamed from: a */
    public abstract void mo9697a(int i, long j) throws IOException;

    /* renamed from: a */
    public abstract void mo9696a(int i, zzgp zzgpVar) throws IOException;

    /* renamed from: a */
    public abstract void mo9695a(int i, zzjj zzjjVar) throws IOException;

    /* renamed from: a */
    public abstract void mo9694a(int i, zzjj zzjjVar, AbstractC4560o4 o4Var) throws IOException;

    /* renamed from: a */
    public abstract void mo9693a(int i, String str) throws IOException;

    /* renamed from: a */
    public abstract void mo9692a(int i, boolean z) throws IOException;

    /* renamed from: a */
    public abstract void mo9691a(long j) throws IOException;

    /* renamed from: a */
    public abstract void mo9690a(zzgp zzgpVar) throws IOException;

    /* renamed from: a */
    public abstract void mo9689a(zzjj zzjjVar) throws IOException;

    /* renamed from: a */
    public abstract void mo9688a(String str) throws IOException;

    /* renamed from: a */
    public final void m9754a(String str, zzlf zzlfVar) throws IOException {
        f29487b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzlfVar);
        byte[] bytes = str.getBytes(zzia.f29511a);
        try {
            mo9686b(bytes.length);
            mo9687a(bytes, 0, bytes.length);
        } catch (zza e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zza(e2);
        }
    }

    /* renamed from: a */
    public final void m9753a(boolean z) throws IOException {
        mo9700a(z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: b */
    public final void m9751b() {
        if (mo9701a() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* renamed from: b */
    public abstract void mo9686b(int i) throws IOException;

    /* renamed from: b */
    public abstract void mo9685b(int i, int i2) throws IOException;

    /* renamed from: b */
    public final void m9746b(int i, long j) throws IOException {
        mo9697a(i, m9708i(j));
    }

    /* renamed from: b */
    public abstract void mo9684b(int i, zzgp zzgpVar) throws IOException;

    /* renamed from: b */
    public final void m9740b(long j) throws IOException {
        mo9691a(m9708i(j));
    }

    /* renamed from: b */
    public abstract void mo9683b(byte[] bArr, int i, int i2) throws IOException;

    /* renamed from: c */
    public final void m9733c(int i) throws IOException {
        mo9686b(m9702m(i));
    }

    /* renamed from: c */
    public abstract void mo9682c(int i, int i2) throws IOException;

    /* renamed from: c */
    public abstract void mo9681c(int i, long j) throws IOException;

    /* renamed from: c */
    public abstract void mo9680c(long j) throws IOException;

    /* renamed from: d */
    public abstract void mo9678d(int i) throws IOException;

    /* renamed from: d */
    public final void m9729d(int i, int i2) throws IOException {
        mo9682c(i, m9702m(i2));
    }

    /* renamed from: e */
    public abstract void mo9677e(int i, int i2) throws IOException;
}

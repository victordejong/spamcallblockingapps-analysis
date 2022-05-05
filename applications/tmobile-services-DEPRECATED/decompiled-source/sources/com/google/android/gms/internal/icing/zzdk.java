package com.google.android.gms.internal.icing;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdk.class */
public abstract class zzdk extends zzcu {

    /* renamed from: b */
    private static final Logger f7972b = Logger.getLogger(zzdk.class.getName());

    /* renamed from: c */
    private static final boolean f7973c = zzgs.m13563q();

    /* renamed from: a */
    zzdm f7974a;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdk$zza.class */
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzdk.zza.<init>(java.lang.String, java.lang.Throwable):void");
        }

        zza(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdk$zzb.class */
    static final class zzb extends zzdk {

        /* renamed from: d */
        private final byte[] f7975d;

        /* renamed from: e */
        private final int f7976e;

        /* renamed from: f */
        private int f7977f;

        zzb(byte[] bArr, int i, int i2) {
            super();
            if (bArr != null) {
                int i3 = i2 + 0;
                if ((i2 | 0 | (bArr.length - i3)) >= 0) {
                    this.f7975d = bArr;
                    this.f7977f = 0;
                    this.f7976e = i3;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)));
            }
            throw new NullPointerException("buffer");
        }

        /* renamed from: G0 */
        private final void m13894G0(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.f7975d, this.f7977f, i2);
                this.f7977f += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f7977f), Integer.valueOf(this.f7976e), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: F */
        public final void mo13895F(int i, int i2) throws IOException {
            mo13873t0((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: H */
        public final void mo13893H(int i, zzct zzctVar) throws IOException {
            mo13895F(1, 3);
            mo13886W(2, i);
            mo13881j(3, zzctVar);
            mo13895F(1, 4);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3, types: [long] */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: I */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo13892I(long r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzdk.zzb.mo13892I(long):void");
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: J */
        public final void mo13891J(zzfh zzfhVar) throws IOException {
            mo13873t0(zzfhVar.mo13753s());
            zzfhVar.mo13751u(this);
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: K */
        public final void mo13890K(byte[] bArr, int i, int i2) throws IOException {
            mo13873t0(i2);
            m13894G0(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: P */
        public final void mo13889P(byte b) throws IOException {
            try {
                byte[] bArr = this.f7975d;
                int i = this.f7977f;
                this.f7977f = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f7977f), Integer.valueOf(this.f7976e), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: Q */
        public final void mo13888Q(int i, int i2) throws IOException {
            mo13895F(i, 0);
            mo13874s0(i2);
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: R */
        public final void mo13887R(int i, long j) throws IOException {
            mo13895F(i, 1);
            mo13885X(j);
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: W */
        public final void mo13886W(int i, int i2) throws IOException {
            mo13895F(i, 0);
            mo13873t0(i2);
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: X */
        public final void mo13885X(long j) throws IOException {
            try {
                byte[] bArr = this.f7975d;
                int i = this.f7977f;
                int i2 = i + 1;
                this.f7977f = i2;
                bArr[i] = (byte) j;
                byte[] bArr2 = this.f7975d;
                int i3 = i2 + 1;
                this.f7977f = i3;
                bArr2[i2] = (byte) (j >> 8);
                byte[] bArr3 = this.f7975d;
                int i4 = i3 + 1;
                this.f7977f = i4;
                bArr3[i3] = (byte) (j >> 16);
                byte[] bArr4 = this.f7975d;
                int i5 = i4 + 1;
                this.f7977f = i5;
                bArr4[i4] = (byte) (j >> 24);
                byte[] bArr5 = this.f7975d;
                int i6 = i5 + 1;
                this.f7977f = i6;
                bArr5[i5] = (byte) (j >> 32);
                byte[] bArr6 = this.f7975d;
                int i7 = i6 + 1;
                this.f7977f = i7;
                bArr6[i6] = (byte) (j >> 40);
                byte[] bArr7 = this.f7975d;
                int i8 = i7 + 1;
                this.f7977f = i8;
                bArr7[i7] = (byte) (j >> 48);
                byte[] bArr8 = this.f7975d;
                this.f7977f = i8 + 1;
                bArr8[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f7977f), Integer.valueOf(this.f7976e), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.icing.zzcu
        /* renamed from: a */
        public final void mo13884a(byte[] bArr, int i, int i2) throws IOException {
            m13894G0(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: f0 */
        public final void mo13883f0(int i, int i2) throws IOException {
            mo13895F(i, 5);
            mo13871x0(i2);
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: i */
        public final void mo13882i(int i, long j) throws IOException {
            mo13895F(i, 0);
            mo13892I(j);
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: j */
        public final void mo13881j(int i, zzct zzctVar) throws IOException {
            mo13895F(i, 2);
            mo13876o(zzctVar);
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: k */
        public final void mo13880k(int i, zzfh zzfhVar) throws IOException {
            mo13895F(1, 3);
            mo13886W(2, i);
            mo13895F(3, 2);
            mo13891J(zzfhVar);
            mo13895F(1, 4);
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: l */
        final void mo13879l(int i, zzfh zzfhVar, zzfu zzfuVar) throws IOException {
            mo13895F(i, 2);
            zzcm zzcmVar = (zzcm) zzfhVar;
            int c = zzcmVar.mo13836c();
            int i2 = c;
            if (c == -1) {
                i2 = zzfuVar.mo13705c(zzcmVar);
                zzcmVar.mo13835d(i2);
            }
            mo13873t0(i2);
            zzfuVar.mo13701g(zzfhVar, this.f7974a);
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: m */
        public final void mo13878m(int i, String str) throws IOException {
            mo13895F(i, 2);
            mo13872v0(str);
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: n */
        public final void mo13877n(int i, boolean z) throws IOException {
            mo13895F(i, 0);
            mo13889P(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: o */
        public final void mo13876o(zzct zzctVar) throws IOException {
            mo13873t0(zzctVar.size());
            zzctVar.mo13964g(this);
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: r */
        public final int mo13875r() {
            return this.f7976e - this.f7977f;
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: s0 */
        public final void mo13874s0(int i) throws IOException {
            if (i >= 0) {
                mo13873t0(i);
            } else {
                mo13892I(i);
            }
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: t0 */
        public final void mo13873t0(int i) throws IOException {
            int i2 = i;
            if (zzdk.f7973c) {
                i2 = i;
                if (!zzcs.m13982a()) {
                    i2 = i;
                    if (mo13875r() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.f7975d;
                            int i3 = this.f7977f;
                            this.f7977f = i3 + 1;
                            zzgs.m13571i(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.f7975d;
                        int i4 = this.f7977f;
                        this.f7977f = i4 + 1;
                        zzgs.m13571i(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.f7975d;
                            int i6 = this.f7977f;
                            this.f7977f = i6 + 1;
                            zzgs.m13571i(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.f7975d;
                        int i7 = this.f7977f;
                        this.f7977f = i7 + 1;
                        zzgs.m13571i(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.f7975d;
                            int i9 = this.f7977f;
                            this.f7977f = i9 + 1;
                            zzgs.m13571i(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.f7975d;
                        int i10 = this.f7977f;
                        this.f7977f = i10 + 1;
                        zzgs.m13571i(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.f7975d;
                            int i12 = this.f7977f;
                            this.f7977f = i12 + 1;
                            zzgs.m13571i(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.f7975d;
                        int i13 = this.f7977f;
                        this.f7977f = i13 + 1;
                        zzgs.m13571i(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.f7975d;
                        int i14 = this.f7977f;
                        this.f7977f = i14 + 1;
                        zzgs.m13571i(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f7975d;
                    int i15 = this.f7977f;
                    this.f7977f = i15 + 1;
                    bArr10[i15] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f7977f), Integer.valueOf(this.f7976e), 1), e);
                }
            }
            byte[] bArr11 = this.f7975d;
            int i16 = this.f7977f;
            this.f7977f = i16 + 1;
            bArr11[i16] = (byte) i2;
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: v0 */
        public final void mo13872v0(String str) throws IOException {
            int i = this.f7977f;
            try {
                int A0 = zzdk.m13954A0(str.length() * 3);
                int A02 = zzdk.m13954A0(str.length());
                if (A02 == A0) {
                    int i2 = i + A02;
                    this.f7977f = i2;
                    int b = zzgv.m13540b(str, this.f7975d, i2, mo13875r());
                    this.f7977f = i;
                    mo13873t0((b - i) - A02);
                    this.f7977f = b;
                    return;
                }
                mo13873t0(zzgv.m13541a(str));
                this.f7977f = zzgv.m13540b(str, this.f7975d, this.f7977f, mo13875r());
            } catch (zzgz e) {
                this.f7977f = i;
                m13912p(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zza(e2);
            }
        }

        @Override // com.google.android.gms.internal.icing.zzdk
        /* renamed from: x0 */
        public final void mo13871x0(int i) throws IOException {
            try {
                byte[] bArr = this.f7975d;
                int i2 = this.f7977f;
                int i3 = i2 + 1;
                this.f7977f = i3;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.f7975d;
                int i4 = i3 + 1;
                this.f7977f = i4;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.f7975d;
                int i5 = i4 + 1;
                this.f7977f = i5;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.f7975d;
                this.f7977f = i5 + 1;
                bArr4[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f7977f), Integer.valueOf(this.f7976e), 1), e);
            }
        }
    }

    private zzdk() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public static int m13955A(int i, zzfh zzfhVar, zzfu zzfuVar) {
        return m13898y0(i) + m13928d(zzfhVar, zzfuVar);
    }

    /* renamed from: A0 */
    public static int m13954A0(int i) {
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

    /* renamed from: B */
    public static int m13953B(int i, String str) {
        return m13898y0(i) + m13901w0(str);
    }

    /* renamed from: B0 */
    public static int m13952B0(int i) {
        return m13954A0(m13945F0(i));
    }

    /* renamed from: C */
    public static int m13951C(int i, boolean z) {
        return m13898y0(i) + 1;
    }

    /* renamed from: C0 */
    public static int m13950C0(int i) {
        return 4;
    }

    /* renamed from: D */
    public static int m13949D(zzct zzctVar) {
        int size = zzctVar.size();
        return m13954A0(size) + size;
    }

    /* renamed from: D0 */
    public static int m13948D0(int i) {
        return 4;
    }

    /* renamed from: E */
    public static zzdk m13947E(byte[] bArr) {
        return new zzb(bArr, 0, bArr.length);
    }

    /* renamed from: E0 */
    public static int m13946E0(int i) {
        return m13896z0(i);
    }

    /* renamed from: F0 */
    private static int m13945F0(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* renamed from: L */
    public static int m13943L(int i, zzct zzctVar) {
        int y0 = m13898y0(i);
        int size = zzctVar.size();
        return y0 + m13954A0(size) + size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    /* renamed from: M */
    public static int m13942M(int i, zzfh zzfhVar, zzfu zzfuVar) {
        int y0 = m13898y0(i);
        zzcm zzcmVar = (zzcm) zzfhVar;
        int c = zzcmVar.mo13836c();
        int i2 = c;
        if (c == -1) {
            i2 = zzfuVar.mo13705c(zzcmVar);
            zzcmVar.mo13835d(i2);
        }
        return (y0 << 1) + i2;
    }

    /* renamed from: N */
    public static int m13941N(zzfh zzfhVar) {
        int s = zzfhVar.mo13753s();
        return m13954A0(s) + s;
    }

    /* renamed from: O */
    public static int m13940O(byte[] bArr) {
        int length = bArr.length;
        return m13954A0(length) + length;
    }

    /* renamed from: T */
    public static int m13938T(int i, long j) {
        return m13898y0(i) + m13927d0(j);
    }

    /* renamed from: U */
    public static int m13937U(int i, zzct zzctVar) {
        return (m13898y0(1) << 1) + m13918j0(2, i) + m13943L(3, zzctVar);
    }

    @Deprecated
    /* renamed from: V */
    public static int m13936V(zzfh zzfhVar) {
        return zzfhVar.mo13753s();
    }

    /* renamed from: Y */
    public static int m13935Y(int i, long j) {
        return m13898y0(i) + m13927d0(j);
    }

    /* renamed from: Z */
    public static int m13934Z(long j) {
        return m13927d0(j);
    }

    /* renamed from: b */
    public static int m13932b(int i, zzem zzemVar) {
        int y0 = m13898y0(i);
        int b = zzemVar.m13789b();
        return y0 + m13954A0(b) + b;
    }

    /* renamed from: c */
    public static int m13930c(zzem zzemVar) {
        int b = zzemVar.m13789b();
        return m13954A0(b) + b;
    }

    /* renamed from: c0 */
    public static int m13929c0(int i, long j) {
        return m13898y0(i) + m13927d0(m13911p0(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static int m13928d(zzfh zzfhVar, zzfu zzfuVar) {
        zzcm zzcmVar = (zzcm) zzfhVar;
        int c = zzcmVar.mo13836c();
        int i = c;
        if (c == -1) {
            i = zzfuVar.mo13705c(zzcmVar);
            zzcmVar.mo13835d(i);
        }
        return m13954A0(i) + i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: d0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m13927d0(long r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzdk.m13927d0(long):int");
    }

    /* renamed from: e0 */
    public static int m13925e0(boolean z) {
        return 1;
    }

    /* renamed from: g0 */
    public static int m13922g0(int i, int i2) {
        return m13898y0(i) + m13896z0(i2);
    }

    /* renamed from: h0 */
    public static int m13920h0(int i, long j) {
        return m13898y0(i) + 8;
    }

    /* renamed from: i0 */
    public static int m13919i0(long j) {
        return m13927d0(m13911p0(j));
    }

    /* renamed from: j0 */
    public static int m13918j0(int i, int i2) {
        return m13898y0(i) + m13954A0(i2);
    }

    /* renamed from: k0 */
    public static int m13917k0(int i, long j) {
        return m13898y0(i) + 8;
    }

    /* renamed from: l0 */
    public static int m13916l0(long j) {
        return 8;
    }

    /* renamed from: m0 */
    public static int m13915m0(int i, int i2) {
        return m13898y0(i) + m13954A0(m13945F0(i2));
    }

    /* renamed from: n0 */
    public static int m13914n0(long j) {
        return 8;
    }

    /* renamed from: o0 */
    public static int m13913o0(int i, int i2) {
        return m13898y0(i) + 4;
    }

    /* renamed from: p0 */
    private static long m13911p0(long j) {
        return (j >> 63) ^ (j << 1);
    }

    @Deprecated
    /* renamed from: q */
    public static int m13910q(int i) {
        return m13954A0(i);
    }

    /* renamed from: q0 */
    public static int m13909q0(int i, int i2) {
        return m13898y0(i) + 4;
    }

    /* renamed from: r0 */
    public static int m13908r0(int i, int i2) {
        return m13898y0(i) + m13896z0(i2);
    }

    /* renamed from: u */
    public static int m13905u(double d) {
        return 8;
    }

    /* renamed from: v */
    public static int m13903v(float f) {
        return 4;
    }

    /* renamed from: w */
    public static int m13902w(int i, double d) {
        return m13898y0(i) + 8;
    }

    /* renamed from: w0 */
    public static int m13901w0(String str) {
        int i;
        try {
            i = zzgv.m13541a(str);
        } catch (zzgz e) {
            i = str.getBytes(zzeb.f8013a).length;
        }
        return m13954A0(i) + i;
    }

    /* renamed from: x */
    public static int m13900x(int i, float f) {
        return m13898y0(i) + 4;
    }

    /* renamed from: y */
    public static int m13899y(int i, zzem zzemVar) {
        return (m13898y0(1) << 1) + m13918j0(2, i) + m13932b(3, zzemVar);
    }

    /* renamed from: y0 */
    public static int m13898y0(int i) {
        return m13954A0(i << 3);
    }

    /* renamed from: z */
    public static int m13897z(int i, zzfh zzfhVar) {
        return (m13898y0(1) << 1) + m13918j0(2, i) + m13898y0(3) + m13941N(zzfhVar);
    }

    /* renamed from: z0 */
    public static int m13896z0(int i) {
        if (i >= 0) {
            return m13954A0(i);
        }
        return 10;
    }

    /* renamed from: F */
    public abstract void mo13895F(int i, int i2) throws IOException;

    /* renamed from: G */
    public final void m13944G(int i, long j) throws IOException {
        mo13882i(i, m13911p0(j));
    }

    /* renamed from: H */
    public abstract void mo13893H(int i, zzct zzctVar) throws IOException;

    /* renamed from: I */
    public abstract void mo13892I(long j) throws IOException;

    /* renamed from: J */
    public abstract void mo13891J(zzfh zzfhVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: K */
    public abstract void mo13890K(byte[] bArr, int i, int i2) throws IOException;

    /* renamed from: P */
    public abstract void mo13889P(byte b) throws IOException;

    /* renamed from: Q */
    public abstract void mo13888Q(int i, int i2) throws IOException;

    /* renamed from: R */
    public abstract void mo13887R(int i, long j) throws IOException;

    /* renamed from: S */
    public final void m13939S(long j) throws IOException {
        mo13892I(m13911p0(j));
    }

    /* renamed from: W */
    public abstract void mo13886W(int i, int i2) throws IOException;

    /* renamed from: X */
    public abstract void mo13885X(long j) throws IOException;

    /* renamed from: a0 */
    public final void m13933a0(int i, int i2) throws IOException {
        mo13886W(i, m13945F0(i2));
    }

    /* renamed from: b0 */
    public final void m13931b0(boolean z) throws IOException {
        mo13889P(z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: e */
    public final void m13926e(double d) throws IOException {
        mo13885X(Double.doubleToRawLongBits(d));
    }

    /* renamed from: f */
    public final void m13924f(float f) throws IOException {
        mo13871x0(Float.floatToRawIntBits(f));
    }

    /* renamed from: f0 */
    public abstract void mo13883f0(int i, int i2) throws IOException;

    /* renamed from: g */
    public final void m13923g(int i, double d) throws IOException {
        mo13887R(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: h */
    public final void m13921h(int i, float f) throws IOException {
        mo13883f0(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: i */
    public abstract void mo13882i(int i, long j) throws IOException;

    /* renamed from: j */
    public abstract void mo13881j(int i, zzct zzctVar) throws IOException;

    /* renamed from: k */
    public abstract void mo13880k(int i, zzfh zzfhVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public abstract void mo13879l(int i, zzfh zzfhVar, zzfu zzfuVar) throws IOException;

    /* renamed from: m */
    public abstract void mo13878m(int i, String str) throws IOException;

    /* renamed from: n */
    public abstract void mo13877n(int i, boolean z) throws IOException;

    /* renamed from: o */
    public abstract void mo13876o(zzct zzctVar) throws IOException;

    /* renamed from: p */
    final void m13912p(String str, zzgz zzgzVar) throws IOException {
        f7972b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzgzVar);
        byte[] bytes = str.getBytes(zzeb.f8013a);
        try {
            mo13873t0(bytes.length);
            mo13884a(bytes, 0, bytes.length);
        } catch (zza e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zza(e2);
        }
    }

    /* renamed from: r */
    public abstract int mo13875r();

    /* renamed from: s */
    public final void m13907s() {
        if (mo13875r() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* renamed from: s0 */
    public abstract void mo13874s0(int i) throws IOException;

    /* renamed from: t0 */
    public abstract void mo13873t0(int i) throws IOException;

    /* renamed from: u0 */
    public final void m13904u0(int i) throws IOException {
        mo13873t0(m13945F0(i));
    }

    /* renamed from: v0 */
    public abstract void mo13872v0(String str) throws IOException;

    /* renamed from: x0 */
    public abstract void mo13871x0(int i) throws IOException;
}

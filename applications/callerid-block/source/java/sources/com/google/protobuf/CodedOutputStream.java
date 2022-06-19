package com.google.protobuf;

import com.google.protobuf.Utf8;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/CodedOutputStream.class */
public abstract class CodedOutputStream extends AbstractC2610h {

    /* renamed from: c */
    private static final Logger f10882c = Logger.getLogger(CodedOutputStream.class.getName());

    /* renamed from: d */
    private static final boolean f10883d = C2630k1.m2501G();

    /* renamed from: a */
    C2627k f10884a;

    /* renamed from: b */
    private boolean f10885b;

    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/CodedOutputStream$OutOfSpaceException.class */
    public static class OutOfSpaceException extends IOException {
        private static final long serialVersionUID = -6947486886997889499L;

        OutOfSpaceException() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        OutOfSpaceException(String str) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str);
        }

        OutOfSpaceException(String str, Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str, th);
        }

        OutOfSpaceException(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    /* renamed from: com.google.protobuf.CodedOutputStream$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/CodedOutputStream$b.class */
    public static class C2548b extends CodedOutputStream {

        /* renamed from: e */
        private final byte[] f10886e;

        /* renamed from: f */
        private final int f10887f;

        /* renamed from: g */
        private int f10888g;

        C2548b(byte[] bArr, int i, int i2) {
            super();
            if (bArr != null) {
                int i3 = i + i2;
                if ((i | i2 | (bArr.length - i3)) < 0) {
                    throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
                }
                this.f10886e = bArr;
                this.f10888g = i;
                this.f10887f = i3;
                return;
            }
            throw new NullPointerException("buffer");
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: C0 */
        public final void mo3074C0(int i, int i2) {
            mo3066U0(i, 0);
            mo3073D0(i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: D0 */
        public final void mo3073D0(int i) {
            if (i >= 0) {
                mo3064W0(i);
            } else {
                mo3062Y0(i);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: G0 */
        public final void mo3072G0(int i, AbstractC2639m0 abstractC2639m0, AbstractC2572a1 abstractC2572a1) {
            mo3066U0(i, 2);
            mo3064W0(((AbstractC2569a) abstractC2639m0).m2919s(abstractC2572a1));
            abstractC2572a1.mo2336b(abstractC2639m0, this.f10884a);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: H0 */
        public final void mo3071H0(AbstractC2639m0 abstractC2639m0) {
            mo3064W0(abstractC2639m0.mo2426c());
            abstractC2639m0.mo2424g(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: I0 */
        public final void mo3070I0(int i, AbstractC2639m0 abstractC2639m0) {
            mo3066U0(1, 3);
            mo3065V0(2, i);
            m3059b1(3, abstractC2639m0);
            mo3066U0(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: J0 */
        public final void mo3069J0(int i, ByteString byteString) {
            mo3066U0(1, 3);
            mo3065V0(2, i);
            mo3054m0(3, byteString);
            mo3066U0(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: S0 */
        public final void mo3068S0(int i, String str) {
            mo3066U0(i, 2);
            mo3067T0(str);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: T0 */
        public final void mo3067T0(String str) {
            int m2977i;
            int i = this.f10888g;
            try {
                int m3117X = CodedOutputStream.m3117X(str.length() * 3);
                int m3117X2 = CodedOutputStream.m3117X(str.length());
                if (m3117X2 == m3117X) {
                    int i2 = i + m3117X2;
                    this.f10888g = i2;
                    m2977i = Utf8.m2977i(str, this.f10886e, i2, mo3058g0());
                    this.f10888g = i;
                    mo3064W0((m2977i - i) - m3117X2);
                } else {
                    mo3064W0(Utf8.m2976j(str));
                    m2977i = Utf8.m2977i(str, this.f10886e, this.f10888g, mo3058g0());
                }
                this.f10888g = m2977i;
            } catch (Utf8.UnpairedSurrogateException e) {
                this.f10888g = i;
                m3111c0(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new OutOfSpaceException(e2);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: U0 */
        public final void mo3066U0(int i, int i2) {
            mo3064W0(WireFormat.m2922c(i, i2));
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: V0 */
        public final void mo3065V0(int i, int i2) {
            mo3066U0(i, 0);
            mo3064W0(i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: W0 */
        public final void mo3064W0(int i) {
            int i2 = i;
            if (CodedOutputStream.f10883d) {
                i2 = i;
                if (!C2579d.m2834c()) {
                    i2 = i;
                    if (mo3058g0() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.f10886e;
                            int i3 = this.f10888g;
                            this.f10888g = i3 + 1;
                            C2630k1.m2495M(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.f10886e;
                        int i4 = this.f10888g;
                        this.f10888g = i4 + 1;
                        C2630k1.m2495M(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.f10886e;
                            int i6 = this.f10888g;
                            this.f10888g = i6 + 1;
                            C2630k1.m2495M(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.f10886e;
                        int i7 = this.f10888g;
                        this.f10888g = i7 + 1;
                        C2630k1.m2495M(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.f10886e;
                            int i9 = this.f10888g;
                            this.f10888g = i9 + 1;
                            C2630k1.m2495M(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.f10886e;
                        int i10 = this.f10888g;
                        this.f10888g = i10 + 1;
                        C2630k1.m2495M(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.f10886e;
                            int i12 = this.f10888g;
                            this.f10888g = i12 + 1;
                            C2630k1.m2495M(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.f10886e;
                        int i13 = this.f10888g;
                        this.f10888g = i13 + 1;
                        C2630k1.m2495M(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.f10886e;
                        int i14 = this.f10888g;
                        this.f10888g = i14 + 1;
                        C2630k1.m2495M(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f10886e;
                    int i15 = this.f10888g;
                    this.f10888g = i15 + 1;
                    bArr10[i15] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f10888g), Integer.valueOf(this.f10887f), 1), e);
                }
            }
            byte[] bArr11 = this.f10886e;
            int i16 = this.f10888g;
            this.f10888g = i16 + 1;
            bArr11[i16] = (byte) i2;
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: X0 */
        public final void mo3063X0(int i, long j) {
            mo3066U0(i, 0);
            mo3062Y0(j);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v40, types: [long] */
        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: Y0 */
        public final void mo3062Y0(long j) {
            char c = j;
            if (CodedOutputStream.f10883d) {
                c = j;
                char c2 = j;
                if (mo3058g0() >= 10) {
                    while ((c2 & 65408) != 0) {
                        byte[] bArr = this.f10886e;
                        int i = this.f10888g;
                        this.f10888g = i + 1;
                        C2630k1.m2495M(bArr, i, (byte) ((c2 & 127) | 128));
                        c2 >>>= 7;
                    }
                    byte[] bArr2 = this.f10886e;
                    int i2 = this.f10888g;
                    this.f10888g = i2 + 1;
                    C2630k1.m2495M(bArr2, i2, (byte) c2);
                    return;
                }
            }
            while ((c & 65408) != 0) {
                try {
                    byte[] bArr3 = this.f10886e;
                    int i3 = this.f10888g;
                    this.f10888g = i3 + 1;
                    bArr3[i3] = (byte) ((c & 127) | 128);
                    c >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f10888g), Integer.valueOf(this.f10887f), 1), e);
                }
            }
            byte[] bArr4 = this.f10886e;
            int i4 = this.f10888g;
            this.f10888g = i4 + 1;
            bArr4[i4] = (byte) c;
        }

        /* renamed from: Z0 */
        public final void m3061Z0(ByteBuffer byteBuffer) {
            int remaining = byteBuffer.remaining();
            try {
                byteBuffer.get(this.f10886e, this.f10888g, remaining);
                this.f10888g += remaining;
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f10888g), Integer.valueOf(this.f10887f), Integer.valueOf(remaining)), e);
            }
        }

        @Override // com.google.protobuf.AbstractC2610h
        /* renamed from: a */
        public final void mo2722a(ByteBuffer byteBuffer) {
            m3061Z0(byteBuffer);
        }

        /* renamed from: a1 */
        public final void m3060a1(byte[] bArr, int i, int i2) {
            try {
                System.arraycopy(bArr, i, this.f10886e, this.f10888g, i2);
                this.f10888g += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f10888g), Integer.valueOf(this.f10887f), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.protobuf.AbstractC2610h
        /* renamed from: b */
        public final void mo2721b(byte[] bArr, int i, int i2) {
            m3060a1(bArr, i, i2);
        }

        /* renamed from: b1 */
        public final void m3059b1(int i, AbstractC2639m0 abstractC2639m0) {
            mo3066U0(i, 2);
            mo3071H0(abstractC2639m0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: g0 */
        public final int mo3058g0() {
            return this.f10887f - this.f10888g;
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: h0 */
        public final void mo3057h0(byte b) {
            try {
                byte[] bArr = this.f10886e;
                int i = this.f10888g;
                this.f10888g = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f10888g), Integer.valueOf(this.f10887f), 1), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: i0 */
        public final void mo3056i0(int i, boolean z) {
            mo3066U0(i, 0);
            mo3057h0(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: l0 */
        public final void mo3055l0(byte[] bArr, int i, int i2) {
            mo3064W0(i2);
            m3060a1(bArr, i, i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: m0 */
        public final void mo3054m0(int i, ByteString byteString) {
            mo3066U0(i, 2);
            mo3053n0(byteString);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: n0 */
        public final void mo3053n0(ByteString byteString) {
            mo3064W0(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: s0 */
        public final void mo3052s0(int i, int i2) {
            mo3066U0(i, 5);
            mo3051t0(i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: t0 */
        public final void mo3051t0(int i) {
            try {
                byte[] bArr = this.f10886e;
                int i2 = this.f10888g;
                int i3 = i2 + 1;
                this.f10888g = i3;
                bArr[i2] = (byte) (i & 255);
                int i4 = i3 + 1;
                this.f10888g = i4;
                bArr[i3] = (byte) ((i >> 8) & 255);
                int i5 = i4 + 1;
                this.f10888g = i5;
                bArr[i4] = (byte) ((i >> 16) & 255);
                this.f10888g = i5 + 1;
                bArr[i5] = (byte) ((i >> 24) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f10888g), Integer.valueOf(this.f10887f), 1), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: u0 */
        public final void mo3050u0(int i, long j) {
            mo3066U0(i, 1);
            mo3049v0(j);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: v0 */
        public final void mo3049v0(long j) {
            try {
                byte[] bArr = this.f10886e;
                int i = this.f10888g;
                int i2 = i + 1;
                this.f10888g = i2;
                bArr[i] = (byte) (((int) j) & 255);
                int i3 = i2 + 1;
                this.f10888g = i3;
                bArr[i2] = (byte) (((int) (j >> 8)) & 255);
                int i4 = i3 + 1;
                this.f10888g = i4;
                bArr[i3] = (byte) (((int) (j >> 16)) & 255);
                int i5 = i4 + 1;
                this.f10888g = i5;
                bArr[i4] = (byte) (((int) (j >> 24)) & 255);
                int i6 = i5 + 1;
                this.f10888g = i6;
                bArr[i5] = (byte) (((int) (j >> 32)) & 255);
                int i7 = i6 + 1;
                this.f10888g = i7;
                bArr[i6] = (byte) (((int) (j >> 40)) & 255);
                int i8 = i7 + 1;
                this.f10888g = i8;
                bArr[i7] = (byte) (((int) (j >> 48)) & 255);
                this.f10888g = i8 + 1;
                bArr[i8] = (byte) (((int) (j >> 56)) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f10888g), Integer.valueOf(this.f10887f), 1), e);
            }
        }
    }

    private CodedOutputStream() {
    }

    /* renamed from: A */
    public static int m3152A(int i, C2571a0 c2571a0) {
        return (m3119V(1) * 2) + m3118W(2, i) + m3150B(3, c2571a0);
    }

    /* renamed from: B */
    public static int m3150B(int i, C2571a0 c2571a0) {
        return m3119V(i) + m3148C(c2571a0);
    }

    /* renamed from: C */
    public static int m3148C(C2571a0 c2571a0) {
        return m3147D(c2571a0.m2908b());
    }

    /* renamed from: D */
    public static int m3147D(int i) {
        return m3117X(i) + i;
    }

    /* renamed from: E */
    public static int m3146E(int i, AbstractC2639m0 abstractC2639m0) {
        return (m3119V(1) * 2) + m3118W(2, i) + m3144F(3, abstractC2639m0);
    }

    /* renamed from: F */
    public static int m3144F(int i, AbstractC2639m0 abstractC2639m0) {
        return m3119V(i) + m3141H(abstractC2639m0);
    }

    /* renamed from: G */
    public static int m3142G(int i, AbstractC2639m0 abstractC2639m0, AbstractC2572a1 abstractC2572a1) {
        return m3119V(i) + m3140I(abstractC2639m0, abstractC2572a1);
    }

    /* renamed from: H */
    public static int m3141H(AbstractC2639m0 abstractC2639m0) {
        return m3147D(abstractC2639m0.mo2426c());
    }

    /* renamed from: I */
    public static int m3140I(AbstractC2639m0 abstractC2639m0, AbstractC2572a1 abstractC2572a1) {
        return m3147D(((AbstractC2569a) abstractC2639m0).m2919s(abstractC2572a1));
    }

    /* renamed from: J */
    public static int m3139J(int i, ByteString byteString) {
        return (m3119V(1) * 2) + m3118W(2, i) + m3103h(3, byteString);
    }

    @Deprecated
    /* renamed from: K */
    public static int m3138K(int i) {
        return m3117X(i);
    }

    /* renamed from: L */
    public static int m3136L(int i, int i2) {
        return m3119V(i) + m3134M(i2);
    }

    /* renamed from: M */
    public static int m3134M(int i) {
        return 4;
    }

    /* renamed from: N */
    public static int m3132N(int i, long j) {
        return m3119V(i) + m3130O(j);
    }

    /* renamed from: O */
    public static int m3130O(long j) {
        return 8;
    }

    /* renamed from: P */
    public static int m3128P(int i, int i2) {
        return m3119V(i) + m3126Q(i2);
    }

    /* renamed from: Q */
    public static int m3126Q(int i) {
        return m3117X(m3114a0(i));
    }

    /* renamed from: R */
    public static int m3124R(int i, long j) {
        return m3119V(i) + m3122S(j);
    }

    /* renamed from: S */
    public static int m3122S(long j) {
        return m3115Z(m3113b0(j));
    }

    /* renamed from: T */
    public static int m3121T(int i, String str) {
        return m3119V(i) + m3120U(str);
    }

    /* renamed from: U */
    public static int m3120U(String str) {
        int i;
        try {
            i = Utf8.m2976j(str);
        } catch (Utf8.UnpairedSurrogateException e) {
            i = str.getBytes(C2665x.f11225a).length;
        }
        return m3147D(i);
    }

    /* renamed from: V */
    public static int m3119V(int i) {
        return m3117X(WireFormat.m2922c(i, 0));
    }

    /* renamed from: W */
    public static int m3118W(int i, int i2) {
        return m3119V(i) + m3117X(i2);
    }

    /* renamed from: X */
    public static int m3117X(int i) {
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

    /* renamed from: Y */
    public static int m3116Y(int i, long j) {
        return m3119V(i) + m3115Z(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* renamed from: Z */
    public static int m3115Z(long j) {
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

    /* renamed from: a0 */
    public static int m3114a0(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* renamed from: b0 */
    public static long m3113b0(long j) {
        return (j >> 63) ^ (j << 1);
    }

    /* renamed from: e */
    public static int m3108e(int i, boolean z) {
        return m3119V(i) + m3106f(z);
    }

    /* renamed from: e0 */
    public static CodedOutputStream m3107e0(byte[] bArr) {
        return m3105f0(bArr, 0, bArr.length);
    }

    /* renamed from: f */
    public static int m3106f(boolean z) {
        return 1;
    }

    /* renamed from: f0 */
    public static CodedOutputStream m3105f0(byte[] bArr, int i, int i2) {
        return new C2548b(bArr, i, i2);
    }

    /* renamed from: g */
    public static int m3104g(byte[] bArr) {
        return m3147D(bArr.length);
    }

    /* renamed from: h */
    public static int m3103h(int i, ByteString byteString) {
        return m3119V(i) + m3102i(byteString);
    }

    /* renamed from: i */
    public static int m3102i(ByteString byteString) {
        return m3147D(byteString.size());
    }

    /* renamed from: j */
    public static int m3101j(int i, double d) {
        return m3119V(i) + m3099k(d);
    }

    /* renamed from: k */
    public static int m3099k(double d) {
        return 8;
    }

    /* renamed from: l */
    public static int m3097l(int i, int i2) {
        return m3119V(i) + m3096m(i2);
    }

    /* renamed from: m */
    public static int m3096m(int i) {
        return m3080x(i);
    }

    /* renamed from: n */
    public static int m3095n(int i, int i2) {
        return m3119V(i) + m3094o(i2);
    }

    /* renamed from: o */
    public static int m3094o(int i) {
        return 4;
    }

    /* renamed from: p */
    public static int m3092p(int i, long j) {
        return m3119V(i) + m3090q(j);
    }

    /* renamed from: q */
    public static int m3090q(long j) {
        return 8;
    }

    /* renamed from: r */
    public static int m3088r(int i, float f) {
        return m3119V(i) + m3086s(f);
    }

    /* renamed from: s */
    public static int m3086s(float f) {
        return 4;
    }

    @Deprecated
    /* renamed from: t */
    public static int m3085t(int i, AbstractC2639m0 abstractC2639m0, AbstractC2572a1 abstractC2572a1) {
        return (m3119V(i) * 2) + m3083v(abstractC2639m0, abstractC2572a1);
    }

    @Deprecated
    /* renamed from: u */
    public static int m3084u(AbstractC2639m0 abstractC2639m0) {
        return abstractC2639m0.mo2426c();
    }

    @Deprecated
    /* renamed from: v */
    static int m3083v(AbstractC2639m0 abstractC2639m0, AbstractC2572a1 abstractC2572a1) {
        return ((AbstractC2569a) abstractC2639m0).m2919s(abstractC2572a1);
    }

    /* renamed from: w */
    public static int m3082w(int i, int i2) {
        return m3119V(i) + m3080x(i2);
    }

    /* renamed from: x */
    public static int m3080x(int i) {
        if (i >= 0) {
            return m3117X(i);
        }
        return 10;
    }

    /* renamed from: y */
    public static int m3078y(int i, long j) {
        return m3119V(i) + m3076z(j);
    }

    /* renamed from: z */
    public static int m3076z(long j) {
        return m3115Z(j);
    }

    @Deprecated
    /* renamed from: A0 */
    public final void m3151A0(AbstractC2639m0 abstractC2639m0) {
        abstractC2639m0.mo2424g(this);
    }

    @Deprecated
    /* renamed from: B0 */
    final void m3149B0(AbstractC2639m0 abstractC2639m0, AbstractC2572a1 abstractC2572a1) {
        abstractC2572a1.mo2336b(abstractC2639m0, this.f10884a);
    }

    /* renamed from: C0 */
    public abstract void mo3074C0(int i, int i2);

    /* renamed from: D0 */
    public abstract void mo3073D0(int i);

    /* renamed from: E0 */
    public final void m3145E0(int i, long j) {
        mo3063X0(i, j);
    }

    /* renamed from: F0 */
    public final void m3143F0(long j) {
        mo3062Y0(j);
    }

    /* renamed from: G0 */
    public abstract void mo3072G0(int i, AbstractC2639m0 abstractC2639m0, AbstractC2572a1 abstractC2572a1);

    /* renamed from: H0 */
    public abstract void mo3071H0(AbstractC2639m0 abstractC2639m0);

    /* renamed from: I0 */
    public abstract void mo3070I0(int i, AbstractC2639m0 abstractC2639m0);

    /* renamed from: J0 */
    public abstract void mo3069J0(int i, ByteString byteString);

    /* renamed from: K0 */
    public final void m3137K0(int i, int i2) {
        mo3052s0(i, i2);
    }

    /* renamed from: L0 */
    public final void m3135L0(int i) {
        mo3051t0(i);
    }

    /* renamed from: M0 */
    public final void m3133M0(int i, long j) {
        mo3050u0(i, j);
    }

    /* renamed from: N0 */
    public final void m3131N0(long j) {
        mo3049v0(j);
    }

    /* renamed from: O0 */
    public final void m3129O0(int i, int i2) {
        mo3065V0(i, m3114a0(i2));
    }

    /* renamed from: P0 */
    public final void m3127P0(int i) {
        mo3064W0(m3114a0(i));
    }

    /* renamed from: Q0 */
    public final void m3125Q0(int i, long j) {
        mo3063X0(i, m3113b0(j));
    }

    /* renamed from: R0 */
    public final void m3123R0(long j) {
        mo3062Y0(m3113b0(j));
    }

    /* renamed from: S0 */
    public abstract void mo3068S0(int i, String str);

    /* renamed from: T0 */
    public abstract void mo3067T0(String str);

    /* renamed from: U0 */
    public abstract void mo3066U0(int i, int i2);

    /* renamed from: V0 */
    public abstract void mo3065V0(int i, int i2);

    /* renamed from: W0 */
    public abstract void mo3064W0(int i);

    /* renamed from: X0 */
    public abstract void mo3063X0(int i, long j);

    /* renamed from: Y0 */
    public abstract void mo3062Y0(long j);

    /* renamed from: c0 */
    final void m3111c0(String str, Utf8.UnpairedSurrogateException unpairedSurrogateException) {
        f10882c.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) unpairedSurrogateException);
        byte[] bytes = str.getBytes(C2665x.f11225a);
        try {
            mo3064W0(bytes.length);
            mo2721b(bytes, 0, bytes.length);
        } catch (OutOfSpaceException e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new OutOfSpaceException(e2);
        }
    }

    /* renamed from: d */
    public final void m3110d() {
        if (mo3058g0() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    /* renamed from: d0 */
    public boolean m3109d0() {
        return this.f10885b;
    }

    /* renamed from: g0 */
    public abstract int mo3058g0();

    /* renamed from: h0 */
    public abstract void mo3057h0(byte b);

    /* renamed from: i0 */
    public abstract void mo3056i0(int i, boolean z);

    /* renamed from: j0 */
    public final void m3100j0(boolean z) {
        mo3057h0(z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: k0 */
    public final void m3098k0(byte[] bArr) {
        mo3055l0(bArr, 0, bArr.length);
    }

    /* renamed from: l0 */
    abstract void mo3055l0(byte[] bArr, int i, int i2);

    /* renamed from: m0 */
    public abstract void mo3054m0(int i, ByteString byteString);

    /* renamed from: n0 */
    public abstract void mo3053n0(ByteString byteString);

    /* renamed from: o0 */
    public final void m3093o0(int i, double d) {
        mo3050u0(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: p0 */
    public final void m3091p0(double d) {
        mo3049v0(Double.doubleToRawLongBits(d));
    }

    /* renamed from: q0 */
    public final void m3089q0(int i, int i2) {
        mo3074C0(i, i2);
    }

    /* renamed from: r0 */
    public final void m3087r0(int i) {
        mo3073D0(i);
    }

    /* renamed from: s0 */
    public abstract void mo3052s0(int i, int i2);

    /* renamed from: t0 */
    public abstract void mo3051t0(int i);

    /* renamed from: u0 */
    public abstract void mo3050u0(int i, long j);

    /* renamed from: v0 */
    public abstract void mo3049v0(long j);

    /* renamed from: w0 */
    public final void m3081w0(int i, float f) {
        mo3052s0(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: x0 */
    public final void m3079x0(float f) {
        mo3051t0(Float.floatToRawIntBits(f));
    }

    @Deprecated
    /* renamed from: y0 */
    public final void m3077y0(int i, AbstractC2639m0 abstractC2639m0) {
        mo3066U0(i, 3);
        m3151A0(abstractC2639m0);
        mo3066U0(i, 4);
    }

    @Deprecated
    /* renamed from: z0 */
    public final void m3075z0(int i, AbstractC2639m0 abstractC2639m0, AbstractC2572a1 abstractC2572a1) {
        mo3066U0(i, 3);
        m3149B0(abstractC2639m0, abstractC2572a1);
        mo3066U0(i, 4);
    }
}

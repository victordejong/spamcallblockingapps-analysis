package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.google.protobuf.i */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/i.class */
public abstract class AbstractC2613i {

    /* renamed from: a */
    int f11113a;

    /* renamed from: b */
    int f11114b;

    /* renamed from: c */
    int f11115c;

    /* renamed from: d */
    C2621j f11116d;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.protobuf.i$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/i$b.class */
    public static final class C2615b extends AbstractC2613i {

        /* renamed from: e */
        private final byte[] f11117e;

        /* renamed from: f */
        private final boolean f11118f;

        /* renamed from: g */
        private int f11119g;

        /* renamed from: h */
        private int f11120h;

        /* renamed from: i */
        private int f11121i;

        /* renamed from: j */
        private int f11122j;

        /* renamed from: k */
        private int f11123k;

        /* renamed from: l */
        private boolean f11124l;

        /* renamed from: m */
        private int f11125m;

        private C2615b(byte[] bArr, int i, int i2, boolean z) {
            super();
            this.f11125m = Integer.MAX_VALUE;
            this.f11117e = bArr;
            this.f11119g = i2 + i;
            this.f11121i = i;
            this.f11122j = i;
            this.f11118f = z;
        }

        /* renamed from: N */
        private void m2688N() {
            int i = this.f11119g + this.f11120h;
            this.f11119g = i;
            int i2 = i - this.f11122j;
            int i3 = this.f11125m;
            if (i2 > i3) {
                int i4 = i2 - i3;
                this.f11120h = i4;
                this.f11119g = i - i4;
                return;
            }
            this.f11120h = 0;
        }

        /* renamed from: Q */
        private void m2685Q() {
            if (this.f11119g - this.f11121i >= 10) {
                m2684R();
            } else {
                m2683S();
            }
        }

        /* renamed from: R */
        private void m2684R() {
            for (int i = 0; i < 10; i++) {
                byte[] bArr = this.f11117e;
                int i2 = this.f11121i;
                this.f11121i = i2 + 1;
                if (bArr[i2] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: S */
        private void m2683S() {
            for (int i = 0; i < 10; i++) {
                if (m2695G() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: A */
        public String mo2662A() {
            int K = m2691K();
            if (K > 0 && K <= this.f11119g - this.f11121i) {
                String str = new String(this.f11117e, this.f11121i, K, C2665x.f11225a);
                this.f11121i += K;
                return str;
            } else if (K == 0) {
                return "";
            } else {
                if (K < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: B */
        public String mo2661B() {
            int K = m2691K();
            if (K > 0) {
                int i = this.f11119g;
                int i2 = this.f11121i;
                if (K <= i - i2) {
                    String h = Utf8.m2978h(this.f11117e, i2, K);
                    this.f11121i += K;
                    return h;
                }
            }
            if (K == 0) {
                return "";
            }
            if (K <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: C */
        public int mo2660C() {
            if (mo2638e()) {
                this.f11123k = 0;
                return 0;
            }
            int K = m2691K();
            this.f11123k = K;
            if (WireFormat.m2924a(K) != 0) {
                return this.f11123k;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: D */
        public int mo2659D() {
            return m2691K();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: E */
        public long mo2658E() {
            return m2690L();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: F */
        public boolean mo2657F(int i) {
            int b = WireFormat.m2923b(i);
            if (b == 0) {
                m2685Q();
                return true;
            } else if (b == 1) {
                m2686P(8);
                return true;
            } else if (b == 2) {
                m2686P(m2691K());
                return true;
            } else if (b == 3) {
                m2687O();
                mo2640a(WireFormat.m2922c(WireFormat.m2924a(i), 4));
                return true;
            } else if (b == 4) {
                return false;
            } else {
                if (b == 5) {
                    m2686P(4);
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        /* renamed from: G */
        public byte m2695G() {
            int i = this.f11121i;
            if (i != this.f11119g) {
                byte[] bArr = this.f11117e;
                this.f11121i = i + 1;
                return bArr[i];
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* renamed from: H */
        public byte[] m2694H(int i) {
            if (i > 0) {
                int i2 = this.f11119g;
                int i3 = this.f11121i;
                if (i <= i2 - i3) {
                    int i4 = i + i3;
                    this.f11121i = i4;
                    return Arrays.copyOfRange(this.f11117e, i3, i4);
                }
            }
            if (i > 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            } else if (i == 0) {
                return C2665x.f11226b;
            } else {
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        /* renamed from: I */
        public int m2693I() {
            int i = this.f11121i;
            if (this.f11119g - i >= 4) {
                byte[] bArr = this.f11117e;
                this.f11121i = i + 4;
                return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* renamed from: J */
        public long m2692J() {
            int i = this.f11121i;
            if (this.f11119g - i >= 8) {
                byte[] bArr = this.f11117e;
                this.f11121i = i + 8;
                return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x010d, code lost:
            if (r0[r0] < 0) goto L_0x0110;
         */
        /* renamed from: K */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int m2691K() {
            /*
                Method dump skipped, instructions count: 286
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.AbstractC2613i.C2615b.m2691K():int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:37:0x015c, code lost:
            if (r0[r0] < 0) goto L_0x015f;
         */
        /* renamed from: L */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long m2690L() {
            /*
                Method dump skipped, instructions count: 370
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.AbstractC2613i.C2615b.m2690L():long");
        }

        /* renamed from: M */
        long m2689M() {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte G = m2695G();
                j |= (G & Byte.MAX_VALUE) << i;
                if ((G & 128) == 0) {
                    return j;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: O */
        public void m2687O() {
            int C;
            do {
                C = mo2660C();
                if (C == 0) {
                    return;
                }
            } while (mo2657F(C));
        }

        /* renamed from: P */
        public void m2686P(int i) {
            if (i >= 0) {
                int i2 = this.f11119g;
                int i3 = this.f11121i;
                if (i <= i2 - i3) {
                    this.f11121i = i3 + i;
                    return;
                }
            }
            if (i < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: a */
        public void mo2640a(int i) {
            if (this.f11123k != i) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: d */
        public int mo2639d() {
            return this.f11121i - this.f11122j;
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: e */
        public boolean mo2638e() {
            return this.f11121i == this.f11119g;
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: l */
        public void mo2637l(int i) {
            this.f11125m = i;
            m2688N();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: m */
        public int mo2636m(int i) {
            if (i >= 0) {
                int d = i + mo2639d();
                int i2 = this.f11125m;
                if (d <= i2) {
                    this.f11125m = d;
                    m2688N();
                    return i2;
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: n */
        public boolean mo2635n() {
            return m2690L() != 0;
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: o */
        public ByteString mo2634o() {
            int K = m2691K();
            if (K > 0) {
                int i = this.f11119g;
                int i2 = this.f11121i;
                if (K <= i - i2) {
                    ByteString copyFrom = (!this.f11118f || !this.f11124l) ? ByteString.copyFrom(this.f11117e, i2, K) : ByteString.wrap(this.f11117e, i2, K);
                    this.f11121i += K;
                    return copyFrom;
                }
            }
            return K == 0 ? ByteString.f10869b : ByteString.wrap(m2694H(K));
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: p */
        public double mo2633p() {
            return Double.longBitsToDouble(m2692J());
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: q */
        public int mo2632q() {
            return m2691K();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: r */
        public int mo2631r() {
            return m2693I();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: s */
        public long mo2630s() {
            return m2692J();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: t */
        public float mo2629t() {
            return Float.intBitsToFloat(m2693I());
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: u */
        public int mo2628u() {
            return m2691K();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: v */
        public long mo2627v() {
            return m2690L();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: w */
        public int mo2626w() {
            return m2693I();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: x */
        public long mo2625x() {
            return m2692J();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: y */
        public int mo2624y() {
            return AbstractC2613i.m2703b(m2691K());
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: z */
        public long mo2623z() {
            return AbstractC2613i.m2702c(m2690L());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.protobuf.i$c */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/i$c.class */
    public static final class C2616c extends AbstractC2613i {

        /* renamed from: e */
        private final InputStream f11126e;

        /* renamed from: f */
        private final byte[] f11127f;

        /* renamed from: g */
        private int f11128g;

        /* renamed from: h */
        private int f11129h;

        /* renamed from: i */
        private int f11130i;

        /* renamed from: j */
        private int f11131j;

        /* renamed from: k */
        private int f11132k;

        /* renamed from: l */
        private int f11133l;

        /* renamed from: m */
        private AbstractC2617a f11134m;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.protobuf.i$c$a */
        /* loaded from: classes2-dex2jar.jar:com/google/protobuf/i$c$a.class */
        public interface AbstractC2617a {
            /* renamed from: a */
            void m2663a();
        }

        private C2616c(InputStream inputStream, int i) {
            super();
            this.f11133l = Integer.MAX_VALUE;
            this.f11134m = null;
            C2665x.m2250b(inputStream, "input");
            this.f11126e = inputStream;
            this.f11127f = new byte[i];
            this.f11128g = 0;
            this.f11130i = 0;
            this.f11132k = 0;
        }

        /* renamed from: G */
        private ByteString m2682G(int i) {
            byte[] J = m2679J(i);
            if (J != null) {
                return ByteString.copyFrom(J);
            }
            int i2 = this.f11130i;
            int i3 = this.f11128g;
            int i4 = i3 - i2;
            this.f11132k += i3;
            this.f11130i = 0;
            this.f11128g = 0;
            List<byte[]> K = m2678K(i - i4);
            byte[] bArr = new byte[i];
            System.arraycopy(this.f11127f, i2, bArr, 0, i4);
            int i5 = i4;
            for (byte[] bArr2 : K) {
                System.arraycopy(bArr2, 0, bArr, i5, bArr2.length);
                i5 += bArr2.length;
            }
            return ByteString.wrap(bArr);
        }

        /* renamed from: I */
        private byte[] m2680I(int i, boolean z) {
            byte[] J = m2679J(i);
            if (J != null) {
                byte[] bArr = J;
                if (z) {
                    bArr = (byte[]) J.clone();
                }
                return bArr;
            }
            int i2 = this.f11130i;
            int i3 = this.f11128g;
            int i4 = i3 - i2;
            this.f11132k += i3;
            this.f11130i = 0;
            this.f11128g = 0;
            List<byte[]> K = m2678K(i - i4);
            byte[] bArr2 = new byte[i];
            System.arraycopy(this.f11127f, i2, bArr2, 0, i4);
            int i5 = i4;
            for (byte[] bArr3 : K) {
                System.arraycopy(bArr3, 0, bArr2, i5, bArr3.length);
                i5 += bArr3.length;
            }
            return bArr2;
        }

        /* renamed from: J */
        private byte[] m2679J(int i) {
            if (i == 0) {
                return C2665x.f11226b;
            }
            if (i >= 0) {
                int i2 = this.f11132k;
                int i3 = this.f11130i;
                int i4 = i2 + i3 + i;
                if (i4 - this.f11115c <= 0) {
                    int i5 = this.f11133l;
                    if (i4 <= i5) {
                        int i6 = this.f11128g - i3;
                        int i7 = i - i6;
                        if (i7 >= 4096 && i7 > this.f11126e.available()) {
                            return null;
                        }
                        byte[] bArr = new byte[i];
                        System.arraycopy(this.f11127f, this.f11130i, bArr, 0, i6);
                        this.f11132k += this.f11128g;
                        this.f11130i = 0;
                        this.f11128g = 0;
                        while (i6 < i) {
                            int read = this.f11126e.read(bArr, i6, i - i6);
                            if (read != -1) {
                                this.f11132k += read;
                                i6 += read;
                            } else {
                                throw InvalidProtocolBufferException.truncatedMessage();
                            }
                        }
                        return bArr;
                    }
                    m2669T((i5 - i2) - i3);
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.sizeLimitExceeded();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        /* renamed from: K */
        private List<byte[]> m2678K(int i) {
            ArrayList arrayList = new ArrayList();
            while (i > 0) {
                int min = Math.min(i, 4096);
                byte[] bArr = new byte[min];
                int i2 = 0;
                while (i2 < min) {
                    int read = this.f11126e.read(bArr, i2, min - i2);
                    if (read != -1) {
                        this.f11132k += read;
                        i2 += read;
                    } else {
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                }
                i -= min;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        /* renamed from: Q */
        private void m2672Q() {
            int i = this.f11128g + this.f11129h;
            this.f11128g = i;
            int i2 = this.f11132k + i;
            int i3 = this.f11133l;
            if (i2 > i3) {
                int i4 = i2 - i3;
                this.f11129h = i4;
                this.f11128g = i - i4;
                return;
            }
            this.f11129h = 0;
        }

        /* renamed from: R */
        private void m2671R(int i) {
            if (m2664Y(i)) {
                return;
            }
            if (i > (this.f11115c - this.f11132k) - this.f11130i) {
                throw InvalidProtocolBufferException.sizeLimitExceeded();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* renamed from: U */
        private void m2668U(int i) {
            if (i >= 0) {
                int i2 = this.f11132k;
                int i3 = this.f11130i;
                int i4 = this.f11133l;
                if (i2 + i3 + i <= i4) {
                    int i5 = 0;
                    if (this.f11134m == null) {
                        this.f11132k = i2 + i3;
                        int i6 = this.f11128g;
                        this.f11128g = 0;
                        this.f11130i = 0;
                        i5 = i6 - i3;
                        while (i5 < i) {
                            try {
                                long j = i - i5;
                                long skip = this.f11126e.skip(j);
                                if (skip < 0 || skip > j) {
                                    throw new IllegalStateException(this.f11126e.getClass() + "#skip returned invalid result: " + skip + "\nThe InputStream implementation is buggy.");
                                } else if (skip == 0) {
                                    break;
                                } else {
                                    i5 += (int) skip;
                                }
                            } finally {
                                this.f11132k += i5;
                                m2672Q();
                            }
                        }
                    }
                    if (i5 < i) {
                        int i7 = this.f11128g;
                        int i8 = i7 - this.f11130i;
                        this.f11130i = i7;
                        while (true) {
                            m2671R(1);
                            int i9 = i - i8;
                            int i10 = this.f11128g;
                            if (i9 > i10) {
                                i8 += i10;
                                this.f11130i = i10;
                            } else {
                                this.f11130i = i9;
                                return;
                            }
                        }
                    }
                } else {
                    m2669T((i4 - i2) - i3);
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } else {
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        /* renamed from: V */
        private void m2667V() {
            if (this.f11128g - this.f11130i >= 10) {
                m2666W();
            } else {
                m2665X();
            }
        }

        /* renamed from: W */
        private void m2666W() {
            for (int i = 0; i < 10; i++) {
                byte[] bArr = this.f11127f;
                int i2 = this.f11130i;
                this.f11130i = i2 + 1;
                if (bArr[i2] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: X */
        private void m2665X() {
            for (int i = 0; i < 10; i++) {
                if (m2681H() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: Y */
        private boolean m2664Y(int i) {
            int i2 = this.f11130i;
            if (i2 + i > this.f11128g) {
                int i3 = this.f11115c;
                int i4 = this.f11132k;
                if (i > (i3 - i4) - i2 || i4 + i2 + i > this.f11133l) {
                    return false;
                }
                AbstractC2617a aVar = this.f11134m;
                if (aVar != null) {
                    aVar.m2663a();
                }
                int i5 = this.f11130i;
                if (i5 > 0) {
                    int i6 = this.f11128g;
                    if (i6 > i5) {
                        byte[] bArr = this.f11127f;
                        System.arraycopy(bArr, i5, bArr, 0, i6 - i5);
                    }
                    this.f11132k += i5;
                    this.f11128g -= i5;
                    this.f11130i = 0;
                }
                InputStream inputStream = this.f11126e;
                byte[] bArr2 = this.f11127f;
                int i7 = this.f11128g;
                int read = inputStream.read(bArr2, i7, Math.min(bArr2.length - i7, (this.f11115c - this.f11132k) - i7));
                if (read == 0 || read < -1 || read > this.f11127f.length) {
                    throw new IllegalStateException(this.f11126e.getClass() + "#read(byte[]) returned invalid result: " + read + "\nThe InputStream implementation is buggy.");
                } else if (read <= 0) {
                    return false;
                } else {
                    this.f11128g += read;
                    m2672Q();
                    return this.f11128g >= i ? true : m2664Y(i);
                }
            } else {
                throw new IllegalStateException("refillBuffer() called when " + i + " bytes were already available in buffer");
            }
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: A */
        public String mo2662A() {
            int N = m2675N();
            if (N > 0 && N <= this.f11128g - this.f11130i) {
                String str = new String(this.f11127f, this.f11130i, N, C2665x.f11225a);
                this.f11130i += N;
                return str;
            } else if (N == 0) {
                return "";
            } else {
                if (N > this.f11128g) {
                    return new String(m2680I(N, false), C2665x.f11225a);
                }
                m2671R(N);
                String str2 = new String(this.f11127f, this.f11130i, N, C2665x.f11225a);
                this.f11130i += N;
                return str2;
            }
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: B */
        public String mo2661B() {
            byte[] bArr;
            int N = m2675N();
            int i = this.f11130i;
            int i2 = this.f11128g;
            if (N <= i2 - i && N > 0) {
                bArr = this.f11127f;
                this.f11130i = i + N;
            } else if (N == 0) {
                return "";
            } else {
                if (N <= i2) {
                    m2671R(N);
                    bArr = this.f11127f;
                    this.f11130i = N + 0;
                } else {
                    bArr = m2680I(N, false);
                }
                i = 0;
            }
            return Utf8.m2978h(bArr, i, N);
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: C */
        public int mo2660C() {
            if (mo2638e()) {
                this.f11131j = 0;
                return 0;
            }
            int N = m2675N();
            this.f11131j = N;
            if (WireFormat.m2924a(N) != 0) {
                return this.f11131j;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: D */
        public int mo2659D() {
            return m2675N();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: E */
        public long mo2658E() {
            return m2674O();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: F */
        public boolean mo2657F(int i) {
            int b = WireFormat.m2923b(i);
            if (b == 0) {
                m2667V();
                return true;
            } else if (b == 1) {
                m2669T(8);
                return true;
            } else if (b == 2) {
                m2669T(m2675N());
                return true;
            } else if (b == 3) {
                m2670S();
                mo2640a(WireFormat.m2922c(WireFormat.m2924a(i), 4));
                return true;
            } else if (b == 4) {
                return false;
            } else {
                if (b == 5) {
                    m2669T(4);
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        /* renamed from: H */
        public byte m2681H() {
            if (this.f11130i == this.f11128g) {
                m2671R(1);
            }
            byte[] bArr = this.f11127f;
            int i = this.f11130i;
            this.f11130i = i + 1;
            return bArr[i];
        }

        /* renamed from: L */
        public int m2677L() {
            int i = this.f11130i;
            int i2 = i;
            if (this.f11128g - i < 4) {
                m2671R(4);
                i2 = this.f11130i;
            }
            byte[] bArr = this.f11127f;
            this.f11130i = i2 + 4;
            return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
        }

        /* renamed from: M */
        public long m2676M() {
            int i = this.f11130i;
            int i2 = i;
            if (this.f11128g - i < 8) {
                m2671R(8);
                i2 = this.f11130i;
            }
            byte[] bArr = this.f11127f;
            this.f11130i = i2 + 8;
            return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x010f, code lost:
            if (r0[r0] < 0) goto L_0x0112;
         */
        /* renamed from: N */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int m2675N() {
            /*
                Method dump skipped, instructions count: 288
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.AbstractC2613i.C2616c.m2675N():int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:37:0x015d, code lost:
            if (r0[r0] < 0) goto L_0x0160;
         */
        /* renamed from: O */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long m2674O() {
            /*
                Method dump skipped, instructions count: 371
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.AbstractC2613i.C2616c.m2674O():long");
        }

        /* renamed from: P */
        long m2673P() {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte H = m2681H();
                j |= (H & Byte.MAX_VALUE) << i;
                if ((H & 128) == 0) {
                    return j;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: S */
        public void m2670S() {
            int C;
            do {
                C = mo2660C();
                if (C == 0) {
                    return;
                }
            } while (mo2657F(C));
        }

        /* renamed from: T */
        public void m2669T(int i) {
            int i2 = this.f11128g;
            int i3 = this.f11130i;
            if (i > i2 - i3 || i < 0) {
                m2668U(i);
            } else {
                this.f11130i = i3 + i;
            }
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: a */
        public void mo2640a(int i) {
            if (this.f11131j != i) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: d */
        public int mo2639d() {
            return this.f11132k + this.f11130i;
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: e */
        public boolean mo2638e() {
            boolean z = true;
            if (this.f11130i != this.f11128g || m2664Y(1)) {
                z = false;
            }
            return z;
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: l */
        public void mo2637l(int i) {
            this.f11133l = i;
            m2672Q();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: m */
        public int mo2636m(int i) {
            if (i >= 0) {
                int i2 = i + this.f11132k + this.f11130i;
                int i3 = this.f11133l;
                if (i2 <= i3) {
                    this.f11133l = i2;
                    m2672Q();
                    return i3;
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: n */
        public boolean mo2635n() {
            return m2674O() != 0;
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: o */
        public ByteString mo2634o() {
            int N = m2675N();
            int i = this.f11128g;
            int i2 = this.f11130i;
            if (N > i - i2 || N <= 0) {
                return N == 0 ? ByteString.f10869b : m2682G(N);
            }
            ByteString copyFrom = ByteString.copyFrom(this.f11127f, i2, N);
            this.f11130i += N;
            return copyFrom;
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: p */
        public double mo2633p() {
            return Double.longBitsToDouble(m2676M());
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: q */
        public int mo2632q() {
            return m2675N();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: r */
        public int mo2631r() {
            return m2677L();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: s */
        public long mo2630s() {
            return m2676M();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: t */
        public float mo2629t() {
            return Float.intBitsToFloat(m2677L());
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: u */
        public int mo2628u() {
            return m2675N();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: v */
        public long mo2627v() {
            return m2674O();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: w */
        public int mo2626w() {
            return m2677L();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: x */
        public long mo2625x() {
            return m2676M();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: y */
        public int mo2624y() {
            return AbstractC2613i.m2703b(m2675N());
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: z */
        public long mo2623z() {
            return AbstractC2613i.m2702c(m2674O());
        }
    }

    /* renamed from: com.google.protobuf.i$d */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/i$d.class */
    private static final class C2618d extends AbstractC2613i {

        /* renamed from: e */
        private final ByteBuffer f11135e;

        /* renamed from: f */
        private final boolean f11136f;

        /* renamed from: g */
        private final long f11137g;

        /* renamed from: h */
        private long f11138h;

        /* renamed from: i */
        private long f11139i;

        /* renamed from: j */
        private long f11140j;

        /* renamed from: k */
        private int f11141k;

        /* renamed from: l */
        private int f11142l;

        /* renamed from: m */
        private boolean f11143m;

        /* renamed from: n */
        private int f11144n;

        private C2618d(ByteBuffer byteBuffer, boolean z) {
            super();
            this.f11144n = Integer.MAX_VALUE;
            this.f11135e = byteBuffer;
            long i = C2630k1.m2477i(byteBuffer);
            this.f11137g = i;
            this.f11138h = byteBuffer.limit() + i;
            long position = i + byteBuffer.position();
            this.f11139i = position;
            this.f11140j = position;
            this.f11136f = z;
        }

        /* renamed from: G */
        private int m2656G(long j) {
            return (int) (j - this.f11137g);
        }

        /* renamed from: H */
        static boolean m2655H() {
            return C2630k1.m2500H();
        }

        /* renamed from: O */
        private void m2648O() {
            long j = this.f11138h + this.f11141k;
            this.f11138h = j;
            int i = (int) (j - this.f11140j);
            int i2 = this.f11144n;
            if (i > i2) {
                int i3 = i - i2;
                this.f11141k = i3;
                this.f11138h = j - i3;
                return;
            }
            this.f11141k = 0;
        }

        /* renamed from: P */
        private int m2647P() {
            return (int) (this.f11138h - this.f11139i);
        }

        /* renamed from: S */
        private void m2644S() {
            if (m2647P() >= 10) {
                m2643T();
            } else {
                m2642U();
            }
        }

        /* renamed from: T */
        private void m2643T() {
            for (int i = 0; i < 10; i++) {
                long j = this.f11139i;
                this.f11139i = 1 + j;
                if (C2630k1.m2465u(j) >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: U */
        private void m2642U() {
            for (int i = 0; i < 10; i++) {
                if (m2654I() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: V */
        private ByteBuffer m2641V(long j, long j2) {
            int position = this.f11135e.position();
            int limit = this.f11135e.limit();
            try {
                try {
                    this.f11135e.position(m2656G(j));
                    this.f11135e.limit(m2656G(j2));
                    ByteBuffer slice = this.f11135e.slice();
                    this.f11135e.position(position);
                    this.f11135e.limit(limit);
                    return slice;
                } catch (IllegalArgumentException e) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } catch (Throwable th) {
                this.f11135e.position(position);
                this.f11135e.limit(limit);
                throw th;
            }
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: A */
        public String mo2662A() {
            int L = m2651L();
            if (L > 0 && L <= m2647P()) {
                byte[] bArr = new byte[L];
                long j = L;
                C2630k1.m2472n(this.f11139i, bArr, 0L, j);
                String str = new String(bArr, C2665x.f11225a);
                this.f11139i += j;
                return str;
            } else if (L == 0) {
                return "";
            } else {
                if (L < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: B */
        public String mo2661B() {
            int L = m2651L();
            if (L > 0 && L <= m2647P()) {
                String g = Utf8.m2979g(this.f11135e, m2656G(this.f11139i), L);
                this.f11139i += L;
                return g;
            } else if (L == 0) {
                return "";
            } else {
                if (L <= 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: C */
        public int mo2660C() {
            if (mo2638e()) {
                this.f11142l = 0;
                return 0;
            }
            int L = m2651L();
            this.f11142l = L;
            if (WireFormat.m2924a(L) != 0) {
                return this.f11142l;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: D */
        public int mo2659D() {
            return m2651L();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: E */
        public long mo2658E() {
            return m2650M();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: F */
        public boolean mo2657F(int i) {
            int b = WireFormat.m2923b(i);
            if (b == 0) {
                m2644S();
                return true;
            } else if (b == 1) {
                m2645R(8);
                return true;
            } else if (b == 2) {
                m2645R(m2651L());
                return true;
            } else if (b == 3) {
                m2646Q();
                mo2640a(WireFormat.m2922c(WireFormat.m2924a(i), 4));
                return true;
            } else if (b == 4) {
                return false;
            } else {
                if (b == 5) {
                    m2645R(4);
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        /* renamed from: I */
        public byte m2654I() {
            long j = this.f11139i;
            if (j != this.f11138h) {
                this.f11139i = 1 + j;
                return C2630k1.m2465u(j);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* renamed from: J */
        public int m2653J() {
            long j = this.f11139i;
            if (this.f11138h - j >= 4) {
                this.f11139i = 4 + j;
                return ((C2630k1.m2465u(j + 3) & 255) << 24) | (C2630k1.m2465u(j) & 255) | ((C2630k1.m2465u(1 + j) & 255) << 8) | ((C2630k1.m2465u(2 + j) & 255) << 16);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* renamed from: K */
        public long m2652K() {
            long j = this.f11139i;
            if (this.f11138h - j >= 8) {
                this.f11139i = 8 + j;
                return ((C2630k1.m2465u(j + 7) & 255) << 56) | (C2630k1.m2465u(j) & 255) | ((C2630k1.m2465u(1 + j) & 255) << 8) | ((C2630k1.m2465u(2 + j) & 255) << 16) | ((C2630k1.m2465u(3 + j) & 255) << 24) | ((C2630k1.m2465u(4 + j) & 255) << 32) | ((C2630k1.m2465u(5 + j) & 255) << 40) | ((C2630k1.m2465u(6 + j) & 255) << 48);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x0118, code lost:
            if (com.google.protobuf.C2630k1.m2465u(r0) < 0) goto L_0x011b;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v30, types: [long] */
        /* JADX WARN: Type inference failed for: r0v35, types: [long] */
        /* JADX WARN: Type inference failed for: r0v45, types: [long] */
        /* JADX WARN: Type inference failed for: r0v51, types: [long] */
        /* JADX WARN: Type inference failed for: r0v57, types: [long] */
        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r8v1, types: [long] */
        /* JADX WARN: Type inference failed for: r8v10 */
        /* JADX WARN: Type inference failed for: r8v11 */
        /* JADX WARN: Type inference failed for: r8v12 */
        /* JADX WARN: Type inference failed for: r8v3 */
        /* JADX WARN: Type inference failed for: r8v4 */
        /* JADX WARN: Type inference failed for: r8v5 */
        /* JADX WARN: Type inference failed for: r8v6 */
        /* JADX WARN: Type inference failed for: r8v7 */
        /* JADX WARN: Type inference failed for: r8v9 */
        /* JADX WARN: Unknown variable types count: 8 */
        /* renamed from: L */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int m2651L() {
            /*
                Method dump skipped, instructions count: 297
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.AbstractC2613i.C2618d.m2651L():int");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v17, types: [long] */
        /* JADX WARN: Type inference failed for: r0v29, types: [long] */
        /* JADX WARN: Type inference failed for: r0v44, types: [long] */
        /* JADX WARN: Type inference failed for: r0v60, types: [long] */
        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r7v18 */
        /* JADX WARN: Type inference failed for: r7v19 */
        /* JADX WARN: Type inference failed for: r7v2, types: [long] */
        /* JADX WARN: Type inference failed for: r7v20 */
        /* JADX WARN: Type inference failed for: r7v21 */
        /* JADX WARN: Type inference failed for: r7v6 */
        /* JADX WARN: Type inference failed for: r7v7 */
        /* JADX WARN: Type inference failed for: r9v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v10 */
        /* JADX WARN: Type inference failed for: r9v17 */
        /* JADX WARN: Type inference failed for: r9v18 */
        /* JADX WARN: Type inference failed for: r9v19 */
        /* JADX WARN: Type inference failed for: r9v20 */
        /* JADX WARN: Type inference failed for: r9v21 */
        /* JADX WARN: Type inference failed for: r9v22 */
        /* JADX WARN: Type inference failed for: r9v6 */
        /* JADX WARN: Type inference failed for: r9v8, types: [long] */
        /* JADX WARN: Unknown variable types count: 8 */
        /* renamed from: M */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long m2650M() {
            /*
                Method dump skipped, instructions count: 372
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.AbstractC2613i.C2618d.m2650M():long");
        }

        /* renamed from: N */
        long m2649N() {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte I = m2654I();
                j |= (I & Byte.MAX_VALUE) << i;
                if ((I & 128) == 0) {
                    return j;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: Q */
        public void m2646Q() {
            int C;
            do {
                C = mo2660C();
                if (C == 0) {
                    return;
                }
            } while (mo2657F(C));
        }

        /* renamed from: R */
        public void m2645R(int i) {
            if (i >= 0 && i <= m2647P()) {
                this.f11139i += i;
            } else if (i < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            } else {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: a */
        public void mo2640a(int i) {
            if (this.f11142l != i) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: d */
        public int mo2639d() {
            return (int) (this.f11139i - this.f11140j);
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: e */
        public boolean mo2638e() {
            return this.f11139i == this.f11138h;
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: l */
        public void mo2637l(int i) {
            this.f11144n = i;
            m2648O();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: m */
        public int mo2636m(int i) {
            if (i >= 0) {
                int d = i + mo2639d();
                int i2 = this.f11144n;
                if (d <= i2) {
                    this.f11144n = d;
                    m2648O();
                    return i2;
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: n */
        public boolean mo2635n() {
            return m2650M() != 0;
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: o */
        public ByteString mo2634o() {
            int L = m2651L();
            if (L <= 0 || L > m2647P()) {
                if (L == 0) {
                    return ByteString.f10869b;
                }
                if (L < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            } else if (!this.f11136f || !this.f11143m) {
                byte[] bArr = new byte[L];
                long j = L;
                C2630k1.m2472n(this.f11139i, bArr, 0L, j);
                this.f11139i += j;
                return ByteString.wrap(bArr);
            } else {
                long j2 = this.f11139i;
                long j3 = L;
                ByteBuffer V = m2641V(j2, j2 + j3);
                this.f11139i += j3;
                return ByteString.wrap(V);
            }
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: p */
        public double mo2633p() {
            return Double.longBitsToDouble(m2652K());
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: q */
        public int mo2632q() {
            return m2651L();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: r */
        public int mo2631r() {
            return m2653J();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: s */
        public long mo2630s() {
            return m2652K();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: t */
        public float mo2629t() {
            return Float.intBitsToFloat(m2653J());
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: u */
        public int mo2628u() {
            return m2651L();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: v */
        public long mo2627v() {
            return m2650M();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: w */
        public int mo2626w() {
            return m2653J();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: x */
        public long mo2625x() {
            return m2652K();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: y */
        public int mo2624y() {
            return AbstractC2613i.m2703b(m2651L());
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: z */
        public long mo2623z() {
            return AbstractC2613i.m2702c(m2650M());
        }
    }

    private AbstractC2613i() {
        this.f11114b = 100;
        this.f11115c = Integer.MAX_VALUE;
    }

    /* renamed from: b */
    public static int m2703b(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* renamed from: c */
    public static long m2702c(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    /* renamed from: f */
    public static AbstractC2613i m2701f(InputStream inputStream) {
        return m2700g(inputStream, 4096);
    }

    /* renamed from: g */
    public static AbstractC2613i m2700g(InputStream inputStream, int i) {
        if (i > 0) {
            return inputStream == null ? m2698i(C2665x.f11226b) : new C2616c(inputStream, i);
        }
        throw new IllegalArgumentException("bufferSize must be > 0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static AbstractC2613i m2699h(ByteBuffer byteBuffer, boolean z) {
        if (byteBuffer.hasArray()) {
            return m2696k(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining(), z);
        }
        if (byteBuffer.isDirect() && C2618d.m2655H()) {
            return new C2618d(byteBuffer, z);
        }
        int remaining = byteBuffer.remaining();
        byte[] bArr = new byte[remaining];
        byteBuffer.duplicate().get(bArr);
        return m2696k(bArr, 0, remaining, true);
    }

    /* renamed from: i */
    public static AbstractC2613i m2698i(byte[] bArr) {
        return m2697j(bArr, 0, bArr.length);
    }

    /* renamed from: j */
    public static AbstractC2613i m2697j(byte[] bArr, int i, int i2) {
        return m2696k(bArr, i, i2, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static AbstractC2613i m2696k(byte[] bArr, int i, int i2, boolean z) {
        C2615b bVar = new C2615b(bArr, i, i2, z);
        try {
            bVar.mo2636m(i2);
            return bVar;
        } catch (InvalidProtocolBufferException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: A */
    public abstract String mo2662A();

    /* renamed from: B */
    public abstract String mo2661B();

    /* renamed from: C */
    public abstract int mo2660C();

    /* renamed from: D */
    public abstract int mo2659D();

    /* renamed from: E */
    public abstract long mo2658E();

    /* renamed from: F */
    public abstract boolean mo2657F(int i);

    /* renamed from: a */
    public abstract void mo2640a(int i);

    /* renamed from: d */
    public abstract int mo2639d();

    /* renamed from: e */
    public abstract boolean mo2638e();

    /* renamed from: l */
    public abstract void mo2637l(int i);

    /* renamed from: m */
    public abstract int mo2636m(int i);

    /* renamed from: n */
    public abstract boolean mo2635n();

    /* renamed from: o */
    public abstract ByteString mo2634o();

    /* renamed from: p */
    public abstract double mo2633p();

    /* renamed from: q */
    public abstract int mo2632q();

    /* renamed from: r */
    public abstract int mo2631r();

    /* renamed from: s */
    public abstract long mo2630s();

    /* renamed from: t */
    public abstract float mo2629t();

    /* renamed from: u */
    public abstract int mo2628u();

    /* renamed from: v */
    public abstract long mo2627v();

    /* renamed from: w */
    public abstract int mo2626w();

    /* renamed from: x */
    public abstract long mo2625x();

    /* renamed from: y */
    public abstract int mo2624y();

    /* renamed from: z */
    public abstract long mo2623z();
}

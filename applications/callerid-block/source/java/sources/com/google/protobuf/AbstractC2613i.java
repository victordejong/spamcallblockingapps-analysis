package com.google.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Iterator;
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
            if (i2 <= i3) {
                this.f11120h = 0;
                return;
            }
            int i4 = i2 - i3;
            this.f11120h = i4;
            this.f11119g = i - i4;
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
            int m2691K = m2691K();
            if (m2691K > 0 && m2691K <= this.f11119g - this.f11121i) {
                String str = new String(this.f11117e, this.f11121i, m2691K, C2665x.f11225a);
                this.f11121i += m2691K;
                return str;
            } else if (m2691K == 0) {
                return "";
            } else {
                if (m2691K >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: B */
        public String mo2661B() {
            int m2691K = m2691K();
            if (m2691K > 0) {
                int i = this.f11119g;
                int i2 = this.f11121i;
                if (m2691K <= i - i2) {
                    String m2978h = Utf8.m2978h(this.f11117e, i2, m2691K);
                    this.f11121i += m2691K;
                    return m2978h;
                }
            }
            if (m2691K == 0) {
                return "";
            }
            if (m2691K > 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: C */
        public int mo2660C() {
            if (mo2638e()) {
                this.f11123k = 0;
                return 0;
            }
            int m2691K = m2691K();
            this.f11123k = m2691K;
            if (WireFormat.m2924a(m2691K) == 0) {
                throw InvalidProtocolBufferException.invalidTag();
            }
            return this.f11123k;
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
            int m2923b = WireFormat.m2923b(i);
            if (m2923b == 0) {
                m2685Q();
                return true;
            } else if (m2923b == 1) {
                m2686P(8);
                return true;
            } else if (m2923b == 2) {
                m2686P(m2691K());
                return true;
            } else if (m2923b == 3) {
                m2687O();
                mo2640a(WireFormat.m2922c(WireFormat.m2924a(i), 4));
                return true;
            } else if (m2923b == 4) {
                return false;
            } else {
                if (m2923b != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                m2686P(4);
                return true;
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
            if (i <= 0) {
                if (i != 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                return C2665x.f11226b;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
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
            if (r0[r0] < 0) goto L31;
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
            if (r0[r0] < 0) goto L38;
         */
        /* JADX WARN: Type inference failed for: r0v38, types: [long] */
        /* JADX WARN: Type inference failed for: r0v44, types: [long] */
        /* JADX WARN: Type inference failed for: r0v50, types: [long] */
        /* JADX WARN: Type inference failed for: r0v56, types: [long] */
        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r0v77, types: [long] */
        /* JADX WARN: Type inference failed for: r0v80, types: [long] */
        /* JADX WARN: Type inference failed for: r0v87, types: [long] */
        /* JADX WARN: Type inference failed for: r0v90, types: [long] */
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

        /* JADX WARN: Type inference failed for: r0v8, types: [long] */
        /* renamed from: M */
        long m2689M() {
            byte m2695G;
            char c = 0;
            for (int i = 0; i < 64; i += 7) {
                c |= (m2695G & Byte.MAX_VALUE) << i;
                if ((m2695G() & 128) == 0) {
                    return c;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: O */
        public void m2687O() {
            int mo2660C;
            do {
                mo2660C = mo2660C();
                if (mo2660C == 0) {
                    return;
                }
            } while (mo2657F(mo2660C));
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
            if (this.f11123k == i) {
                return;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
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
                int mo2639d = i + mo2639d();
                int i2 = this.f11125m;
                if (mo2639d > i2) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                this.f11125m = mo2639d;
                m2688N();
                return i2;
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
            int m2691K = m2691K();
            if (m2691K > 0) {
                int i = this.f11119g;
                int i2 = this.f11121i;
                if (m2691K <= i - i2) {
                    ByteString copyFrom = (!this.f11118f || !this.f11124l) ? ByteString.copyFrom(this.f11117e, i2, m2691K) : ByteString.wrap(this.f11117e, i2, m2691K);
                    this.f11121i += m2691K;
                    return copyFrom;
                }
            }
            return m2691K == 0 ? ByteString.f10869b : ByteString.wrap(m2694H(m2691K));
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
            byte[] m2679J = m2679J(i);
            if (m2679J != null) {
                return ByteString.copyFrom(m2679J);
            }
            int i2 = this.f11130i;
            int i3 = this.f11128g;
            int i4 = i3 - i2;
            this.f11132k += i3;
            this.f11130i = 0;
            this.f11128g = 0;
            List<byte[]> m2678K = m2678K(i - i4);
            byte[] bArr = new byte[i];
            System.arraycopy(this.f11127f, i2, bArr, 0, i4);
            Iterator<byte[]> it = m2678K.iterator();
            int i5 = i4;
            while (true) {
                int i6 = i5;
                if (!it.hasNext()) {
                    return ByteString.wrap(bArr);
                }
                byte[] next = it.next();
                System.arraycopy(next, 0, bArr, i6, next.length);
                i5 = i6 + next.length;
            }
        }

        /* renamed from: I */
        private byte[] m2680I(int i, boolean z) {
            byte[] m2679J = m2679J(i);
            if (m2679J != null) {
                byte[] bArr = m2679J;
                if (z) {
                    bArr = (byte[]) m2679J.clone();
                }
                return bArr;
            }
            int i2 = this.f11130i;
            int i3 = this.f11128g;
            int i4 = i3 - i2;
            this.f11132k += i3;
            this.f11130i = 0;
            this.f11128g = 0;
            List<byte[]> m2678K = m2678K(i - i4);
            byte[] bArr2 = new byte[i];
            System.arraycopy(this.f11127f, i2, bArr2, 0, i4);
            Iterator<byte[]> it = m2678K.iterator();
            int i5 = i4;
            while (true) {
                int i6 = i5;
                if (!it.hasNext()) {
                    return bArr2;
                }
                byte[] next = it.next();
                System.arraycopy(next, 0, bArr2, i6, next.length);
                i5 = i6 + next.length;
            }
        }

        /* renamed from: J */
        private byte[] m2679J(int i) {
            if (i == 0) {
                return C2665x.f11226b;
            }
            if (i < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i2 = this.f11132k;
            int i3 = this.f11130i;
            int i4 = i2 + i3 + i;
            if (i4 - this.f11115c > 0) {
                throw InvalidProtocolBufferException.sizeLimitExceeded();
            }
            int i5 = this.f11133l;
            if (i4 > i5) {
                m2669T((i5 - i2) - i3);
                throw InvalidProtocolBufferException.truncatedMessage();
            }
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
                if (read == -1) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                this.f11132k += read;
                i6 += read;
            }
            return bArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
            r7 = r7 - r0;
            r0.add(r0);
         */
        /* renamed from: K */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.util.List<byte[]> m2678K(int r7) {
            /*
                r6 = this;
                java.util.ArrayList r0 = new java.util.ArrayList
                r1 = r0
                r1.<init>()
                r8 = r0
            L8:
                r0 = r7
                if (r0 <= 0) goto L62
                r0 = r7
                r1 = 4096(0x1000, float:5.74E-42)
                int r0 = java.lang.Math.min(r0, r1)
                r9 = r0
                r0 = r9
                byte[] r0 = new byte[r0]
                r10 = r0
                r0 = 0
                r11 = r0
            L1c:
                r0 = r11
                r1 = r9
                if (r0 >= r1) goto L52
                r0 = r6
                java.io.InputStream r0 = r0.f11126e
                r1 = r10
                r2 = r11
                r3 = r9
                r4 = r11
                int r3 = r3 - r4
                int r0 = r0.read(r1, r2, r3)
                r12 = r0
                r0 = r12
                r1 = -1
                if (r0 == r1) goto L4e
                r0 = r6
                r1 = r6
                int r1 = r1.f11132k
                r2 = r12
                int r1 = r1 + r2
                r0.f11132k = r1
                r0 = r11
                r1 = r12
                int r0 = r0 + r1
                r11 = r0
                goto L1c
            L4e:
                com.google.protobuf.InvalidProtocolBufferException r0 = com.google.protobuf.InvalidProtocolBufferException.truncatedMessage()
                throw r0
            L52:
                r0 = r7
                r1 = r9
                int r0 = r0 - r1
                r7 = r0
                r0 = r8
                r1 = r10
                boolean r0 = r0.add(r1)
                goto L8
            L62:
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.AbstractC2613i.C2616c.m2678K(int):java.util.List");
        }

        /* renamed from: Q */
        private void m2672Q() {
            int i = this.f11128g + this.f11129h;
            this.f11128g = i;
            int i2 = this.f11132k + i;
            int i3 = this.f11133l;
            if (i2 <= i3) {
                this.f11129h = 0;
                return;
            }
            int i4 = i2 - i3;
            this.f11129h = i4;
            this.f11128g = i - i4;
        }

        /* renamed from: R */
        private void m2671R(int i) {
            if (!m2664Y(i)) {
                if (i <= (this.f11115c - this.f11132k) - this.f11130i) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.sizeLimitExceeded();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x00c9, code lost:
            throw new java.lang.IllegalStateException(r5.f11126e.getClass() + "#skip returned invalid result: " + r0 + "\nThe InputStream implementation is buggy.");
         */
        /* renamed from: U */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void m2668U(int r6) {
            /*
                Method dump skipped, instructions count: 329
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.AbstractC2613i.C2616c.m2668U(int):void");
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
            if (i2 + i <= this.f11128g) {
                throw new IllegalStateException("refillBuffer() called when " + i + " bytes were already available in buffer");
            }
            int i3 = this.f11115c;
            int i4 = this.f11132k;
            if (i > (i3 - i4) - i2 || i4 + i2 + i > this.f11133l) {
                return false;
            }
            AbstractC2617a abstractC2617a = this.f11134m;
            if (abstractC2617a != null) {
                abstractC2617a.m2663a();
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
            if (read != 0 && read >= -1 && read <= this.f11127f.length) {
                if (read <= 0) {
                    return false;
                }
                this.f11128g += read;
                m2672Q();
                return this.f11128g >= i ? true : m2664Y(i);
            }
            throw new IllegalStateException(this.f11126e.getClass() + "#read(byte[]) returned invalid result: " + read + "\nThe InputStream implementation is buggy.");
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: A */
        public String mo2662A() {
            int m2675N = m2675N();
            if (m2675N > 0 && m2675N <= this.f11128g - this.f11130i) {
                String str = new String(this.f11127f, this.f11130i, m2675N, C2665x.f11225a);
                this.f11130i += m2675N;
                return str;
            } else if (m2675N == 0) {
                return "";
            } else {
                if (m2675N > this.f11128g) {
                    return new String(m2680I(m2675N, false), C2665x.f11225a);
                }
                m2671R(m2675N);
                String str2 = new String(this.f11127f, this.f11130i, m2675N, C2665x.f11225a);
                this.f11130i += m2675N;
                return str2;
            }
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: B */
        public String mo2661B() {
            byte[] bArr;
            int m2675N = m2675N();
            int i = this.f11130i;
            int i2 = this.f11128g;
            if (m2675N <= i2 - i && m2675N > 0) {
                bArr = this.f11127f;
                this.f11130i = i + m2675N;
            } else if (m2675N == 0) {
                return "";
            } else {
                if (m2675N <= i2) {
                    m2671R(m2675N);
                    bArr = this.f11127f;
                    this.f11130i = m2675N + 0;
                } else {
                    bArr = m2680I(m2675N, false);
                }
                i = 0;
            }
            return Utf8.m2978h(bArr, i, m2675N);
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: C */
        public int mo2660C() {
            if (mo2638e()) {
                this.f11131j = 0;
                return 0;
            }
            int m2675N = m2675N();
            this.f11131j = m2675N;
            if (WireFormat.m2924a(m2675N) == 0) {
                throw InvalidProtocolBufferException.invalidTag();
            }
            return this.f11131j;
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
            int m2923b = WireFormat.m2923b(i);
            if (m2923b == 0) {
                m2667V();
                return true;
            } else if (m2923b == 1) {
                m2669T(8);
                return true;
            } else if (m2923b == 2) {
                m2669T(m2675N());
                return true;
            } else if (m2923b == 3) {
                m2670S();
                mo2640a(WireFormat.m2922c(WireFormat.m2924a(i), 4));
                return true;
            } else if (m2923b == 4) {
                return false;
            } else {
                if (m2923b != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                m2669T(4);
                return true;
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
            if (r0[r0] < 0) goto L31;
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
            if (r0[r0] < 0) goto L38;
         */
        /* JADX WARN: Type inference failed for: r0v38, types: [long] */
        /* JADX WARN: Type inference failed for: r0v44, types: [long] */
        /* JADX WARN: Type inference failed for: r0v50, types: [long] */
        /* JADX WARN: Type inference failed for: r0v56, types: [long] */
        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r0v77, types: [long] */
        /* JADX WARN: Type inference failed for: r0v80, types: [long] */
        /* JADX WARN: Type inference failed for: r0v87, types: [long] */
        /* JADX WARN: Type inference failed for: r0v90, types: [long] */
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

        /* JADX WARN: Type inference failed for: r0v8, types: [long] */
        /* renamed from: P */
        long m2673P() {
            byte m2681H;
            char c = 0;
            for (int i = 0; i < 64; i += 7) {
                c |= (m2681H & Byte.MAX_VALUE) << i;
                if ((m2681H() & 128) == 0) {
                    return c;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: S */
        public void m2670S() {
            int mo2660C;
            do {
                mo2660C = mo2660C();
                if (mo2660C == 0) {
                    return;
                }
            } while (mo2657F(mo2660C));
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
            if (this.f11131j == i) {
                return;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
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
                if (i2 > i3) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                this.f11133l = i2;
                m2672Q();
                return i3;
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
            int m2675N = m2675N();
            int i = this.f11128g;
            int i2 = this.f11130i;
            if (m2675N > i - i2 || m2675N <= 0) {
                return m2675N == 0 ? ByteString.f10869b : m2682G(m2675N);
            }
            ByteString copyFrom = ByteString.copyFrom(this.f11127f, i2, m2675N);
            this.f11130i += m2675N;
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.protobuf.i$d */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/i$d.class */
    public static final class C2618d extends AbstractC2613i {

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
            long m2477i = C2630k1.m2477i(byteBuffer);
            this.f11137g = m2477i;
            this.f11138h = byteBuffer.limit() + m2477i;
            long position = m2477i + byteBuffer.position();
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
            if (i <= i2) {
                this.f11141k = 0;
                return;
            }
            int i3 = i - i2;
            this.f11141k = i3;
            this.f11138h = j - i3;
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
            int m2651L = m2651L();
            if (m2651L <= 0 || m2651L > m2647P()) {
                if (m2651L == 0) {
                    return "";
                }
                if (m2651L >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
            byte[] bArr = new byte[m2651L];
            long j = m2651L;
            C2630k1.m2472n(this.f11139i, bArr, 0L, j);
            String str = new String(bArr, C2665x.f11225a);
            this.f11139i += j;
            return str;
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: B */
        public String mo2661B() {
            int m2651L = m2651L();
            if (m2651L > 0 && m2651L <= m2647P()) {
                String m2979g = Utf8.m2979g(this.f11135e, m2656G(this.f11139i), m2651L);
                this.f11139i += m2651L;
                return m2979g;
            } else if (m2651L == 0) {
                return "";
            } else {
                if (m2651L > 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: C */
        public int mo2660C() {
            if (mo2638e()) {
                this.f11142l = 0;
                return 0;
            }
            int m2651L = m2651L();
            this.f11142l = m2651L;
            if (WireFormat.m2924a(m2651L) == 0) {
                throw InvalidProtocolBufferException.invalidTag();
            }
            return this.f11142l;
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
            int m2923b = WireFormat.m2923b(i);
            if (m2923b == 0) {
                m2644S();
                return true;
            } else if (m2923b == 1) {
                m2645R(8);
                return true;
            } else if (m2923b == 2) {
                m2645R(m2651L());
                return true;
            } else if (m2923b == 3) {
                m2646Q();
                mo2640a(WireFormat.m2922c(WireFormat.m2924a(i), 4));
                return true;
            } else if (m2923b == 4) {
                return false;
            } else {
                if (m2923b != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                m2645R(4);
                return true;
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
            if (com.google.protobuf.C2630k1.m2465u(r0) < 0) goto L31;
         */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v25, types: [long] */
        /* JADX WARN: Type inference failed for: r0v30, types: [long] */
        /* JADX WARN: Type inference failed for: r0v35, types: [long] */
        /* JADX WARN: Type inference failed for: r0v45, types: [long] */
        /* JADX WARN: Type inference failed for: r0v51, types: [long] */
        /* JADX WARN: Type inference failed for: r0v57, types: [long] */
        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r0v69, types: [long] */
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

        /* JADX WARN: Type inference failed for: r0v17, types: [long] */
        /* JADX WARN: Type inference failed for: r0v24, types: [long] */
        /* JADX WARN: Type inference failed for: r0v29, types: [long] */
        /* JADX WARN: Type inference failed for: r0v36, types: [long] */
        /* JADX WARN: Type inference failed for: r0v38, types: [long] */
        /* JADX WARN: Type inference failed for: r0v42, types: [long] */
        /* JADX WARN: Type inference failed for: r0v44, types: [long] */
        /* JADX WARN: Type inference failed for: r0v48, types: [long] */
        /* JADX WARN: Type inference failed for: r0v50, types: [long] */
        /* JADX WARN: Type inference failed for: r0v54, types: [long] */
        /* JADX WARN: Type inference failed for: r0v56, types: [long] */
        /* JADX WARN: Type inference failed for: r0v60, types: [long] */
        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r0v73, types: [long] */
        /* JADX WARN: Type inference failed for: r0v78, types: [long] */
        /* JADX WARN: Type inference failed for: r0v84, types: [long] */
        /* JADX WARN: Type inference failed for: r0v91, types: [long] */
        /* JADX WARN: Type inference failed for: r0v93, types: [long] */
        /* renamed from: M */
        public long m2650M() {
            char c;
            char c2;
            char m2465u;
            char c3;
            char c4;
            int i;
            long j = this.f11139i;
            if (this.f11138h != j) {
                long j2 = j + 1;
                byte m2465u2 = C2630k1.m2465u(j);
                if (m2465u2 >= 0) {
                    this.f11139i = j2;
                    return m2465u2;
                } else if (this.f11138h - j2 >= 9) {
                    ?? r0 = j2 + 1;
                    int m2465u3 = m2465u2 ^ (C2630k1.m2465u(j2) << 7);
                    if (m2465u3 >= 0) {
                        c = r0 + 1;
                        int m2465u4 = m2465u3 ^ (C2630k1.m2465u(r0) << 14);
                        if (m2465u4 >= 0) {
                            c2 = m2465u4 ^ 16256;
                        } else {
                            ?? r02 = c + 1;
                            int m2465u5 = m2465u4 ^ (C2630k1.m2465u(c) << 21);
                            if (m2465u5 < 0) {
                                i = m2465u5 ^ (-2080896);
                                c = r02;
                            } else {
                                c = r02 + 1;
                                char m2465u6 = m2465u5 ^ (C2630k1.m2465u(r02) << 28);
                                if (m2465u6 >= 0) {
                                    c4 = 16256;
                                } else {
                                    char c5 = c + 1;
                                    ?? m2465u7 = m2465u6 ^ (C2630k1.m2465u(c) << 35);
                                    if (m2465u7 < 0) {
                                        c3 = 16256;
                                        m2465u = m2465u7;
                                    } else {
                                        c = c5 + 1;
                                        m2465u6 = m2465u7 ^ (C2630k1.m2465u(c5) << 42);
                                        if (m2465u6 >= 0) {
                                            c4 = 16256;
                                        } else {
                                            c5 = c + 1;
                                            m2465u = m2465u6 ^ (C2630k1.m2465u(c) << 49);
                                            if (m2465u < 0) {
                                                c3 = 16256;
                                            } else {
                                                ?? r03 = c5 + 1;
                                                ?? m2465u8 = (m2465u ^ (C2630k1.m2465u(c5) << 56)) ^ 71499008037633920L;
                                                c2 = m2465u8;
                                                c = r03;
                                                if (m2465u8 < 0) {
                                                    if (C2630k1.m2465u(r03) >= 0) {
                                                        c = 1 + r03;
                                                        c2 = m2465u8;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    ?? r04 = m2465u ^ c3;
                                    c = c5;
                                    c2 = r04;
                                }
                                c2 = m2465u6 ^ c4;
                            }
                        }
                        this.f11139i = c;
                        return c2;
                    }
                    i = m2465u3 ^ (-128);
                    c = r0;
                    c2 = i;
                    this.f11139i = c;
                    return c2;
                }
            }
            return m2649N();
        }

        /* JADX WARN: Type inference failed for: r0v8, types: [long] */
        /* renamed from: N */
        long m2649N() {
            byte m2654I;
            char c = 0;
            for (int i = 0; i < 64; i += 7) {
                c |= (m2654I & Byte.MAX_VALUE) << i;
                if ((m2654I() & 128) == 0) {
                    return c;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: Q */
        public void m2646Q() {
            int mo2660C;
            do {
                mo2660C = mo2660C();
                if (mo2660C == 0) {
                    return;
                }
            } while (mo2657F(mo2660C));
        }

        /* renamed from: R */
        public void m2645R(int i) {
            if (i >= 0 && i <= m2647P()) {
                this.f11139i += i;
            } else if (i >= 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            } else {
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        @Override // com.google.protobuf.AbstractC2613i
        /* renamed from: a */
        public void mo2640a(int i) {
            if (this.f11142l == i) {
                return;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
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
                int mo2639d = i + mo2639d();
                int i2 = this.f11144n;
                if (mo2639d > i2) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                this.f11144n = mo2639d;
                m2648O();
                return i2;
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
            int m2651L = m2651L();
            if (m2651L <= 0 || m2651L > m2647P()) {
                if (m2651L == 0) {
                    return ByteString.f10869b;
                }
                if (m2651L >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            } else if (!this.f11136f || !this.f11143m) {
                byte[] bArr = new byte[m2651L];
                long j = m2651L;
                C2630k1.m2472n(this.f11139i, bArr, 0L, j);
                this.f11139i += j;
                return ByteString.wrap(bArr);
            } else {
                long j2 = this.f11139i;
                long j3 = m2651L;
                ByteBuffer m2641V = m2641V(j2, j2 + j3);
                this.f11139i += j3;
                return ByteString.wrap(m2641V);
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

    /* renamed from: k */
    public static AbstractC2613i m2696k(byte[] bArr, int i, int i2, boolean z) {
        C2615b c2615b = new C2615b(bArr, i, i2, z);
        try {
            c2615b.mo2636m(i2);
            return c2615b;
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

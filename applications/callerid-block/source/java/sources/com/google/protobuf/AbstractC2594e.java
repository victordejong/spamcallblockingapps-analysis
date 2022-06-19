package com.google.protobuf;

import com.google.protobuf.C2607g0;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.protobuf.e */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/e.class */
public abstract class AbstractC2594e implements AbstractC2682z0 {

    /* renamed from: com.google.protobuf.e$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/e$a.class */
    public static /* synthetic */ class C2595a {

        /* renamed from: a */
        static final /* synthetic */ int[] f11075a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00d1 -> B:64:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d5 -> B:78:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d9 -> B:74:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00dd -> B:86:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e1 -> B:82:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e5 -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e9 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00ed -> B:68:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00f1 -> B:62:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f5 -> B:76:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f9 -> B:72:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00fd -> B:84:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0101 -> B:80:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0105 -> B:58:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0109 -> B:54:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x010d -> B:66:0x00c4). Please submit an issue!!! */
        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f11075a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f11075a[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f11075a[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f11075a[WireFormat.FieldType.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f11075a[WireFormat.FieldType.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f11075a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f11075a[WireFormat.FieldType.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f11075a[WireFormat.FieldType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f11075a[WireFormat.FieldType.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f11075a[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f11075a[WireFormat.FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f11075a[WireFormat.FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f11075a[WireFormat.FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f11075a[WireFormat.FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f11075a[WireFormat.FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f11075a[WireFormat.FieldType.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f11075a[WireFormat.FieldType.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.protobuf.e$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/e$b.class */
    public static final class C2596b extends AbstractC2594e {

        /* renamed from: a */
        private final boolean f11076a;

        /* renamed from: b */
        private final byte[] f11077b;

        /* renamed from: c */
        private int f11078c;

        /* renamed from: d */
        private int f11079d;

        /* renamed from: e */
        private int f11080e;

        /* renamed from: f */
        private int f11081f;

        public C2596b(ByteBuffer byteBuffer, boolean z) {
            super(null);
            this.f11076a = z;
            this.f11077b = byteBuffer.array();
            this.f11078c = byteBuffer.arrayOffset() + byteBuffer.position();
            this.f11079d = byteBuffer.arrayOffset() + byteBuffer.limit();
        }

        /* renamed from: R */
        private boolean m2795R() {
            return this.f11078c == this.f11079d;
        }

        /* renamed from: S */
        private byte m2794S() {
            int i = this.f11078c;
            if (i != this.f11079d) {
                byte[] bArr = this.f11077b;
                this.f11078c = i + 1;
                return bArr[i];
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* renamed from: T */
        private Object m2793T(WireFormat.FieldType fieldType, Class<?> cls, C2643o c2643o) {
            switch (C2595a.f11075a[fieldType.ordinal()]) {
                case 1:
                    return Boolean.valueOf(mo2187r());
                case 2:
                    return mo2219B();
                case 3:
                    return Double.valueOf(readDouble());
                case 4:
                    return Integer.valueOf(mo2202c());
                case 5:
                    return Integer.valueOf(mo2189p());
                case 6:
                    return Long.valueOf(mo2199f());
                case 7:
                    return Float.valueOf(readFloat());
                case 8:
                    return Integer.valueOf(mo2216E());
                case 9:
                    return Long.valueOf(mo2209L());
                case 10:
                    return mo2192m(cls, c2643o);
                case 11:
                    return Integer.valueOf(mo2214G());
                case 12:
                    return Long.valueOf(mo2183v());
                case 13:
                    return Integer.valueOf(mo2197h());
                case 14:
                    return Long.valueOf(mo2194k());
                case 15:
                    return mo2208M();
                case 16:
                    return Integer.valueOf(mo2217D());
                case 17:
                    return Long.valueOf(mo2201d());
                default:
                    throw new RuntimeException("unsupported field type.");
            }
        }

        /* renamed from: U */
        private <T> T m2792U(AbstractC2572a1<T> abstractC2572a1, C2643o c2643o) {
            int i = this.f11081f;
            this.f11081f = WireFormat.m2922c(WireFormat.m2924a(this.f11080e), 4);
            try {
                T mo2330h = abstractC2572a1.mo2330h();
                abstractC2572a1.mo2333e(mo2330h, this, c2643o);
                abstractC2572a1.mo2335c(mo2330h);
                if (this.f11080e == this.f11081f) {
                    return mo2330h;
                }
                throw InvalidProtocolBufferException.parseFailure();
            } finally {
                this.f11081f = i;
            }
        }

        /* renamed from: V */
        private int m2791V() {
            m2781f0(4);
            return m2790W();
        }

        /* renamed from: W */
        private int m2790W() {
            int i = this.f11078c;
            byte[] bArr = this.f11077b;
            this.f11078c = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        /* renamed from: X */
        private long m2789X() {
            m2781f0(8);
            return m2788Y();
        }

        /* renamed from: Y */
        private long m2788Y() {
            int i = this.f11078c;
            byte[] bArr = this.f11077b;
            this.f11078c = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }

        /* renamed from: Z */
        private <T> T m2787Z(AbstractC2572a1<T> abstractC2572a1, C2643o c2643o) {
            int m2784c0 = m2784c0();
            m2781f0(m2784c0);
            int i = this.f11079d;
            int i2 = this.f11078c + m2784c0;
            this.f11079d = i2;
            try {
                T mo2330h = abstractC2572a1.mo2330h();
                abstractC2572a1.mo2333e(mo2330h, this, c2643o);
                abstractC2572a1.mo2335c(mo2330h);
                if (this.f11078c == i2) {
                    return mo2330h;
                }
                throw InvalidProtocolBufferException.parseFailure();
            } finally {
                this.f11079d = i;
            }
        }

        /* renamed from: c0 */
        private int m2784c0() {
            int i;
            int i2 = this.f11078c;
            int i3 = this.f11079d;
            if (i3 != i2) {
                byte[] bArr = this.f11077b;
                int i4 = i2 + 1;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.f11078c = i4;
                    return b;
                } else if (i3 - i4 < 9) {
                    return (int) m2782e0();
                } else {
                    int i5 = i4 + 1;
                    int i6 = b ^ (bArr[i4] << 7);
                    if (i6 < 0) {
                        i = i6 ^ (-128);
                    } else {
                        int i7 = i5 + 1;
                        int i8 = i6 ^ (bArr[i5] << 14);
                        if (i8 >= 0) {
                            i5 = i7;
                            i = i8 ^ 16256;
                        } else {
                            i5 = i7 + 1;
                            int i9 = i8 ^ (bArr[i7] << 21);
                            if (i9 < 0) {
                                i = i9 ^ (-2080896);
                            } else {
                                int i10 = i5 + 1;
                                byte b2 = bArr[i5];
                                int i11 = (i9 ^ (b2 << 28)) ^ 266354560;
                                i = i11;
                                i5 = i10;
                                if (b2 < 0) {
                                    int i12 = i10 + 1;
                                    i = i11;
                                    i5 = i12;
                                    if (bArr[i10] < 0) {
                                        int i13 = i12 + 1;
                                        i = i11;
                                        i5 = i13;
                                        if (bArr[i12] < 0) {
                                            int i14 = i13 + 1;
                                            i = i11;
                                            i5 = i14;
                                            if (bArr[i13] < 0) {
                                                int i15 = i14 + 1;
                                                i = i11;
                                                i5 = i15;
                                                if (bArr[i14] < 0) {
                                                    i5 = i15 + 1;
                                                    if (bArr[i15] < 0) {
                                                        throw InvalidProtocolBufferException.malformedVarint();
                                                    }
                                                    i = i11;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    this.f11078c = i5;
                    return i;
                }
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* JADX WARN: Type inference failed for: r0v8, types: [long] */
        /* renamed from: e0 */
        private long m2782e0() {
            byte m2794S;
            char c = 0;
            for (int i = 0; i < 64; i += 7) {
                c |= (m2794S & Byte.MAX_VALUE) << i;
                if ((m2794S() & 128) == 0) {
                    return c;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: f0 */
        private void m2781f0(int i) {
            if (i < 0 || i > this.f11079d - this.f11078c) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        /* renamed from: g0 */
        private void m2780g0(int i) {
            if (this.f11078c == i) {
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* renamed from: h0 */
        private void m2779h0(int i) {
            if (WireFormat.m2923b(this.f11080e) == i) {
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        /* renamed from: i0 */
        private void m2778i0(int i) {
            m2781f0(i);
            this.f11078c += i;
        }

        /* renamed from: j0 */
        private void m2777j0() {
            int i = this.f11081f;
            this.f11081f = WireFormat.m2922c(WireFormat.m2924a(this.f11080e), 4);
            while (mo2185t() != Integer.MAX_VALUE && mo2215F()) {
            }
            if (this.f11080e == this.f11081f) {
                this.f11081f = i;
                return;
            }
            throw InvalidProtocolBufferException.parseFailure();
        }

        /* renamed from: k0 */
        private void m2776k0() {
            int i = this.f11079d;
            int i2 = this.f11078c;
            if (i - i2 >= 10) {
                byte[] bArr = this.f11077b;
                int i3 = 0;
                while (i3 < 10) {
                    int i4 = i2 + 1;
                    if (bArr[i2] >= 0) {
                        this.f11078c = i4;
                        return;
                    } else {
                        i3++;
                        i2 = i4;
                    }
                }
            }
            m2775l0();
        }

        /* renamed from: l0 */
        private void m2775l0() {
            for (int i = 0; i < 10; i++) {
                if (m2794S() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: m0 */
        private void m2774m0(int i) {
            m2781f0(i);
            if ((i & 3) == 0) {
                return;
            }
            throw InvalidProtocolBufferException.parseFailure();
        }

        /* renamed from: n0 */
        private void m2773n0(int i) {
            m2781f0(i);
            if ((i & 7) == 0) {
                return;
            }
            throw InvalidProtocolBufferException.parseFailure();
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: A */
        public <T> T mo2220A(AbstractC2572a1<T> abstractC2572a1, C2643o c2643o) {
            m2779h0(3);
            return (T) m2792U(abstractC2572a1, c2643o);
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: B */
        public ByteString mo2219B() {
            m2779h0(2);
            int m2784c0 = m2784c0();
            if (m2784c0 == 0) {
                return ByteString.f10869b;
            }
            m2781f0(m2784c0);
            ByteString wrap = this.f11076a ? ByteString.wrap(this.f11077b, this.f11078c, m2784c0) : ByteString.copyFrom(this.f11077b, this.f11078c, m2784c0);
            this.f11078c += m2784c0;
            return wrap;
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: C */
        public void mo2218C(List<Float> list) {
            int i;
            int i2;
            if (!(list instanceof C2659u)) {
                int m2923b = WireFormat.m2923b(this.f11080e);
                if (m2923b == 2) {
                    int m2784c0 = m2784c0();
                    m2774m0(m2784c0);
                    int i3 = this.f11078c;
                    while (this.f11078c < i3 + m2784c0) {
                        list.add(Float.valueOf(Float.intBitsToFloat(m2790W())));
                    }
                    return;
                } else if (m2923b != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    do {
                        list.add(Float.valueOf(readFloat()));
                        if (m2795R()) {
                            return;
                        }
                        i = this.f11078c;
                    } while (m2784c0() == this.f11080e);
                    this.f11078c = i;
                    return;
                }
            }
            C2659u c2659u = (C2659u) list;
            int m2923b2 = WireFormat.m2923b(this.f11080e);
            if (m2923b2 == 2) {
                int m2784c02 = m2784c0();
                m2774m0(m2784c02);
                int i4 = this.f11078c;
                while (this.f11078c < i4 + m2784c02) {
                    c2659u.m2275p(Float.intBitsToFloat(m2790W()));
                }
            } else if (m2923b2 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                do {
                    c2659u.m2275p(readFloat());
                    if (m2795R()) {
                        return;
                    }
                    i2 = this.f11078c;
                } while (m2784c0() == this.f11080e);
                this.f11078c = i2;
            }
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: D */
        public int mo2217D() {
            m2779h0(0);
            return m2784c0();
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: E */
        public int mo2216E() {
            m2779h0(0);
            return m2784c0();
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: F */
        public boolean mo2215F() {
            int i;
            int i2;
            if (m2795R() || (i = this.f11080e) == this.f11081f) {
                return false;
            }
            int m2923b = WireFormat.m2923b(i);
            if (m2923b == 0) {
                m2776k0();
                return true;
            }
            if (m2923b == 1) {
                i2 = 8;
            } else if (m2923b == 2) {
                i2 = m2784c0();
            } else if (m2923b == 3) {
                m2777j0();
                return true;
            } else if (m2923b != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                i2 = 4;
            }
            m2778i0(i2);
            return true;
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: G */
        public int mo2214G() {
            m2779h0(5);
            return m2791V();
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: H */
        public void mo2213H(List<ByteString> list) {
            int i;
            if (WireFormat.m2923b(this.f11080e) == 2) {
                do {
                    list.add(mo2219B());
                    if (m2795R()) {
                        return;
                    }
                    i = this.f11078c;
                } while (m2784c0() == this.f11080e);
                this.f11078c = i;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: I */
        public void mo2212I(List<Double> list) {
            int i;
            int i2;
            if (!(list instanceof C2636l)) {
                int m2923b = WireFormat.m2923b(this.f11080e);
                if (m2923b == 1) {
                    do {
                        list.add(Double.valueOf(readDouble()));
                        if (m2795R()) {
                            return;
                        }
                        i = this.f11078c;
                    } while (m2784c0() == this.f11080e);
                    this.f11078c = i;
                    return;
                } else if (m2923b != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    int m2784c0 = m2784c0();
                    m2773n0(m2784c0);
                    int i3 = this.f11078c;
                    while (this.f11078c < i3 + m2784c0) {
                        list.add(Double.valueOf(Double.longBitsToDouble(m2788Y())));
                    }
                    return;
                }
            }
            C2636l c2636l = (C2636l) list;
            int m2923b2 = WireFormat.m2923b(this.f11080e);
            if (m2923b2 == 1) {
                do {
                    c2636l.m2430p(readDouble());
                    if (m2795R()) {
                        return;
                    }
                    i2 = this.f11078c;
                } while (m2784c0() == this.f11080e);
                this.f11078c = i2;
            } else if (m2923b2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int m2784c02 = m2784c0();
                m2773n0(m2784c02);
                int i4 = this.f11078c;
                while (this.f11078c < i4 + m2784c02) {
                    c2636l.m2430p(Double.longBitsToDouble(m2788Y()));
                }
            }
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: J */
        public void mo2211J(List<Long> list) {
            int i;
            int i2;
            int i3;
            if (list instanceof C2597e0) {
                C2597e0 c2597e0 = (C2597e0) list;
                int m2923b = WireFormat.m2923b(this.f11080e);
                if (m2923b == 0) {
                    do {
                        c2597e0.m2763r(mo2209L());
                        if (m2795R()) {
                            return;
                        }
                        i3 = this.f11078c;
                    } while (m2784c0() == this.f11080e);
                    this.f11078c = i3;
                    return;
                } else if (m2923b != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    int m2784c0 = this.f11078c + m2784c0();
                    while (true) {
                        i = m2784c0;
                        if (this.f11078c >= m2784c0) {
                            break;
                        }
                        c2597e0.m2763r(m2783d0());
                    }
                }
            } else {
                int m2923b2 = WireFormat.m2923b(this.f11080e);
                if (m2923b2 == 0) {
                    do {
                        list.add(Long.valueOf(mo2209L()));
                        if (m2795R()) {
                            return;
                        }
                        i2 = this.f11078c;
                    } while (m2784c0() == this.f11080e);
                    this.f11078c = i2;
                    return;
                } else if (m2923b2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    int m2784c02 = this.f11078c + m2784c0();
                    while (true) {
                        i = m2784c02;
                        if (this.f11078c >= m2784c02) {
                            break;
                        }
                        list.add(Long.valueOf(m2783d0()));
                    }
                }
            }
            m2780g0(i);
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: K */
        public void mo2210K(List<Long> list) {
            int i;
            int i2;
            if (!(list instanceof C2597e0)) {
                int m2923b = WireFormat.m2923b(this.f11080e);
                if (m2923b == 1) {
                    do {
                        list.add(Long.valueOf(mo2183v()));
                        if (m2795R()) {
                            return;
                        }
                        i = this.f11078c;
                    } while (m2784c0() == this.f11080e);
                    this.f11078c = i;
                    return;
                } else if (m2923b != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    int m2784c0 = m2784c0();
                    m2773n0(m2784c0);
                    int i3 = this.f11078c;
                    while (this.f11078c < i3 + m2784c0) {
                        list.add(Long.valueOf(m2788Y()));
                    }
                    return;
                }
            }
            C2597e0 c2597e0 = (C2597e0) list;
            int m2923b2 = WireFormat.m2923b(this.f11080e);
            if (m2923b2 == 1) {
                do {
                    c2597e0.m2763r(mo2183v());
                    if (m2795R()) {
                        return;
                    }
                    i2 = this.f11078c;
                } while (m2784c0() == this.f11080e);
                this.f11078c = i2;
            } else if (m2923b2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int m2784c02 = m2784c0();
                m2773n0(m2784c02);
                int i4 = this.f11078c;
                while (this.f11078c < i4 + m2784c02) {
                    c2597e0.m2763r(m2788Y());
                }
            }
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: L */
        public long mo2209L() {
            m2779h0(0);
            return m2783d0();
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: M */
        public String mo2208M() {
            return m2786a0(true);
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: N */
        public void mo2207N(List<Long> list) {
            int i;
            int i2;
            if (!(list instanceof C2597e0)) {
                int m2923b = WireFormat.m2923b(this.f11080e);
                if (m2923b == 1) {
                    do {
                        list.add(Long.valueOf(mo2199f()));
                        if (m2795R()) {
                            return;
                        }
                        i = this.f11078c;
                    } while (m2784c0() == this.f11080e);
                    this.f11078c = i;
                    return;
                } else if (m2923b != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    int m2784c0 = m2784c0();
                    m2773n0(m2784c0);
                    int i3 = this.f11078c;
                    while (this.f11078c < i3 + m2784c0) {
                        list.add(Long.valueOf(m2788Y()));
                    }
                    return;
                }
            }
            C2597e0 c2597e0 = (C2597e0) list;
            int m2923b2 = WireFormat.m2923b(this.f11080e);
            if (m2923b2 == 1) {
                do {
                    c2597e0.m2763r(mo2199f());
                    if (m2795R()) {
                        return;
                    }
                    i2 = this.f11078c;
                } while (m2784c0() == this.f11080e);
                this.f11078c = i2;
            } else if (m2923b2 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                int m2784c02 = m2784c0();
                m2773n0(m2784c02);
                int i4 = this.f11078c;
                while (this.f11078c < i4 + m2784c02) {
                    c2597e0.m2763r(m2788Y());
                }
            }
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: O */
        public void mo2206O(List<Integer> list) {
            int i;
            int i2;
            int i3;
            if (list instanceof C2663w) {
                C2663w c2663w = (C2663w) list;
                int m2923b = WireFormat.m2923b(this.f11080e);
                if (m2923b == 0) {
                    do {
                        c2663w.mo2239n(mo2216E());
                        if (m2795R()) {
                            return;
                        }
                        i3 = this.f11078c;
                    } while (m2784c0() == this.f11080e);
                    this.f11078c = i3;
                    return;
                } else if (m2923b != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    int m2784c0 = this.f11078c + m2784c0();
                    while (true) {
                        i = m2784c0;
                        if (this.f11078c >= m2784c0) {
                            break;
                        }
                        c2663w.mo2239n(m2784c0());
                    }
                }
            } else {
                int m2923b2 = WireFormat.m2923b(this.f11080e);
                if (m2923b2 == 0) {
                    do {
                        list.add(Integer.valueOf(mo2216E()));
                        if (m2795R()) {
                            return;
                        }
                        i2 = this.f11078c;
                    } while (m2784c0() == this.f11080e);
                    this.f11078c = i2;
                    return;
                } else if (m2923b2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    int m2784c02 = this.f11078c + m2784c0();
                    while (true) {
                        i = m2784c02;
                        if (this.f11078c >= m2784c02) {
                            break;
                        }
                        list.add(Integer.valueOf(m2784c0()));
                    }
                }
            }
            m2780g0(i);
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: P */
        public void mo2205P(List<Integer> list) {
            int i;
            int i2;
            if (!(list instanceof C2663w)) {
                int m2923b = WireFormat.m2923b(this.f11080e);
                if (m2923b != 0) {
                    if (m2923b != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int m2784c0 = m2784c0();
                    int i3 = this.f11078c;
                    while (this.f11078c < i3 + m2784c0) {
                        list.add(Integer.valueOf(m2784c0()));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(mo2202c()));
                    if (m2795R()) {
                        return;
                    }
                    i = this.f11078c;
                } while (m2784c0() == this.f11080e);
                this.f11078c = i;
                return;
            }
            C2663w c2663w = (C2663w) list;
            int m2923b2 = WireFormat.m2923b(this.f11080e);
            if (m2923b2 != 0) {
                if (m2923b2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int m2784c02 = m2784c0();
                int i4 = this.f11078c;
                while (this.f11078c < i4 + m2784c02) {
                    c2663w.mo2239n(m2784c0());
                }
                return;
            }
            do {
                c2663w.mo2239n(mo2202c());
                if (m2795R()) {
                    return;
                }
                i2 = this.f11078c;
            } while (m2784c0() == this.f11080e);
            this.f11078c = i2;
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: a */
        public int mo2204a() {
            return this.f11080e;
        }

        /* renamed from: a0 */
        public String m2786a0(boolean z) {
            m2779h0(2);
            int m2784c0 = m2784c0();
            if (m2784c0 == 0) {
                return "";
            }
            m2781f0(m2784c0);
            if (z) {
                byte[] bArr = this.f11077b;
                int i = this.f11078c;
                if (!Utf8.m2966t(bArr, i, i + m2784c0)) {
                    throw InvalidProtocolBufferException.invalidUtf8();
                }
            }
            String str = new String(this.f11077b, this.f11078c, m2784c0, C2665x.f11225a);
            this.f11078c += m2784c0;
            return str;
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: b */
        public void mo2203b(List<Integer> list) {
            int i;
            int i2;
            if (!(list instanceof C2663w)) {
                int m2923b = WireFormat.m2923b(this.f11080e);
                if (m2923b != 0) {
                    if (m2923b != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int m2784c0 = m2784c0();
                    int i3 = this.f11078c;
                    while (this.f11078c < i3 + m2784c0) {
                        list.add(Integer.valueOf(AbstractC2613i.m2703b(m2784c0())));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(mo2197h()));
                    if (m2795R()) {
                        return;
                    }
                    i = this.f11078c;
                } while (m2784c0() == this.f11080e);
                this.f11078c = i;
                return;
            }
            C2663w c2663w = (C2663w) list;
            int m2923b2 = WireFormat.m2923b(this.f11080e);
            if (m2923b2 != 0) {
                if (m2923b2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int m2784c02 = m2784c0();
                int i4 = this.f11078c;
                while (this.f11078c < i4 + m2784c02) {
                    c2663w.mo2239n(AbstractC2613i.m2703b(m2784c0()));
                }
                return;
            }
            do {
                c2663w.mo2239n(mo2197h());
                if (m2795R()) {
                    return;
                }
                i2 = this.f11078c;
            } while (m2784c0() == this.f11080e);
            this.f11078c = i2;
        }

        /* renamed from: b0 */
        public void m2785b0(List<String> list, boolean z) {
            int i;
            int i2;
            if (WireFormat.m2923b(this.f11080e) == 2) {
                if (!(list instanceof AbstractC2577c0) || z) {
                    do {
                        list.add(m2786a0(z));
                        if (m2795R()) {
                            return;
                        }
                        i = this.f11078c;
                    } while (m2784c0() == this.f11080e);
                    this.f11078c = i;
                    return;
                }
                AbstractC2577c0 abstractC2577c0 = (AbstractC2577c0) list;
                do {
                    abstractC2577c0.mo2564l(mo2219B());
                    if (m2795R()) {
                        return;
                    }
                    i2 = this.f11078c;
                } while (m2784c0() == this.f11080e);
                this.f11078c = i2;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: c */
        public int mo2202c() {
            m2779h0(0);
            return m2784c0();
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: d */
        public long mo2201d() {
            m2779h0(0);
            return m2783d0();
        }

        /* JADX WARN: Type inference failed for: r0v38, types: [long] */
        /* JADX WARN: Type inference failed for: r0v44, types: [long] */
        /* JADX WARN: Type inference failed for: r0v50, types: [long] */
        /* JADX WARN: Type inference failed for: r0v56, types: [long] */
        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r0v79, types: [long] */
        /* JADX WARN: Type inference failed for: r0v82, types: [long] */
        /* JADX WARN: Type inference failed for: r0v89, types: [long] */
        /* JADX WARN: Type inference failed for: r0v92, types: [long] */
        /* renamed from: d0 */
        public long m2783d0() {
            char c;
            char c2;
            char c3;
            int i;
            int i2 = this.f11078c;
            int i3 = this.f11079d;
            if (i3 != i2) {
                byte[] bArr = this.f11077b;
                int i4 = i2 + 1;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.f11078c = i4;
                    return b;
                } else if (i3 - i4 < 9) {
                    return m2782e0();
                } else {
                    int i5 = i4 + 1;
                    int i6 = b ^ (bArr[i4] << 7);
                    if (i6 >= 0) {
                        int i7 = i5 + 1;
                        int i8 = i6 ^ (bArr[i5] << 14);
                        if (i8 >= 0) {
                            c = i8 ^ 16256;
                            i5 = i7;
                        } else {
                            i5 = i7 + 1;
                            int i9 = i8 ^ (bArr[i7] << 21);
                            if (i9 < 0) {
                                i = i9 ^ (-2080896);
                            } else {
                                long j = i9;
                                int i10 = i5 + 1;
                                char c4 = j ^ (bArr[i5] << 28);
                                if (c4 >= 0) {
                                    c3 = 16256;
                                    i5 = i10;
                                } else {
                                    i5 = i10 + 1;
                                    char c5 = c4 ^ (bArr[i10] << 35);
                                    if (c5 < 0) {
                                        c2 = 16256;
                                    } else {
                                        int i11 = i5 + 1;
                                        c4 = c5 ^ (bArr[i5] << 42);
                                        if (c4 >= 0) {
                                            c3 = 16256;
                                            i5 = i11;
                                        } else {
                                            int i12 = i11 + 1;
                                            c5 = c4 ^ (bArr[i11] << 49);
                                            if (c5 < 0) {
                                                c2 = 16256;
                                                i5 = i12;
                                            } else {
                                                i5 = i12 + 1;
                                                c = (c5 ^ (bArr[i12] << 56)) ^ 71499008037633920L;
                                                if (c < 0) {
                                                    int i13 = i5 + 1;
                                                    if (bArr[i5] < 0) {
                                                        throw InvalidProtocolBufferException.malformedVarint();
                                                    }
                                                    i5 = i13;
                                                }
                                            }
                                        }
                                    }
                                    c = c5 ^ c2;
                                }
                                c = c3 ^ c4;
                            }
                        }
                        this.f11078c = i5;
                        return c;
                    }
                    i = i6 ^ (-128);
                    c = i;
                    this.f11078c = i5;
                    return c;
                }
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: e */
        public void mo2200e(List<Integer> list) {
            int i;
            int i2;
            if (!(list instanceof C2663w)) {
                int m2923b = WireFormat.m2923b(this.f11080e);
                if (m2923b == 2) {
                    int m2784c0 = m2784c0();
                    m2774m0(m2784c0);
                    int i3 = this.f11078c;
                    while (this.f11078c < i3 + m2784c0) {
                        list.add(Integer.valueOf(m2790W()));
                    }
                    return;
                } else if (m2923b != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    do {
                        list.add(Integer.valueOf(mo2189p()));
                        if (m2795R()) {
                            return;
                        }
                        i = this.f11078c;
                    } while (m2784c0() == this.f11080e);
                    this.f11078c = i;
                    return;
                }
            }
            C2663w c2663w = (C2663w) list;
            int m2923b2 = WireFormat.m2923b(this.f11080e);
            if (m2923b2 == 2) {
                int m2784c02 = m2784c0();
                m2774m0(m2784c02);
                int i4 = this.f11078c;
                while (this.f11078c < i4 + m2784c02) {
                    c2663w.mo2239n(m2790W());
                }
            } else if (m2923b2 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                do {
                    c2663w.mo2239n(mo2189p());
                    if (m2795R()) {
                        return;
                    }
                    i2 = this.f11078c;
                } while (m2784c0() == this.f11080e);
                this.f11078c = i2;
            }
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: f */
        public long mo2199f() {
            m2779h0(1);
            return m2789X();
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: g */
        public void mo2198g(List<Integer> list) {
            int i;
            int i2;
            if (!(list instanceof C2663w)) {
                int m2923b = WireFormat.m2923b(this.f11080e);
                if (m2923b == 2) {
                    int m2784c0 = m2784c0();
                    m2774m0(m2784c0);
                    int i3 = this.f11078c;
                    while (this.f11078c < i3 + m2784c0) {
                        list.add(Integer.valueOf(m2790W()));
                    }
                    return;
                } else if (m2923b != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    do {
                        list.add(Integer.valueOf(mo2214G()));
                        if (m2795R()) {
                            return;
                        }
                        i = this.f11078c;
                    } while (m2784c0() == this.f11080e);
                    this.f11078c = i;
                    return;
                }
            }
            C2663w c2663w = (C2663w) list;
            int m2923b2 = WireFormat.m2923b(this.f11080e);
            if (m2923b2 == 2) {
                int m2784c02 = m2784c0();
                m2774m0(m2784c02);
                int i4 = this.f11078c;
                while (this.f11078c < i4 + m2784c02) {
                    c2663w.mo2239n(m2790W());
                }
            } else if (m2923b2 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            } else {
                do {
                    c2663w.mo2239n(mo2214G());
                    if (m2795R()) {
                        return;
                    }
                    i2 = this.f11078c;
                } while (m2784c0() == this.f11080e);
                this.f11078c = i2;
            }
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: h */
        public int mo2197h() {
            m2779h0(0);
            return AbstractC2613i.m2703b(m2784c0());
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: i */
        public void mo2196i(List<Long> list) {
            int i;
            int i2;
            if (!(list instanceof C2597e0)) {
                int m2923b = WireFormat.m2923b(this.f11080e);
                if (m2923b != 0) {
                    if (m2923b != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int m2784c0 = m2784c0();
                    int i3 = this.f11078c;
                    while (this.f11078c < i3 + m2784c0) {
                        list.add(Long.valueOf(AbstractC2613i.m2702c(m2783d0())));
                    }
                    return;
                }
                do {
                    list.add(Long.valueOf(mo2194k()));
                    if (m2795R()) {
                        return;
                    }
                    i = this.f11078c;
                } while (m2784c0() == this.f11080e);
                this.f11078c = i;
                return;
            }
            C2597e0 c2597e0 = (C2597e0) list;
            int m2923b2 = WireFormat.m2923b(this.f11080e);
            if (m2923b2 != 0) {
                if (m2923b2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int m2784c02 = m2784c0();
                int i4 = this.f11078c;
                while (this.f11078c < i4 + m2784c02) {
                    c2597e0.m2763r(AbstractC2613i.m2702c(m2783d0()));
                }
                return;
            }
            do {
                c2597e0.m2763r(mo2194k());
                if (m2795R()) {
                    return;
                }
                i2 = this.f11078c;
            } while (m2784c0() == this.f11080e);
            this.f11078c = i2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: j */
        public <T> void mo2195j(List<T> list, AbstractC2572a1<T> abstractC2572a1, C2643o c2643o) {
            int i;
            if (WireFormat.m2923b(this.f11080e) == 3) {
                int i2 = this.f11080e;
                do {
                    list.add(m2792U(abstractC2572a1, c2643o));
                    if (m2795R()) {
                        return;
                    }
                    i = this.f11078c;
                } while (m2784c0() == i2);
                this.f11078c = i;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: k */
        public long mo2194k() {
            m2779h0(0);
            return AbstractC2613i.m2702c(m2783d0());
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: l */
        public void mo2193l(List<Integer> list) {
            int i;
            int i2;
            if (!(list instanceof C2663w)) {
                int m2923b = WireFormat.m2923b(this.f11080e);
                if (m2923b != 0) {
                    if (m2923b != 2) {
                        throw InvalidProtocolBufferException.invalidWireType();
                    }
                    int m2784c0 = m2784c0();
                    int i3 = this.f11078c;
                    while (this.f11078c < i3 + m2784c0) {
                        list.add(Integer.valueOf(m2784c0()));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(mo2217D()));
                    if (m2795R()) {
                        return;
                    }
                    i = this.f11078c;
                } while (m2784c0() == this.f11080e);
                this.f11078c = i;
                return;
            }
            C2663w c2663w = (C2663w) list;
            int m2923b2 = WireFormat.m2923b(this.f11080e);
            if (m2923b2 != 0) {
                if (m2923b2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int m2784c02 = m2784c0();
                int i4 = this.f11078c;
                while (this.f11078c < i4 + m2784c02) {
                    c2663w.mo2239n(m2784c0());
                }
                return;
            }
            do {
                c2663w.mo2239n(mo2217D());
                if (m2795R()) {
                    return;
                }
                i2 = this.f11078c;
            } while (m2784c0() == this.f11080e);
            this.f11078c = i2;
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: m */
        public <T> T mo2192m(Class<T> cls, C2643o c2643o) {
            m2779h0(2);
            return (T) m2787Z(C2664w0.m2256a().m2253d(cls), c2643o);
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: n */
        public void mo2191n(List<Boolean> list) {
            int i;
            int i2;
            int i3;
            if (list instanceof C2599f) {
                C2599f c2599f = (C2599f) list;
                int m2923b = WireFormat.m2923b(this.f11080e);
                if (m2923b == 0) {
                    do {
                        c2599f.m2749r(mo2187r());
                        if (m2795R()) {
                            return;
                        }
                        i3 = this.f11078c;
                    } while (m2784c0() == this.f11080e);
                    this.f11078c = i3;
                    return;
                } else if (m2923b != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    int m2784c0 = this.f11078c + m2784c0();
                    while (true) {
                        i = m2784c0;
                        if (this.f11078c >= m2784c0) {
                            break;
                        }
                        c2599f.m2749r(m2784c0() != 0);
                    }
                }
            } else {
                int m2923b2 = WireFormat.m2923b(this.f11080e);
                if (m2923b2 == 0) {
                    do {
                        list.add(Boolean.valueOf(mo2187r()));
                        if (m2795R()) {
                            return;
                        }
                        i2 = this.f11078c;
                    } while (m2784c0() == this.f11080e);
                    this.f11078c = i2;
                    return;
                } else if (m2923b2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    int m2784c02 = this.f11078c + m2784c0();
                    while (true) {
                        i = m2784c02;
                        if (this.f11078c >= m2784c02) {
                            break;
                        }
                        list.add(Boolean.valueOf(m2784c0() != 0));
                    }
                }
            }
            m2780g0(i);
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: o */
        public String mo2190o() {
            return m2786a0(false);
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: p */
        public int mo2189p() {
            m2779h0(5);
            return m2791V();
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: q */
        public <T> T mo2188q(Class<T> cls, C2643o c2643o) {
            m2779h0(3);
            return (T) m2792U(C2664w0.m2256a().m2253d(cls), c2643o);
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: r */
        public boolean mo2187r() {
            boolean z = false;
            m2779h0(0);
            if (m2784c0() != 0) {
                z = true;
            }
            return z;
        }

        @Override // com.google.protobuf.AbstractC2682z0
        public double readDouble() {
            m2779h0(1);
            return Double.longBitsToDouble(m2789X());
        }

        @Override // com.google.protobuf.AbstractC2682z0
        public float readFloat() {
            m2779h0(5);
            return Float.intBitsToFloat(m2791V());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: s */
        public <T> void mo2186s(List<T> list, AbstractC2572a1<T> abstractC2572a1, C2643o c2643o) {
            int i;
            if (WireFormat.m2923b(this.f11080e) == 2) {
                int i2 = this.f11080e;
                do {
                    list.add(m2787Z(abstractC2572a1, c2643o));
                    if (m2795R()) {
                        return;
                    }
                    i = this.f11078c;
                } while (m2784c0() == i2);
                this.f11078c = i;
                return;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: t */
        public int mo2185t() {
            if (m2795R()) {
                return Integer.MAX_VALUE;
            }
            int m2784c0 = m2784c0();
            this.f11080e = m2784c0;
            if (m2784c0 != this.f11081f) {
                return WireFormat.m2924a(m2784c0);
            }
            return Integer.MAX_VALUE;
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: u */
        public void mo2184u(List<String> list) {
            m2785b0(list, false);
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: v */
        public long mo2183v() {
            m2779h0(1);
            return m2789X();
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: w */
        public <T> T mo2182w(AbstractC2572a1<T> abstractC2572a1, C2643o c2643o) {
            m2779h0(2);
            return (T) m2787Z(abstractC2572a1, c2643o);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: x */
        public <K, V> void mo2181x(Map<K, V> map, C2607g0.C2608a<K, V> c2608a, C2643o c2643o) {
            m2779h0(2);
            int m2784c0 = m2784c0();
            m2781f0(m2784c0);
            int i = this.f11079d;
            this.f11079d = this.f11078c + m2784c0;
            try {
                K k = c2608a.f11104b;
                V v = c2608a.f11106d;
                while (true) {
                    int mo2185t = mo2185t();
                    if (mo2185t == Integer.MAX_VALUE) {
                        map.put(k, v);
                        this.f11079d = i;
                        return;
                    } else if (mo2185t == 1) {
                        k = m2793T(c2608a.f11103a, null, null);
                    } else if (mo2185t != 2) {
                        try {
                            if (!mo2215F()) {
                                throw new InvalidProtocolBufferException("Unable to parse map entry.");
                                break;
                            }
                        } catch (InvalidProtocolBufferException.InvalidWireTypeException e) {
                            if (!mo2215F()) {
                                throw new InvalidProtocolBufferException("Unable to parse map entry.");
                            }
                        }
                    } else {
                        v = m2793T(c2608a.f11105c, c2608a.f11106d.getClass(), c2643o);
                    }
                }
            } catch (Throwable th) {
                this.f11079d = i;
                throw th;
            }
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: y */
        public void mo2180y(List<Long> list) {
            int i;
            int i2;
            int i3;
            if (list instanceof C2597e0) {
                C2597e0 c2597e0 = (C2597e0) list;
                int m2923b = WireFormat.m2923b(this.f11080e);
                if (m2923b == 0) {
                    do {
                        c2597e0.m2763r(mo2201d());
                        if (m2795R()) {
                            return;
                        }
                        i3 = this.f11078c;
                    } while (m2784c0() == this.f11080e);
                    this.f11078c = i3;
                    return;
                } else if (m2923b != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    int m2784c0 = this.f11078c + m2784c0();
                    while (true) {
                        i = m2784c0;
                        if (this.f11078c >= m2784c0) {
                            break;
                        }
                        c2597e0.m2763r(m2783d0());
                    }
                }
            } else {
                int m2923b2 = WireFormat.m2923b(this.f11080e);
                if (m2923b2 == 0) {
                    do {
                        list.add(Long.valueOf(mo2201d()));
                        if (m2795R()) {
                            return;
                        }
                        i2 = this.f11078c;
                    } while (m2784c0() == this.f11080e);
                    this.f11078c = i2;
                    return;
                } else if (m2923b2 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                } else {
                    int m2784c02 = this.f11078c + m2784c0();
                    while (true) {
                        i = m2784c02;
                        if (this.f11078c >= m2784c02) {
                            break;
                        }
                        list.add(Long.valueOf(m2783d0()));
                    }
                }
            }
            m2780g0(i);
        }

        @Override // com.google.protobuf.AbstractC2682z0
        /* renamed from: z */
        public void mo2179z(List<String> list) {
            m2785b0(list, true);
        }
    }

    private AbstractC2594e() {
    }

    /* synthetic */ AbstractC2594e(C2595a c2595a) {
        this();
    }

    /* renamed from: Q */
    public static AbstractC2594e m2796Q(ByteBuffer byteBuffer, boolean z) {
        if (byteBuffer.hasArray()) {
            return new C2596b(byteBuffer, z);
        }
        throw new IllegalArgumentException("Direct buffers not yet supported");
    }
}

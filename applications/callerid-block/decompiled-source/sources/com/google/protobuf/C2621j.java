package com.google.protobuf;

import com.google.protobuf.C2607g0;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.protobuf.j */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/j.class */
public final class C2621j implements AbstractC2682z0 {

    /* renamed from: a */
    private final AbstractC2613i f11145a;

    /* renamed from: b */
    private int f11146b;

    /* renamed from: c */
    private int f11147c;

    /* renamed from: d */
    private int f11148d = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.protobuf.j$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/j$a.class */
    public static /* synthetic */ class C2622a {

        /* renamed from: a */
        static final /* synthetic */ int[] f11149a;

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
            f11149a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f11149a[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f11149a[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f11149a[WireFormat.FieldType.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f11149a[WireFormat.FieldType.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f11149a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f11149a[WireFormat.FieldType.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f11149a[WireFormat.FieldType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f11149a[WireFormat.FieldType.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f11149a[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f11149a[WireFormat.FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f11149a[WireFormat.FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f11149a[WireFormat.FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f11149a[WireFormat.FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f11149a[WireFormat.FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f11149a[WireFormat.FieldType.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f11149a[WireFormat.FieldType.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    private C2621j(AbstractC2613i iVar) {
        C2665x.m2250b(iVar, "input");
        AbstractC2613i iVar2 = iVar;
        this.f11145a = iVar2;
        iVar2.f11116d = this;
    }

    /* renamed from: Q */
    public static C2621j m2578Q(AbstractC2613i iVar) {
        C2621j jVar = iVar.f11116d;
        return jVar != null ? jVar : new C2621j(iVar);
    }

    /* renamed from: R */
    private Object m2577R(WireFormat.FieldType fieldType, Class<?> cls, C2643o oVar) {
        switch (C2622a.f11149a[fieldType.ordinal()]) {
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
                return mo2192m(cls, oVar);
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

    /* renamed from: S */
    private <T> T m2576S(AbstractC2572a1<T> a1Var, C2643o oVar) {
        int i = this.f11147c;
        this.f11147c = WireFormat.m2922c(WireFormat.m2924a(this.f11146b), 4);
        try {
            T h = a1Var.mo2330h();
            a1Var.mo2333e(h, this, oVar);
            a1Var.mo2335c(h);
            if (this.f11146b == this.f11147c) {
                return h;
            }
            throw InvalidProtocolBufferException.parseFailure();
        } finally {
            this.f11147c = i;
        }
    }

    /* renamed from: T */
    private <T> T m2575T(AbstractC2572a1<T> a1Var, C2643o oVar) {
        int D = this.f11145a.mo2659D();
        AbstractC2613i iVar = this.f11145a;
        if (iVar.f11113a < iVar.f11114b) {
            int m = iVar.mo2636m(D);
            T h = a1Var.mo2330h();
            this.f11145a.f11113a++;
            a1Var.mo2333e(h, this, oVar);
            a1Var.mo2335c(h);
            this.f11145a.mo2640a(0);
            AbstractC2613i iVar2 = this.f11145a;
            iVar2.f11113a--;
            iVar2.mo2637l(m);
            return h;
        }
        throw InvalidProtocolBufferException.recursionLimitExceeded();
    }

    /* renamed from: V */
    private void m2573V(int i) {
        if (this.f11145a.mo2639d() != i) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    /* renamed from: W */
    private void m2572W(int i) {
        if (WireFormat.m2923b(this.f11146b) != i) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    /* renamed from: X */
    private void m2571X(int i) {
        if ((i & 3) != 0) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    /* renamed from: Y */
    private void m2570Y(int i) {
        if ((i & 7) != 0) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: A */
    public <T> T mo2220A(AbstractC2572a1<T> a1Var, C2643o oVar) {
        m2572W(3);
        return (T) m2576S(a1Var, oVar);
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: B */
    public ByteString mo2219B() {
        m2572W(2);
        return this.f11145a.mo2634o();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: C */
    public void mo2218C(List<Float> list) {
        int C;
        int C2;
        if (list instanceof C2659u) {
            C2659u uVar = (C2659u) list;
            int b = WireFormat.m2923b(this.f11146b);
            if (b == 2) {
                int D = this.f11145a.mo2659D();
                m2571X(D);
                int d = this.f11145a.mo2639d();
                do {
                    uVar.m2275p(this.f11145a.mo2629t());
                } while (this.f11145a.mo2639d() < d + D);
            } else if (b == 5) {
                do {
                    uVar.m2275p(this.f11145a.mo2629t());
                    if (!this.f11145a.mo2638e()) {
                        C2 = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C2 == this.f11146b);
                this.f11148d = C2;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m2923b(this.f11146b);
            if (b2 == 2) {
                int D2 = this.f11145a.mo2659D();
                m2571X(D2);
                int d2 = this.f11145a.mo2639d();
                do {
                    list.add(Float.valueOf(this.f11145a.mo2629t()));
                } while (this.f11145a.mo2639d() < d2 + D2);
            } else if (b2 == 5) {
                do {
                    list.add(Float.valueOf(this.f11145a.mo2629t()));
                    if (!this.f11145a.mo2638e()) {
                        C = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C == this.f11146b);
                this.f11148d = C;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: D */
    public int mo2217D() {
        m2572W(0);
        return this.f11145a.mo2659D();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: E */
    public int mo2216E() {
        m2572W(0);
        return this.f11145a.mo2628u();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: F */
    public boolean mo2215F() {
        int i;
        if (this.f11145a.mo2638e() || (i = this.f11146b) == this.f11147c) {
            return false;
        }
        return this.f11145a.mo2657F(i);
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: G */
    public int mo2214G() {
        m2572W(5);
        return this.f11145a.mo2626w();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: H */
    public void mo2213H(List<ByteString> list) {
        int C;
        if (WireFormat.m2923b(this.f11146b) == 2) {
            do {
                list.add(mo2219B());
                if (!this.f11145a.mo2638e()) {
                    C = this.f11145a.mo2660C();
                } else {
                    return;
                }
            } while (C == this.f11146b);
            this.f11148d = C;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: I */
    public void mo2212I(List<Double> list) {
        int C;
        int C2;
        if (list instanceof C2636l) {
            C2636l lVar = (C2636l) list;
            int b = WireFormat.m2923b(this.f11146b);
            if (b == 1) {
                do {
                    lVar.m2430p(this.f11145a.mo2633p());
                    if (!this.f11145a.mo2638e()) {
                        C2 = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C2 == this.f11146b);
                this.f11148d = C2;
            } else if (b == 2) {
                int D = this.f11145a.mo2659D();
                m2570Y(D);
                int d = this.f11145a.mo2639d();
                do {
                    lVar.m2430p(this.f11145a.mo2633p());
                } while (this.f11145a.mo2639d() < d + D);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m2923b(this.f11146b);
            if (b2 == 1) {
                do {
                    list.add(Double.valueOf(this.f11145a.mo2633p()));
                    if (!this.f11145a.mo2638e()) {
                        C = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C == this.f11146b);
                this.f11148d = C;
            } else if (b2 == 2) {
                int D2 = this.f11145a.mo2659D();
                m2570Y(D2);
                int d2 = this.f11145a.mo2639d();
                do {
                    list.add(Double.valueOf(this.f11145a.mo2633p()));
                } while (this.f11145a.mo2639d() < d2 + D2);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: J */
    public void mo2211J(List<Long> list) {
        int i;
        int C;
        int C2;
        if (list instanceof C2597e0) {
            C2597e0 e0Var = (C2597e0) list;
            int b = WireFormat.m2923b(this.f11146b);
            if (b == 0) {
                do {
                    e0Var.m2763r(this.f11145a.mo2627v());
                    if (!this.f11145a.mo2638e()) {
                        C2 = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C2 == this.f11146b);
                this.f11148d = C2;
                return;
            } else if (b == 2) {
                i = this.f11145a.mo2639d() + this.f11145a.mo2659D();
                do {
                    e0Var.m2763r(this.f11145a.mo2627v());
                } while (this.f11145a.mo2639d() < i);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m2923b(this.f11146b);
            if (b2 == 0) {
                do {
                    list.add(Long.valueOf(this.f11145a.mo2627v()));
                    if (!this.f11145a.mo2638e()) {
                        C = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C == this.f11146b);
                this.f11148d = C;
                return;
            } else if (b2 == 2) {
                i = this.f11145a.mo2639d() + this.f11145a.mo2659D();
                do {
                    list.add(Long.valueOf(this.f11145a.mo2627v()));
                } while (this.f11145a.mo2639d() < i);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        m2573V(i);
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: K */
    public void mo2210K(List<Long> list) {
        int C;
        int C2;
        if (list instanceof C2597e0) {
            C2597e0 e0Var = (C2597e0) list;
            int b = WireFormat.m2923b(this.f11146b);
            if (b == 1) {
                do {
                    e0Var.m2763r(this.f11145a.mo2625x());
                    if (!this.f11145a.mo2638e()) {
                        C2 = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C2 == this.f11146b);
                this.f11148d = C2;
            } else if (b == 2) {
                int D = this.f11145a.mo2659D();
                m2570Y(D);
                int d = this.f11145a.mo2639d();
                do {
                    e0Var.m2763r(this.f11145a.mo2625x());
                } while (this.f11145a.mo2639d() < d + D);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m2923b(this.f11146b);
            if (b2 == 1) {
                do {
                    list.add(Long.valueOf(this.f11145a.mo2625x()));
                    if (!this.f11145a.mo2638e()) {
                        C = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C == this.f11146b);
                this.f11148d = C;
            } else if (b2 == 2) {
                int D2 = this.f11145a.mo2659D();
                m2570Y(D2);
                int d2 = this.f11145a.mo2639d();
                do {
                    list.add(Long.valueOf(this.f11145a.mo2625x()));
                } while (this.f11145a.mo2639d() < d2 + D2);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: L */
    public long mo2209L() {
        m2572W(0);
        return this.f11145a.mo2627v();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: M */
    public String mo2208M() {
        m2572W(2);
        return this.f11145a.mo2661B();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: N */
    public void mo2207N(List<Long> list) {
        int C;
        int C2;
        if (list instanceof C2597e0) {
            C2597e0 e0Var = (C2597e0) list;
            int b = WireFormat.m2923b(this.f11146b);
            if (b == 1) {
                do {
                    e0Var.m2763r(this.f11145a.mo2630s());
                    if (!this.f11145a.mo2638e()) {
                        C2 = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C2 == this.f11146b);
                this.f11148d = C2;
            } else if (b == 2) {
                int D = this.f11145a.mo2659D();
                m2570Y(D);
                int d = this.f11145a.mo2639d();
                do {
                    e0Var.m2763r(this.f11145a.mo2630s());
                } while (this.f11145a.mo2639d() < d + D);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m2923b(this.f11146b);
            if (b2 == 1) {
                do {
                    list.add(Long.valueOf(this.f11145a.mo2630s()));
                    if (!this.f11145a.mo2638e()) {
                        C = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C == this.f11146b);
                this.f11148d = C;
            } else if (b2 == 2) {
                int D2 = this.f11145a.mo2659D();
                m2570Y(D2);
                int d2 = this.f11145a.mo2639d();
                do {
                    list.add(Long.valueOf(this.f11145a.mo2630s()));
                } while (this.f11145a.mo2639d() < d2 + D2);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: O */
    public void mo2206O(List<Integer> list) {
        int i;
        int C;
        int C2;
        if (list instanceof C2663w) {
            C2663w wVar = (C2663w) list;
            int b = WireFormat.m2923b(this.f11146b);
            if (b == 0) {
                do {
                    wVar.mo2239n(this.f11145a.mo2628u());
                    if (!this.f11145a.mo2638e()) {
                        C2 = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C2 == this.f11146b);
                this.f11148d = C2;
                return;
            } else if (b == 2) {
                i = this.f11145a.mo2639d() + this.f11145a.mo2659D();
                do {
                    wVar.mo2239n(this.f11145a.mo2628u());
                } while (this.f11145a.mo2639d() < i);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m2923b(this.f11146b);
            if (b2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f11145a.mo2628u()));
                    if (!this.f11145a.mo2638e()) {
                        C = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C == this.f11146b);
                this.f11148d = C;
                return;
            } else if (b2 == 2) {
                i = this.f11145a.mo2639d() + this.f11145a.mo2659D();
                do {
                    list.add(Integer.valueOf(this.f11145a.mo2628u()));
                } while (this.f11145a.mo2639d() < i);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        m2573V(i);
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: P */
    public void mo2205P(List<Integer> list) {
        int i;
        int C;
        int C2;
        if (list instanceof C2663w) {
            C2663w wVar = (C2663w) list;
            int b = WireFormat.m2923b(this.f11146b);
            if (b == 0) {
                do {
                    wVar.mo2239n(this.f11145a.mo2632q());
                    if (!this.f11145a.mo2638e()) {
                        C2 = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C2 == this.f11146b);
                this.f11148d = C2;
                return;
            } else if (b == 2) {
                i = this.f11145a.mo2639d() + this.f11145a.mo2659D();
                do {
                    wVar.mo2239n(this.f11145a.mo2632q());
                } while (this.f11145a.mo2639d() < i);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m2923b(this.f11146b);
            if (b2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f11145a.mo2632q()));
                    if (!this.f11145a.mo2638e()) {
                        C = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C == this.f11146b);
                this.f11148d = C;
                return;
            } else if (b2 == 2) {
                i = this.f11145a.mo2639d() + this.f11145a.mo2659D();
                do {
                    list.add(Integer.valueOf(this.f11145a.mo2632q()));
                } while (this.f11145a.mo2639d() < i);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        m2573V(i);
    }

    /* renamed from: U */
    public void m2574U(List<String> list, boolean z) {
        int C;
        int C2;
        if (WireFormat.m2923b(this.f11146b) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        } else if (!(list instanceof AbstractC2577c0) || z) {
            do {
                list.add(z ? mo2208M() : mo2190o());
                if (!this.f11145a.mo2638e()) {
                    C = this.f11145a.mo2660C();
                } else {
                    return;
                }
            } while (C == this.f11146b);
            this.f11148d = C;
        } else {
            AbstractC2577c0 c0Var = (AbstractC2577c0) list;
            do {
                c0Var.mo2564l(mo2219B());
                if (!this.f11145a.mo2638e()) {
                    C2 = this.f11145a.mo2660C();
                } else {
                    return;
                }
            } while (C2 == this.f11146b);
            this.f11148d = C2;
        }
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: a */
    public int mo2204a() {
        return this.f11146b;
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: b */
    public void mo2203b(List<Integer> list) {
        int i;
        int C;
        int C2;
        if (list instanceof C2663w) {
            C2663w wVar = (C2663w) list;
            int b = WireFormat.m2923b(this.f11146b);
            if (b == 0) {
                do {
                    wVar.mo2239n(this.f11145a.mo2624y());
                    if (!this.f11145a.mo2638e()) {
                        C2 = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C2 == this.f11146b);
                this.f11148d = C2;
                return;
            } else if (b == 2) {
                i = this.f11145a.mo2639d() + this.f11145a.mo2659D();
                do {
                    wVar.mo2239n(this.f11145a.mo2624y());
                } while (this.f11145a.mo2639d() < i);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m2923b(this.f11146b);
            if (b2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f11145a.mo2624y()));
                    if (!this.f11145a.mo2638e()) {
                        C = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C == this.f11146b);
                this.f11148d = C;
                return;
            } else if (b2 == 2) {
                i = this.f11145a.mo2639d() + this.f11145a.mo2659D();
                do {
                    list.add(Integer.valueOf(this.f11145a.mo2624y()));
                } while (this.f11145a.mo2639d() < i);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        m2573V(i);
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: c */
    public int mo2202c() {
        m2572W(0);
        return this.f11145a.mo2632q();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: d */
    public long mo2201d() {
        m2572W(0);
        return this.f11145a.mo2658E();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: e */
    public void mo2200e(List<Integer> list) {
        int C;
        int C2;
        if (list instanceof C2663w) {
            C2663w wVar = (C2663w) list;
            int b = WireFormat.m2923b(this.f11146b);
            if (b == 2) {
                int D = this.f11145a.mo2659D();
                m2571X(D);
                int d = this.f11145a.mo2639d();
                do {
                    wVar.mo2239n(this.f11145a.mo2631r());
                } while (this.f11145a.mo2639d() < d + D);
            } else if (b == 5) {
                do {
                    wVar.mo2239n(this.f11145a.mo2631r());
                    if (!this.f11145a.mo2638e()) {
                        C2 = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C2 == this.f11146b);
                this.f11148d = C2;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m2923b(this.f11146b);
            if (b2 == 2) {
                int D2 = this.f11145a.mo2659D();
                m2571X(D2);
                int d2 = this.f11145a.mo2639d();
                do {
                    list.add(Integer.valueOf(this.f11145a.mo2631r()));
                } while (this.f11145a.mo2639d() < d2 + D2);
            } else if (b2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f11145a.mo2631r()));
                    if (!this.f11145a.mo2638e()) {
                        C = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C == this.f11146b);
                this.f11148d = C;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: f */
    public long mo2199f() {
        m2572W(1);
        return this.f11145a.mo2630s();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: g */
    public void mo2198g(List<Integer> list) {
        int C;
        int C2;
        if (list instanceof C2663w) {
            C2663w wVar = (C2663w) list;
            int b = WireFormat.m2923b(this.f11146b);
            if (b == 2) {
                int D = this.f11145a.mo2659D();
                m2571X(D);
                int d = this.f11145a.mo2639d();
                do {
                    wVar.mo2239n(this.f11145a.mo2626w());
                } while (this.f11145a.mo2639d() < d + D);
            } else if (b == 5) {
                do {
                    wVar.mo2239n(this.f11145a.mo2626w());
                    if (!this.f11145a.mo2638e()) {
                        C2 = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C2 == this.f11146b);
                this.f11148d = C2;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m2923b(this.f11146b);
            if (b2 == 2) {
                int D2 = this.f11145a.mo2659D();
                m2571X(D2);
                int d2 = this.f11145a.mo2639d();
                do {
                    list.add(Integer.valueOf(this.f11145a.mo2626w()));
                } while (this.f11145a.mo2639d() < d2 + D2);
            } else if (b2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f11145a.mo2626w()));
                    if (!this.f11145a.mo2638e()) {
                        C = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C == this.f11146b);
                this.f11148d = C;
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: h */
    public int mo2197h() {
        m2572W(0);
        return this.f11145a.mo2624y();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: i */
    public void mo2196i(List<Long> list) {
        int i;
        int C;
        int C2;
        if (list instanceof C2597e0) {
            C2597e0 e0Var = (C2597e0) list;
            int b = WireFormat.m2923b(this.f11146b);
            if (b == 0) {
                do {
                    e0Var.m2763r(this.f11145a.mo2623z());
                    if (!this.f11145a.mo2638e()) {
                        C2 = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C2 == this.f11146b);
                this.f11148d = C2;
                return;
            } else if (b == 2) {
                i = this.f11145a.mo2639d() + this.f11145a.mo2659D();
                do {
                    e0Var.m2763r(this.f11145a.mo2623z());
                } while (this.f11145a.mo2639d() < i);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m2923b(this.f11146b);
            if (b2 == 0) {
                do {
                    list.add(Long.valueOf(this.f11145a.mo2623z()));
                    if (!this.f11145a.mo2638e()) {
                        C = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C == this.f11146b);
                this.f11148d = C;
                return;
            } else if (b2 == 2) {
                i = this.f11145a.mo2639d() + this.f11145a.mo2659D();
                do {
                    list.add(Long.valueOf(this.f11145a.mo2623z()));
                } while (this.f11145a.mo2639d() < i);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        m2573V(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: j */
    public <T> void mo2195j(List<T> list, AbstractC2572a1<T> a1Var, C2643o oVar) {
        int C;
        if (WireFormat.m2923b(this.f11146b) == 3) {
            int i = this.f11146b;
            do {
                list.add(m2576S(a1Var, oVar));
                if (!this.f11145a.mo2638e() && this.f11148d == 0) {
                    C = this.f11145a.mo2660C();
                } else {
                    return;
                }
            } while (C == i);
            this.f11148d = C;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: k */
    public long mo2194k() {
        m2572W(0);
        return this.f11145a.mo2623z();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: l */
    public void mo2193l(List<Integer> list) {
        int i;
        int C;
        int C2;
        if (list instanceof C2663w) {
            C2663w wVar = (C2663w) list;
            int b = WireFormat.m2923b(this.f11146b);
            if (b == 0) {
                do {
                    wVar.mo2239n(this.f11145a.mo2659D());
                    if (!this.f11145a.mo2638e()) {
                        C2 = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C2 == this.f11146b);
                this.f11148d = C2;
                return;
            } else if (b == 2) {
                i = this.f11145a.mo2639d() + this.f11145a.mo2659D();
                do {
                    wVar.mo2239n(this.f11145a.mo2659D());
                } while (this.f11145a.mo2639d() < i);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m2923b(this.f11146b);
            if (b2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f11145a.mo2659D()));
                    if (!this.f11145a.mo2638e()) {
                        C = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C == this.f11146b);
                this.f11148d = C;
                return;
            } else if (b2 == 2) {
                i = this.f11145a.mo2639d() + this.f11145a.mo2659D();
                do {
                    list.add(Integer.valueOf(this.f11145a.mo2659D()));
                } while (this.f11145a.mo2639d() < i);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        m2573V(i);
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: m */
    public <T> T mo2192m(Class<T> cls, C2643o oVar) {
        m2572W(2);
        return (T) m2575T(C2664w0.m2256a().m2253d(cls), oVar);
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: n */
    public void mo2191n(List<Boolean> list) {
        int i;
        int C;
        int C2;
        if (list instanceof C2599f) {
            C2599f fVar = (C2599f) list;
            int b = WireFormat.m2923b(this.f11146b);
            if (b == 0) {
                do {
                    fVar.m2749r(this.f11145a.mo2635n());
                    if (!this.f11145a.mo2638e()) {
                        C2 = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C2 == this.f11146b);
                this.f11148d = C2;
                return;
            } else if (b == 2) {
                i = this.f11145a.mo2639d() + this.f11145a.mo2659D();
                do {
                    fVar.m2749r(this.f11145a.mo2635n());
                } while (this.f11145a.mo2639d() < i);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m2923b(this.f11146b);
            if (b2 == 0) {
                do {
                    list.add(Boolean.valueOf(this.f11145a.mo2635n()));
                    if (!this.f11145a.mo2638e()) {
                        C = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C == this.f11146b);
                this.f11148d = C;
                return;
            } else if (b2 == 2) {
                i = this.f11145a.mo2639d() + this.f11145a.mo2659D();
                do {
                    list.add(Boolean.valueOf(this.f11145a.mo2635n()));
                } while (this.f11145a.mo2639d() < i);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        m2573V(i);
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: o */
    public String mo2190o() {
        m2572W(2);
        return this.f11145a.mo2662A();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: p */
    public int mo2189p() {
        m2572W(5);
        return this.f11145a.mo2631r();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: q */
    public <T> T mo2188q(Class<T> cls, C2643o oVar) {
        m2572W(3);
        return (T) m2576S(C2664w0.m2256a().m2253d(cls), oVar);
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: r */
    public boolean mo2187r() {
        m2572W(0);
        return this.f11145a.mo2635n();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    public double readDouble() {
        m2572W(1);
        return this.f11145a.mo2633p();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    public float readFloat() {
        m2572W(5);
        return this.f11145a.mo2629t();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: s */
    public <T> void mo2186s(List<T> list, AbstractC2572a1<T> a1Var, C2643o oVar) {
        int C;
        if (WireFormat.m2923b(this.f11146b) == 2) {
            int i = this.f11146b;
            do {
                list.add(m2575T(a1Var, oVar));
                if (!this.f11145a.mo2638e() && this.f11148d == 0) {
                    C = this.f11145a.mo2660C();
                } else {
                    return;
                }
            } while (C == i);
            this.f11148d = C;
            return;
        }
        throw InvalidProtocolBufferException.invalidWireType();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: t */
    public int mo2185t() {
        int i = this.f11148d;
        if (i != 0) {
            this.f11146b = i;
            this.f11148d = 0;
        } else {
            this.f11146b = this.f11145a.mo2660C();
        }
        int i2 = this.f11146b;
        if (i2 == 0 || i2 == this.f11147c) {
            return Integer.MAX_VALUE;
        }
        return WireFormat.m2924a(i2);
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: u */
    public void mo2184u(List<String> list) {
        m2574U(list, false);
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: v */
    public long mo2183v() {
        m2572W(1);
        return this.f11145a.mo2625x();
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: w */
    public <T> T mo2182w(AbstractC2572a1<T> a1Var, C2643o oVar) {
        m2572W(2);
        return (T) m2575T(a1Var, oVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: x */
    public <K, V> void mo2181x(Map<K, V> map, C2607g0.C2608a<K, V> aVar, C2643o oVar) {
        m2572W(2);
        int m = this.f11145a.mo2636m(this.f11145a.mo2659D());
        Object obj = aVar.f11104b;
        Object obj2 = aVar.f11106d;
        while (true) {
            try {
                int t = mo2185t();
                if (t == Integer.MAX_VALUE || this.f11145a.mo2638e()) {
                    break;
                } else if (t == 1) {
                    obj = m2577R(aVar.f11103a, null, null);
                } else if (t != 2) {
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
                    obj2 = m2577R(aVar.f11105c, aVar.f11106d.getClass(), oVar);
                }
            } catch (Throwable th) {
                this.f11145a.mo2637l(m);
                throw th;
            }
        }
        map.put(obj, obj2);
        this.f11145a.mo2637l(m);
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: y */
    public void mo2180y(List<Long> list) {
        int i;
        int C;
        int C2;
        if (list instanceof C2597e0) {
            C2597e0 e0Var = (C2597e0) list;
            int b = WireFormat.m2923b(this.f11146b);
            if (b == 0) {
                do {
                    e0Var.m2763r(this.f11145a.mo2658E());
                    if (!this.f11145a.mo2638e()) {
                        C2 = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C2 == this.f11146b);
                this.f11148d = C2;
                return;
            } else if (b == 2) {
                i = this.f11145a.mo2639d() + this.f11145a.mo2659D();
                do {
                    e0Var.m2763r(this.f11145a.mo2658E());
                } while (this.f11145a.mo2639d() < i);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        } else {
            int b2 = WireFormat.m2923b(this.f11146b);
            if (b2 == 0) {
                do {
                    list.add(Long.valueOf(this.f11145a.mo2658E()));
                    if (!this.f11145a.mo2638e()) {
                        C = this.f11145a.mo2660C();
                    } else {
                        return;
                    }
                } while (C == this.f11146b);
                this.f11148d = C;
                return;
            } else if (b2 == 2) {
                i = this.f11145a.mo2639d() + this.f11145a.mo2659D();
                do {
                    list.add(Long.valueOf(this.f11145a.mo2658E()));
                } while (this.f11145a.mo2639d() < i);
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
        m2573V(i);
    }

    @Override // com.google.protobuf.AbstractC2682z0
    /* renamed from: z */
    public void mo2179z(List<String> list) {
        m2574U(list, true);
    }
}

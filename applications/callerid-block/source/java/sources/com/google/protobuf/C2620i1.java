package com.google.protobuf;
/* renamed from: com.google.protobuf.i1 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/i1.class */
class C2620i1 extends AbstractC2609g1<C2612h1, C2612h1> {
    /* renamed from: A */
    public C2612h1 mo2596g(Object obj) {
        return ((GeneratedMessageLite) obj).unknownFields;
    }

    /* renamed from: B */
    public int mo2595h(C2612h1 c2612h1) {
        return c2612h1.m2717d();
    }

    /* renamed from: C */
    public int mo2594i(C2612h1 c2612h1) {
        return c2612h1.m2716e();
    }

    /* renamed from: D */
    public C2612h1 mo2592k(C2612h1 c2612h1, C2612h1 c2612h12) {
        if (!c2612h12.equals(C2612h1.m2718c())) {
            c2612h1 = C2612h1.m2712i(c2612h1, c2612h12);
        }
        return c2612h1;
    }

    /* renamed from: E */
    public C2612h1 mo2591n() {
        return C2612h1.m2711j();
    }

    /* renamed from: F */
    public void mo2590o(Object obj, C2612h1 c2612h1) {
        mo2589p(obj, c2612h1);
    }

    /* renamed from: G */
    public void mo2589p(Object obj, C2612h1 c2612h1) {
        ((GeneratedMessageLite) obj).unknownFields = c2612h1;
    }

    /* renamed from: H */
    C2612h1 m2605H(C2612h1 c2612h1) {
        c2612h1.m2713h();
        return c2612h1;
    }

    /* renamed from: I */
    public void mo2586s(C2612h1 c2612h1, Writer writer) {
        c2612h1.m2706o(writer);
    }

    /* renamed from: J */
    public void mo2585t(C2612h1 c2612h1, Writer writer) {
        c2612h1.m2704q(writer);
    }

    @Override // com.google.protobuf.AbstractC2609g1
    /* renamed from: j */
    public void mo2593j(Object obj) {
        mo2596g(obj).m2713h();
    }

    @Override // com.google.protobuf.AbstractC2609g1
    /* renamed from: q */
    public boolean mo2588q(AbstractC2682z0 abstractC2682z0) {
        return false;
    }

    @Override // com.google.protobuf.AbstractC2609g1
    /* renamed from: r */
    /* bridge */ /* synthetic */ C2612h1 mo2587r(C2612h1 c2612h1) {
        C2612h1 c2612h12 = c2612h1;
        m2605H(c2612h12);
        return c2612h12;
    }

    /* renamed from: u */
    public void mo2602a(C2612h1 c2612h1, int i, int i2) {
        c2612h1.m2708m(WireFormat.m2922c(i, 5), Integer.valueOf(i2));
    }

    /* renamed from: v */
    public void mo2601b(C2612h1 c2612h1, int i, long j) {
        c2612h1.m2708m(WireFormat.m2922c(i, 1), Long.valueOf(j));
    }

    /* renamed from: w */
    public void mo2600c(C2612h1 c2612h1, int i, C2612h1 c2612h12) {
        c2612h1.m2708m(WireFormat.m2922c(i, 3), c2612h12);
    }

    /* renamed from: x */
    public void mo2599d(C2612h1 c2612h1, int i, ByteString byteString) {
        c2612h1.m2708m(WireFormat.m2922c(i, 2), byteString);
    }

    /* renamed from: y */
    public void mo2598e(C2612h1 c2612h1, int i, long j) {
        c2612h1.m2708m(WireFormat.m2922c(i, 0), Long.valueOf(j));
    }

    /* renamed from: z */
    public C2612h1 mo2597f(Object obj) {
        C2612h1 mo2596g = mo2596g(obj);
        C2612h1 c2612h1 = mo2596g;
        if (mo2596g == C2612h1.m2718c()) {
            c2612h1 = C2612h1.m2711j();
            mo2589p(obj, c2612h1);
        }
        return c2612h1;
    }
}

package com.google.protobuf;
/* renamed from: com.google.protobuf.i1 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/i1.class */
class C2620i1 extends AbstractC2609g1<C2612h1, C2612h1> {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public C2612h1 mo2596g(Object obj) {
        return ((GeneratedMessageLite) obj).unknownFields;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B */
    public int mo2595h(C2612h1 h1Var) {
        return h1Var.m2717d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C */
    public int mo2594i(C2612h1 h1Var) {
        return h1Var.m2716e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: D */
    public C2612h1 mo2592k(C2612h1 h1Var, C2612h1 h1Var2) {
        if (!h1Var2.equals(C2612h1.m2718c())) {
            h1Var = C2612h1.m2712i(h1Var, h1Var2);
        }
        return h1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: E */
    public C2612h1 mo2591n() {
        return C2612h1.m2711j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: F */
    public void mo2590o(Object obj, C2612h1 h1Var) {
        mo2589p(obj, h1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: G */
    public void mo2589p(Object obj, C2612h1 h1Var) {
        ((GeneratedMessageLite) obj).unknownFields = h1Var;
    }

    /* renamed from: H */
    C2612h1 m2605H(C2612h1 h1Var) {
        h1Var.m2713h();
        return h1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I */
    public void mo2586s(C2612h1 h1Var, Writer writer) {
        h1Var.m2706o(writer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J */
    public void mo2585t(C2612h1 h1Var, Writer writer) {
        h1Var.m2704q(writer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.AbstractC2609g1
    /* renamed from: j */
    public void mo2593j(Object obj) {
        mo2596g(obj).m2713h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.AbstractC2609g1
    /* renamed from: q */
    public boolean mo2588q(AbstractC2682z0 z0Var) {
        return false;
    }

    @Override // com.google.protobuf.AbstractC2609g1
    /* renamed from: r */
    /* bridge */ /* synthetic */ C2612h1 mo2587r(C2612h1 h1Var) {
        C2612h1 h1Var2 = h1Var;
        m2605H(h1Var2);
        return h1Var2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public void mo2602a(C2612h1 h1Var, int i, int i2) {
        h1Var.m2708m(WireFormat.m2922c(i, 5), Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public void mo2601b(C2612h1 h1Var, int i, long j) {
        h1Var.m2708m(WireFormat.m2922c(i, 1), Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public void mo2600c(C2612h1 h1Var, int i, C2612h1 h1Var2) {
        h1Var.m2708m(WireFormat.m2922c(i, 3), h1Var2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public void mo2599d(C2612h1 h1Var, int i, ByteString byteString) {
        h1Var.m2708m(WireFormat.m2922c(i, 2), byteString);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public void mo2598e(C2612h1 h1Var, int i, long j) {
        h1Var.m2708m(WireFormat.m2922c(i, 0), Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z */
    public C2612h1 mo2597f(Object obj) {
        C2612h1 A = mo2596g(obj);
        C2612h1 h1Var = A;
        if (A == C2612h1.m2718c()) {
            h1Var = C2612h1.m2711j();
            mo2589p(obj, h1Var);
        }
        return h1Var;
    }
}

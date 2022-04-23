package com.google.protobuf;
/* renamed from: com.google.protobuf.g1 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/g1.class */
abstract class AbstractC2609g1<T, B> {
    /* renamed from: a */
    abstract void mo2602a(B b, int i, int i2);

    /* renamed from: b */
    abstract void mo2601b(B b, int i, long j);

    /* renamed from: c */
    abstract void mo2600c(B b, int i, T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public abstract void mo2599d(B b, int i, ByteString byteString);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public abstract void mo2598e(B b, int i, long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public abstract B mo2597f(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public abstract T mo2596g(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public abstract int mo2595h(T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public abstract int mo2594i(T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public abstract void mo2593j(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public abstract T mo2592k(T t, T t2);

    /* renamed from: l */
    final void m2724l(B b, AbstractC2682z0 z0Var) {
        while (z0Var.mo2185t() != Integer.MAX_VALUE && m2723m(b, z0Var)) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public final boolean m2723m(B b, AbstractC2682z0 z0Var) {
        int a = z0Var.mo2204a();
        int a2 = WireFormat.m2924a(a);
        int b2 = WireFormat.m2923b(a);
        if (b2 == 0) {
            mo2598e(b, a2, z0Var.mo2209L());
            return true;
        } else if (b2 == 1) {
            mo2601b(b, a2, z0Var.mo2199f());
            return true;
        } else if (b2 == 2) {
            mo2599d(b, a2, z0Var.mo2219B());
            return true;
        } else if (b2 == 3) {
            B n = mo2591n();
            int c = WireFormat.m2922c(a2, 4);
            m2724l(n, z0Var);
            if (c == z0Var.mo2204a()) {
                mo2600c(b, a2, mo2587r(n));
                return true;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
        } else if (b2 == 4) {
            return false;
        } else {
            if (b2 == 5) {
                mo2602a(b, a2, z0Var.mo2189p());
                return true;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public abstract B mo2591n();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public abstract void mo2590o(Object obj, B b);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public abstract void mo2589p(Object obj, T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public abstract boolean mo2588q(AbstractC2682z0 z0Var);

    /* renamed from: r */
    abstract T mo2587r(B b);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public abstract void mo2586s(T t, Writer writer);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public abstract void mo2585t(T t, Writer writer);
}

package com.google.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.protobuf.g1 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/g1.class */
public abstract class AbstractC2609g1<T, B> {
    /* renamed from: a */
    abstract void mo2602a(B b, int i, int i2);

    /* renamed from: b */
    abstract void mo2601b(B b, int i, long j);

    /* renamed from: c */
    abstract void mo2600c(B b, int i, T t);

    /* renamed from: d */
    public abstract void mo2599d(B b, int i, ByteString byteString);

    /* renamed from: e */
    public abstract void mo2598e(B b, int i, long j);

    /* renamed from: f */
    public abstract B mo2597f(Object obj);

    /* renamed from: g */
    public abstract T mo2596g(Object obj);

    /* renamed from: h */
    public abstract int mo2595h(T t);

    /* renamed from: i */
    public abstract int mo2594i(T t);

    /* renamed from: j */
    public abstract void mo2593j(Object obj);

    /* renamed from: k */
    public abstract T mo2592k(T t, T t2);

    /* renamed from: l */
    final void m2724l(B b, AbstractC2682z0 abstractC2682z0) {
        while (abstractC2682z0.mo2185t() != Integer.MAX_VALUE && m2723m(b, abstractC2682z0)) {
        }
    }

    /* renamed from: m */
    public final boolean m2723m(B b, AbstractC2682z0 abstractC2682z0) {
        int mo2204a = abstractC2682z0.mo2204a();
        int m2924a = WireFormat.m2924a(mo2204a);
        int m2923b = WireFormat.m2923b(mo2204a);
        if (m2923b == 0) {
            mo2598e(b, m2924a, abstractC2682z0.mo2209L());
            return true;
        } else if (m2923b == 1) {
            mo2601b(b, m2924a, abstractC2682z0.mo2199f());
            return true;
        } else if (m2923b == 2) {
            mo2599d(b, m2924a, abstractC2682z0.mo2219B());
            return true;
        } else if (m2923b != 3) {
            if (m2923b == 4) {
                return false;
            }
            if (m2923b != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            mo2602a(b, m2924a, abstractC2682z0.mo2189p());
            return true;
        } else {
            B mo2591n = mo2591n();
            int m2922c = WireFormat.m2922c(m2924a, 4);
            m2724l(mo2591n, abstractC2682z0);
            if (m2922c != abstractC2682z0.mo2204a()) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
            mo2600c(b, m2924a, mo2587r(mo2591n));
            return true;
        }
    }

    /* renamed from: n */
    public abstract B mo2591n();

    /* renamed from: o */
    public abstract void mo2590o(Object obj, B b);

    /* renamed from: p */
    public abstract void mo2589p(Object obj, T t);

    /* renamed from: q */
    public abstract boolean mo2588q(AbstractC2682z0 abstractC2682z0);

    /* renamed from: r */
    abstract T mo2587r(B b);

    /* renamed from: s */
    public abstract void mo2586s(T t, Writer writer);

    /* renamed from: t */
    public abstract void mo2585t(T t, Writer writer);
}

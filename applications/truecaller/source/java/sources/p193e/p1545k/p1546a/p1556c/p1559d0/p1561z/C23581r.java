package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.util.Objects;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23757l;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1569k0.C23735a;
import p193e.p1545k.p1546a.p1556c.p1569k0.C23746l;
import p193e.p1545k.p1546a.p1556c.p1569k0.C23751q;
import p193e.p1545k.p1546a.p1556c.p1569k0.C23753s;
/* renamed from: e.k.a.c.d0.z.r */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/r.class */
public class C23581r extends AbstractC23553f<AbstractC23757l> {

    /* renamed from: e */
    public static final C23581r f65410e = new C23581r();

    /* renamed from: e.k.a.c.d0.z.r$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/r$a.class */
    public static final class C23582a extends AbstractC23553f<C23735a> {

        /* renamed from: e */
        public static final C23582a f65411e = new C23582a();

        public C23582a() {
            super(C23735a.class, Boolean.TRUE);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            if (abstractC23376j.mo7146V1()) {
                return m6625q0(abstractC23376j, abstractC23632g, abstractC23632g.f65501c.f65481m);
            }
            abstractC23632g.m6496J(C23735a.class, abstractC23376j);
            throw null;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: e */
        public Object mo6231e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
            C23735a c23735a = (C23735a) obj;
            if (abstractC23376j.mo7146V1()) {
                m6622t0(abstractC23376j, abstractC23632g, c23735a);
                return c23735a;
            }
            abstractC23632g.m6496J(C23735a.class, abstractC23376j);
            throw null;
        }
    }

    /* renamed from: e.k.a.c.d0.z.r$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/r$b.class */
    public static final class C23583b extends AbstractC23553f<C23753s> {

        /* renamed from: e */
        public static final C23583b f65412e = new C23583b();

        public C23583b() {
            super(C23753s.class, Boolean.TRUE);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            C23753s c23753s;
            if (abstractC23376j.mo7144Y1()) {
                c23753s = m6624r0(abstractC23376j, abstractC23632g, abstractC23632g.f65501c.f65481m);
            } else if (abstractC23376j.mo7150O1(EnumC23381m.FIELD_NAME)) {
                c23753s = m6623s0(abstractC23376j, abstractC23632g, abstractC23632g.f65501c.f65481m);
            } else if (!abstractC23376j.mo7150O1(EnumC23381m.END_OBJECT)) {
                abstractC23632g.m6496J(C23753s.class, abstractC23376j);
                throw null;
            } else {
                C23746l c23746l = abstractC23632g.f65501c.f65481m;
                Objects.requireNonNull(c23746l);
                c23753s = new C23753s(c23746l);
            }
            return c23753s;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: e */
        public Object mo6231e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
            C23753s c23753s = (C23753s) obj;
            if (abstractC23376j.mo7144Y1() || abstractC23376j.mo7150O1(EnumC23381m.FIELD_NAME)) {
                return (C23753s) m6621u0(abstractC23376j, abstractC23632g, c23753s);
            }
            abstractC23632g.m6496J(C23753s.class, abstractC23376j);
            throw null;
        }
    }

    public C23581r() {
        super(AbstractC23757l.class, null);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j, p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r
    /* renamed from: c */
    public Object mo6233c(AbstractC23632g abstractC23632g) throws C23733k {
        Objects.requireNonNull(abstractC23632g.f65501c.f65481m);
        return C23751q.f65823a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
        int mo7140q = abstractC23376j.mo7140q();
        return mo7140q != 1 ? mo7140q != 3 ? m6626p0(abstractC23376j, abstractC23632g, abstractC23632g.f65501c.f65481m) : m6625q0(abstractC23376j, abstractC23632g, abstractC23632g.f65501c.f65481m) : m6624r0(abstractC23376j, abstractC23632g, abstractC23632g.f65501c.f65481m);
    }
}

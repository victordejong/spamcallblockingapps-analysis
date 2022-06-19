package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i;
@AbstractC23429a
/* renamed from: e.k.a.c.l0.t.e */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/e.class */
public final class C23813e extends AbstractC23849p0<Object> implements AbstractC23766i {

    /* renamed from: c */
    public final boolean f65954c;

    /* renamed from: e.k.a.c.l0.t.e$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/e$a.class */
    public static final class C23814a extends AbstractC23849p0<Object> implements AbstractC23766i {

        /* renamed from: c */
        public final boolean f65955c;

        public C23814a(boolean z) {
            super(z ? Boolean.TYPE : Boolean.class, false);
            this.f65955c = z;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i
        /* renamed from: b */
        public AbstractC23890n<?> mo5992b(AbstractC23425a0 abstractC23425a0, AbstractC23462d abstractC23462d) throws C23733k {
            AbstractC23311k.C23315d m6014l = m6014l(abstractC23425a0, abstractC23462d, Boolean.class);
            return (m6014l == null || m6014l.f64499b.m7288a()) ? this : new C23813e(this.f65955c);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: f */
        public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
            abstractC23372g.mo5880J0(!Boolean.FALSE.equals(obj));
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23849p0, p193e.p1545k.p1546a.p1556c.AbstractC23890n
        /* renamed from: g */
        public final void mo5893g(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
            abstractC23372g.mo5855k0(Boolean.TRUE.equals(obj));
        }
    }

    public C23813e(boolean z) {
        super(z ? Boolean.TYPE : Boolean.class, false);
        this.f65954c = z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23766i
    /* renamed from: b */
    public AbstractC23890n<?> mo5992b(AbstractC23425a0 abstractC23425a0, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23311k.C23315d m6014l = m6014l(abstractC23425a0, abstractC23462d, Boolean.class);
        return (m6014l == null || !m6014l.f64499b.m7288a()) ? this : new C23814a(this.f65954c);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        abstractC23372g.mo5855k0(Boolean.TRUE.equals(obj));
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23849p0, p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: g */
    public final void mo5893g(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        abstractC23372g.mo5855k0(Boolean.TRUE.equals(obj));
    }
}

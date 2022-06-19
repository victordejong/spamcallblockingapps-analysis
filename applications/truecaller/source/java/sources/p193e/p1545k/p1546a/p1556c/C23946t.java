package p193e.p1545k.p1546a.p1556c;

import java.io.Closeable;
import java.io.IOException;
import java.io.Serializable;
import java.io.Writer;
import java.util.Objects;
import p193e.p1545k.p1546a.p1548b.AbstractC23367c;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.AbstractC23383o;
import p193e.p1545k.p1546a.p1548b.AbstractC23384p;
import p193e.p1545k.p1546a.p1548b.C23369e;
import p193e.p1545k.p1546a.p1548b.p1549a0.AbstractC23354f;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23360l;
import p193e.p1545k.p1546a.p1548b.p1553x.AbstractC23408c;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23767j;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23774p;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.t */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/t.class */
public class C23946t implements Serializable {

    /* renamed from: g */
    public static final AbstractC23383o f66278g = new C23360l();

    /* renamed from: a */
    public final C23957y f66279a;

    /* renamed from: b */
    public final AbstractC23767j f66280b;

    /* renamed from: c */
    public final AbstractC23774p f66281c;

    /* renamed from: d */
    public final C23369e f66282d;

    /* renamed from: e */
    public final C23947a f66283e;

    /* renamed from: f */
    public final C23948b f66284f;

    /* renamed from: e.k.a.c.t$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/t$a.class */
    public static final class C23947a implements Serializable {

        /* renamed from: d */
        public static final C23947a f66285d = new C23947a(null, null, null);

        /* renamed from: a */
        public final AbstractC23383o f66286a;

        /* renamed from: b */
        public final AbstractC23367c f66287b;

        /* renamed from: c */
        public final AbstractC23384p f66288c;

        public C23947a(AbstractC23383o abstractC23383o, AbstractC23367c abstractC23367c, AbstractC23384p abstractC23384p) {
            this.f66286a = abstractC23383o;
            this.f66287b = abstractC23367c;
            this.f66288c = abstractC23384p;
        }
    }

    /* renamed from: e.k.a.c.t$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/t$b.class */
    public static final class C23948b implements Serializable {

        /* renamed from: a */
        public static final C23948b f66289a = new C23948b(null, null, null);

        public C23948b(AbstractC23698i abstractC23698i, AbstractC23890n<Object> abstractC23890n, AbstractC23712h abstractC23712h) {
        }
    }

    public C23946t(C23944r c23944r, C23957y c23957y) {
        this.f66279a = c23957y;
        this.f66280b = c23944r.f66265g;
        this.f66281c = c23944r.f66266h;
        this.f66282d = c23944r.f66259a;
        this.f66283e = C23947a.f66285d;
        this.f66284f = C23948b.f66289a;
    }

    public C23946t(C23946t c23946t, C23957y c23957y, C23947a c23947a, C23948b c23948b) {
        this.f66279a = c23957y;
        this.f66280b = c23946t.f66280b;
        this.f66281c = c23946t.f66281c;
        this.f66282d = c23946t.f66282d;
        this.f66283e = c23947a;
        this.f66284f = c23948b;
    }

    /* renamed from: a */
    public final void m5670a(AbstractC23372g abstractC23372g, Object obj) throws IOException {
        Exception e;
        Closeable closeable;
        if (!this.f66279a.m5650w(EnumC23958z.CLOSE_CLOSEABLE) || !(obj instanceof Closeable)) {
            try {
                C23948b c23948b = this.f66284f;
                AbstractC23767j abstractC23767j = this.f66280b;
                C23957y c23957y = this.f66279a;
                AbstractC23774p abstractC23774p = this.f66281c;
                AbstractC23767j.C23768a c23768a = (AbstractC23767j.C23768a) abstractC23767j;
                Objects.requireNonNull(c23768a);
                AbstractC23767j.C23768a c23768a2 = new AbstractC23767j.C23768a(c23768a, c23957y, abstractC23774p);
                Objects.requireNonNull(c23948b);
                c23768a2.m6092V(abstractC23372g, obj);
                abstractC23372g.close();
                return;
            } catch (Exception e2) {
                C23914g.m5759h(abstractC23372g, e2);
                throw null;
            }
        }
        Closeable closeable2 = (Closeable) obj;
        try {
            C23948b c23948b2 = this.f66284f;
            AbstractC23767j abstractC23767j2 = this.f66280b;
            C23957y c23957y2 = this.f66279a;
            AbstractC23774p abstractC23774p2 = this.f66281c;
            AbstractC23767j.C23768a c23768a3 = (AbstractC23767j.C23768a) abstractC23767j2;
            Objects.requireNonNull(c23768a3);
            AbstractC23767j.C23768a c23768a4 = new AbstractC23767j.C23768a(c23768a3, c23957y2, abstractC23774p2);
            Objects.requireNonNull(c23948b2);
            c23768a4.m6092V(abstractC23372g, obj);
        } catch (Exception e3) {
            e = e3;
            closeable = closeable2;
        }
        try {
            closeable2.close();
            abstractC23372g.close();
        } catch (Exception e4) {
            e = e4;
            closeable = null;
            C23914g.m5760g(abstractC23372g, closeable, e);
            throw null;
        }
    }

    /* renamed from: b */
    public AbstractC23372g m5669b(Writer writer) throws IOException {
        AbstractC23372g m7214e = this.f66282d.m7214e(writer);
        this.f66279a.m5652u(m7214e);
        C23947a c23947a = this.f66283e;
        AbstractC23383o abstractC23383o = c23947a.f66286a;
        if (abstractC23383o != null) {
            if (abstractC23383o == f66278g) {
                m7214e.f64640a = null;
            } else {
                AbstractC23383o abstractC23383o2 = abstractC23383o;
                if (abstractC23383o instanceof AbstractC23354f) {
                    abstractC23383o2 = (AbstractC23383o) ((AbstractC23354f) abstractC23383o).createInstance();
                }
                m7214e.f64640a = abstractC23383o2;
            }
        }
        AbstractC23367c abstractC23367c = c23947a.f66287b;
        if (abstractC23367c == null) {
            AbstractC23384p abstractC23384p = c23947a.f66288c;
            if (abstractC23384p != null) {
                ((AbstractC23408c) m7214e).f64843l = abstractC23384p;
            }
            return m7214e;
        }
        throw new UnsupportedOperationException(String.format("Generator of type %s does not support schema of type '%s'", m7214e.getClass().getName(), abstractC23367c.m7219a()));
    }
}

package p193e.p1577m.p1578a.p1596c.p1620l1;

import android.net.Uri;
import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1597b1.C24190a;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24276c;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24410j;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24399f;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24534q;
import p193e.p1577m.p1578a.p1596c.p1620l1.C24540s;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24679b0;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24690d;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24697f0;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24681c0;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24751u;
/* renamed from: e.m.a.c.l1.t */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/t.class */
public final class C24547t extends AbstractC24523k implements C24540s.AbstractC24543c {

    /* renamed from: f */
    public final Uri f68585f;

    /* renamed from: g */
    public final AbstractC24739l.AbstractC24740a f68586g;

    /* renamed from: h */
    public final AbstractC24410j f68587h;

    /* renamed from: i */
    public final AbstractC24279e<?> f68588i;

    /* renamed from: j */
    public final AbstractC24679b0 f68589j;

    /* renamed from: l */
    public final int f68591l;

    /* renamed from: o */
    public boolean f68594o;

    /* renamed from: p */
    public boolean f68595p;

    /* renamed from: q */
    public AbstractC24697f0 f68596q;

    /* renamed from: k */
    public final String f68590k = null;

    /* renamed from: n */
    public long f68593n = -9223372036854775807L;

    /* renamed from: m */
    public final Object f68592m = null;

    /* renamed from: e.m.a.c.l1.t$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/t$a.class */
    public static final class C24548a implements AbstractC24539r {

        /* renamed from: a */
        public final AbstractC24739l.AbstractC24740a f68597a;

        /* renamed from: b */
        public AbstractC24410j f68598b;

        /* renamed from: c */
        public AbstractC24279e<?> f68599c = AbstractC24279e.f67328a;

        /* renamed from: d */
        public AbstractC24679b0 f68600d = new C24751u();

        /* renamed from: e */
        public int f68601e = 1048576;

        public C24548a(AbstractC24739l.AbstractC24740a abstractC24740a) {
            C24399f c24399f = new C24399f();
            this.f68597a = abstractC24740a;
            this.f68598b = c24399f;
        }

        /* renamed from: b */
        public C24547t mo4937a(Uri uri) {
            return new C24547t(uri, this.f68597a, this.f68598b, this.f68599c, this.f68600d, null, this.f68601e, null);
        }
    }

    public C24547t(Uri uri, AbstractC24739l.AbstractC24740a abstractC24740a, AbstractC24410j abstractC24410j, AbstractC24279e<?> abstractC24279e, AbstractC24679b0 abstractC24679b0, String str, int i, Object obj) {
        this.f68585f = uri;
        this.f68586g = abstractC24740a;
        this.f68587h = abstractC24410j;
        this.f68588i = abstractC24279e;
        this.f68589j = abstractC24679b0;
        this.f68591l = i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p
    /* renamed from: a */
    public void mo4942a() throws IOException {
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p
    /* renamed from: e */
    public AbstractC24529o mo4941e(AbstractC24531p.C24532a c24532a, AbstractC24690d abstractC24690d, long j) {
        AbstractC24739l mo4656a = this.f68586g.mo4656a();
        AbstractC24697f0 abstractC24697f0 = this.f68596q;
        if (abstractC24697f0 != null) {
            mo4656a.mo4669c(abstractC24697f0);
        }
        return new C24540s(this.f68585f, mo4656a, this.f68587h.mo5156a(), this.f68588i, this.f68589j, new AbstractC24534q.C24535a(this.f68490c.f68514c, 0, c24532a, 0L), this, abstractC24690d, this.f68590k, this.f68591l);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p
    /* renamed from: g */
    public void mo4940g(AbstractC24529o abstractC24529o) {
        C24551v[] c24551vArr;
        C24540s c24540s = (C24540s) abstractC24529o;
        if (c24540s.f68555v) {
            for (C24551v c24551v : c24540s.f68552s) {
                c24551v.m4924f();
                AbstractC24276c<?> abstractC24276c = c24551v.f68619f;
                if (abstractC24276c != null) {
                    abstractC24276c.release();
                    c24551v.f68619f = null;
                    c24551v.f68618e = null;
                }
            }
        }
        C24681c0 c24681c0 = c24540s.f68543j;
        C24681c0.HandlerC24685d<? extends C24681c0.AbstractC24686e> handlerC24685d = c24681c0.f69168b;
        if (handlerC24685d != null) {
            handlerC24685d.m4770a(true);
        }
        c24681c0.f69167a.execute(new C24681c0.RunnableC24688g(c24540s));
        c24681c0.f69167a.shutdown();
        c24540s.f68548o.removeCallbacksAndMessages(null);
        c24540s.f68549p = null;
        c24540s.f68533P = true;
        final AbstractC24534q.C24535a c24535a = c24540s.f68538e;
        final AbstractC24531p.C24532a c24532a = c24535a.f68513b;
        Objects.requireNonNull(c24532a);
        Iterator<AbstractC24534q.C24535a.C24536a> it = c24535a.f68514c.iterator();
        while (it.hasNext()) {
            AbstractC24534q.C24535a.C24536a next = it.next();
            final AbstractC24534q abstractC24534q = next.f68517b;
            c24535a.m4971b(next.f68516a, new Runnable() { // from class: e.m.a.c.l1.e
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC24534q.C24535a c24535a2 = AbstractC24534q.C24535a.this;
                    AbstractC24534q abstractC24534q2 = abstractC24534q;
                    AbstractC24531p.C24532a c24532a2 = c24532a;
                    ((C24190a) abstractC24534q2).m5493y(c24535a2.f68512a, c24532a2);
                }
            });
        }
    }

    /* renamed from: h */
    public final void m4939h(long j, boolean z, boolean z2) {
        this.f68593n = j;
        this.f68594o = z;
        this.f68595p = z2;
        C24557y c24557y = new C24557y(this.f68593n, this.f68594o, false, this.f68595p, null, this.f68592m);
        this.f68492e = c24557y;
        Iterator<AbstractC24531p.AbstractC24533b> it = this.f68488a.iterator();
        while (it.hasNext()) {
            it.next().mo4973a(this, c24557y);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* renamed from: i */
    public void m4938i(long j, boolean z, boolean z2) {
        char c = j;
        if (j == -9223372036854775807L) {
            c = this.f68593n;
        }
        if (this.f68593n == c && this.f68594o == z && this.f68595p == z2) {
            return;
        }
        m4939h(c, z, z2);
    }
}

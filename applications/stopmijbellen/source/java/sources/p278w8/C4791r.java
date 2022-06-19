package p278w8;

import android.support.p012v4.media.C0082b;
import com.raizlabs.android.dbflow.config.C2120f;
import com.raizlabs.android.dbflow.config.FlowManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p024b9.AbstractC0742b;
import p024b9.C0740a;
import p034c9.AbstractC0859f;
import p034c9.C0854a;
import p034c9.C0860g;
import p267v8.C4655b;
import p289x8.AbstractC4932a;
import p309z8.C5115b;
/* renamed from: w8.r */
/* loaded from: classes2-dex2jar.jar:w8/r.class */
public class C4791r<TModel> extends AbstractC4771b<TModel> {

    /* renamed from: c */
    public final AbstractC4774e f14719c;

    /* renamed from: e */
    public final List<C4779j> f14721e = new ArrayList();

    /* renamed from: f */
    public final List<C4786m> f14722f = new ArrayList();

    /* renamed from: h */
    public int f14724h = -1;

    /* renamed from: i */
    public int f14725i = -1;

    /* renamed from: d */
    public C4785l f14720d = C4785l.m468j();

    /* renamed from: g */
    public C4785l f14723g = C4785l.m468j();

    public C4791r(AbstractC4774e abstractC4774e, AbstractC4787n... abstractC4787nArr) {
        super(abstractC4774e.f14690a);
        this.f14719c = abstractC4774e;
        C4785l c4785l = this.f14720d;
        Objects.requireNonNull(c4785l);
        for (AbstractC4787n abstractC4787n : abstractC4787nArr) {
            c4785l.m467k("AND", abstractC4787n);
        }
    }

    @Override // p278w8.AbstractC4773d, p278w8.AbstractC4770a
    /* renamed from: a */
    public C0740a.EnumC0741a mo459a() {
        return this.f14719c.mo459a();
    }

    @Override // p267v8.AbstractC4654a
    /* renamed from: b */
    public String mo238b() {
        String trim = this.f14719c.mo238b().trim();
        C4655b c4655b = new C4655b();
        c4655b.f14350a.append((Object) trim);
        c4655b.m678c();
        c4655b.m679a("WHERE", this.f14720d.mo238b());
        c4655b.m679a("GROUP BY", C4655b.m676e(",", this.f14721e));
        c4655b.m679a("HAVING", this.f14723g.mo238b());
        c4655b.m679a("ORDER BY", C4655b.m676e(",", this.f14722f));
        int i = this.f14724h;
        if (i > -1) {
            c4655b.m679a("LIMIT", String.valueOf(i));
        }
        int i2 = this.f14725i;
        if (i2 > -1) {
            c4655b.m679a("OFFSET", String.valueOf(i2));
        }
        return c4655b.mo238b();
    }

    @Override // p278w8.AbstractC4773d
    /* renamed from: i */
    public C0860g mo458i() {
        return mo457j(FlowManager.m3908e(this.f14690a).m3891j());
    }

    @Override // p278w8.AbstractC4773d
    /* renamed from: j */
    public C0860g mo457j(AbstractC0859f abstractC0859f) {
        C0860g c0860g;
        if (this.f14719c.mo461m() instanceof C4788o) {
            c0860g = ((C0854a) abstractC0859f).m7275b(mo238b(), null);
        } else {
            super.mo457j(abstractC0859f);
            c0860g = null;
        }
        return c0860g;
    }

    @Override // p278w8.AbstractC4771b
    /* renamed from: l */
    public List<TModel> mo456l() {
        m455m("query");
        return super.mo456l();
    }

    /* renamed from: m */
    public final void m455m(String str) {
        if (this.f14719c.mo461m() instanceof C4788o) {
            return;
        }
        throw new IllegalArgumentException(C0082b.m8755g("Please use ", str, "(). The beginning is not a ISelect"));
    }

    /* renamed from: n */
    public C4791r<TModel> m454n(AbstractC4932a... abstractC4932aArr) {
        for (AbstractC4932a abstractC4932a : abstractC4932aArr) {
            this.f14721e.add(abstractC4932a.mo235f());
        }
        return this;
    }

    /* renamed from: o */
    public C4791r<TModel> m453o(AbstractC4932a abstractC4932a, boolean z) {
        this.f14722f.add(new C4786m(abstractC4932a.mo235f(), z));
        return this;
    }

    /* renamed from: p */
    public TModel m452p() {
        m455m("query");
        this.f14724h = 1;
        String mo238b = mo238b();
        C2120f.EnumC2122b enumC2122b = C2120f.EnumC2122b.f7693a;
        C2120f.m3889a(enumC2122b, "Executing query: " + mo238b, null);
        AbstractC0742b<TModel> m484k = m484k();
        if (m484k.f2814a == null) {
            m484k.f2814a = new C5115b<>(m484k.mo2690b());
        }
        return (TModel) m484k.f2814a.m2318j(mo238b);
    }
}

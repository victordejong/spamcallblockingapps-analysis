package p193e.p194a.p195a;

import com.tenor.android.core.constant.ViewAction;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.C17408d;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p195a.AbstractC7267u;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.z.c.l;
/* renamed from: e.a.a.v */
/* loaded from: classes10-dex2jar.jar:e/a/a/v.class */
public final class C7282v implements AbstractC7267u {

    /* renamed from: a */
    public final AbstractC19233h0 f23252a;

    /* renamed from: b */
    public final AbstractC17405c f23253b;

    /* renamed from: c */
    public final AbstractC19222c f23254c;

    @Inject
    public C7282v(AbstractC19233h0 abstractC19233h0, @Named("inbox_availability_manager") AbstractC17405c abstractC17405c, AbstractC19222c abstractC19222c) {
        l.e(abstractC19233h0, "resourceProvider");
        l.e(abstractC17405c, "availabilityManager");
        l.e(abstractC19222c, "clock");
        this.f23252a = abstractC19233h0;
        this.f23253b = abstractC17405c;
        this.f23254c = abstractC19222c;
    }

    @Override // p193e.p194a.p195a.AbstractC7267u
    /* renamed from: a */
    public C17408d mo29860a(AbstractC7267u.AbstractC7268a abstractC7268a) {
        l.e(abstractC7268a, ViewAction.VIEW);
        C17408d mo29867z = abstractC7268a.mo29867z();
        if (mo29867z == null) {
            mo29867z = new C17408d(this.f23252a, this.f23253b, this.f23254c);
        }
        return mo29867z;
    }

    @Override // p193e.p194a.p195a.AbstractC7267u
    /* renamed from: b */
    public C8243a mo29859b(AbstractC7267u.AbstractC7268a abstractC7268a) {
        l.e(abstractC7268a, ViewAction.VIEW);
        C8243a mo29868o = abstractC7268a.mo29868o();
        if (mo29868o == null) {
            mo29868o = new C8243a(this.f23252a);
        }
        return mo29868o;
    }
}

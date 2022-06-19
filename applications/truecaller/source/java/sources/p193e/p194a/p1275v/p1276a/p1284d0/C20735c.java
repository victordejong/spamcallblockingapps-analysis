package p193e.p194a.p1275v.p1276a.p1284d0;

import com.truecaller.data.entity.Contact;
import javax.inject.Inject;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1275v.p1276a.C20847s;
import p193e.p194a.p1275v.p1276a.p1303z.C20879a;
import p193e.p194a.p1334w.p1339c.C21185a;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p426p.AbstractC8552d;
import s1.z.c.l;
/* renamed from: e.a.v.a.d0.c */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/d0/c.class */
public final class C20735c extends AbstractC20576b<AbstractC20734b> implements AbstractC20733a {

    /* renamed from: b */
    public C20847s f58338b;

    /* renamed from: c */
    public final AbstractC8432l f58339c;

    /* renamed from: d */
    public final AbstractC8552d f58340d;

    /* renamed from: e */
    public final C20879a f58341e;

    /* renamed from: f */
    public final C21185a f58342f;

    @Inject
    public C20735c(AbstractC8432l abstractC8432l, AbstractC8552d abstractC8552d, C20879a c20879a, C21185a c21185a) {
        l.e(abstractC8432l, "truecallerAccountManager");
        l.e(abstractC8552d, "tagManager");
        l.e(c20879a, "detailsViewAnalytics");
        l.e(c21185a, "referralTargetResolver");
        this.f58339c = abstractC8432l;
        this.f58340d = abstractC8552d;
        this.f58341e = c20879a;
        this.f58342f = c21185a;
    }

    /* renamed from: Hj */
    public final boolean m10802Hj(Contact contact) {
        return contact.m35526c1() && this.f58339c.mo28580d();
    }

    /* renamed from: Ij */
    public final boolean m10801Ij() {
        return this.f58339c.mo28580d() && this.f58340d.mo28400d();
    }
}

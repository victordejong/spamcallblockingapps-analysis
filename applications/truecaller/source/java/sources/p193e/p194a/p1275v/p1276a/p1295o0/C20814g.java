package p193e.p194a.p1275v.p1276a.p1295o0;

import com.truecaller.data.entity.Contact;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1275v.p1276a.p1303z.C20879a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.v.a.o0.g */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/o0/g.class */
public final class C20814g extends AbstractC20574a<AbstractC20809c> implements AbstractC20808b {

    /* renamed from: d */
    public final f f58476d;

    /* renamed from: e */
    public final AbstractC20807a f58477e;

    /* renamed from: f */
    public final AbstractC19223c0 f58478f;

    /* renamed from: g */
    public final C20879a f58479g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20814g(@Named("UI") f fVar, AbstractC20807a abstractC20807a, AbstractC19223c0 abstractC19223c0, C20879a c20879a) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC20807a, "socialMediaHelper");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(c20879a, "detailsViewAnalytics");
        this.f58476d = fVar;
        this.f58477e = abstractC20807a;
        this.f58478f = abstractC19223c0;
        this.f58479g = c20879a;
    }

    /* renamed from: Ij */
    public final String m10673Ij(Contact contact) {
        String m35551P = contact.m35551P();
        return !(m35551P == null || m35551P.length() == 0) ? contact.m35551P() : this.f58477e.mo10481b(contact);
    }
}

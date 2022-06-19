package p193e.p194a.p1011l.p1012a;

import com.truecaller.data.entity.Address;
import com.truecaller.data.entity.Contact;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1272u3.C20592g;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.l.a.r */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/r.class */
public final class C16597r implements AbstractC16596q {

    /* renamed from: a */
    public final AbstractC17197v0 f46628a;

    /* renamed from: b */
    public final C20592g f46629b;

    @Inject
    public C16597r(AbstractC17197v0 abstractC17197v0, C20592g c20592g) {
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(c20592g, "featuresRegistry");
        this.f46628a = abstractC17197v0;
        this.f46629b = c20592g;
    }

    @Override // p193e.p194a.p1011l.p1012a.AbstractC16596q
    /* renamed from: a */
    public boolean mo17210a(Contact contact) {
        C20592g c20592g = this.f46629b;
        boolean z = true;
        if (!c20592g.f58013r0.m10941a(c20592g, C20592g.f57695p6[67]).isEnabled() || !m17204g(contact, true)) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p1011l.p1012a.AbstractC16596q
    /* renamed from: b */
    public boolean mo17209b(Contact contact, boolean z) {
        boolean z2;
        Address m35500r;
        C20592g c20592g = this.f46629b;
        if (c20592g.f57983n0.m10941a(c20592g, C20592g.f57695p6[63]).isEnabled()) {
            if (!h.j((contact == null || (m35500r = contact.m35500r()) == null) ? null : m35500r.getStreet()) && m17204g(contact, z)) {
                z2 = true;
                return z2;
            }
        }
        z2 = false;
        return z2;
    }

    @Override // p193e.p194a.p1011l.p1012a.AbstractC16596q
    /* renamed from: c */
    public boolean mo17208c(Contact contact) {
        C20592g c20592g = this.f46629b;
        boolean z = true;
        if (!c20592g.f58006q0.m10941a(c20592g, C20592g.f57695p6[66]).isEnabled() || !m17204g(contact, true)) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p1011l.p1012a.AbstractC16596q
    /* renamed from: d */
    public boolean mo17207d(Contact contact) {
        C20592g c20592g = this.f46629b;
        boolean z = true;
        if (!c20592g.f57991o0.m10941a(c20592g, C20592g.f57695p6[64]).isEnabled() || !m17204g(contact, true)) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p1011l.p1012a.AbstractC16596q
    /* renamed from: e */
    public boolean mo17206e(Contact contact) {
        C20592g c20592g = this.f46629b;
        boolean z = true;
        if (!c20592g.f57999p0.m10941a(c20592g, C20592g.f57695p6[65]).isEnabled() || !m17204g(contact, true)) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p1011l.p1012a.AbstractC16596q
    /* renamed from: f */
    public boolean mo17205f(Contact contact) {
        C20592g c20592g = this.f46629b;
        boolean z = true;
        if (!c20592g.f57975m0.m10941a(c20592g, C20592g.f57695p6[62]).isEnabled() || !m17204g(contact, true)) {
            z = false;
        }
        return z;
    }

    /* renamed from: g */
    public final boolean m17204g(Contact contact, boolean z) {
        boolean z2;
        if (contact == null) {
            return false;
        }
        if ((z && contact.m35495t0()) || contact.m35511j0() || contact.m35565G0() || contact.m35492v0() || this.f46628a.mo16408H()) {
            return false;
        }
        if (contact.m35572B0()) {
            C20592g c20592g = this.f46629b;
            z2 = c20592g.f57967l0.m10941a(c20592g, C20592g.f57695p6[61]).isEnabled();
        } else {
            C20592g c20592g2 = this.f46629b;
            z2 = c20592g2.f57959k0.m10941a(c20592g2, C20592g.f57695p6[60]).isEnabled();
        }
        return z2;
    }
}

package p193e.p194a.p288a0;

import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.SpamCategoryModel;
import com.truecaller.spamcategories.C4502R;
import javax.inject.Inject;
import p193e.p194a.p1049l4.C17422k;
import s1.z.c.l;
/* renamed from: e.a.a0.w */
/* loaded from: classes12-dex2jar.jar:e/a/a0/w.class */
public final class C7408w implements AbstractC7407v {

    /* renamed from: a */
    public final AbstractC7401p f23548a;

    @Inject
    public C7408w(AbstractC7401p abstractC7401p) {
        l.e(abstractC7401p, "spamCategoryBuilder");
        this.f23548a = abstractC7401p;
    }

    @Override // p193e.p194a.p288a0.AbstractC7407v
    /* renamed from: a */
    public C7406u mo29679a(Contact contact, int i) {
        C7406u c7406u;
        l.e(contact, AnalyticsConstants.CONTACT);
        if (!contact.m35565G0() || !contact.m35574A0()) {
            AbstractC7401p abstractC7401p = this.f23548a;
            SpamCategoryModel m16094X = C17422k.m16094X(contact);
            c7406u = new C7406u(abstractC7401p.mo29683a(i, m16094X, C4502R.string.BlockCallerIDPeopleReportedThis, true), m16094X);
        } else {
            c7406u = new C7406u(this.f23548a.mo29683a(i, null, C4502R.string.BlockCallerIDPeopleReportedThis, true), null);
        }
        return c7406u;
    }

    @Override // p193e.p194a.p288a0.AbstractC7407v
    /* renamed from: b */
    public C7406u mo29678b(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        return mo29679a(contact, contact.m35533a0());
    }
}

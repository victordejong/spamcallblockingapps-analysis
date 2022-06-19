package p193e.p194a.p1356x2;

import android.net.Uri;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import e.m.d.y.n;
import javax.inject.Inject;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p372b0.p373a.p376b.AbstractC8246b;
import s1.z.c.l;
/* renamed from: e.a.x2.a */
/* loaded from: classes5-dex2jar.jar:e/a/x2/a.class */
public final class C21391a implements AbstractC8246b<Contact> {

    /* renamed from: a */
    public final AbstractC19022f0 f59855a;

    @Inject
    public C21391a(AbstractC19022f0 abstractC19022f0) {
        l.e(abstractC19022f0, "deviceManager");
        this.f59855a = abstractC19022f0;
    }

    /* renamed from: b */
    public AvatarXConfig mo9781a(Contact contact) {
        l.e(contact, "type");
        AbstractC19022f0 abstractC19022f0 = this.f59855a;
        Long m35548R = contact.m35548R();
        if (m35548R == null) {
            m35548R = 0L;
        }
        l.d(m35548R, "phonebookId ?: 0");
        Uri mo14235k = abstractC19022f0.mo14235k(m35548R.longValue(), contact.m35573B(), true);
        Number m35493v = contact.m35493v();
        String m35479e = m35493v != null ? m35493v.m35479e() : null;
        boolean m35494u0 = contact.m35494u0();
        boolean m35499r0 = contact.m35499r0();
        boolean m35574A0 = contact.m35574A0();
        String m35566G = contact.m35566G();
        return new AvatarXConfig(mo14235k, m35479e, null, m35566G != null ? n.t1(m35566G, false, 1) : null, m35574A0, false, false, contact.m35572B0() || contact.m35565G0(), m35494u0, m35499r0, contact.m35565G0(), contact.m35506m0(), contact.m35492v0(), false, null, false, 57444);
    }
}

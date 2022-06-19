package p193e.p194a.p1275v.p1276a.p1283c0;

import com.razorpay.AnalyticsConstants;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.data.entity.Contact;
import e.m.d.y.n;
import p193e.p194a.p1275v.p1276a.p1303z.C20879a;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v.a.c0.f */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/c0/f.class */
public final class C20708f extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C20713k f58307b;

    /* renamed from: c */
    public final /* synthetic */ Contact f58308c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20708f(C20713k c20713k, Contact contact) {
        super(0);
        this.f58307b = c20713k;
        this.f58308c = contact;
    }

    public Object invoke() {
        C20879a c20879a = this.f58307b.f58316b;
        String str = c20879a.f58670a;
        ViewActionEvent.ContactDetailsAction contactDetailsAction = ViewActionEvent.ContactDetailsAction.MAP;
        l.e(str, AnalyticsConstants.CONTEXT);
        l.e(contactDetailsAction, "action");
        String value = contactDetailsAction.getValue();
        l.e(value, "action");
        n.B0(new ViewActionEvent(value, null, str), c20879a.f58671b);
        AbstractC20707e abstractC20707e = (AbstractC20707e) this.f58307b.f57683a;
        if (abstractC20707e != null) {
            String m35485z = this.f58308c.m35485z();
            l.d(m35485z, "contact.formattedAddress");
            abstractC20707e.mo10805W(m35485z);
        }
        return s.a;
    }
}

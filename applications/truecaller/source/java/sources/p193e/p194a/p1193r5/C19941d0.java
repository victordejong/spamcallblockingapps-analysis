package p193e.p194a.p1193r5;

import com.truecaller.data.entity.Address;
import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.analytics.SourceType;
import e.m.d.y.n;
import java.util.List;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.AbstractC18904l;
import p193e.p194a.p1111o2.C18900h;
import s1.a.l;
/* renamed from: e.a.r5.d0 */
/* loaded from: classes8-dex2jar.jar:e/a/r5/d0.class */
public final class C19941d0 extends AbstractC18894c<AbstractC19994x> implements Object, AbstractC18904l {

    /* renamed from: f */
    public static final /* synthetic */ l[] f56392f = {C22128a.m8621g0(C19941d0.class, "profileViewEvents", "getProfileViewEvents()Ljava/util/List;", 0)};

    /* renamed from: b */
    public final AbstractC19943e0 f56393b;

    /* renamed from: c */
    public final AbstractC19943e0 f56394c;

    /* renamed from: d */
    public final AbstractC19933a f56395d;

    /* renamed from: e */
    public final AbstractC19935b f56396e;

    @Inject
    public C19941d0(AbstractC19943e0 abstractC19943e0, AbstractC19933a abstractC19933a, AbstractC19935b abstractC19935b) {
        s1.z.c.l.e(abstractC19943e0, "whoViewedMeListModel");
        s1.z.c.l.e(abstractC19933a, "actionModeHandler");
        s1.z.c.l.e(abstractC19935b, "contactDetailsOpenable");
        this.f56394c = abstractC19943e0;
        this.f56395d = abstractC19933a;
        this.f56396e = abstractC19935b;
        this.f56393b = abstractC19943e0;
    }

    /* renamed from: A */
    public final List<C19969o> m11795A() {
        return this.f56393b.mo11785Hc(this, f56392f[0]);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC19994x abstractC19994x = (AbstractC19994x) obj;
        s1.z.c.l.e(abstractC19994x, "itemView");
        C19969o c19969o = m11795A().get(i);
        Contact contact = c19969o.f56478e;
        abstractC19994x.setName(contact.m35491w());
        Address m35500r = contact.m35500r();
        String shortDisplayableAddress = m35500r != null ? m35500r.getShortDisplayableAddress() : null;
        if (shortDisplayableAddress == null) {
            shortDisplayableAddress = "";
        }
        abstractC19994x.mo11679w1(shortDisplayableAddress);
        abstractC19994x.mo11682T(c19969o.f56475b);
        abstractC19994x.mo11680b(this.f52996a && this.f56394c.mo11783Kf(c19969o));
        abstractC19994x.mo11681a(n.s(contact, false, false, (String) null, 7));
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return m11795A().size();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return -1L;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        s1.z.c.l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        boolean z = false;
        if (hashCode != -1743572928) {
            if (hashCode == -1314591573 && str.equals("ItemEvent.LONG_CLICKED")) {
                int i = c18900h.f53002b;
                if (!this.f52996a && this.f56395d.mo11779P()) {
                    this.f52996a = true;
                    this.f56394c.mo11772u5(m11795A().get(i));
                    z = true;
                }
                z = false;
            }
        } else if (str.equals("ItemEvent.CLICKED")) {
            int i2 = c18900h.f53002b;
            if (this.f52996a) {
                this.f56394c.mo11772u5(m11795A().get(i2));
                z = false;
            } else {
                this.f56396e.mo11781L1(m11795A().get(i2).f56478e, SourceType.WhoViewedMe, false, true, 21);
                z = true;
            }
        }
        return z;
    }
}

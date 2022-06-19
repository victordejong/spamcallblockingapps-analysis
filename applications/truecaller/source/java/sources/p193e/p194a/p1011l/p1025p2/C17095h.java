package p193e.p194a.p1011l.p1025p2;

import com.truecaller.data.entity.Contact;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p997k3.p998j.AbstractC16480g;
import s1.f0.v;
import s1.g;
import s1.u.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.l.p2.h */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/h.class */
public final class C17095h {

    /* renamed from: a */
    public final String f47985a = ",";

    /* renamed from: b */
    public final List<String> f47986b;

    /* renamed from: c */
    public final String f47987c;

    /* renamed from: d */
    public final g<Contact> f47988d;

    /* renamed from: e */
    public final AbstractC8541a f47989e;

    /* renamed from: f */
    public final AbstractC20235a f47990f;

    /* renamed from: g */
    public final AbstractC16480g f47991g;

    /* renamed from: h */
    public final AbstractC19223c0 f47992h;

    /* renamed from: i */
    public final AbstractC17197v0 f47993i;

    /* renamed from: e.a.l.p2.h$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/h$a.class */
    public static final class C17096a extends m implements a<Contact> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17096a() {
            super(0);
            C17095h.this = r4;
        }

        public Object invoke() {
            C17095h c17095h = C17095h.this;
            String str = c17095h.f47987c;
            return str != null ? (Contact) c17095h.f47991g.mo17344c(str).a : null;
        }
    }

    @Inject
    public C17095h(AbstractC8541a abstractC8541a, AbstractC20235a abstractC20235a, AbstractC16480g abstractC16480g, AbstractC19223c0 abstractC19223c0, AbstractC17197v0 abstractC17197v0) {
        Object obj;
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC20235a, "remoteConfig");
        l.e(abstractC16480g, "localContactSearcher");
        l.e(abstractC19223c0, "res");
        l.e(abstractC17197v0, "premiumStateSettings");
        this.f47989e = abstractC8541a;
        this.f47990f = abstractC20235a;
        this.f47991g = abstractC16480g;
        this.f47992h = abstractC19223c0;
        this.f47993i = abstractC17197v0;
        String string = abstractC8541a.getString("premiumAlreadyNotified");
        this.f47986b = string != null ? v.U(string, new String[]{","}, false, 0, 6) : s.a;
        String string2 = abstractC8541a.getString("premiumFriendUpgradedPhoneNumber");
        String str = null;
        if (string2 != null) {
            Iterator it = v.U(string2, new String[]{","}, false, 0, 6).iterator();
            do {
                obj = null;
                if (!it.hasNext()) {
                    break;
                }
                obj = it.next();
            } while (!(!this.f47986b.contains((String) obj)));
            str = (String) obj;
        }
        this.f47987c = str;
        this.f47988d = C25225a.m3978P1(new C17096a());
    }
}

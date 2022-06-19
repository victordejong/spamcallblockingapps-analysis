package p000;

import com.razorpay.AnalyticsConstants;
import com.truecaller.analytics.common.event.ViewActionEvent;
import e.m.d.y.n;
import p193e.p194a.p1275v.p1276a.p1289i0.AbstractC20772c;
import p193e.p194a.p1275v.p1276a.p1289i0.C20773d;
import p193e.p194a.p1275v.p1276a.p1303z.C20879a;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: d3 */
/* loaded from: classes6-dex2jar.jar:d3.class */
public final class C4879d3 extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ int f16582b;

    /* renamed from: c */
    public final /* synthetic */ Object f16583c;

    /* renamed from: d */
    public final /* synthetic */ Object f16584d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4879d3(int i, Object obj, Object obj2) {
        super(0);
        this.f16582b = i;
        this.f16583c = obj;
        this.f16584d = obj2;
    }

    public final Object invoke() {
        s sVar = s.a;
        int i = this.f16582b;
        if (i != 0) {
            if (i != 1) {
                throw null;
            }
            C20879a c20879a = ((C20773d) this.f16583c).f58417f;
            String str = c20879a.f58670a;
            l.e(str, AnalyticsConstants.CONTEXT);
            l.e("message", "action");
            n.B0(new ViewActionEvent("message", null, str), c20879a.f58671b);
            AbstractC20772c abstractC20772c = (AbstractC20772c) ((C20773d) this.f16583c).f57683a;
            if (abstractC20772c != null) {
                abstractC20772c.mo10711e5((String) this.f16584d);
            }
            return sVar;
        }
        C20879a c20879a2 = ((C20773d) this.f16583c).f58417f;
        String str2 = c20879a2.f58670a;
        ViewActionEvent.ContactDetailsAction contactDetailsAction = ViewActionEvent.ContactDetailsAction.COPY;
        l.e(str2, AnalyticsConstants.CONTEXT);
        l.e(contactDetailsAction, "action");
        String value = contactDetailsAction.getValue();
        l.e(value, "action");
        n.B0(new ViewActionEvent(value, null, str2), c20879a2.f58671b);
        AbstractC20772c abstractC20772c2 = (AbstractC20772c) ((C20773d) this.f16583c).f57683a;
        if (abstractC20772c2 != null) {
            abstractC20772c2.mo10710f5((String) this.f16584d);
        }
        AbstractC20772c abstractC20772c3 = (AbstractC20772c) ((C20773d) this.f16583c).f57683a;
        if (abstractC20772c3 != null) {
            abstractC20772c3.mo10708h5();
        }
        return sVar;
    }
}

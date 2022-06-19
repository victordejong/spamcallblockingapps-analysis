package p000;

import com.truecaller.analytics.common.event.ViewActionEvent;
import p193e.p194a.p1275v.p1276a.p1295o0.AbstractC20809c;
import p193e.p194a.p1275v.p1276a.p1295o0.C20814g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: r2 */
/* loaded from: classes5-dex2jar.jar:r2.class */
public final class C27619r2 extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ int f77851b;

    /* renamed from: c */
    public final /* synthetic */ Object f77852c;

    /* renamed from: d */
    public final /* synthetic */ Object f77853d;

    /* renamed from: e */
    public final /* synthetic */ Object f77854e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C27619r2(int i, Object obj, Object obj2, Object obj3) {
        super(0);
        this.f77851b = i;
        this.f77852c = obj;
        this.f77853d = obj2;
        this.f77854e = obj3;
    }

    public final Object invoke() {
        s sVar = s.a;
        int i = this.f77851b;
        if (i == 0) {
            ((C20814g) this.f77853d).f58479g.m10593b(ViewActionEvent.SocialMediaSubAction.FACEBOOK);
            AbstractC20809c abstractC20809c = (AbstractC20809c) ((C20814g) this.f77853d).f57683a;
            if (abstractC20809c != null) {
                String str = (String) this.f77852c;
                l.d(str, "it");
                abstractC20809c.mo10672R(str);
            }
            return sVar;
        } else if (i == 1) {
            ((C20814g) this.f77853d).f58479g.m10593b(ViewActionEvent.SocialMediaSubAction.TWITTER);
            AbstractC20809c abstractC20809c2 = (AbstractC20809c) ((C20814g) this.f77853d).f57683a;
            if (abstractC20809c2 != null) {
                String str2 = (String) this.f77852c;
                l.d(str2, "it");
                abstractC20809c2.mo10670T(str2);
            }
            return sVar;
        } else if (i != 2) {
            throw null;
        } else {
            ((C20814g) this.f77853d).f58479g.m10593b(ViewActionEvent.SocialMediaSubAction.INSTAGRAM);
            AbstractC20809c abstractC20809c3 = (AbstractC20809c) ((C20814g) this.f77853d).f57683a;
            if (abstractC20809c3 != null) {
                String str3 = (String) this.f77852c;
                l.d(str3, "it");
                abstractC20809c3.mo10667c(str3);
            }
            return sVar;
        }
    }
}

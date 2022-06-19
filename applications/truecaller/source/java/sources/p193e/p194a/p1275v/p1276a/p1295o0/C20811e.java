package p193e.p194a.p1275v.p1276a.p1295o0;

import com.truecaller.analytics.common.event.ViewActionEvent;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.v.a.o0.e */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/o0/e.class */
public final class C20811e extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C20814g f58469b;

    /* renamed from: c */
    public final /* synthetic */ String f58470c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20811e(C20814g c20814g, String str) {
        super(0);
        this.f58469b = c20814g;
        this.f58470c = str;
    }

    public Object invoke() {
        this.f58469b.f58479g.m10593b(ViewActionEvent.SocialMediaSubAction.WEBSITE);
        AbstractC20809c abstractC20809c = (AbstractC20809c) this.f58469b.f57683a;
        if (abstractC20809c != null) {
            abstractC20809c.mo10671S(this.f58470c);
        }
        return s.a;
    }
}

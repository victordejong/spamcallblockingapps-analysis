package p193e.p194a.p1275v.p1276a.p1283c0;

import com.truecaller.analytics.common.event.ViewActionEvent;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.v.a.c0.j */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/c0/j.class */
public final class C20712j extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C20713k f58314b;

    /* renamed from: c */
    public final /* synthetic */ String f58315c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20712j(C20713k c20713k, String str) {
        super(0);
        this.f58314b = c20713k;
        this.f58315c = str;
    }

    public Object invoke() {
        this.f58314b.f58316b.m10593b(ViewActionEvent.SocialMediaSubAction.WEBSITE);
        AbstractC20707e abstractC20707e = (AbstractC20707e) this.f58314b.f57683a;
        if (abstractC20707e != null) {
            abstractC20707e.mo10809S(this.f58315c);
        }
        return s.a;
    }
}

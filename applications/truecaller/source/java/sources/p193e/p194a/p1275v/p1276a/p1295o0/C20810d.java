package p193e.p194a.p1275v.p1276a.p1295o0;

import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.data.entity.AppStores;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.v.a.o0.d */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/o0/d.class */
public final class C20810d extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C20814g f58467b;

    /* renamed from: c */
    public final /* synthetic */ AppStores f58468c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20810d(C20814g c20814g, AppStores appStores) {
        super(0);
        this.f58467b = c20814g;
        this.f58468c = appStores;
    }

    public Object invoke() {
        this.f58467b.f58479g.m10593b(ViewActionEvent.SocialMediaSubAction.GOOGLE_PLAY_STORE);
        AbstractC20809c abstractC20809c = (AbstractC20809c) this.f58467b.f57683a;
        if (abstractC20809c != null) {
            abstractC20809c.mo10671S(this.f58468c.getUrl());
        }
        return s.a;
    }
}

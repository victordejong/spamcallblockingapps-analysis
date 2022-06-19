package p193e.p194a.p195a;

import com.truecaller.messaging.data.types.InboxTab;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import s1.z.c.l;
/* renamed from: e.a.a.x */
/* loaded from: classes10-dex2jar.jar:e/a/a/x.class */
public final class C7295x implements AbstractC7289w {

    /* renamed from: a */
    public final boolean f23284a;

    /* renamed from: b */
    public final C20592g f23285b;

    /* renamed from: c */
    public final AbstractC9691j f23286c;

    @Inject
    public C7295x(boolean z, C20592g c20592g, AbstractC9691j abstractC9691j) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC9691j, "insightsStatusProvider");
        this.f23284a = z;
        this.f23285b = c20592g;
        this.f23286c = abstractC9691j;
    }

    @Override // p193e.p194a.p195a.AbstractC7289w
    /* renamed from: a */
    public List<InboxTab> mo29825a() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(InboxTab.PERSONAL);
        boolean mo27286I = this.f23286c.mo27286I();
        boolean mo27289F = this.f23286c.mo27289F();
        boolean mo27262d = this.f23286c.mo27262d();
        if (mo27286I || mo27289F || mo27262d) {
            arrayList.add(InboxTab.BUSINESS);
        }
        if (!this.f23284a) {
            arrayList.add(InboxTab.OTHERS);
        } else if (this.f23285b.m10963h0().isEnabled()) {
            arrayList.add(InboxTab.PROMOTIONAL);
        }
        arrayList.add(InboxTab.SPAM);
        return arrayList;
    }
}

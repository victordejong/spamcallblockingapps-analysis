package p193e.p194a.p195a.p200c;

import com.truecaller.data.entity.Number;
import com.truecaller.voip.p189db.VoipAvailability;
import java.util.List;
import p193e.p194a.p195a.p200c.AbstractC5583n4;
import p193e.p194a.p619d.p637c0.AbstractC11393d1;
/* renamed from: e.a.a.c.q4 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/q4.class */
public final class C5677q4 implements AbstractC11393d1 {

    /* renamed from: a */
    public final /* synthetic */ C5650p4 f19041a;

    /* renamed from: b */
    public final /* synthetic */ Number f19042b;

    public C5677q4(C5650p4 c5650p4, Number number) {
        this.f19041a = c5650p4;
        this.f19042b = number;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11393d1
    /* renamed from: a */
    public void mo24754a(List<VoipAvailability> list) {
        if (list == null || list.isEmpty()) {
            ((AbstractC5583n4.AbstractC5584a) this.f19041a.f18984i.get()).m32941C8();
            return;
        }
        AbstractC5688r4 abstractC5688r4 = (AbstractC5688r4) this.f19041a.f57683a;
        if (abstractC5688r4 == null) {
            return;
        }
        abstractC5688r4.mo32409vA(this.f19042b);
    }
}

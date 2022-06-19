package p193e.p194a.p195a.p200c;

import com.truecaller.data.entity.Number;
import com.truecaller.data.entity.messaging.Participant;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p200c.AbstractC5583n4;
import p193e.p194a.p619d.p637c0.AbstractC11430l0;
import s1.z.c.l;
/* renamed from: e.a.a.c.o4 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/o4.class */
public final class C5626o4 implements AbstractC11430l0 {

    /* renamed from: a */
    public final /* synthetic */ C5650p4 f18922a;

    /* renamed from: b */
    public final /* synthetic */ Participant f18923b;

    public C5626o4(C5650p4 c5650p4, Participant participant) {
        this.f18922a = c5650p4;
        this.f18923b = participant;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11430l0
    /* renamed from: a */
    public void mo10471a(boolean z) {
        if (!z) {
            ((AbstractC5583n4.AbstractC5584a) this.f18922a.f18984i.get()).m32941C8();
            return;
        }
        C5650p4 c5650p4 = this.f18922a;
        Participant participant = this.f18923b;
        Objects.requireNonNull(c5650p4);
        Number m35483a = Number.m35483a(participant.f11572e, participant.f11571d, participant.f11573f);
        if (m35483a == null) {
            return;
        }
        l.d(m35483a, "Number.fromStrings(parti…nt.countryCode) ?: return");
        c5650p4.f18983h.mo24612l(C25225a.m3962T1(m35483a.m35479e()), new C5677q4(c5650p4, m35483a));
    }
}

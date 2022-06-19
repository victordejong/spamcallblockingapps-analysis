package p193e.p194a.p195a.p241i1;

import com.truecaller.data.entity.messaging.Participant;
import javax.inject.Inject;
import p193e.p194a.p1342w4.AbstractC21204d;
import p193e.p194a.p751f4.p762g.AbstractC14007f;
import p193e.p194a.p751f4.p762g.AbstractC14015j;
import p193e.p194a.p997k3.p1000l.p1001k.C16503a;
import s1.z.c.l;
/* renamed from: e.a.a.i1.g */
/* loaded from: classes11-dex2jar.jar:e/a/a/i1/g.class */
public final class C6404g implements AbstractC6403f {

    /* renamed from: a */
    public final AbstractC14007f f21322a;

    /* renamed from: b */
    public final AbstractC14015j f21323b;

    /* renamed from: c */
    public final AbstractC21204d f21324c;

    @Inject
    public C6404g(AbstractC14007f abstractC14007f, AbstractC14015j abstractC14015j, AbstractC21204d abstractC21204d) {
        l.e(abstractC14007f, "bulkImIdSearcher");
        l.e(abstractC14015j, "bulkSearcher");
        l.e(abstractC21204d, "contactStalenessHelper");
        this.f21322a = abstractC14007f;
        this.f21323b = abstractC14015j;
        this.f21324c = abstractC21204d;
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6403f
    /* renamed from: a */
    public void mo31305a(Participant participant) {
        l.e(participant, "participant");
        if (!this.f21324c.mo10137c(participant)) {
            return;
        }
        int i = participant.f11569b;
        if (i == 0) {
            this.f21323b.mo20853d(participant.f11572e, participant.f11571d, null);
        } else if (i != 3) {
        } else {
            AbstractC14007f abstractC14007f = this.f21322a;
            String str = participant.f11572e;
            l.d(str, "participant.normalizedAddress");
            abstractC14007f.mo20868a(str);
        }
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6403f
    /* renamed from: b */
    public void mo31304b(C16503a c16503a) {
        l.e(c16503a, "imGroupParticipant");
        if (!this.f21324c.mo10139a(c16503a)) {
            return;
        }
        String str = c16503a.f46399c;
        if (str == null) {
            this.f21322a.mo20868a(c16503a.f46397a);
        } else {
            this.f21323b.mo20853d(str, null, null);
        }
    }
}

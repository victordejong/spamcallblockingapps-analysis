package p193e.p194a.p195a.p244k;

import com.truecaller.data.entity.messaging.Participant;
import java.util.LinkedHashMap;
import java.util.Map;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import s1.z.c.l;
/* renamed from: e.a.a.k.n */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/n.class */
public final class C6695n implements AbstractC6694m {

    /* renamed from: a */
    public final Map<String, Participant> f22061a = new LinkedHashMap();

    /* renamed from: b */
    public final AbstractC8621z f22062b;

    public C6695n(AbstractC8621z abstractC8621z) {
        l.e(abstractC8621z, "phoneNumberHelper");
        this.f22062b = abstractC8621z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6694m
    /* renamed from: a */
    public Participant mo30567a(String str) {
        Participant participant;
        l.e(str, "address");
        Participant participant2 = this.f22061a.get(str);
        if (participant2 != null) {
            participant = participant2;
        } else {
            AbstractC8621z abstractC8621z = this.f22062b;
            Participant m35458a = Participant.m35458a(str, abstractC8621z, abstractC8621z.mo28189b());
            Map<String, Participant> map = this.f22061a;
            l.d(m35458a, "this");
            map.put(str, m35458a);
            l.d(m35458a, "Participant.buildFromAdd…cipants[address] = this }");
            participant = m35458a;
        }
        return participant;
    }
}

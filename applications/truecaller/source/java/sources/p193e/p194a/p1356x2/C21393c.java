package p193e.p194a.p1356x2;

import android.net.Uri;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.entity.messaging.Participant;
import e.m.d.y.n;
import javax.inject.Inject;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.C19103t;
import p193e.p194a.p372b0.p373a.p376b.AbstractC8246b;
import s1.z.c.l;
/* renamed from: e.a.x2.c */
/* loaded from: classes5-dex2jar.jar:e/a/x2/c.class */
public final class C21393c implements AbstractC8246b<Participant> {

    /* renamed from: a */
    public final AbstractC19022f0 f59857a;

    @Inject
    public C21393c(AbstractC19022f0 abstractC19022f0) {
        l.e(abstractC19022f0, "deviceManager");
        this.f59857a = abstractC19022f0;
    }

    /* renamed from: b */
    public AvatarXConfig mo9781a(Participant participant) {
        l.e(participant, "type");
        int m14107f = C19103t.m14107f(participant.f11585r, participant.f11588u);
        Uri mo14235k = this.f59857a.mo14235k(participant.f11582o, participant.f11580m, true);
        String str = participant.f11579l;
        String t1 = str != null ? n.t1(str, false, 1) : null;
        return new AvatarXConfig(mo14235k, participant.f11572e, null, t1, participant.m35446n(), false, participant.f11569b == 1, false, m14107f == 4, m14107f == 32, m14107f == 128, m14107f == 256, m14107f == 16, true, null, false, 49316);
    }
}

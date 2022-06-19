package p193e.p194a.p195a.p224d.p225a;

import android.net.Uri;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.entity.messaging.Participant;
import e.m.d.y.n;
import javax.inject.Inject;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p241i1.C6405h;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.z.c.l;
/* renamed from: e.a.a.d.a.i */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/a/i.class */
public final class C5889i extends AbstractC5883e {

    /* renamed from: b */
    public final AbstractC19022f0 f19664b;

    /* renamed from: c */
    public final AbstractC6392i0 f19665c;

    /* renamed from: d */
    public final AbstractC8541a f19666d;

    /* renamed from: e */
    public final AbstractC19233h0 f19667e;

    @Inject
    public C5889i(AbstractC19022f0 abstractC19022f0, AbstractC6392i0 abstractC6392i0, AbstractC8541a abstractC8541a, AbstractC19233h0 abstractC19233h0) {
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC6392i0, "messageSettings");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC19233h0, "resourceProvider");
        this.f19664b = abstractC19022f0;
        this.f19665c = abstractC6392i0;
        this.f19666d = abstractC8541a;
        this.f19667e = abstractC19233h0;
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: G */
    public void mo10095G(AbstractC5882d abstractC5882d, int i) {
        Participant participant;
        AbstractC5882d abstractC5882d2 = abstractC5882d;
        l.e(abstractC5882d2, "presenterView");
        Participant[] participantArr = this.f19656a;
        if (participantArr == null || (participant = participantArr[i]) == null) {
            return;
        }
        if (!l.a(participant.f11570c, this.f19665c.mo31078f())) {
            abstractC5882d2.mo32283a(new AvatarXConfig(this.f19664b.mo14235k(participant.f11582o, participant.f11580m, true), participant.f11572e, null, n.t1(C6405h.m31301c(participant), false, 1), false, false, false, false, false, false, false, false, false, false, null, false, 65524));
            abstractC5882d2.setName(C6405h.m31300d(participant));
            return;
        }
        String string = this.f19666d.getString("profileAvatar");
        abstractC5882d2.mo32283a(new AvatarXConfig(string != null ? Uri.parse(string) : null, participant.f11572e, null, n.t1(C6405h.m31301c(participant), false, 1), false, false, false, false, false, false, false, false, false, false, null, false, 65524));
        String mo13768b = this.f19667e.mo13768b(C2752R.string.ParticipantSelfName, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…ring.ParticipantSelfName)");
        abstractC5882d2.setName(mo13768b);
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: Kb */
    public int mo10091Kb() {
        Participant[] participantArr = this.f19656a;
        return participantArr != null ? participantArr.length : 0;
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: Za */
    public int mo10064Za(int i) {
        return 0;
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: gc */
    public long mo10061gc(int i) {
        return -1L;
    }
}

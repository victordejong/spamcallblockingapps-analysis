package p193e.p194a.p195a.p227e;

import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Message;
import javax.inject.Inject;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1356x2.C21393c;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.e.z */
/* loaded from: classes7-dex2jar.jar:e/a/a/e/z.class */
public final class C6036z extends AbstractC18894c<AbstractC5970c0> implements AbstractC5966b0 {

    /* renamed from: b */
    public final AbstractC5981d0 f20079b;

    /* renamed from: c */
    public final AbstractC6394b f20080c;

    /* renamed from: d */
    public final C21393c f20081d;

    @Inject
    public C6036z(AbstractC5981d0 abstractC5981d0, AbstractC6394b abstractC6394b, C21393c c21393c) {
        l.e(abstractC5981d0, "model");
        l.e(abstractC6394b, "messageUtil");
        l.e(c21393c, "avatarXConfigProvider");
        this.f20079b = abstractC5981d0;
        this.f20080c = abstractC6394b;
        this.f20081d = c21393c;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(AbstractC5970c0 abstractC5970c0, int i) {
        AbstractC5970c0 abstractC5970c02 = abstractC5970c0;
        l.e(abstractC5970c02, "itemView");
        Message message = this.f20079b.mo32090j2().get(i);
        l.d(message, "model.messages[position]");
        Message message2 = message;
        String m25885v0 = C10480a.m25885v0(message2.f13382c);
        l.d(m25885v0, "ParticipantUtils.getDisp…Name(message.participant)");
        abstractC5970c02.setTitle(m25885v0);
        abstractC5970c02.mo32106c(this.f20080c.mo31314z(message2));
        abstractC5970c02.mo32105f(this.f20080c.mo31332h(message2));
        C21393c c21393c = this.f20081d;
        Participant participant = message2.f13382c;
        l.d(participant, "message.participant");
        abstractC5970c02.mo32107a(c21393c.mo9781a(participant));
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f20079b.mo32090j2().size();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return this.f20079b.mo32090j2().get(i).f13380a;
    }
}

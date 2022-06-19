package p193e.p194a.p195a.p200c.p208k.p209a;

import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.AttachmentType;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.transport.mms.MmsTransportInfo;
import e.m.d.y.n;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p200c.AbstractC5062a7;
import p193e.p194a.p195a.p200c.AbstractC5484l5;
import p193e.p194a.p195a.p200c.AbstractC5524m5;
import p193e.p194a.p195a.p200c.AbstractC5769t7;
import p193e.p194a.p195a.p200c.AbstractC5794w3;
import p193e.p194a.p195a.p200c.C5174c3;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j;
import p193e.p194a.p195a.p231g.p234l0.AbstractC6225a;
import p193e.p194a.p195a.p241i1.C6405h;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import s1.k;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.a.c.k.a.o */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/k/a/o.class */
public final class C5428o extends AbstractC5409a implements AbstractC5427n {

    /* renamed from: h */
    public final AbstractC18951b0 f18530h;

    /* renamed from: i */
    public final AbstractC19022f0 f18531i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5428o(AbstractC5524m5 abstractC5524m5, AbstractC5484l5 abstractC5484l5, AbstractC5794w3 abstractC5794w3, AbstractC6708t abstractC6708t, AbstractC5418j.AbstractC5420b abstractC5420b, AbstractC5418j.AbstractC5419a abstractC5419a, AbstractC5769t7 abstractC5769t7, AbstractC18951b0 abstractC18951b0, C20592g c20592g, AbstractC19022f0 abstractC19022f0) {
        super(abstractC5524m5, abstractC5484l5, abstractC6708t, abstractC5769t7, abstractC5794w3, abstractC5420b, abstractC5419a, c20592g);
        l.e(abstractC5524m5, "conversationState");
        l.e(abstractC5484l5, "resourceProvider");
        l.e(abstractC5794w3, "items");
        l.e(abstractC6708t, "transportManager");
        l.e(abstractC5420b, "listener");
        l.e(abstractC5419a, "actionModeListener");
        l.e(abstractC5769t7, "viewProvider");
        l.e(abstractC18951b0, "dateHelper");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19022f0, "deviceManager");
        this.f18530h = abstractC18951b0;
        this.f18531i = abstractC19022f0;
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5409a, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC5062a7 abstractC5062a7 = (AbstractC5062a7) obj;
        l.e(abstractC5062a7, ViewAction.VIEW);
        super.mo11464G(abstractC5062a7, i);
        AbstractC6225a item = this.f18499e.getItem(i);
        Objects.requireNonNull(item, "null cannot be cast to non-null type com.truecaller.messaging.data.types.Message");
        Message message = (Message) item;
        C5174c3.C5176b c5176b = new C5174c3.C5176b();
        c5176b.f17724a = this.f18498d;
        c5176b.f17728e = this.f18496b.mo33042N(message);
        AbstractC18951b0 abstractC18951b0 = this.f18530h;
        b bVar = message.f13384e;
        l.d(bVar, "item.date");
        c5176b.f17735l = abstractC18951b0.mo14283l(((e) bVar).a);
        if (this.f18495a.mo32850q() > 1) {
            Participant participant = message.f13382c;
            l.d(participant, "item.participant");
            String m31301c = C6405h.m31301c(participant);
            abstractC5062a7.mo33678C0(m31301c);
            abstractC5062a7.mo33637a2(this.f18496b.mo33033h(message.f13382c.f11572e.hashCode()));
            AbstractC19022f0 abstractC19022f0 = this.f18531i;
            Participant participant2 = message.f13382c;
            abstractC5062a7.mo33613k2(new AvatarXConfig(abstractC19022f0.mo14235k(participant2.f11582o, participant2.f11580m, true), message.f13382c.f11572e, null, n.s1(m31301c, false), false, false, false, false, false, false, false, false, false, false, null, false, 65524));
            abstractC5062a7.mo33638a1(true);
        } else {
            abstractC5062a7.mo33638a1(false);
        }
        abstractC5062a7.mo33654T1(false);
        TransportInfo transportInfo = message.f13393n;
        l.d(transportInfo, "item.getTransportInfo<MmsTransportInfo>()");
        MmsTransportInfo mmsTransportInfo = (MmsTransportInfo) transportInfo;
        int mo30559c = this.f18497c.mo30559c(message);
        boolean z = mo30559c == 2;
        boolean z2 = mo30559c == 3;
        k<Integer, Integer> mo33028m = this.f18496b.mo33028m(message);
        c5176b.f17729f = this.f18496b.mo33051D();
        c5176b.f17744u = this.f18496b.mo33029l();
        c5176b.f17745v = this.f18496b.mo33024q();
        c5176b.f17737n = false;
        c5176b.f17738o = ((Number) mo33028m.a).intValue();
        c5176b.f17739p = ((Number) mo33028m.b).intValue();
        c5176b.f17726c = message;
        AbstractC5484l5 abstractC5484l5 = this.f18496b;
        b bVar2 = mmsTransportInfo.f13801p;
        l.d(bVar2, "info.expiry");
        c5176b.f17749z = abstractC5484l5.mo33032i(bVar2);
        c5176b.f17713B = this.f18496b.mo33049F(mmsTransportInfo.f13809x);
        c5176b.f17741r = z2;
        c5176b.f17743t = !z;
        c5176b.f17740q = z;
        c5176b.f17725b = AttachmentType.PENDING_MMS;
        c5176b.f17718G = this.f18496b.mo33026o(message);
        c5176b.f17736m = this.f18496b.mo33040P();
        c5176b.m33692a();
        abstractC5062a7.mo33602o4(false);
        C5174c3 m33692a = c5176b.m33692a();
        l.d(m33692a, "params.build()");
        abstractC5062a7.mo33670I2(m33692a, m33172s(i));
        abstractC5062a7.mo33677C3(m33171u(message, i));
        C5174c3 m33692a2 = c5176b.m33692a();
        l.d(m33692a2, "params.build()");
        abstractC5062a7.mo33653T3(m33692a2, this.f18496b.mo33051D(), this.f18496b.mo33045K(1));
    }

    @Override // p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    public boolean mo14344m(int i) {
        AbstractC6225a item = this.f18499e.getItem(i);
        return (item instanceof Message) && ((Message) item).m35015l();
    }
}

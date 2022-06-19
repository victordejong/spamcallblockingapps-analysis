package p193e.p194a.p195a.p200c.p208k.p209a;

import com.tenor.android.core.constant.ViewAction;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.transport.history.HistoryTransportInfo;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p200c.AbstractC5062a7;
import p193e.p194a.p195a.p200c.AbstractC5484l5;
import p193e.p194a.p195a.p200c.AbstractC5524m5;
import p193e.p194a.p195a.p200c.AbstractC5769t7;
import p193e.p194a.p195a.p200c.AbstractC5794w3;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j;
import p193e.p194a.p195a.p231g.p234l0.AbstractC6225a;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import s1.z.c.l;
/* renamed from: e.a.a.c.k.a.g */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/k/a/g.class */
public final class C5415g extends AbstractC5409a implements AbstractC5414f {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5415g(AbstractC5524m5 abstractC5524m5, AbstractC5484l5 abstractC5484l5, AbstractC5794w3 abstractC5794w3, AbstractC6708t abstractC6708t, AbstractC5418j.AbstractC5420b abstractC5420b, AbstractC5418j.AbstractC5419a abstractC5419a, AbstractC5769t7 abstractC5769t7, C20592g c20592g) {
        super(abstractC5524m5, abstractC5484l5, abstractC6708t, abstractC5769t7, abstractC5794w3, abstractC5420b, abstractC5419a, c20592g);
        l.e(abstractC5524m5, "conversationState");
        l.e(abstractC5484l5, "resourceProvider");
        l.e(abstractC5794w3, "items");
        l.e(abstractC6708t, "transportManager");
        l.e(abstractC5420b, "listener");
        l.e(abstractC5419a, "actionModeListener");
        l.e(abstractC5769t7, "viewProvider");
        l.e(c20592g, "featuresRegistry");
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
        TransportInfo transportInfo = message.f13393n;
        Objects.requireNonNull(transportInfo, "null cannot be cast to non-null type com.truecaller.messaging.transport.history.HistoryTransportInfo");
        boolean z = true;
        if (((HistoryTransportInfo) transportInfo).f13705d != 1) {
            z = false;
        }
        if (z) {
            abstractC5062a7.mo33579x4(message);
        } else {
            abstractC5062a7.mo33629d3(message);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
        if (r0.f13368D > 1) goto L9;
     */
    @Override // p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo14344m(int r4) {
        /*
            r3 = this;
            r0 = r3
            e.a.a.c.w3 r0 = r0.f18499e
            r1 = r4
            e.a.a.g.l0.a r0 = r0.getItem(r1)
            r5 = r0
            r0 = r5
            boolean r0 = r0 instanceof com.truecaller.messaging.data.types.Message
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L2f
            r0 = r5
            com.truecaller.messaging.data.types.Message r0 = (com.truecaller.messaging.data.types.Message) r0
            r5 = r0
            r0 = r5
            int r0 = r0.f13390k
            r1 = 5
            if (r0 != r1) goto L2f
            r0 = r5
            int r0 = r0.f13368D
            r1 = 1
            if (r0 <= r1) goto L2f
            goto L32
        L2f:
            r0 = 0
            r7 = r0
        L32:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p208k.p209a.C5415g.mo14344m(int):boolean");
    }
}

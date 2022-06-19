package p193e.p194a.p195a.p200c.p215n;

import com.truecaller.messaging.conversation.messageDetails.GroupReportsItemMvp$Type;
import javax.inject.Inject;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import s1.z.c.l;
/* renamed from: e.a.a.c.n.x */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/n/x.class */
public final class C5576x extends AbstractC5554h implements AbstractC5558l {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5576x(AbstractC5556j abstractC5556j, AbstractC6489q abstractC6489q, AbstractC19022f0 abstractC19022f0, AbstractC18951b0 abstractC18951b0, AbstractC19223c0 abstractC19223c0) {
        super(abstractC5556j, abstractC6489q, abstractC19022f0, abstractC18951b0, abstractC19223c0);
        l.e(abstractC5556j, "model");
        l.e(abstractC6489q, "groupUtil");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC18951b0, "dateHelper");
        l.e(abstractC19223c0, "resourceProvider");
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5557k
    public GroupReportsItemMvp$Type getType() {
        return GroupReportsItemMvp$Type.READ;
    }
}

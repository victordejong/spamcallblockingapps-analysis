package p193e.p194a.p195a.p286y0;

import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Conversation;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p241i1.C6405h;
import p193e.p194a.p437c.p578p.C10480a;
import s1.i;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.y0.e0 */
/* loaded from: classes7-dex2jar.jar:e/a/a/y0/e0.class */
public final class C7310e0 extends m implements l<Conversation, CharSequence> {

    /* renamed from: b */
    public final /* synthetic */ C7306d0 f23338b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7310e0(C7306d0 c7306d0) {
        super(1);
        this.f23338b = c7306d0;
    }

    /* renamed from: d */
    public Object m29793d(Object obj) {
        String str;
        Conversation conversation = (Conversation) obj;
        s1.z.c.l.d(conversation, "conversation");
        boolean m25919o1 = C10480a.m25919o1(conversation);
        if (m25919o1) {
            str = this.f23338b.m29807f(conversation);
        } else if (m25919o1) {
            throw new i();
        } else {
            Participant[] participantArr = conversation.f13211m;
            s1.z.c.l.d(participantArr, "conversation.participants");
            Object m3845s0 = C25225a.m3845s0(participantArr);
            s1.z.c.l.d(m3845s0, "conversation.participants.first()");
            str = C6405h.m31301c((Participant) m3845s0);
        }
        return str;
    }
}

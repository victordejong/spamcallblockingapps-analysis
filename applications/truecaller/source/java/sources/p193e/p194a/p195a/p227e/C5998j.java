package p193e.p194a.p195a.p227e;

import com.truecaller.messaging.data.types.Message;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.e.j */
/* loaded from: classes7-dex2jar.jar:e/a/a/e/j.class */
public final class C5998j extends m implements l<Message, CharSequence> {

    /* renamed from: b */
    public static final C5998j f19964b = new C5998j();

    public C5998j() {
        super(1);
    }

    /* renamed from: d */
    public Object m32062d(Object obj) {
        Message message = (Message) obj;
        s1.z.c.l.e(message, "it");
        String m25885v0 = C10480a.m25885v0(message.f13382c);
        s1.z.c.l.d(m25885v0, "ParticipantUtils.getDisplayName(it.participant)");
        return m25885v0;
    }
}

package p193e.p194a.p195a.p244k;

import android.content.Intent;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import java.util.List;
import p193e.p194a.p1187r2.AbstractC19844a;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1187r2.AbstractC19891x;
/* renamed from: e.a.a.k.t */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/t.class */
public interface AbstractC6708t {
    /* renamed from: A */
    void mo30564A(int i, Intent intent, int i2);

    /* renamed from: B */
    AbstractC19891x<Message> mo30563B(Message message);

    /* renamed from: a */
    AbstractC19844a mo30561a(Message message, Participant[] participantArr, AbstractC19868j abstractC19868j, AbstractC19851d0<Draft> abstractC19851d0);

    /* renamed from: b */
    AbstractC19891x<Message> mo30560b(Message message, Participant[] participantArr, boolean z, boolean z2);

    /* renamed from: c */
    int mo30559c(Message message);

    /* renamed from: d */
    boolean mo30558d(Message message, Entity entity, boolean z);

    /* renamed from: e */
    boolean mo30557e(Message message);

    /* renamed from: f */
    boolean mo30556f(Message message, Entity entity);

    /* renamed from: g */
    boolean mo30555g(Message message);

    /* renamed from: h */
    AbstractC19891x<Message> mo30554h(Message message, boolean z);

    /* renamed from: i */
    List<Integer> mo30553i();

    /* renamed from: j */
    Iterable<AbstractC6704q> mo30552j();

    /* renamed from: k */
    AbstractC6704q mo30551k(int i, boolean z, AbstractC6704q abstractC6704q);

    /* renamed from: l */
    List<Integer> mo30550l(Message message, Participant[] participantArr);

    /* renamed from: m */
    Draft mo30549m(Message message, Participant[] participantArr, Conversation conversation);

    /* renamed from: n */
    int mo30548n(boolean z, Participant[] participantArr, boolean z2);

    /* renamed from: o */
    AbstractC19891x<Message> mo30547o(Message message);

    /* renamed from: p */
    boolean mo30546p(Participant[] participantArr);

    /* renamed from: q */
    AbstractC19891x<Boolean> mo30545q(String str, Message message, Participant[] participantArr, long j, long j2, int i);

    /* renamed from: r */
    boolean mo30544r(String str, boolean z, Participant[] participantArr, boolean z2, C6676e c6676e);

    /* renamed from: t */
    int mo30543t(Message message, Participant[] participantArr);

    /* renamed from: u */
    void mo30542u(int i, Intent intent, int i2);

    /* renamed from: v */
    AbstractC19844a mo30541v(Message message, AbstractC19868j abstractC19868j, AbstractC19851d0<Draft> abstractC19851d0);

    /* renamed from: w */
    AbstractC6704q mo30540w(int i, AbstractC6704q abstractC6704q);

    /* renamed from: x */
    AbstractC6704q mo30539x(int i);

    /* renamed from: y */
    void mo30538y();

    /* renamed from: z */
    AbstractC19891x<Boolean> mo30537z(String str, long j, long j2, int i);
}

package p193e.p194a.p195a.p198b;

import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Conversation;
import java.util.Comparator;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.l;
/* renamed from: e.a.a.b.l0 */
/* loaded from: classes7-dex2jar.jar:e/a/a/b/l0.class */
public final class C4970l0<T> implements Comparator {
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        Participant[] participantArr = ((Conversation) t2).f13211m;
        l.d(participantArr, "it.participants");
        Participant participant = (Participant) C25225a.m3830v0(participantArr);
        boolean z = true;
        boolean z2 = (participant != null ? participant.f11580m : null) != null;
        Participant[] participantArr2 = ((Conversation) t).f13211m;
        l.d(participantArr2, "it.participants");
        Participant participant2 = (Participant) C25225a.m3830v0(participantArr2);
        String str = null;
        if (participant2 != null) {
            str = participant2.f11580m;
        }
        if (str == null) {
            z = false;
        }
        return C25225a.m4000K(Boolean.valueOf(z2), Boolean.valueOf(z));
    }
}

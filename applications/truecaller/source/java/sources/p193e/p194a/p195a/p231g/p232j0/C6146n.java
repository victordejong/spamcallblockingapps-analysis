package p193e.p194a.p195a.p231g.p232j0;

import android.database.Cursor;
import android.database.CursorWrapper;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.ImGroupPermissions;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.l;
/* renamed from: e.a.a.g.j0.n */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/j0/n.class */
public final class C6146n extends CursorWrapper implements AbstractC6145m {

    /* renamed from: a */
    public final int f20540a = getColumnIndexOrThrow("media_coversation_id");

    /* renamed from: b */
    public final int f20541b = getColumnIndexOrThrow("media_size");

    /* renamed from: c */
    public final int f20542c = getColumnIndexOrThrow("participant_type");

    /* renamed from: d */
    public final int f20543d = getColumnIndexOrThrow("participant_address");

    /* renamed from: e */
    public final int f20544e = getColumnIndexOrThrow("participant_name");

    /* renamed from: f */
    public final int f20545f = getColumnIndexOrThrow("participant_avatar");

    /* renamed from: g */
    public final int f20546g = getColumnIndexOrThrow("participant_pb_id");

    /* renamed from: h */
    public final int f20547h = getColumnIndexOrThrow("group_title");

    /* renamed from: i */
    public final int f20548i = getColumnIndexOrThrow("group_avatar");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6146n(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6145m
    public C6144l getItem() {
        ImGroupInfo imGroupInfo;
        Participant.C3848b c3848b = new Participant.C3848b(getInt(this.f20542c));
        c3848b.f11598e = getString(this.f20543d);
        c3848b.f11605l = getString(this.f20544e);
        c3848b.f11608o = getLong(this.f20546g);
        c3848b.f11606m = getString(this.f20545f);
        Participant m35443a = c3848b.m35443a();
        l.d(m35443a, "Participant.Builder(getI…\n                .build()");
        if (m35443a.f11569b == 4) {
            String str = m35443a.f11572e;
            l.d(str, "participant.normalizedAddress");
            imGroupInfo = new ImGroupInfo(str, getString(this.f20547h), getString(this.f20548i), -1L, null, -1, new ImGroupPermissions(-1, -1, 0, 0), -1, -1, -1L, -1L, false, -1L, -1L, -1, -1, null, 65536);
        } else {
            imGroupInfo = null;
        }
        Conversation.C4191b c4191b = new Conversation.C4191b();
        c4191b.f13237a = getLong(this.f20540a);
        List m3962T1 = C25225a.m3962T1(m35443a);
        c4191b.f13249m.clear();
        c4191b.f13249m.addAll(m3962T1);
        c4191b.f13261y = imGroupInfo;
        Conversation m35063b = c4191b.m35063b();
        l.d(m35063b, "Conversation.Builder()\n …\n                .build()");
        return new C6144l(m35063b, getLong(this.f20541b));
    }
}

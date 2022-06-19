package p193e.p194a.p195a.p231g.p232j0;

import android.database.Cursor;
import android.database.CursorWrapper;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Reaction;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.a.g.j0.f0 */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/j0/f0.class */
public final class C6137f0 extends CursorWrapper implements AbstractC6135e0 {

    /* renamed from: a */
    public final int f20492a = getColumnIndexOrThrow("im_reaction_id");

    /* renamed from: b */
    public final int f20493b = getColumnIndexOrThrow("im_reaction_message_id");

    /* renamed from: c */
    public final int f20494c = getColumnIndexOrThrow("im_reaction_from_peer_id");

    /* renamed from: d */
    public final int f20495d = getColumnIndexOrThrow("im_reaction_emoji");

    /* renamed from: e */
    public final int f20496e = getColumnIndexOrThrow("im_reaction_date");

    /* renamed from: f */
    public final int f20497f = getColumnIndexOrThrow("im_reaction_status");

    /* renamed from: g */
    public final int f20498g = getColumnIndexOrThrow("im_conversation_id");

    /* renamed from: h */
    public final int f20499h = getColumnIndexOrThrow("im_group_name");

    /* renamed from: i */
    public final int f20500i = getColumnIndexOrThrow("im_participant_number");

    /* renamed from: j */
    public final int f20501j = getColumnIndexOrThrow("im_participant_name");

    /* renamed from: k */
    public final int f20502k = getColumnIndexOrThrow("im_participant_image_url");

    /* renamed from: l */
    public final int f20503l = getColumnIndexOrThrow("im_participant_phonebook_id");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6137f0(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6135e0
    /* renamed from: v1 */
    public k<Reaction, Participant> mo31747v1() {
        long j = getLong(this.f20492a);
        long j2 = getLong(this.f20493b);
        String string = getString(this.f20494c);
        l.d(string, "getString(fromPeerIdIndex)");
        Reaction reaction = new Reaction(j, j2, string, getString(this.f20495d), getLong(this.f20496e), getInt(this.f20497f), getLong(this.f20498g), getString(this.f20499h));
        String str = reaction.f13453c;
        String string2 = getString(this.f20500i);
        Participant.C3848b c3848b = new Participant.C3848b(string2 == null ? 3 : 0);
        if (string2 == null) {
            string2 = str;
        }
        c3848b.f11598e = string2;
        c3848b.f11596c = str;
        c3848b.f11605l = getString(this.f20501j);
        String string3 = getString(this.f20502k);
        if (string3 == null) {
            string3 = "";
        }
        c3848b.f11606m = string3;
        c3848b.f11608o = getLong(this.f20503l);
        Participant m35443a = c3848b.m35443a();
        l.d(m35443a, "Participant.Builder(if (…ex))\n            .build()");
        return new k<>(reaction, m35443a);
    }
}

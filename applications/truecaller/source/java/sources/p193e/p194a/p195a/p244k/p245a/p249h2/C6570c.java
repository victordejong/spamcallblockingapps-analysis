package p193e.p194a.p195a.p244k.p245a.p249h2;

import android.database.Cursor;
import android.database.CursorWrapper;
import com.truecaller.data.entity.messaging.Participant;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.h2.c */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/h2/c.class */
public final class C6570c extends CursorWrapper implements AbstractC6569b {

    /* renamed from: a */
    public final int f21666a = getColumnIndexOrThrow("raw_message_id");

    /* renamed from: b */
    public final int f21667b = getColumnIndexOrThrow("sequence_number");

    /* renamed from: c */
    public final int f21668c = getColumnIndexOrThrow("participant_type");

    /* renamed from: d */
    public final int f21669d = getColumnIndexOrThrow("normalized_destination");

    /* renamed from: e */
    public final int f21670e = getColumnIndexOrThrow("im_peer_id");

    /* renamed from: f */
    public final int f21671f = getColumnIndexOrThrow("group_id");

    /* renamed from: g */
    public final int f21672g = getColumnIndexOrThrow("filter_action");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6570c(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p249h2.AbstractC6569b
    /* renamed from: G1 */
    public C6568a mo30763G1() {
        String string = getString(this.f21666a);
        l.d(string, "getString(rawMessageId)");
        long j = getLong(this.f21667b);
        String string2 = getString(this.f21671f);
        Participant.C3848b c3848b = new Participant.C3848b(getInt(this.f21668c));
        c3848b.f11598e = getString(this.f21669d);
        c3848b.f11596c = getString(this.f21670e);
        c3848b.f11602i = getInt(this.f21672g);
        Participant m35443a = c3848b.m35443a();
        l.d(m35443a, "Participant.Builder(getI…Action))\n        .build()");
        return new C6568a(string, j, string2, m35443a);
    }
}

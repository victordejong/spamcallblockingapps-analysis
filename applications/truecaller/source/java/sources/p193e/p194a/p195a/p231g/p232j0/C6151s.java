package p193e.p194a.p195a.p231g.p232j0;

import android.database.Cursor;
import android.database.CursorWrapper;
import p193e.p194a.p195a.p231g.p234l0.C6228d;
import s1.z.c.l;
/* renamed from: e.a.a.g.j0.s */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/j0/s.class */
public final class C6151s extends CursorWrapper implements AbstractC6150r {

    /* renamed from: a */
    public final int f20576a = getColumnIndexOrThrow("conversation_group_id");

    /* renamed from: b */
    public final int f20577b = getColumnIndexOrThrow("message_transport");

    /* renamed from: c */
    public final int f20578c = getColumnIndexOrThrow("participant_type");

    /* renamed from: d */
    public final int f20579d = getColumnIndexOrThrow("participant_filter_action");

    /* renamed from: e */
    public final int f20580e = getColumnIndexOrThrow("participant_is_top_spammer");

    /* renamed from: f */
    public final int f20581f = getColumnIndexOrThrow("participant_business_state");

    /* renamed from: g */
    public final int f20582g = getColumnIndexOrThrow("spam_type");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6151s(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6150r
    /* renamed from: y */
    public C6228d mo31741y() {
        return new C6228d(getString(this.f20576a), getInt(this.f20577b), getInt(this.f20580e), getInt(this.f20581f), getInt(this.f20579d), getInt(this.f20578c), getString(this.f20582g));
    }
}

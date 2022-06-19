package p193e.p194a.p195a.p231g.p232j0;

import android.database.Cursor;
import android.database.CursorWrapper;
import p193e.p194a.p195a.p231g.p234l0.C6229e;
import s1.z.c.l;
/* renamed from: e.a.a.g.j0.u */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/j0/u.class */
public final class C6153u extends CursorWrapper implements AbstractC6152t {

    /* renamed from: a */
    public final int f20583a = getColumnIndexOrThrow("message_id");

    /* renamed from: b */
    public final int f20584b = getColumnIndexOrThrow("message_conversation_id");

    /* renamed from: c */
    public final int f20585c = getColumnIndexOrThrow("message_delivery_status");

    /* renamed from: d */
    public final int f20586d = getColumnIndexOrThrow("participant_name");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6153u(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6152t
    /* renamed from: C0 */
    public C6229e mo31740C0() {
        return new C6229e(getLong(this.f20583a), getLong(this.f20584b), getInt(this.f20585c), getString(this.f20586d));
    }
}

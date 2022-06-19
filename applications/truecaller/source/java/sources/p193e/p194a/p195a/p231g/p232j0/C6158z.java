package p193e.p194a.p195a.p231g.p232j0;

import android.database.Cursor;
import s1.z.c.l;
/* renamed from: e.a.a.g.j0.z */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/j0/z.class */
public final class C6158z extends C6155w {

    /* renamed from: j2 */
    public final int f20744j2;

    /* renamed from: k2 */
    public final int f20745k2;

    /* renamed from: l2 */
    public final int f20746l2;

    /* renamed from: m2 */
    public final int f20747m2;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6158z(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
        this.f20744j2 = cursor.getColumnIndexOrThrow("grouped_by_day_count");
        this.f20745k2 = cursor.getColumnIndexOrThrow("grouped_by_minute_count");
        this.f20746l2 = cursor.getColumnIndexOrThrow("group_start_date");
        this.f20747m2 = cursor.getColumnIndexOrThrow("group_end_date");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.C6154v
    /* renamed from: j */
    public long mo31728j() {
        return getLong(this.f20747m2);
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.C6154v
    /* renamed from: k */
    public long mo31727k() {
        return getLong(this.f20746l2);
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.C6154v
    /* renamed from: l */
    public int mo31726l() {
        return getInt(this.f20744j2);
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.C6154v
    /* renamed from: q */
    public int mo31725q() {
        return getInt(this.f20745k2);
    }
}

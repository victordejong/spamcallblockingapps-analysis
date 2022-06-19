package p193e.p194a.p195a.p231g.p232j0;

import android.database.Cursor;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.ImGroupPermissions;
import s1.z.c.l;
/* renamed from: e.a.a.g.j0.y */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/j0/y.class */
public final class C6157y extends C6155w implements AbstractC6156x {

    /* renamed from: j2 */
    public final int f20742j2;

    /* renamed from: k2 */
    public final int f20743k2;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6157y(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
        this.f20742j2 = cursor.getColumnIndexOrThrow("me_group_title");
        this.f20743k2 = cursor.getColumnIndexOrThrow("me_group_avatar");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6156x
    /* renamed from: I0 */
    public ImGroupInfo mo31729I0() {
        return new ImGroupInfo("", getString(this.f20742j2), getString(this.f20743k2), -1L, "", -1, new ImGroupPermissions(-1, -1, -1, -1), 0, 0, -1L, 0L, false, 0L, 0L, 0, 0, null, 65536);
    }
}

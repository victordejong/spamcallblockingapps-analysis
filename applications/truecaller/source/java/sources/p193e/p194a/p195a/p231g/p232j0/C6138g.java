package p193e.p194a.p195a.p231g.p232j0;

import android.database.Cursor;
import android.database.CursorWrapper;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.ImGroupPermissions;
import s1.z.c.l;
/* renamed from: e.a.a.g.j0.g */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/j0/g.class */
public final class C6138g extends CursorWrapper implements AbstractC6136f {

    /* renamed from: a */
    public final int f20504a = getColumnIndexOrThrow("im_group_id");

    /* renamed from: b */
    public final int f20505b = getColumnIndexOrThrow("title");

    /* renamed from: c */
    public final int f20506c = getColumnIndexOrThrow("avatar");

    /* renamed from: d */
    public final int f20507d = getColumnIndexOrThrow("invited_date");

    /* renamed from: e */
    public final int f20508e = getColumnIndexOrThrow("invited_by");

    /* renamed from: f */
    public final int f20509f = getColumnIndexOrThrow("roles");

    /* renamed from: g */
    public final int f20510g = getColumnIndexOrThrow("actions");

    /* renamed from: h */
    public final int f20511h = getColumnIndexOrThrow("role_update_restriction_mask");

    /* renamed from: i */
    public final int f20512i = getColumnIndexOrThrow("role_update_mask");

    /* renamed from: j */
    public final int f20513j = getColumnIndexOrThrow("self_role_update_mask");

    /* renamed from: k */
    public final int f20514k = getColumnIndexOrThrow("notification_settings");

    /* renamed from: l */
    public final int f20515l = getColumnIndexOrThrow("history_status");

    /* renamed from: m */
    public final int f20516m = getColumnIndexOrThrow("history_sequence_num");

    /* renamed from: n */
    public final int f20517n = getColumnIndexOrThrow("history_message_count");

    /* renamed from: o */
    public final int f20518o = getColumnIndexOrThrow("are_participants_stale");

    /* renamed from: p */
    public final int f20519p = getColumnIndexOrThrow("current_sequence_number");

    /* renamed from: q */
    public final int f20520q = getColumnIndexOrThrow("invite_notification_date");

    /* renamed from: r */
    public final int f20521r = getColumnIndexOrThrow("invite_notification_count");

    /* renamed from: s */
    public final int f20522s = getColumnIndexOrThrow("join_mode");

    /* renamed from: t */
    public final int f20523t = getColumnIndexOrThrow("invite_key");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6138g(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6136f
    /* renamed from: h */
    public ImGroupInfo mo31746h() {
        String string = getString(this.f20504a);
        l.d(string, "getString(imGroupId)");
        return new ImGroupInfo(string, getString(this.f20505b), getString(this.f20506c), getLong(this.f20507d), getString(this.f20508e), getInt(this.f20509f), new ImGroupPermissions(getInt(this.f20510g), getInt(this.f20511h), getInt(this.f20512i), getInt(this.f20513j)), getInt(this.f20514k), getInt(this.f20515l), getLong(this.f20516m), getLong(this.f20517n), getInt(this.f20518o) != 0, getLong(this.f20519p), getLong(this.f20520q), getInt(this.f20521r), getInt(this.f20522s), getString(this.f20523t));
    }
}

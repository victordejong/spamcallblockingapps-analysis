package p193e.p194a.p195a.p231g;

import android.database.Cursor;
import android.database.CursorWrapper;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6139g0;
import s1.z.c.l;
/* renamed from: e.a.a.g.d0 */
/* loaded from: classes6-dex2jar.jar:e/a/a/g/d0.class */
public final class C6110d0 extends CursorWrapper implements AbstractC6139g0 {

    /* renamed from: z */
    public static final String[] f20264z = {"_id", "date", "seen", "read", "locked", UpdateKey.STATUS, "category", "sync_status", "classification", "transport", "group_id_day", "send_schedule_date", "raw_address", "conversation_id", "raw_id", "raw_id", "info1", "info1", "info2", "info2", "info17", "info16", "info23", "info10", "raw_id"};

    /* renamed from: a */
    public final int f20265a = getColumnIndexOrThrow("_id");

    /* renamed from: b */
    public final int f20266b = getColumnIndexOrThrow("date");

    /* renamed from: c */
    public final int f20267c = getColumnIndexOrThrow("seen");

    /* renamed from: d */
    public final int f20268d = getColumnIndexOrThrow("read");

    /* renamed from: e */
    public final int f20269e = getColumnIndexOrThrow("locked");

    /* renamed from: f */
    public final int f20270f = getColumnIndexOrThrow(UpdateKey.STATUS);

    /* renamed from: g */
    public final int f20271g = getColumnIndexOrThrow("category");

    /* renamed from: h */
    public final int f20272h = getColumnIndexOrThrow("sync_status");

    /* renamed from: i */
    public final int f20273i = getColumnIndexOrThrow("classification");

    /* renamed from: j */
    public final int f20274j = getColumnIndexOrThrow("transport");

    /* renamed from: k */
    public final int f20275k = getColumnIndexOrThrow("group_id_day");

    /* renamed from: l */
    public final int f20276l = getColumnIndexOrThrow("send_schedule_date");

    /* renamed from: m */
    public final int f20277m = getColumnIndexOrThrow("raw_address");

    /* renamed from: n */
    public final int f20278n = getColumnIndexOrThrow("conversation_id");

    /* renamed from: o */
    public final int f20279o = getColumnIndexOrThrow("raw_id");

    /* renamed from: p */
    public final int f20280p = getColumnIndexOrThrow("raw_id");

    /* renamed from: q */
    public final int f20281q = getColumnIndexOrThrow("info1");

    /* renamed from: r */
    public final int f20282r = getColumnIndexOrThrow("info1");

    /* renamed from: s */
    public final int f20283s = getColumnIndexOrThrow("info2");

    /* renamed from: t */
    public final int f20284t = getColumnIndexOrThrow("info2");

    /* renamed from: u */
    public final int f20285u = getColumnIndexOrThrow("info17");

    /* renamed from: v */
    public final int f20286v = getColumnIndexOrThrow("info16");

    /* renamed from: w */
    public final int f20287w = getColumnIndexOrThrow("info23");

    /* renamed from: x */
    public final int f20288x = getColumnIndexOrThrow("info10");

    /* renamed from: y */
    public final int f20289y = getColumnIndexOrThrow("raw_id");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6110d0(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
    }

    /* renamed from: X0 */
    public boolean m31802X0() {
        return getInt(this.f20268d) != 0;
    }

    /* renamed from: Y */
    public boolean m31801Y() {
        return getInt(this.f20267c) != 0;
    }

    /* renamed from: b */
    public int m31800b() {
        return getInt(this.f20273i);
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: d */
    public long m31799d() {
        int i = getInt(this.f20274j);
        return i != 0 ? i != 1 ? i != 5 ? (char) 0 : getLong(this.f20289y) : getLong(this.f20279o) : getLong(this.f20280p);
    }

    /* renamed from: g2 */
    public long m31798g2() {
        return getLong(this.f20266b);
    }

    public int getStatus() {
        return getInt(this.f20270f);
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: j */
    public long m31797j() {
        int i = getInt(this.f20274j);
        return i != 0 ? i != 1 ? (char) 0 : getLong(this.f20283s) : getLong(this.f20284t);
    }

    /* renamed from: k */
    public int m31796k() {
        return getInt(this.f20272h);
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: l */
    public long m31795l() {
        int i = getInt(this.f20274j);
        return i != 0 ? i != 1 ? (char) 0 : getLong(this.f20281q) : getLong(this.f20282r);
    }

    /* renamed from: u */
    public long m31794u() {
        return getLong(this.f20265a);
    }

    /* renamed from: u1 */
    public String m31793u1() {
        int i = getInt(this.f20274j);
        return i != 0 ? i != 4 ? null : getString(this.f20288x) : getString(this.f20288x);
    }
}

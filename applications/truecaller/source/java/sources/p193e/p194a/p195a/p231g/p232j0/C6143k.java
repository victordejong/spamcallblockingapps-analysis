package p193e.p194a.p195a.p231g.p232j0;

import android.database.Cursor;
import android.database.CursorWrapper;
import com.truecaller.messaging.data.types.UnprocessedEvent;
import s1.z.c.l;
/* renamed from: e.a.a.g.j0.k */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/j0/k.class */
public final class C6143k extends CursorWrapper implements AbstractC6142j {

    /* renamed from: a */
    public final int f20532a = getColumnIndexOrThrow("_id");

    /* renamed from: b */
    public final int f20533b = getColumnIndexOrThrow("event");

    /* renamed from: c */
    public final int f20534c = getColumnIndexOrThrow("im_group_id");

    /* renamed from: d */
    public final int f20535d = getColumnIndexOrThrow("reference_raw_id");

    /* renamed from: e */
    public final int f20536e = getColumnIndexOrThrow("seq_number");

    /* renamed from: f */
    public final int f20537f = getColumnIndexOrThrow("event_type");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6143k(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6142j
    /* renamed from: W1 */
    public UnprocessedEvent mo31744W1() {
        int i = getInt(this.f20532a);
        byte[] blob = getBlob(this.f20533b);
        l.d(blob, "getBlob(eventData)");
        String string = getString(this.f20534c);
        l.d(string, "getString(groupId)");
        String string2 = getString(this.f20535d);
        l.d(string2, "getString(referenceRawId)");
        return new UnprocessedEvent(i, blob, string, string2, getLong(this.f20536e), getInt(this.f20537f));
    }
}

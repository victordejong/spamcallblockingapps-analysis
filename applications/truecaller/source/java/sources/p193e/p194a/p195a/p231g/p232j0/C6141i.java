package p193e.p194a.p195a.p231g.p232j0;

import android.database.Cursor;
import android.database.CursorWrapper;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p195a.p231g.p234l0.C6226b;
import s1.z.c.l;
/* renamed from: e.a.a.g.j0.i */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/j0/i.class */
public final class C6141i extends CursorWrapper implements AbstractC6140h {

    /* renamed from: a */
    public final int f20524a = getColumnIndexOrThrow("im_peer_id");

    /* renamed from: b */
    public final int f20525b = getColumnIndexOrThrow("normalized_number");

    /* renamed from: c */
    public final int f20526c = getColumnIndexOrThrow(AnalyticsConstants.NAME);

    /* renamed from: d */
    public final int f20527d = getColumnIndexOrThrow("image_url");

    /* renamed from: e */
    public final int f20528e = getColumnIndexOrThrow("phonebook_id");

    /* renamed from: f */
    public final int f20529f = getColumnIndexOrThrow("date");

    /* renamed from: g */
    public final int f20530g = getColumnIndexOrThrow("sequence_number");

    /* renamed from: h */
    public final int f20531h = getColumnIndexOrThrow("type");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6141i(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6140h
    /* renamed from: P1 */
    public C6226b mo31745P1() {
        String string = getString(this.f20524a);
        l.d(string, "getString(imPeerId)");
        String string2 = getString(this.f20525b);
        String string3 = getString(this.f20526c);
        String string4 = getString(this.f20527d);
        long j = getLong(this.f20528e);
        return new C6226b(string, getInt(this.f20531h), getLong(this.f20529f), getLong(this.f20530g), string3, string2, string4, j);
    }
}

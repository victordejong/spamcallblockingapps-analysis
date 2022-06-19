package p193e.p194a.p195a.p244k.p245a.p246a;

import android.database.Cursor;
import android.database.CursorWrapper;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p997k3.p1000l.p1001k.C16503a;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.a.p */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/p.class */
public final class C6488p extends CursorWrapper implements AbstractC6487o {

    /* renamed from: a */
    public final int f21487a = getColumnIndexOrThrow("im_peer_id");

    /* renamed from: b */
    public final int f21488b = getColumnIndexOrThrow("normalized_number");

    /* renamed from: c */
    public final int f21489c = getColumnIndexOrThrow("raw_number");

    /* renamed from: d */
    public final int f21490d = getColumnIndexOrThrow(AnalyticsConstants.NAME);

    /* renamed from: e */
    public final int f21491e = getColumnIndexOrThrow("public_name");

    /* renamed from: f */
    public final int f21492f = getColumnIndexOrThrow("image_url");

    /* renamed from: g */
    public final int f21493g = getColumnIndexOrThrow("roles");

    /* renamed from: h */
    public final int f21494h = getColumnIndexOrThrow("phonebook_id");

    /* renamed from: i */
    public final int f21495i = getColumnIndexOrThrow("tc_contact_id");

    /* renamed from: j */
    public final int f21496j = getColumnIndexOrThrow("source");

    /* renamed from: k */
    public final int f21497k = getColumnIndexOrThrow("search_time");

    /* renamed from: l */
    public final int f21498l = getColumnIndexOrThrow("cache_control");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6488p(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6487o
    /* renamed from: i1 */
    public C16503a mo30875i1() {
        String string = getString(this.f21487a);
        l.d(string, "getString(imPeerId)");
        return new C16503a(string, getInt(this.f21493g), getString(this.f21488b), getString(this.f21489c), getString(this.f21490d), getString(this.f21491e), getString(this.f21492f), getLong(this.f21494h), getString(this.f21495i), getInt(this.f21496j), getLong(this.f21497k), isNull(this.f21498l) ? null : Long.valueOf(getLong(this.f21498l)));
    }
}

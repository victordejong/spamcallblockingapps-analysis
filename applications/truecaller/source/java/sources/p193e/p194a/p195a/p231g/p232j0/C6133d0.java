package p193e.p194a.p195a.p231g.p232j0;

import android.database.Cursor;
import android.database.CursorWrapper;
import android.database.SQLException;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.messaging.Participant;
/* renamed from: e.a.a.g.j0.d0 */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/j0/d0.class */
public class C6133d0 extends CursorWrapper implements AbstractC6131c0 {

    /* renamed from: a */
    public final int f20452a;

    /* renamed from: b */
    public final int f20453b;

    /* renamed from: c */
    public final int f20454c;

    /* renamed from: d */
    public final int f20455d;

    /* renamed from: e */
    public final int f20456e;

    /* renamed from: f */
    public final int f20457f;

    /* renamed from: g */
    public final int f20458g;

    /* renamed from: h */
    public final int f20459h;

    /* renamed from: i */
    public final int f20460i;

    /* renamed from: j */
    public final int f20461j;

    /* renamed from: k */
    public final int f20462k;

    /* renamed from: l */
    public final int f20463l;

    /* renamed from: m */
    public final int f20464m;

    /* renamed from: n */
    public final int f20465n;

    /* renamed from: o */
    public final int f20466o;

    /* renamed from: p */
    public final int f20467p;

    /* renamed from: q */
    public final int f20468q;

    /* renamed from: r */
    public final int f20469r;

    /* renamed from: s */
    public final int f20470s;

    /* renamed from: t */
    public final int f20471t;

    /* renamed from: u */
    public final int f20472u;

    /* renamed from: v */
    public final int f20473v;

    /* renamed from: w */
    public final int f20474w;

    /* renamed from: x */
    public final int f20475x;

    /* renamed from: y */
    public final int f20476y;

    /* renamed from: z */
    public final int f20477z;

    public C6133d0(Cursor cursor) {
        super(cursor);
        this.f20452a = cursor.getColumnIndexOrThrow("_id");
        this.f20453b = cursor.getColumnIndexOrThrow("type");
        this.f20454c = cursor.getColumnIndexOrThrow("raw_destination");
        this.f20455d = cursor.getColumnIndexOrThrow("normalized_destination");
        this.f20456e = cursor.getColumnIndexOrThrow("country_code");
        this.f20457f = cursor.getColumnIndexOrThrow("tc_im_peer_id");
        this.f20458g = cursor.getColumnIndexOrThrow("tc_id");
        this.f20459h = cursor.getColumnIndexOrThrow("aggregated_contact_id");
        this.f20460i = cursor.getColumnIndexOrThrow("filter_action");
        this.f20461j = cursor.getColumnIndexOrThrow("is_top_spammer");
        this.f20462k = cursor.getColumnIndexOrThrow("top_spam_score");
        this.f20463l = cursor.getColumnIndexOrThrow(AnalyticsConstants.NAME);
        this.f20464m = cursor.getColumnIndexOrThrow("image_url");
        this.f20465n = cursor.getColumnIndexOrThrow("source");
        this.f20466o = cursor.getColumnIndexOrThrow("phonebook_id");
        this.f20467p = cursor.getColumnIndexOrThrow("spam_score");
        this.f20468q = cursor.getColumnIndexOrThrow("spam_type");
        this.f20469r = cursor.getColumnIndex("national_destination");
        this.f20470s = cursor.getColumnIndex("badges");
        this.f20471t = cursor.getColumnIndex("company_name");
        this.f20472u = cursor.getColumnIndex("search_time");
        this.f20473v = cursor.getColumnIndex("premium_level");
        this.f20474w = cursor.getColumnIndexOrThrow("cache_control");
        this.f20475x = cursor.getColumnIndexOrThrow("im_business_state");
        this.f20476y = cursor.getColumnIndexOrThrow("im_business_feature_flags");
        this.f20477z = cursor.getColumnIndexOrThrow("pb_numbers_count");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6131c0
    /* renamed from: L */
    public String mo31750L() throws SQLException {
        int i = this.f20469r;
        if (i == -1) {
            return null;
        }
        return getString(i);
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6131c0
    /* renamed from: g1 */
    public Participant mo31749g1() throws SQLException {
        Participant.C3848b c3848b = new Participant.C3848b(getInt(this.f20453b));
        c3848b.f11595b = getLong(this.f20452a);
        c3848b.f11597d = getString(this.f20454c);
        c3848b.f11598e = getString(this.f20455d);
        c3848b.f11599f = getString(this.f20456e);
        c3848b.f11596c = getString(this.f20457f);
        c3848b.f11600g = getString(this.f20458g);
        c3848b.f11601h = getLong(this.f20459h);
        c3848b.f11602i = getInt(this.f20460i);
        c3848b.f11603j = getInt(this.f20461j) != 0;
        c3848b.f11604k = getInt(this.f20462k);
        c3848b.f11605l = getString(this.f20463l);
        c3848b.f11606m = getString(this.f20464m);
        c3848b.f11607n = getInt(this.f20465n);
        c3848b.f11608o = getLong(this.f20466o);
        c3848b.f11609p = getInt(this.f20467p);
        c3848b.f11610q = getString(this.f20468q);
        c3848b.f11615v = getInt(this.f20470s);
        c3848b.f11613t = Contact.PremiumLevel.fromRemote(getString(this.f20473v));
        c3848b.f11611r = getString(this.f20471t);
        c3848b.f11612s = getLong(this.f20472u);
        int i = this.f20474w;
        c3848b.f11614u = isNull(i) ? null : Long.valueOf(getLong(i));
        c3848b.f11617x = getInt(this.f20475x);
        c3848b.f11618y = getInt(this.f20476y);
        c3848b.f11619z = getInt(this.f20477z);
        return c3848b.m35443a();
    }
}

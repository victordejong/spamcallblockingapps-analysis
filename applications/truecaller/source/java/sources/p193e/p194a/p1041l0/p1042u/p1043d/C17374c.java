package p193e.p194a.p1041l0.p1042u.p1043d;

import android.content.ContentUris;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.os.Trace;
import com.mopub.mobileads.VastIconXmlManager;
import com.truecaller.data.entity.CallRecording;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.data.entity.Number;
import e.m.f.a.j;
import java.lang.reflect.Method;
import p1727n3.p1807k.p1816e.C26516h;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p997k3.p998j.C16462c;
import p193e.p194a.p997k3.p998j.C16463d;
import w3.c.a.a.a.h;
/* renamed from: e.a.l0.u.d.c */
/* loaded from: classes6-dex2jar.jar:e/a/l0/u/d/c.class */
public class C17374c extends CursorWrapper implements AbstractC17373b {

    /* renamed from: a */
    public final int f48681a;

    /* renamed from: b */
    public final int f48682b;

    /* renamed from: c */
    public final int f48683c;

    /* renamed from: d */
    public final int f48684d;

    /* renamed from: e */
    public final int f48685e;

    /* renamed from: f */
    public final int f48686f;

    /* renamed from: g */
    public final int f48687g;

    /* renamed from: h */
    public final int f48688h;

    /* renamed from: i */
    public final int f48689i;

    /* renamed from: j */
    public final int f48690j;

    /* renamed from: k */
    public final int f48691k;

    /* renamed from: l */
    public final int f48692l;

    /* renamed from: m */
    public final int f48693m;

    /* renamed from: n */
    public final int f48694n;

    /* renamed from: o */
    public final int f48695o;

    /* renamed from: p */
    public final int f48696p;

    /* renamed from: q */
    public final int f48697q;

    /* renamed from: r */
    public final int f48698r;

    /* renamed from: s */
    public final int f48699s;

    /* renamed from: t */
    public final int f48700t;

    /* renamed from: u */
    public final int f48701u;

    /* renamed from: v */
    public final C16463d f48702v;

    /* renamed from: w */
    public final C16462c f48703w;

    /* renamed from: x */
    public final boolean f48704x;

    public C17374c(Cursor cursor, C16463d c16463d, C16462c c16462c, boolean z) {
        super(cursor);
        this.f48702v = c16463d;
        this.f48704x = z;
        this.f48703w = c16462c;
        this.f48681a = cursor.getColumnIndexOrThrow("_id");
        this.f48682b = cursor.getColumnIndexOrThrow("tc_id");
        this.f48683c = cursor.getColumnIndexOrThrow("normalized_number");
        this.f48684d = cursor.getColumnIndexOrThrow("raw_number");
        this.f48685e = cursor.getColumnIndexOrThrow("number_type");
        this.f48686f = cursor.getColumnIndexOrThrow("country_code");
        this.f48687g = cursor.getColumnIndexOrThrow("cached_name");
        this.f48688h = cursor.getColumnIndexOrThrow("type");
        this.f48689i = cursor.getColumnIndexOrThrow("action");
        this.f48690j = cursor.getColumnIndexOrThrow("filter_source");
        this.f48691k = cursor.getColumnIndexOrThrow("ringing_duration");
        this.f48692l = cursor.getColumnIndexOrThrow("call_log_id");
        this.f48693m = cursor.getColumnIndexOrThrow("timestamp");
        this.f48694n = cursor.getColumnIndexOrThrow(VastIconXmlManager.DURATION);
        this.f48695o = cursor.getColumnIndexOrThrow("subscription_id");
        this.f48696p = cursor.getColumnIndexOrThrow("feature");
        this.f48697q = cursor.getColumnIndexOrThrow("new");
        this.f48698r = cursor.getColumnIndexOrThrow("is_read");
        this.f48699s = cursor.getColumnIndexOrThrow("subscription_component_name");
        this.f48700t = cursor.getColumnIndexOrThrow("tc_flag");
        this.f48701u = cursor.getColumnIndexOrThrow("event_id");
    }

    @Override // p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b
    /* renamed from: A0 */
    public long mo16163A0() {
        return m16161d(this.f48692l, -1L);
    }

    /* renamed from: b */
    public final int m16162b(int i, int i2) {
        return isNull(i) ? i2 : getInt(i);
    }

    /* renamed from: d */
    public final long m16161d(int i, long j) {
        return isNull(i) ? j : getLong(i);
    }

    @Override // p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b
    /* renamed from: e */
    public long mo16160e() {
        return getLong(this.f48693m);
    }

    @Override // p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b
    public long getId() {
        return m16161d(this.f48681a, -1L);
    }

    @Override // p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b
    /* renamed from: n */
    public HistoryEvent mo16159n() {
        CallRecording m17356a;
        Contact contact;
        Method method = C26516h.f74306b;
        Trace.beginSection("EventsCursor: read");
        if (isNull(this.f48681a) || isNull(this.f48688h)) {
            Trace.endSection();
            return null;
        }
        HistoryEvent historyEvent = new HistoryEvent((HistoryEvent.C3825a) null);
        long j = getLong(this.f48681a);
        String string = getString(this.f48682b);
        historyEvent.setId(Long.valueOf(j));
        historyEvent.setTcId(string);
        historyEvent.f11534a = getString(this.f48701u);
        String string2 = getString(this.f48683c);
        String string3 = getString(this.f48684d);
        String string4 = getString(this.f48686f);
        String string5 = getString(this.f48687g);
        j.d m28347l = C8574c0.m28347l(getString(this.f48685e), j.d.l);
        historyEvent.f11535b = string2;
        historyEvent.f11536c = string3;
        historyEvent.f11549p = m28347l;
        historyEvent.f11537d = string4;
        historyEvent.f11538e = string5;
        historyEvent.f11550q = getInt(this.f48688h);
        historyEvent.f11551r = m16162b(this.f48689i, 0);
        historyEvent.f11554u = getString(this.f48690j);
        historyEvent.f11543j = getLong(this.f48691k);
        historyEvent.f11540g = Long.valueOf(m16161d(this.f48692l, -1L));
        long j2 = getLong(this.f48693m);
        historyEvent.f11541h = j2;
        historyEvent.f11542i = m16161d(this.f48694n, 0L);
        String string6 = getString(this.f48695o);
        if (!h.j(string6)) {
            historyEvent.f11544k = string6;
        } else {
            historyEvent.f11544k = "-1";
        }
        historyEvent.f11545l = m16162b(this.f48696p, 0);
        historyEvent.f11548o = m16162b(this.f48697q, 0);
        historyEvent.f11546m = m16162b(this.f48698r, 0);
        historyEvent.f11552s = getString(this.f48699s);
        historyEvent.f11553t = m16162b(this.f48700t, 0);
        C16463d c16463d = this.f48702v;
        if (c16463d != null) {
            Contact m17354g = c16463d.m17354g(this);
            if (m17354g == null) {
                contact = new Contact();
                contact.m35546S0(string5);
                contact.setTcId(string);
                contact.f11514i = ContentUris.withAppendedId(C17891a1.C17901j.m15699b(), j);
                contact.m35539X0(j2);
            } else {
                contact = m17354g;
                if (this.f48704x) {
                    this.f48702v.m17355f(this, m17354g);
                    contact = m17354g;
                }
            }
            if (!contact.m35514h0()) {
                Number m35483a = Number.m35483a(string2, string3, string4);
                if (m35483a != null) {
                    m35483a.setTcId(contact.getTcId());
                    m35483a.m35465v(m28347l);
                    if (!contact.m35514h0()) {
                        contact.m35552O0(m35483a.m35479e());
                    }
                    contact.m35525d(m35483a);
                }
                contact.f11515j = true;
            }
            historyEvent.f11539f = contact;
        }
        C16462c c16462c = this.f48703w;
        if (c16462c != null && (m17356a = c16462c.m17356a(this)) != null) {
            historyEvent.f11547n = m17356a;
        }
        Trace.endSection();
        return historyEvent;
    }

    @Override // p193e.p194a.p712e4.AbstractC13493l
    /* renamed from: z */
    public String mo16154z() {
        return (String) h.c(getString(this.f48695o), "-1");
    }
}

package p193e.p194a.p1041l0.p1042u.p1043d;

import android.database.Cursor;
import android.database.CursorWrapper;
import android.os.Trace;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import e.m.f.a.j;
import java.lang.reflect.Method;
import java.util.HashMap;
import p1727n3.p1807k.p1816e.C26516h;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p804h.p806b.AbstractC14627w;
import p193e.p194a.p997k3.C16449c;
import p193e.p194a.p997k3.p1000l.AbstractC16498f;
import p193e.p194a.p997k3.p998j.C16463d;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.l0.u.d.a */
/* loaded from: classes6-dex2jar.jar:e/a/l0/u/d/a.class */
public final class C17372a extends CursorWrapper {

    /* renamed from: o */
    public final int f48670o;

    /* renamed from: p */
    public final int f48671p;

    /* renamed from: s */
    public final C16463d f48674s;

    /* renamed from: t */
    public final C16449c f48675t;

    /* renamed from: u */
    public final HashMap<String, Contact> f48676u;

    /* renamed from: v */
    public final HashMap<Long, HistoryEvent> f48677v;

    /* renamed from: w */
    public final boolean f48678w;

    /* renamed from: x */
    public final AbstractC16498f f48679x;

    /* renamed from: y */
    public final AbstractC14627w f48680y;

    /* renamed from: a */
    public final int f48656a = getColumnIndexOrThrow("_id");

    /* renamed from: b */
    public final int f48657b = getColumnIndexOrThrow("tc_id");

    /* renamed from: c */
    public final int f48658c = getColumnIndexOrThrow("normalized_number");

    /* renamed from: d */
    public final int f48659d = getColumnIndexOrThrow("raw_number");

    /* renamed from: e */
    public final int f48660e = getColumnIndexOrThrow("number_type");

    /* renamed from: f */
    public final int f48661f = getColumnIndexOrThrow("country_code");

    /* renamed from: g */
    public final int f48662g = getColumnIndexOrThrow("type");

    /* renamed from: h */
    public final int f48663h = getColumnIndexOrThrow("action");

    /* renamed from: i */
    public final int f48664i = getColumnIndexOrThrow("filter_source");

    /* renamed from: j */
    public final int f48665j = getColumnIndexOrThrow("timestamp");

    /* renamed from: k */
    public final int f48666k = getColumnIndexOrThrow("subscription_id");

    /* renamed from: l */
    public final int f48667l = getColumnIndexOrThrow("feature");

    /* renamed from: m */
    public final int f48668m = getColumnIndexOrThrow("subscription_component_name");

    /* renamed from: n */
    public final int f48669n = getColumnIndexOrThrow("call_log_id");

    /* renamed from: q */
    public final int f48672q = getColumnIndexOrThrow("history_aggregated_contact_tc_id");

    /* renamed from: r */
    public final int f48673r = getColumnIndex("contact_name");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17372a(Cursor cursor, C16463d c16463d, C16449c c16449c, HashMap<String, Contact> hashMap, HashMap<Long, HistoryEvent> hashMap2, boolean z, AbstractC16498f abstractC16498f, AbstractC14627w abstractC14627w) {
        super(cursor);
        l.e(cursor, "cursor");
        l.e(c16463d, "contactReader");
        l.e(c16449c, "metaInfoReader");
        l.e(hashMap, "contactCache");
        l.e(hashMap2, "historyCache");
        l.e(abstractC16498f, "numberProvider");
        l.e(abstractC14627w, "dialerPerformanceAnalytics");
        this.f48674s = c16463d;
        this.f48675t = c16449c;
        this.f48676u = hashMap;
        this.f48677v = hashMap2;
        this.f48678w = z;
        this.f48679x = abstractC16498f;
        this.f48680y = abstractC14627w;
        this.f48670o = cursor.getColumnIndexOrThrow("tc_flag");
        this.f48671p = cursor.getColumnIndexOrThrow("spam_categories");
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00d8, code lost:
        if (r7 != null) goto L39;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.truecaller.data.entity.Contact m16166b(java.lang.String r7, long r8, long r10, java.lang.String r12, java.lang.String r13, java.lang.String r14, java.lang.String r15, e.m.f.a.j.d r16) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1041l0.p1042u.p1043d.C17372a.m16166b(java.lang.String, long, long, java.lang.String, java.lang.String, java.lang.String, java.lang.String, e.m.f.a.j$d):com.truecaller.data.entity.Contact");
    }

    /* renamed from: d */
    public final int m16165d(int i, int i2) {
        if (!isNull(i)) {
            i2 = getInt(i);
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v145 */
    /* JADX WARN: Type inference failed for: r0v52 */
    /* JADX WARN: Type inference failed for: r0v96, types: [long] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Type inference failed for: r1v48 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* renamed from: n */
    public final HistoryEvent m16164n() {
        Contact contact;
        Method method = C26516h.f74306b;
        Trace.beginSection("EventsCursor: read");
        Contact contact2 = null;
        if (isNull(this.f48656a) || isNull(this.f48662g)) {
            Trace.endSection();
            return null;
        }
        long j = getLong(this.f48656a);
        String string = getString(this.f48672q);
        if (string == null || !(!r.p(string))) {
            string = null;
        }
        HistoryEvent historyEvent = this.f48677v.get(Long.valueOf(j));
        ?? r19 = false;
        if (historyEvent != null) {
            Contact contact3 = historyEvent.f11539f;
            if (contact3 != null) {
                contact3.getTcId();
            }
            this.f48680y.m19860b(true);
            historyEvent.f11556w = false;
            if (!this.f48678w) {
                this.f48680y.m19855g();
            } else if (string == null) {
                this.f48680y.m19855g();
            } else {
                Contact contact4 = this.f48676u.get(string);
                if (contact4 != null) {
                    l.d(contact4, "it");
                    if (l.a(contact4.m35566G(), getString(this.f48673r))) {
                        r19 = true;
                    } else {
                        this.f48680y.m19861a();
                    }
                    if (r19 != false) {
                        contact2 = contact4;
                    }
                    if (contact2 != null) {
                        this.f48680y.m19859c(true);
                        if (!l.a(historyEvent.f11539f, contact2)) {
                            historyEvent.f11556w = true;
                        }
                        l.d(contact2, "contactCache[aggregatedC…nged = true\n            }");
                        historyEvent.f11539f = contact2;
                    }
                }
                String tcId = historyEvent.getTcId();
                long j2 = historyEvent.f11541h;
                String str = historyEvent.f11535b;
                String str2 = historyEvent.f11536c;
                String str3 = historyEvent.f11537d;
                String str4 = historyEvent.f11552s;
                j.d dVar = historyEvent.f11549p;
                l.d(dVar, "numberType");
                contact2 = m16166b(tcId, j, j2, str, str2, str3, str4, dVar);
                contact2.m35566G();
                this.f48676u.put(string, contact2);
                historyEvent.f11556w = true;
                l.d(contact2, "contactCache[aggregatedC…nged = true\n            }");
                historyEvent.f11539f = contact2;
            }
            return historyEvent;
        }
        this.f48680y.m19860b(false);
        HistoryEvent historyEvent2 = new HistoryEvent((HistoryEvent.C3825a) null);
        String string2 = getString(this.f48657b);
        String string3 = getString(this.f48658c);
        String string4 = getString(this.f48659d);
        String string5 = getString(this.f48661f);
        j.d m28347l = C8574c0.m28347l(getString(this.f48660e), j.d.l);
        long j3 = getLong(this.f48665j);
        String string6 = getString(this.f48668m);
        historyEvent2.setId(Long.valueOf(j));
        historyEvent2.f11535b = string3;
        historyEvent2.f11536c = string4;
        historyEvent2.f11549p = m28347l;
        historyEvent2.f11537d = string5;
        historyEvent2.f11550q = getInt(this.f48662g);
        historyEvent2.f11551r = m16165d(this.f48663h, 0);
        historyEvent2.f11554u = getString(this.f48664i);
        historyEvent2.f11541h = j3;
        String string7 = getString(this.f48666k);
        l.d(string7, "it");
        if ((string7.length() > 0) == false) {
            string7 = null;
        }
        if (string7 == null) {
            string7 = "-1";
        }
        historyEvent2.f11544k = string7;
        historyEvent2.f11545l = m16165d(this.f48667l, 0);
        historyEvent2.f11552s = string6;
        int i = this.f48669n;
        ?? r22 = true;
        if (!isNull(i)) {
            r22 = getLong(i);
        }
        historyEvent2.f11540g = Long.valueOf(r22 == true ? 1L : 0L);
        historyEvent2.f11553t = m16165d(this.f48670o, 0);
        if (string != null) {
            String str5 = string;
            if (this.f48676u.containsKey(str5)) {
                this.f48680y.m19859c(true);
                contact = this.f48676u.get(str5);
                historyEvent2.f11539f = contact;
                HashMap<Long, HistoryEvent> hashMap = this.f48677v;
                l.d(historyEvent2, "historyEvent");
                hashMap.put(Long.valueOf(j), historyEvent2);
                Trace.endSection();
                return historyEvent2;
            }
        }
        String str6 = string;
        l.d(m28347l, "numberType");
        Contact m16166b = m16166b(string2, j, j3, string3, string4, string5, string6, m28347l);
        contact = m16166b;
        if (str6 != null) {
            m16166b.m35566G();
            this.f48676u.put(str6, m16166b);
            contact = m16166b;
        }
        historyEvent2.f11539f = contact;
        HashMap<Long, HistoryEvent> hashMap2 = this.f48677v;
        l.d(historyEvent2, "historyEvent");
        hashMap2.put(Long.valueOf(j), historyEvent2);
        Trace.endSection();
        return historyEvent2;
    }
}

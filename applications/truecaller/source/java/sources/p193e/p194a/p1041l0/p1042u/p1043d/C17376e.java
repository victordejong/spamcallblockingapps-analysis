package p193e.p194a.p1041l0.p1042u.p1043d;

import android.database.CursorWrapper;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.data.entity.Number;
import com.truecaller.log.AssertionUtil;
import e.m.f.a.j;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p712e4.AbstractC13493l;
import p193e.p194a.p997k3.p1000l.AbstractC16498f;
import w3.c.a.a.a.h;
/* renamed from: e.a.l0.u.d.e */
/* loaded from: classes6-dex2jar.jar:e/a/l0/u/d/e.class */
public class C17376e extends CursorWrapper implements AbstractC17375d {

    /* renamed from: a */
    public final int[] f48705a = {200, 300, 400, 500};

    /* renamed from: b */
    public final AbstractC16498f f48706b;

    /* renamed from: c */
    public final AbstractC13493l f48707c;

    /* renamed from: d */
    public final boolean f48708d;

    /* renamed from: e */
    public final boolean f48709e;

    /* renamed from: f */
    public final int f48710f;

    /* renamed from: g */
    public final int f48711g;

    /* renamed from: h */
    public final int f48712h;

    /* renamed from: i */
    public final int f48713i;

    /* renamed from: j */
    public final int f48714j;

    /* renamed from: k */
    public final int f48715k;

    /* renamed from: l */
    public final int f48716l;

    /* renamed from: m */
    public final int f48717m;

    /* renamed from: n */
    public final int f48718n;

    /* renamed from: o */
    public final int f48719o;

    /* renamed from: p */
    public final int f48720p;

    /* renamed from: q */
    public final int f48721q;

    public C17376e(AbstractC16498f abstractC16498f, AbstractC13493l abstractC13493l, boolean z, boolean z2) {
        super(abstractC13493l);
        this.f48708d = z;
        this.f48709e = z2;
        this.f48706b = abstractC16498f;
        this.f48707c = abstractC13493l;
        this.f48710f = abstractC13493l.getColumnIndexOrThrow("_id");
        this.f48711g = abstractC13493l.getColumnIndexOrThrow("date");
        this.f48712h = abstractC13493l.getColumnIndexOrThrow("number");
        this.f48713i = abstractC13493l.getColumnIndex("normalized_number");
        this.f48714j = abstractC13493l.getColumnIndex("type");
        this.f48716l = abstractC13493l.getColumnIndexOrThrow(VastIconXmlManager.DURATION);
        this.f48717m = abstractC13493l.getColumnIndexOrThrow(AnalyticsConstants.NAME);
        this.f48718n = abstractC13493l.getColumnIndex("features");
        this.f48719o = abstractC13493l.getColumnIndex("new");
        this.f48720p = abstractC13493l.getColumnIndex("is_read");
        this.f48721q = abstractC13493l.getColumnIndex("subscription_component_name");
        this.f48715k = abstractC13493l.getColumnIndex("logtype");
    }

    /* renamed from: b */
    public static int m16157b(int i) throws IllegalArgumentException {
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    i2 = 3;
                    if (i != 5) {
                        i2 = 3;
                        if (i != 6) {
                            if (i != 10) {
                                throw new IllegalArgumentException("Invalid call log type");
                            }
                            i2 = 3;
                        }
                    }
                }
            }
        }
        return i2;
    }

    @Override // p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17375d
    /* renamed from: D1 */
    public boolean mo16158D1() {
        int i;
        int i2 = this.f48715k;
        if (i2 != -1) {
            int i3 = getInt(i2);
            int[] iArr = this.f48705a;
            boolean z = false;
            if (iArr != null) {
                i = 0;
                while (i < iArr.length) {
                    if (i3 == iArr[i]) {
                        break;
                    }
                    i++;
                }
            }
            i = -1;
            if (i != -1) {
                z = true;
            }
            if (z) {
                return true;
            }
        }
        try {
            m16157b(getInt(this.f48714j));
            return isNull(this.f48712h);
        } catch (IllegalArgumentException e) {
            return true;
        }
    }

    @Override // p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17375d
    /* renamed from: e */
    public long mo16156e() {
        return getLong(this.f48711g);
    }

    @Override // p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17375d
    public long getId() {
        return getLong(this.f48710f);
    }

    @Override // p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17375d
    /* renamed from: n */
    public HistoryEvent mo16155n() {
        String str;
        String str2 = null;
        if (mo16158D1()) {
            return null;
        }
        HistoryEvent historyEvent = new HistoryEvent((HistoryEvent.C3825a) null);
        String string = getString(this.f48712h);
        if (C8574c0.m28353f(string)) {
            historyEvent.f11536c = "";
            historyEvent.f11535b = "";
        } else {
            if (this.f48708d) {
                String str3 = string == null ? "" : string;
                str = str3;
                if (h.j(str3)) {
                    int i = this.f48713i;
                    str = str3;
                    if (i != -1) {
                        str = getString(i);
                    }
                }
            } else {
                int i2 = this.f48713i;
                if (i2 != -1) {
                    str2 = getString(i2);
                }
                str = str2;
                if (h.j(str2)) {
                    str = string == null ? "" : string;
                }
            }
            AssertionUtil.AlwaysFatal.isNotNull(str, new String[0]);
            Number mo17316d = this.f48706b.mo17316d(str, string);
            if (!this.f48709e || !(j.d.d == mo17316d.m35475i() || j.d.f == mo17316d.m35475i())) {
                StringBuilder m8728C = C22128a.m8728C("RemoteCallLogCursorImpl: Type: ");
                m8728C.append(mo17316d.m35475i());
                m8728C.append(". Using parsed number: ");
                m8728C.append(mo17316d.m35473l());
                m8728C.toString();
                String m35473l = mo17316d.m35473l();
                String str4 = m35473l;
                if (m35473l == null) {
                    str4 = "";
                }
                historyEvent.f11536c = str4;
            } else {
                StringBuilder m8728C2 = C22128a.m8728C("RemoteCallLogCursorImpl: Type: ");
                m8728C2.append(mo17316d.m35475i());
                m8728C2.append(". Using raw number: ");
                m8728C2.append(string);
                m8728C2.toString();
                String str5 = string;
                if (string == null) {
                    str5 = "";
                }
                historyEvent.f11536c = str5;
            }
            String m35479e = mo17316d.m35479e();
            if (m35479e == null) {
                m35479e = "";
            }
            historyEvent.f11535b = m35479e;
            historyEvent.f11549p = mo17316d.m35475i();
            historyEvent.f11537d = mo17316d.getCountryCode();
        }
        historyEvent.f11550q = m16157b(getInt(this.f48714j));
        historyEvent.f11551r = 4;
        historyEvent.f11541h = getLong(this.f48711g);
        historyEvent.f11540g = Long.valueOf(getLong(this.f48710f));
        historyEvent.f11542i = getLong(this.f48716l);
        historyEvent.f11538e = getString(this.f48717m);
        historyEvent.f11544k = this.f48707c.mo16154z();
        historyEvent.f11534a = UUID.randomUUID().toString();
        int i3 = this.f48718n;
        if (i3 >= 0) {
            historyEvent.f11545l = getInt(i3);
        }
        int i4 = this.f48719o;
        if (i4 >= 0) {
            historyEvent.f11548o = getInt(i4);
        }
        int i5 = this.f48720p;
        if (i5 >= 0) {
            historyEvent.f11546m = getInt(i5);
        }
        int i6 = this.f48721q;
        if (i6 >= 0) {
            historyEvent.f11552s = getString(i6);
        }
        return historyEvent;
    }

    @Override // p193e.p194a.p712e4.AbstractC13493l
    /* renamed from: z */
    public String mo16154z() {
        return this.f48707c.mo16154z();
    }
}

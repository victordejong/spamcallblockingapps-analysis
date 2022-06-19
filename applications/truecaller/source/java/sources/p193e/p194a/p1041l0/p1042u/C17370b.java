package p193e.p194a.p1041l0.p1042u;

import android.content.ContentResolver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import com.truecaller.log.AssertionUtil;
import javax.inject.Inject;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.AbstractC17351f;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17375d;
import p193e.p194a.p1041l0.p1042u.p1043d.C17374c;
import p193e.p194a.p1041l0.p1042u.p1043d.C17376e;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p997k3.p1000l.AbstractC16498f;
import s1.z.c.l;
/* renamed from: e.a.l0.u.b */
/* loaded from: classes6-dex2jar.jar:e/a/l0/u/b.class */
public final class C17370b implements AbstractC17369a {

    /* renamed from: a */
    public final AbstractC19219a0 f48650a;

    /* renamed from: b */
    public final a<AbstractC13497p> f48651b;

    /* renamed from: c */
    public final AbstractC16498f f48652c;

    /* renamed from: d */
    public final AbstractC17351f f48653d;

    /* renamed from: e */
    public final C20592g f48654e;

    @Inject
    public C17370b(AbstractC19219a0 abstractC19219a0, a<AbstractC13497p> aVar, AbstractC16498f abstractC16498f, AbstractC17351f abstractC17351f, C20592g c20592g) {
        l.e(abstractC19219a0, "permissionUtil");
        l.e(aVar, "multiSimManager");
        l.e(abstractC16498f, "numberProvider");
        l.e(abstractC17351f, "callLogUtil");
        l.e(c20592g, "featuresRegistry");
        this.f48650a = abstractC19219a0;
        this.f48651b = aVar;
        this.f48652c = abstractC16498f;
        this.f48653d = abstractC17351f;
        this.f48654e = c20592g;
    }

    @Override // p193e.p194a.p1041l0.p1042u.AbstractC17369a
    /* renamed from: a */
    public AbstractC17375d mo16170a(ContentResolver contentResolver, long j) {
        Cursor cursor;
        IllegalArgumentException e;
        String str;
        SQLiteException e2;
        Cursor cursor2;
        SecurityException e3;
        C17376e c17376e;
        l.e(contentResolver, "resolver");
        if (!this.f48650a.mo13825h("android.permission.READ_CALL_LOG") || !this.f48650a.mo13825h("android.permission.READ_PHONE_STATE")) {
            return null;
        }
        String[] mo16185a = this.f48653d.mo16185a();
        Object obj = this.f48651b.get();
        l.d(obj, "multiSimManager.get()");
        String mo21747q = ((AbstractC13497p) obj).mo21747q();
        String[] strArr = mo16185a;
        if (mo21747q != null) {
            strArr = (String[]) w3.c.a.a.a.a.a(mo16185a, mo21747q);
        }
        try {
            cursor2 = contentResolver.query(this.f48653d.mo16184b(), strArr, "date>=1 AND date<=? AND type IN(" + C25225a.m3994L1(C17371c.f48655a, ",", null, null, 0, null, null, 62) + ')', new String[]{String.valueOf(j)}, "date DESC, _id DESC");
            if (cursor2 == null) {
                c17376e = null;
            } else {
                try {
                    c17376e = new C17376e(this.f48652c, ((AbstractC13497p) this.f48651b.get()).mo21718x(cursor2), m16168c(), m16167d());
                } catch (SQLiteException e4) {
                    e2 = e4;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    AssertionUtil.reportThrowableButNeverCrash(e2);
                    return null;
                } catch (IllegalArgumentException e5) {
                    e = e5;
                    cursor = cursor2;
                    if (cursor == null) {
                        AssertionUtil.reportThrowableButNeverCrash(e);
                        return null;
                    }
                    String[] columnNames = cursor.getColumnNames();
                    if (columnNames == null) {
                        str = null;
                    } else {
                        int length = columnNames.length;
                        int i = length + 0;
                        if (i <= 0) {
                            str = "";
                        } else {
                            StringBuilder sb = new StringBuilder(i * 16);
                            for (int i2 = 0; i2 < length; i2++) {
                                if (i2 > 0) {
                                    sb.append(',');
                                }
                                if (columnNames[i2] != null) {
                                    sb.append((Object) columnNames[i2]);
                                }
                            }
                            str = sb.toString();
                        }
                    }
                    AssertionUtil.report(C22128a.m8543z2("Can't create remote calls cursor. Available columns: ", str));
                    cursor.close();
                    return null;
                } catch (SecurityException e6) {
                    e3 = e6;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    AssertionUtil.reportThrowableButNeverCrash(e3);
                    return null;
                }
            }
            return c17376e;
        } catch (SQLiteException e7) {
            e2 = e7;
            cursor2 = null;
        } catch (IllegalArgumentException e8) {
            e = e8;
            cursor = null;
        } catch (SecurityException e9) {
            e3 = e9;
            cursor2 = null;
        }
    }

    @Override // p193e.p194a.p1041l0.p1042u.AbstractC17369a
    /* renamed from: b */
    public AbstractC17373b mo16169b(ContentResolver contentResolver, long j) {
        l.e(contentResolver, "resolver");
        Cursor query = contentResolver.query(C17891a1.C17901j.m15699b(), null, "type IN (1,2,3)  AND timestamp<=? AND tc_flag!=3 AND (subscription_component_name!='com.whatsapp' OR subscription_component_name IS NULL) AND tc_flag!=2 AND (subscription_component_name NOT IN('com.truecaller.voip.manager.VOIP','com.truecaller.voip.manager.GROUP_VOIP') OR subscription_component_name IS NULL)", new String[]{String.valueOf(j)}, "timestamp DESC, call_log_id DESC");
        C17374c c17374c = null;
        if (query == null) {
            AssertionUtil.reportWeirdnessButNeverCrash("Content resolver returned null cursor");
        } else {
            c17374c = new C17374c(query, null, null, false);
        }
        return c17374c;
    }

    /* renamed from: c */
    public final boolean m16168c() {
        C20592g c20592g = this.f48654e;
        return c20592g.f58050w2.m10941a(c20592g, C20592g.f57695p6[178]).isEnabled();
    }

    /* renamed from: d */
    public final boolean m16167d() {
        C20592g c20592g = this.f48654e;
        return c20592g.f58064y2.m10941a(c20592g, C20592g.f57695p6[180]).isEnabled();
    }
}

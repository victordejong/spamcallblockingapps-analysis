package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.measurement.AppMeasurement;
import java.io.IOException;
import java.util.Map;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p276q.C8670m0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8679n0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8686n7;
import p081h.p203i.p204a.p224e.p259j.p276q.C8688o0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8696o7;
import p081h.p203i.p204a.p224e.p259j.p276q.C8707q0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8725s0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8734t0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8743u0;
/* renamed from: h.i.a.e.m.b.n0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/n0.class */
public final class C9022n0 extends AbstractC9049r3 implements AbstractC9020m4 {

    /* renamed from: j */
    public static int f20494j = 65535;

    /* renamed from: k */
    public static int f20495k = 2;

    /* renamed from: d */
    public final Map<String, Map<String, String>> f20496d = new ArrayMap();

    /* renamed from: e */
    public final Map<String, Map<String, Boolean>> f20497e = new ArrayMap();

    /* renamed from: f */
    public final Map<String, Map<String, Boolean>> f20498f = new ArrayMap();

    /* renamed from: g */
    public final Map<String, C8734t0> f20499g = new ArrayMap();

    /* renamed from: i */
    public final Map<String, String> f20501i = new ArrayMap();

    /* renamed from: h */
    public final Map<String, Map<String, Integer>> f20500h = new ArrayMap();

    public C9022n0(C9061t3 t3Var) {
        super(t3Var);
    }

    /* renamed from: a */
    public static Map<String, String> m16466a(C8734t0 t0Var) {
        C8743u0[] u0VarArr;
        ArrayMap arrayMap = new ArrayMap();
        if (!(t0Var == null || (u0VarArr = t0Var.f19980f) == null)) {
            for (C8743u0 u0Var : u0VarArr) {
                if (u0Var != null) {
                    arrayMap.put(u0Var.f20001c, u0Var.f20002d);
                }
            }
        }
        return arrayMap;
    }

    @WorkerThread
    /* renamed from: a */
    public final C8734t0 m16462a(String str, byte[] bArr) {
        if (bArr == null) {
            return new C8734t0();
        }
        C8686n7 a = C8686n7.m17304a(bArr, 0, bArr.length);
        C8734t0 t0Var = new C8734t0();
        try {
            t0Var.mo16953a(a);
            mo16178c().m16389A().m16336a("Parsed config. version, gmp_app_id", t0Var.f19977c, t0Var.f19978d);
            return t0Var;
        } catch (IOException e) {
            mo16178c().m16372v().m16336a("Unable to merge remote config. appId", C9027o.m16380a(str), e);
            return new C8734t0();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9020m4
    @WorkerThread
    /* renamed from: a */
    public final String mo16463a(String str, String str2) {
        mo16328d();
        m16465a(str);
        Map<String, String> map = this.f20496d.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16465a(String str) {
        m16316q();
        mo16328d();
        C7021t.m21283b(str);
        if (this.f20499g.get(str) == null) {
            byte[] d = m16332o().m16405d(str);
            if (d == null) {
                this.f20496d.put(str, null);
                this.f20497e.put(str, null);
                this.f20498f.put(str, null);
                this.f20499g.put(str, null);
                this.f20501i.put(str, null);
                this.f20500h.put(str, null);
                return;
            }
            C8734t0 a = m16462a(str, d);
            this.f20496d.put(str, m16466a(a));
            m16464a(str, a);
            this.f20499g.put(str, a);
            this.f20501i.put(str, null);
        }
    }

    /* renamed from: a */
    public final void m16464a(String str, C8734t0 t0Var) {
        C8725s0[] s0VarArr;
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = new ArrayMap();
        if (!(t0Var == null || (s0VarArr = t0Var.f19981g) == null)) {
            for (C8725s0 s0Var : s0VarArr) {
                if (TextUtils.isEmpty(s0Var.f19952c)) {
                    mo16178c().m16372v().m16338a("EventConfig contained null event name");
                } else {
                    String b = AppMeasurement.C3583a.m31669b(s0Var.f19952c);
                    if (!TextUtils.isEmpty(b)) {
                        s0Var.f19952c = b;
                    }
                    arrayMap.put(s0Var.f19952c, s0Var.f19953d);
                    arrayMap2.put(s0Var.f19952c, s0Var.f19954e);
                    Integer num = s0Var.f19955f;
                    if (num != null) {
                        if (num.intValue() < f20495k || s0Var.f19955f.intValue() > f20494j) {
                            mo16178c().m16372v().m16336a("Invalid sampling rate. Event name, sample rate", s0Var.f19952c, s0Var.f19955f);
                        } else {
                            arrayMap3.put(s0Var.f19952c, s0Var.f19955f);
                        }
                    }
                }
            }
        }
        this.f20497e.put(str, arrayMap);
        this.f20498f.put(str, arrayMap2);
        this.f20500h.put(str, arrayMap3);
    }

    @WorkerThread
    /* renamed from: a */
    public final boolean m16461a(String str, byte[] bArr, String str2) {
        ContentValues contentValues;
        C8679n0[] n0VarArr;
        C8707q0[] q0VarArr;
        C8688o0[] o0VarArr;
        m16316q();
        mo16328d();
        C7021t.m21283b(str);
        C8734t0 a = m16462a(str, bArr);
        if (a == null) {
            return false;
        }
        m16464a(str, a);
        this.f20499g.put(str, a);
        this.f20501i.put(str, str2);
        this.f20496d.put(str, m16466a(a));
        C8990h4 n = m16333n();
        C8670m0[] m0VarArr = a.f19982h;
        C7021t.m21290a(m0VarArr);
        for (C8670m0 m0Var : m0VarArr) {
            for (C8679n0 n0Var : m0Var.f19839e) {
                String b = AppMeasurement.C3583a.m31669b(n0Var.f19854d);
                if (b != null) {
                    n0Var.f19854d = b;
                }
                for (C8688o0 o0Var : n0Var.f19855e) {
                    String a2 = AppMeasurement.C3586d.m31667a(o0Var.f19899f);
                    if (a2 != null) {
                        o0Var.f19899f = a2;
                    }
                }
            }
            for (C8707q0 q0Var : m0Var.f19838d) {
                String a3 = AppMeasurement.C3587e.m31666a(q0Var.f19930d);
                if (a3 != null) {
                    q0Var.f19930d = a3;
                }
            }
        }
        n.m16332o().m16415a(str, m0VarArr);
        try {
            a.f19982h = null;
            byte[] bArr2 = new byte[a.m17077b()];
            a.mo16952a(C8696o7.m17260a(bArr2, 0, bArr2.length));
            bArr = bArr2;
        } catch (IOException e) {
            mo16178c().m16372v().m16336a("Unable to serialize reduced-size config. Storing full config instead. appId", C9027o.m16380a(str), e);
        }
        C9026n4 o = m16332o();
        C7021t.m21283b(str);
        o.mo16328d();
        o.m16316q();
        new ContentValues().put("remote_config", bArr);
        try {
            if (o.m16394v().update("apps", contentValues, "app_id = ?", new String[]{str}) != 0) {
                return true;
            }
            o.mo16178c().m16375s().m16337a("Failed to update remote config (got 0). appId", C9027o.m16380a(str));
            return true;
        } catch (SQLiteException e2) {
            o.mo16178c().m16375s().m16336a("Error storing remote config. appId", C9027o.m16380a(str), e2);
            return true;
        }
    }

    @WorkerThread
    /* renamed from: b */
    public final C8734t0 m16460b(String str) {
        m16316q();
        mo16328d();
        C7021t.m21283b(str);
        m16465a(str);
        return this.f20499g.get(str);
    }

    @WorkerThread
    /* renamed from: b */
    public final boolean m16459b(String str, String str2) {
        Boolean bool;
        mo16328d();
        m16465a(str);
        if (m16452g(str) && C8959c4.m16702h(str2)) {
            return true;
        }
        if (m16451h(str) && C8959c4.m16706e(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.f20497e.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @WorkerThread
    /* renamed from: c */
    public final String m16458c(String str) {
        mo16328d();
        return this.f20501i.get(str);
    }

    @WorkerThread
    /* renamed from: c */
    public final boolean m16457c(String str, String str2) {
        Boolean bool;
        mo16328d();
        m16465a(str);
        if ("ecommerce_purchase".equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.f20498f.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @WorkerThread
    /* renamed from: d */
    public final int m16455d(String str, String str2) {
        Integer num;
        mo16328d();
        m16465a(str);
        Map<String, Integer> map = this.f20500h.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    @WorkerThread
    /* renamed from: d */
    public final void m16456d(String str) {
        mo16328d();
        this.f20501i.put(str, null);
    }

    @WorkerThread
    /* renamed from: e */
    public final void m16454e(String str) {
        mo16328d();
        this.f20499g.remove(str);
    }

    @WorkerThread
    /* renamed from: f */
    public final long m16453f(String str) {
        String a = mo16463a(str, "measurement.account.time_zone_offset_minutes");
        if (TextUtils.isEmpty(a)) {
            return 0L;
        }
        try {
            return Long.parseLong(a);
        } catch (NumberFormatException e) {
            mo16178c().m16372v().m16336a("Unable to parse timezone offset. appId", C9027o.m16380a(str), e);
            return 0L;
        }
    }

    /* renamed from: g */
    public final boolean m16452g(String str) {
        return "1".equals(mo16463a(str, "measurement.upload.blacklist_internal"));
    }

    /* renamed from: h */
    public final boolean m16451h(String str) {
        return "1".equals(mo16463a(str, "measurement.upload.blacklist_public"));
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9049r3
    /* renamed from: r */
    public final boolean mo16085r() {
        return false;
    }
}

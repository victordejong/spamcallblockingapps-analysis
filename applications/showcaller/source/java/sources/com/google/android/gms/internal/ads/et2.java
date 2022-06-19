package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.util.C6232j;
import java.io.File;
import java.util.HashSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/et2.class */
public final class et2 {

    /* renamed from: a */
    private static final Object f22533a = new Object();

    /* renamed from: b */
    private final Context f22534b;

    /* renamed from: c */
    private final SharedPreferences f22535c;

    /* renamed from: d */
    private final String f22536d;

    /* renamed from: e */
    private final qs2 f22537e;

    /* renamed from: f */
    private boolean f22538f;

    public et2(Context context, int i, qs2 qs2Var, boolean z) {
        this.f22538f = false;
        this.f22534b = context;
        this.f22536d = Integer.toString(i - 1);
        this.f22535c = context.getSharedPreferences("pcvmspf", 0);
        this.f22537e = qs2Var;
        this.f22538f = z;
    }

    /* renamed from: e */
    private final File m15381e(String str) {
        return new File(new File(this.f22534b.getDir("pccache", 0), this.f22536d), str);
    }

    /* renamed from: f */
    private final String m15380f() {
        String valueOf = String.valueOf(this.f22536d);
        return valueOf.length() != 0 ? "FBAMTD".concat(valueOf) : new String("FBAMTD");
    }

    /* renamed from: g */
    private final String m15379g() {
        String valueOf = String.valueOf(this.f22536d);
        return valueOf.length() != 0 ? "LATMTD".concat(valueOf) : new String("LATMTD");
    }

    /* renamed from: h */
    private static String m15378h(C6463f2 c6463f2) {
        C6537h2 m14504J = C6574i2.m14504J();
        m14504J.m14768q(c6463f2.m15325C().m14511C());
        m14504J.m14767r(c6463f2.m15325C().m14510D());
        m14504J.m14765t(c6463f2.m15325C().m14508F());
        m14504J.m14764v(c6463f2.m15325C().m14507G());
        m14504J.m14766s(c6463f2.m15325C().m14509E());
        return C6232j.m16793a(m14504J.m15512n().mo10722N().zzz());
    }

    /* renamed from: i */
    private final void m15377i(int i, long j) {
        qs2 qs2Var = this.f22537e;
        if (qs2Var != null) {
            qs2Var.mo11807b(i, j);
        }
    }

    /* renamed from: j */
    private final void m15376j(int i, long j, String str) {
        qs2 qs2Var = this.f22537e;
        if (qs2Var != null) {
            qs2Var.mo11808a(i, j, str);
        }
    }

    /* renamed from: k */
    private final C6574i2 m15375k(int i) {
        String string = i == 1 ? this.f22535c.getString(m15379g(), null) : this.f22535c.getString(m15380f(), null);
        if (string == null) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        try {
            return C6574i2.m14505I(zzgex.zzt(C6232j.m16791c(string)), this.f22538f ? vd3.m10041a() : vd3.m10040b());
        } catch (zzggm e) {
            return null;
        } catch (NullPointerException e2) {
            m15377i(2029, currentTimeMillis);
            return null;
        } catch (RuntimeException e3) {
            m15377i(2032, currentTimeMillis);
            return null;
        }
    }

    /* renamed from: a */
    public final boolean m15385a(C6463f2 c6463f2, dt2 dt2Var) {
        File[] listFiles;
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f22533a) {
            C6574i2 m15375k = m15375k(1);
            String m14511C = c6463f2.m15325C().m14511C();
            if (m15375k != null && m15375k.m14511C().equals(m14511C)) {
                m15377i(4014, currentTimeMillis);
                return false;
            }
            long currentTimeMillis2 = System.currentTimeMillis();
            File m15381e = m15381e(m14511C);
            if (m15381e.exists()) {
                String str = "1";
                if (true != m15381e.isDirectory()) {
                    str = "0";
                }
                String str2 = "1";
                if (true != m15381e.isFile()) {
                    str2 = "0";
                }
                StringBuilder sb = new StringBuilder(str.length() + 5 + str2.length());
                sb.append("d:");
                sb.append(str);
                sb.append(",f:");
                sb.append(str2);
                m15376j(4023, currentTimeMillis2, sb.toString());
                m15377i(4015, currentTimeMillis2);
            } else if (!m15381e.mkdirs()) {
                String str3 = "1";
                if (true != m15381e.canWrite()) {
                    str3 = "0";
                }
                m15376j(4024, currentTimeMillis2, str3.length() != 0 ? "cw:".concat(str3) : new String("cw:"));
                m15377i(4015, currentTimeMillis2);
                return false;
            }
            File m15381e2 = m15381e(m14511C);
            File file = new File(m15381e2, "pcam.jar");
            File file2 = new File(m15381e2, "pcbc");
            if (!zs2.m8194b(file, c6463f2.m15324D().zzz())) {
                m15377i(4016, currentTimeMillis);
                return false;
            } else if (!zs2.m8194b(file2, c6463f2.m15323E().zzz())) {
                m15377i(4017, currentTimeMillis);
                return false;
            } else if (dt2Var != null && !dt2Var.mo13752a(file)) {
                m15377i(4018, currentTimeMillis);
                zs2.m8191e(m15381e2);
                return false;
            } else {
                String m15378h = m15378h(c6463f2);
                long currentTimeMillis3 = System.currentTimeMillis();
                String string = this.f22535c.getString(m15379g(), null);
                SharedPreferences.Editor edit = this.f22535c.edit();
                edit.putString(m15379g(), m15378h);
                if (string != null) {
                    edit.putString(m15380f(), string);
                }
                if (!edit.commit()) {
                    m15377i(4019, currentTimeMillis3);
                    return false;
                }
                HashSet hashSet = new HashSet();
                C6574i2 m15375k2 = m15375k(1);
                if (m15375k2 != null) {
                    hashSet.add(m15375k2.m14511C());
                }
                C6574i2 m15375k3 = m15375k(2);
                if (m15375k3 != null) {
                    hashSet.add(m15375k3.m14511C());
                }
                for (File file3 : new File(this.f22534b.getDir("pccache", 0), this.f22536d).listFiles()) {
                    if (!hashSet.contains(file3.getName())) {
                        zs2.m8191e(file3);
                    }
                }
                m15377i(5014, currentTimeMillis);
                return true;
            }
        }
    }

    /* renamed from: b */
    public final boolean m15384b(C6463f2 c6463f2) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f22533a) {
            if (!zs2.m8194b(new File(m15381e(c6463f2.m15325C().m14511C()), "pcbc"), c6463f2.m15323E().zzz())) {
                m15377i(4020, currentTimeMillis);
                return false;
            }
            String m15378h = m15378h(c6463f2);
            SharedPreferences.Editor edit = this.f22535c.edit();
            edit.putString(m15379g(), m15378h);
            boolean commit = edit.commit();
            if (commit) {
                m15377i(5015, currentTimeMillis);
            } else {
                m15377i(4021, currentTimeMillis);
            }
            return commit;
        }
    }

    /* renamed from: c */
    public final xs2 m15383c(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f22533a) {
            C6574i2 m15375k = m15375k(1);
            if (m15375k == null) {
                m15377i(4022, currentTimeMillis);
                return null;
            }
            File m15381e = m15381e(m15375k.m14511C());
            File file = new File(m15381e, "pcam.jar");
            File file2 = file;
            if (!file.exists()) {
                file2 = new File(m15381e, "pcam");
            }
            File file3 = new File(m15381e, "pcbc");
            File file4 = new File(m15381e, "pcopt");
            m15377i(5016, currentTimeMillis);
            return new xs2(m15375k, file2, file3, file4);
        }
    }

    /* renamed from: d */
    public final boolean m15382d(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f22533a) {
            C6574i2 m15375k = m15375k(1);
            if (m15375k == null) {
                m15377i(4025, currentTimeMillis);
                return false;
            }
            File m15381e = m15381e(m15375k.m14511C());
            if (!new File(m15381e, "pcam.jar").exists()) {
                m15377i(4026, currentTimeMillis);
                return false;
            } else if (!new File(m15381e, "pcbc").exists()) {
                m15377i(4027, currentTimeMillis);
                return false;
            } else {
                m15377i(5019, currentTimeMillis);
                return true;
            }
        }
    }
}

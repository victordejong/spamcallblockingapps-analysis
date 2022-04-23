package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.util.C1614k;
import java.io.File;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xu1.class */
public final class xu1 {

    /* renamed from: f */
    private static final Object f9186f = new Object();

    /* renamed from: a */
    private final Context f9187a;

    /* renamed from: b */
    private final SharedPreferences f9188b;

    /* renamed from: c */
    private final String f9189c;

    /* renamed from: d */
    private final ku1 f9190d;

    /* renamed from: e */
    private boolean f9191e;

    public xu1(Context context, zzhp zzhpVar, ku1 ku1Var, boolean z) {
        this.f9191e = false;
        this.f9187a = context;
        this.f9189c = Integer.toString(zzhpVar.zza());
        this.f9188b = context.getSharedPreferences("pcvmspf", 0);
        this.f9190d = ku1Var;
        this.f9191e = z;
    }

    /* renamed from: e */
    private final File m4828e(String str) {
        return new File(new File(this.f9187a.getDir("pccache", 0), this.f9189c), str);
    }

    /* renamed from: f */
    private final String m4827f() {
        String valueOf = String.valueOf(this.f9189c);
        return valueOf.length() != 0 ? "FBAMTD".concat(valueOf) : new String("FBAMTD");
    }

    /* renamed from: g */
    private final String m4826g() {
        String valueOf = String.valueOf(this.f9189c);
        return valueOf.length() != 0 ? "LATMTD".concat(valueOf) : new String("LATMTD");
    }

    /* renamed from: h */
    private static String m4825h(ek2 ek2Var) {
        gk2 M = hk2.M();
        M.q(ek2Var.E().E());
        M.r(ek2Var.E().F());
        M.t(ek2Var.E().H());
        M.u(ek2Var.E().I());
        M.s(ek2Var.E().G());
        return C1614k.m8225a(M.m().d().zzy());
    }

    /* renamed from: i */
    private final void m4824i(int i, long j) {
        ku1 ku1Var = this.f9190d;
        if (ku1Var != null) {
            ku1Var.m6750b(i, j);
        }
    }

    /* renamed from: j */
    private final void m4823j(int i, long j, String str) {
        ku1 ku1Var = this.f9190d;
        if (ku1Var != null) {
            ku1Var.m6751a(i, j, str);
        }
    }

    /* renamed from: k */
    private final hk2 m4822k(int i) {
        String str;
        SharedPreferences sharedPreferences;
        int i2;
        if (i == 1) {
            sharedPreferences = this.f9188b;
            str = m4826g();
        } else {
            sharedPreferences = this.f9188b;
            str = m4827f();
        }
        String string = sharedPreferences.getString(str, null);
        if (string == null) {
            return null;
        }
        try {
            return hk2.L(zzesf.zzs(C1614k.m8223c(string)), this.f9191e ? bc2.m8043a() : bc2.m8042b());
        } catch (zzett e) {
            return null;
        } catch (NullPointerException e2) {
            i2 = 2029;
            m4824i(i2, System.currentTimeMillis());
            return null;
        } catch (RuntimeException e3) {
            i2 = 2032;
            m4824i(i2, System.currentTimeMillis());
            return null;
        }
    }

    /* renamed from: a */
    public final boolean m4832a(ek2 ek2Var, wu1 wu1Var) {
        File[] listFiles;
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f9186f) {
            try {
                hk2 k = m4822k(1);
                String E = ek2Var.E().E();
                if (k == null || !k.E().equals(E)) {
                    long currentTimeMillis2 = System.currentTimeMillis();
                    File e = m4828e(E);
                    if (e.exists()) {
                        String str = "1";
                        if (true != e.isDirectory()) {
                            str = "0";
                        }
                        String str2 = "1";
                        if (true != e.isFile()) {
                            str2 = "0";
                        }
                        StringBuilder sb = new StringBuilder(str.length() + 5 + str2.length());
                        sb.append("d:");
                        sb.append(str);
                        sb.append(",f:");
                        sb.append(str2);
                        m4823j(4023, currentTimeMillis2, sb.toString());
                        m4824i(4015, currentTimeMillis2);
                    } else if (!e.mkdirs()) {
                        String str3 = "1";
                        if (true != e.canWrite()) {
                            str3 = "0";
                        }
                        m4823j(4024, currentTimeMillis2, str3.length() != 0 ? "cw:".concat(str3) : new String("cw:"));
                        m4824i(4015, currentTimeMillis2);
                        return false;
                    }
                    File e2 = m4828e(E);
                    File file = new File(e2, "pcam.jar");
                    File file2 = new File(e2, "pcbc");
                    if (!tu1.m5466b(file, ek2Var.F().zzy())) {
                        m4824i(4016, currentTimeMillis);
                        return false;
                    } else if (!tu1.m5466b(file2, ek2Var.G().zzy())) {
                        m4824i(4017, currentTimeMillis);
                        return false;
                    } else if (wu1Var == null || wu1Var.m4995a(file)) {
                        String h = m4825h(ek2Var);
                        long currentTimeMillis3 = System.currentTimeMillis();
                        String string = this.f9188b.getString(m4826g(), null);
                        SharedPreferences.Editor edit = this.f9188b.edit();
                        edit.putString(m4826g(), h);
                        if (string != null) {
                            edit.putString(m4827f(), string);
                        }
                        if (!edit.commit()) {
                            m4824i(4019, currentTimeMillis3);
                            return false;
                        }
                        HashSet hashSet = new HashSet();
                        hk2 k2 = m4822k(1);
                        if (k2 != null) {
                            hashSet.add(k2.E());
                        }
                        hk2 k3 = m4822k(2);
                        if (k3 != null) {
                            hashSet.add(k3.E());
                        }
                        for (File file3 : new File(this.f9187a.getDir("pccache", 0), this.f9189c).listFiles()) {
                            if (!hashSet.contains(file3.getName())) {
                                tu1.m5463e(file3);
                            }
                        }
                        m4824i(5014, currentTimeMillis);
                        return true;
                    } else {
                        m4824i(4018, currentTimeMillis);
                        tu1.m5463e(e2);
                        return false;
                    }
                } else {
                    m4824i(4014, currentTimeMillis);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public final boolean m4831b(ek2 ek2Var) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f9186f) {
            if (!tu1.m5466b(new File(m4828e(ek2Var.E().E()), "pcbc"), ek2Var.G().zzy())) {
                m4824i(4020, currentTimeMillis);
                return false;
            }
            String h = m4825h(ek2Var);
            SharedPreferences.Editor edit = this.f9188b.edit();
            edit.putString(m4826g(), h);
            boolean commit = edit.commit();
            if (commit) {
                m4824i(5015, currentTimeMillis);
            } else {
                m4824i(4021, currentTimeMillis);
            }
            return commit;
        }
    }

    /* renamed from: c */
    public final ru1 m4830c(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f9186f) {
            hk2 k = m4822k(1);
            if (k == null) {
                m4824i(4022, currentTimeMillis);
                return null;
            }
            File e = m4828e(k.E());
            File file = new File(e, "pcam.jar");
            File file2 = file;
            if (!file.exists()) {
                file2 = new File(e, "pcam");
            }
            File file3 = new File(e, "pcbc");
            File file4 = new File(e, "pcopt");
            m4824i(5016, currentTimeMillis);
            return new ru1(k, file2, file3, file4);
        }
    }

    /* renamed from: d */
    public final boolean m4829d(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f9186f) {
            hk2 k = m4822k(1);
            if (k == null) {
                m4824i(4025, currentTimeMillis);
                return false;
            }
            File e = m4828e(k.E());
            if (!new File(e, "pcam.jar").exists()) {
                m4824i(4026, currentTimeMillis);
                return false;
            } else if (!new File(e, "pcbc").exists()) {
                m4824i(4027, currentTimeMillis);
                return false;
            } else {
                m4824i(5019, currentTimeMillis);
                return true;
            }
        }
    }
}

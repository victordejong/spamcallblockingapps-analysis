package p068d2;

import android.support.p012v4.media.C0082b;
import androidx.recyclerview.widget.C0608b;
import java.io.IOException;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import p068d2.C2415u;
/* renamed from: d2.e4 */
/* loaded from: classes-dex2jar.jar:d2/e4.class */
public class C2227e4 {
    /* renamed from: a */
    public static int m3752a(C2267f4 c2267f4, String str, int i) {
        int optInt;
        synchronized (c2267f4.f8159a) {
            optInt = c2267f4.f8159a.optInt(str, i);
        }
        return optInt;
    }

    /* renamed from: b */
    public static long m3751b(C2267f4 c2267f4, String str, long j) {
        long optLong;
        synchronized (c2267f4.f8159a) {
            optLong = c2267f4.f8159a.optLong(str, j);
        }
        return optLong;
    }

    /* renamed from: c */
    public static C2200d4 m3750c(C2267f4 c2267f4, String str) {
        C2200d4 c2200d4;
        synchronized (c2267f4.f8159a) {
            JSONArray optJSONArray = c2267f4.f8159a.optJSONArray(str);
            c2200d4 = optJSONArray != null ? new C2200d4(optJSONArray) : new C2200d4();
        }
        return c2200d4;
    }

    /* renamed from: d */
    public static C2267f4 m3749d(String str, String str2) {
        String str3;
        try {
            return new C2267f4(str);
        } catch (JSONException e) {
            if (str2 == null) {
                str3 = "";
            } else {
                StringBuilder m7624k = C0608b.m7624k(str2, ": ");
                m7624k.append(e.toString());
                str3 = m7624k.toString();
            }
            C2415u.C2416a c2416a = new C2415u.C2416a();
            c2416a.f8564a.append(str3);
            c2416a.m3580a(C2415u.f8561f);
            return new C2267f4();
        }
    }

    /* renamed from: e */
    public static C2267f4 m3748e(C2267f4... c2267f4Arr) {
        C2267f4 c2267f4 = new C2267f4();
        for (C2267f4 c2267f42 : c2267f4Arr) {
            if (c2267f42 != null) {
                synchronized (c2267f4.f8159a) {
                    synchronized (c2267f42.f8159a) {
                        Iterator<String> m3708d = c2267f42.m3708d();
                        while (m3708d.hasNext()) {
                            String next = m3708d.next();
                            try {
                                c2267f4.f8159a.put(next, c2267f42.f8159a.get(next));
                            } catch (JSONException e) {
                            }
                        }
                    }
                }
            }
        }
        return c2267f4;
    }

    /* renamed from: f */
    public static boolean m3747f(C2267f4 c2267f4, String str, double d) {
        try {
            synchronized (c2267f4.f8159a) {
                c2267f4.f8159a.put(str, d);
            }
            return true;
        } catch (JSONException e) {
            StringBuilder m8752j = C0082b.m8752j("JSON error in ADCJSON putDouble(): ");
            m8752j.append(" with key: " + str);
            m8752j.append(" and value: " + d);
            C0082b.m8750l(0, 0, m8752j.toString(), true);
            return false;
        }
    }

    /* renamed from: g */
    public static boolean m3746g(C2267f4 c2267f4, String str, C2200d4 c2200d4) {
        try {
            synchronized (c2267f4.f8159a) {
                c2267f4.f8159a.put(str, c2200d4.f8025a);
            }
            return true;
        } catch (JSONException e) {
            StringBuilder m8752j = C0082b.m8752j("JSON error in ADCJSON putArray(): ");
            m8752j.append(e.toString());
            m8752j.append(" with key: " + str);
            m8752j.append(" and value: " + c2200d4);
            C0082b.m8750l(0, 0, m8752j.toString(), true);
            return false;
        }
    }

    /* renamed from: h */
    public static boolean m3745h(C2267f4 c2267f4, String str, C2267f4 c2267f42) {
        try {
            synchronized (c2267f4.f8159a) {
                c2267f4.f8159a.put(str, c2267f42.f8159a);
            }
            return true;
        } catch (JSONException e) {
            StringBuilder m8752j = C0082b.m8752j("JSON error in ADCJSON putObject(): ");
            m8752j.append(e.toString());
            m8752j.append(" with key: " + str);
            m8752j.append(" and value: " + c2267f42);
            C0082b.m8750l(0, 0, m8752j.toString(), true);
            return false;
        }
    }

    /* renamed from: i */
    public static boolean m3744i(C2267f4 c2267f4, String str, String str2) {
        try {
            c2267f4.m3709c(str, str2);
            return true;
        } catch (JSONException e) {
            C2415u.C2416a c2416a = new C2415u.C2416a();
            c2416a.f8564a.append("JSON error in ADCJSON putString(): ");
            c2416a.f8564a.append(e.toString());
            c2416a.f8564a.append(" with key: " + str);
            c2416a.f8564a.append(" and value: " + str2);
            c2416a.m3580a(C2415u.f8561f);
            return false;
        }
    }

    /* renamed from: j */
    public static String[] m3743j(C2200d4 c2200d4) {
        String[] strArr;
        synchronized (c2200d4.f8025a) {
            strArr = new String[c2200d4.f8025a.length()];
            for (int i = 0; i < c2200d4.f8025a.length(); i++) {
                strArr[i] = c2200d4.m3760e(i);
            }
        }
        return strArr;
    }

    /* renamed from: k */
    public static C2267f4 m3742k(String str) {
        return m3749d(str, null);
    }

    /* renamed from: l */
    public static boolean m3741l(C2267f4 c2267f4, String str) {
        boolean optBoolean;
        synchronized (c2267f4.f8159a) {
            optBoolean = c2267f4.f8159a.optBoolean(str);
        }
        return optBoolean;
    }

    /* renamed from: m */
    public static boolean m3740m(C2267f4 c2267f4, String str, int i) {
        try {
            c2267f4.m3710b(str, i);
            return true;
        } catch (JSONException e) {
            StringBuilder m8752j = C0082b.m8752j("JSON error in ADCJSON putInteger(): ");
            m8752j.append(e.toString());
            m8752j.append(" with key: " + str);
            m8752j.append(" and value: " + i);
            C0082b.m8750l(0, 0, m8752j.toString(), true);
            return false;
        }
    }

    /* renamed from: n */
    public static boolean m3739n(C2267f4 c2267f4, String str, boolean z) {
        try {
            synchronized (c2267f4.f8159a) {
                c2267f4.f8159a.put(str, z);
            }
            return true;
        } catch (JSONException e) {
            StringBuilder m8752j = C0082b.m8752j("JSON error in ADCJSON putBoolean(): ");
            m8752j.append(e.toString());
            m8752j.append(" with key: " + str);
            m8752j.append(" and value: " + z);
            C0082b.m8750l(0, 0, m8752j.toString(), true);
            return false;
        }
    }

    /* renamed from: o */
    public static C2267f4[] m3738o(C2200d4 c2200d4) {
        C2267f4[] c2267f4Arr;
        synchronized (c2200d4.f8025a) {
            c2267f4Arr = new C2267f4[c2200d4.f8025a.length()];
            for (int i = 0; i < c2200d4.f8025a.length(); i++) {
                c2267f4Arr[i] = c2200d4.m3761d(i);
            }
        }
        return c2267f4Arr;
    }

    /* renamed from: p */
    public static double m3737p(C2267f4 c2267f4, String str) {
        double optDouble;
        synchronized (c2267f4.f8159a) {
            optDouble = c2267f4.f8159a.optDouble(str, 0.0d);
        }
        return optDouble;
    }

    /* renamed from: q */
    public static C2267f4 m3736q(String str) {
        try {
            String sb = C2408t.m3591d().m3719o().m3682a(str, false).toString();
            return m3749d(sb, "loadObject from filepath " + str);
        } catch (IOException e) {
            C2415u.C2416a c2416a = new C2415u.C2416a();
            c2416a.f8564a.append("IOException in ADCJSON's loadObject: ");
            c2416a.f8564a.append(e.toString());
            c2416a.m3580a(C2415u.f8561f);
            return new C2267f4();
        }
    }

    /* renamed from: r */
    public static int m3735r(C2267f4 c2267f4, String str) {
        int optInt;
        synchronized (c2267f4.f8159a) {
            optInt = c2267f4.f8159a.optInt(str);
        }
        return optInt;
    }

    /* renamed from: s */
    public static boolean m3734s(C2267f4 c2267f4, String str) {
        try {
            C2408t.m3591d().m3719o().m3679d(str, c2267f4.toString(), false);
            return true;
        } catch (IOException e) {
            C2415u.C2416a c2416a = new C2415u.C2416a();
            c2416a.f8564a.append("IOException in ADCJSON's saveObject: ");
            c2416a.f8564a.append(e.toString());
            c2416a.m3580a(C2415u.f8561f);
            return false;
        }
    }
}

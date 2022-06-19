package p000;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import p000.r71;
import p000.ta1;
/* renamed from: b91 */
/* loaded from: classes3-dex2jar.jar:b91.class */
public class b91 {

    /* renamed from: a */
    public static final String f1834a = "b91";

    /* renamed from: b */
    public static ta1.AbstractC1663e f1835b = new C0235a();

    /* renamed from: c */
    public static ArrayList<C0236b> f1836c = new ArrayList<>();

    /* renamed from: d */
    public static Method f1837d = null;

    /* renamed from: e */
    public static boolean f1838e = true;

    /* renamed from: f */
    public static final String[] f1839f = {"getSimCountryIsoGemini", "getSimCountryIsoDs", "getSimCountryIsoExt", "getSimCountryIso", "getIccCountryIso"};

    /* renamed from: g */
    public static final String[] f1840g = {"getDeviceIdGemini", "getDeviceIdDs", "getDeviceIdExt", "getDeviceId"};

    /* renamed from: h */
    public static final String[] f1841h = {"getSimStateGemini", "getSimStateDs", "getSimStateExt", "getSimState"};

    /* renamed from: i */
    public static final String[] f1842i = {"getSimSerialNumberGemini", "getSimSerialNumberDs", "getSimSerialNumberExt", "getSimSerialNumber"};

    /* renamed from: j */
    public static final String[] f1843j = {"getCallStateGemini", "getCallStateExt", "getCallState", "getCallStateDs"};

    /* renamed from: k */
    public static final String[] f1844k = {"getLine1NumberGemini", "getLine1NumberDs", "getLine1NumberExt", "getLine1Number"};

    /* renamed from: b91$a */
    /* loaded from: classes3-dex2jar.jar:b91$a.class */
    public static final class C0235a implements ta1.AbstractC1663e {
        @Override // p000.ta1.AbstractC1663e
        /* renamed from: a */
        public void mo523a(ta1 ta1Var) {
            b91.m5714t(lm1.m1292a());
        }
    }

    /* renamed from: b91$b */
    /* loaded from: classes3-dex2jar.jar:b91$b.class */
    public static class C0236b {

        /* renamed from: a */
        public String f1845a;

        /* renamed from: b */
        public String f1846b;

        /* renamed from: c */
        public int f1847c;

        /* renamed from: d */
        public String f1848d;

        /* renamed from: e */
        public i91 f1849e;

        /* renamed from: f */
        public String f1850f;

        public C0236b() {
        }

        public /* synthetic */ C0236b(C0235a c0235a) {
            this();
        }

        public String toString() {
            int i = this.f1847c;
            String str = i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "Unknown" : "Ready" : "Network locked" : "PUK required" : "PIN required" : "Absent";
            StringBuilder sb = new StringBuilder();
            i91 i91Var = this.f1849e;
            sb.append(i91Var != null ? i91Var.m1601m() : "N/A");
            sb.append(" ");
            sb.append(this.f1846b);
            sb.append(" (");
            sb.append(this.f1845a);
            sb.append("). Status: ");
            sb.append(str);
            sb.append(". S/N: ");
            sb.append(this.f1848d);
            return sb.toString();
        }
    }

    static {
        ta1.GROUP_CRITICAL.m534a(f1835b);
        ta1.GROUP_PHONE.m534a(f1835b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x027c, code lost:
        if (android.text.TextUtils.isEmpty((java.lang.String) r0) != false) goto L178;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:167:0x05f2 -> B:139:0x0511). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m5733a(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 1526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.b91.m5733a(android.content.Context):void");
    }

    /* renamed from: b */
    public static void m5732b(Class<?> cls, Class<?>[] clsArr) {
        Method[] methods;
        try {
            for (Method method : cls.getMethods()) {
                if (clsArr != null) {
                    if (!Arrays.equals(method.getParameterTypes(), clsArr)) {
                    }
                }
                method.toString();
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: c */
    public static Method m5731c(String str, Class<?> cls, Class<?>[] clsArr) {
        Method[] methods;
        try {
            for (Method method : cls.getMethods()) {
                if (method.getName().equals(str) && Arrays.equals(method.getParameterTypes(), clsArr)) {
                    return method;
                }
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: d */
    public static void m5730d(Context context) {
        try {
            m5733a(context);
        } catch (Throwable th) {
            String str = f1834a;
            j91.m1505k(str, "Error reloading info. " + th.getMessage());
        }
    }

    /* renamed from: e */
    public static String m5729e() {
        if (!m5717q() || m5724j() > 1) {
            return "";
        }
        C0236b c0236b = f1836c.get(0);
        return !TextUtils.isEmpty(c0236b.f1850f) ? c0236b.f1850f : "";
    }

    /* renamed from: f */
    public static String m5728f() {
        StringBuilder sb;
        String str = Build.MODEL;
        String lowerCase = str.toLowerCase();
        String str2 = Build.BRAND;
        if (lowerCase.contains(str2.toLowerCase())) {
            sb = new StringBuilder();
            sb.append("");
        } else {
            sb = new StringBuilder();
            sb.append("");
            sb.append(str2);
            sb.append(" ");
        }
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: g */
    public static String m5727g() {
        return m5726h(false);
    }

    /* renamed from: h */
    public static String m5726h(boolean z) {
        String str;
        String m687i = ((r71.EnumC1638a.f7899H0.m695a() || z) ? r71.EnumC1638a.f7891D0 : r71.EnumC1638a.f7895F0).m687i();
        String str2 = Build.MODEL;
        String str3 = Build.BRAND;
        if (str2.contains(str3)) {
            str = m687i + str2;
        } else {
            str = m687i + str3 + str2;
        }
        return ka1.m1410n(str);
    }

    /* renamed from: i */
    public static String m5725i() {
        if (r71.EnumC1638a.f7899H0.m695a()) {
            return r71.EnumC1638a.f7891D0.m687i();
        }
        r71.EnumC1638a enumC1638a = r71.EnumC1638a.f7893E0;
        String m687i = enumC1638a.m687i();
        if (!TextUtils.isEmpty(m687i)) {
            return m687i;
        }
        if (Build.VERSION.SDK_INT > 28) {
            return "";
        }
        try {
            String deviceId = ((TelephonyManager) fa1.m1840j().getSystemService("phone")).getDeviceId();
            if (!TextUtils.isEmpty(deviceId)) {
                enumC1638a.m681o(deviceId);
            }
            return deviceId;
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: j */
    public static int m5724j() {
        return f1836c.size();
    }

    /* renamed from: k */
    public static String m5723k(int i) {
        if (i < 0 || i >= f1836c.size()) {
            String str = "SIM locale requested for card #" + i + " while device only has " + f1836c.size() + ". Using fallback " + r71.m705q();
            return r71.m705q();
        }
        return f1836c.get(i).f1845a;
    }

    /* renamed from: l */
    public static int m5722l(int i) {
        if (f1837d == null) {
            j91.m1517G(f1834a, "getCallStateFamily did not match. Unable to reliably determine SIM number. Returning default - 0");
            return 0;
        }
        TelephonyManager telephonyManager = (TelephonyManager) fa1.m1840j().getSystemService("phone");
        int size = f1836c.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                Object m5716r = m5716r(f1837d, telephonyManager, new Object[]{Integer.valueOf(i2)});
                if (m5716r != null && i == Integer.parseInt(m5716r.toString())) {
                    return i2;
                }
            } catch (Throwable th) {
            }
        }
        String str = f1834a;
        if (!m5715s()) {
            return 0;
        }
        j91.m1505k(str, "Unable to determine correct incoming SIM number while SIM cards are from different countries");
        return 0;
    }

    /* renamed from: m */
    public static i91 m5721m(int i) {
        if (i < 0 || i >= f1836c.size()) {
            String str = "SIM number requested for card #" + i + " while device only has " + f1836c.size() + ".";
            return null;
        }
        return f1836c.get(i).f1849e;
    }

    /* renamed from: n */
    public static HashMap<String, String> m5720n(boolean z) {
        HashMap<String, String> hashMap = new HashMap<>();
        Iterator<C0236b> it = f1836c.iterator();
        while (it.hasNext()) {
            C0236b next = it.next();
            i91 i91Var = next.f1849e;
            if (i91Var != null) {
                String m1608f = z ? i91Var.m1608f() : i91Var.m1610d();
                if (m1608f != null) {
                    hashMap.put(m1608f, next.f1849e.m1612b());
                }
            }
        }
        return hashMap;
    }

    /* renamed from: o */
    public static boolean m5719o(String str) {
        Iterator<C0236b> it = f1836c.iterator();
        while (it.hasNext()) {
            if (it.next().f1846b.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: p */
    public static boolean m5718p(String str) {
        Iterator<C0236b> it = f1836c.iterator();
        while (it.hasNext()) {
            if (it.next().f1845a.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001b  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m5717q() {
        /*
            java.util.ArrayList<b91$b> r0 = p000.b91.f1836c
            int r0 = r0.size()
            if (r0 != 0) goto Lb
            r0 = 0
            return r0
        Lb:
            java.util.ArrayList<b91$b> r0 = p000.b91.f1836c
            java.util.Iterator r0 = r0.iterator()
            r3 = r0
        L12:
            r0 = r3
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L41
            r0 = r3
            java.lang.Object r0 = r0.next()
            b91$b r0 = (p000.b91.C0236b) r0
            r4 = r0
            r0 = r4
            java.lang.String r0 = r0.f1848d
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L37
            r0 = r5
            java.lang.String r1 = "Undefined"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L3f
        L37:
            r0 = r4
            int r0 = r0.f1847c
            r1 = 5
            if (r0 != r1) goto L12
        L3f:
            r0 = 1
            return r0
        L41:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.b91.m5717q():boolean");
    }

    /* renamed from: r */
    public static Object m5716r(Method method, Object obj, Object[] objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: s */
    public static boolean m5715s() {
        if (f1836c.size() < 2) {
            return false;
        }
        String m5723k = m5723k(0);
        int size = f1836c.size();
        for (int i = 1; i < size; i++) {
            if (!m5723k(i).equals(m5723k)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: t */
    public static void m5714t(Context context) {
        if (f1838e || f1836c.size() <= 0) {
            boolean z = !ta1.GROUP_PHONE.m531d();
            f1838e = z;
            if (z && f1836c.size() > 0) {
                return;
            }
            try {
                m5733a(context);
            } catch (Throwable th) {
                j91.m1505k(f1834a, "Error reloading info. " + th.getMessage());
            }
        }
    }

    /* renamed from: u */
    public static void m5713u(Context context, boolean z) {
        if (z) {
            f1838e = true;
        }
        m5714t(context);
    }
}

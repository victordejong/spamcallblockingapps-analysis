package p000;

import java.util.HashMap;
import java.util.HashSet;
import org.json.JSONObject;
/* renamed from: l61 */
/* loaded from: classes3-dex2jar.jar:l61.class */
public class l61 {

    /* renamed from: a */
    public static final HashMap<String, C1459a> f6876a = new HashMap<>();

    /* renamed from: l61$a */
    /* loaded from: classes3-dex2jar.jar:l61$a.class */
    public static class C1459a {

        /* renamed from: a */
        public u61 f6877a;

        /* renamed from: b */
        public long f6878b = System.currentTimeMillis();

        public C1459a(u61 u61Var) {
            this.f6877a = u61Var;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* renamed from: a */
    public static void m1376a() {
        HashSet<String> hashSet = new HashSet(f6876a.keySet());
        char currentTimeMillis = System.currentTimeMillis();
        String str = null;
        for (String str2 : hashSet) {
            HashMap<String, C1459a> hashMap = f6876a;
            C1459a c1459a = hashMap.get(str2);
            long currentTimeMillis2 = System.currentTimeMillis();
            ?? r0 = c1459a.f6878b;
            if (currentTimeMillis2 - r0 > 600000) {
                hashMap.remove(str2);
            } else if (currentTimeMillis > r0) {
                str = str2;
                currentTimeMillis = r0;
            }
        }
        HashMap<String, C1459a> hashMap2 = f6876a;
        if (hashMap2.size() < 5 || str == null) {
            return;
        }
        hashMap2.remove(str);
    }

    /* renamed from: b */
    public static void m1375b() {
        f6876a.clear();
    }

    /* renamed from: c */
    public static u61 m1374c(u61 u61Var) {
        C1459a c1459a = f6876a.get(m1373d(u61Var));
        u61 u61Var2 = null;
        if (c1459a == null) {
            return null;
        }
        if (System.currentTimeMillis() - c1459a.f6878b < 600000) {
            u61Var2 = c1459a.f6877a;
        }
        return u61Var2;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0043 -> B:5:0x0022). Please submit an issue!!! */
    /* renamed from: d */
    public static String m1373d(u61 u61Var) {
        String canonicalName = u61Var.getClass().getCanonicalName();
        JSONObject mo73a = u61Var.mo73a();
        String str = canonicalName;
        if (mo73a != null) {
            try {
                mo73a.getJSONObject("identification").put("timestamp", 0);
            } catch (Throwable th) {
            }
            str = canonicalName + mo73a.toString();
        }
        return ka1.m1410n(str);
    }

    /* renamed from: e */
    public static void m1372e(u61 u61Var) {
        m1376a();
        f6876a.put(m1373d(u61Var), new C1459a(u61Var));
    }
}

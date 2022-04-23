package p081h.p093b.p113e;

import android.util.Log;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: h.b.e.a */
/* loaded from: classes-dex2jar.jar:h/b/e/a.class */
public class C5672a {

    /* renamed from: a */
    public static String f14181a = "v21_generic";

    /* renamed from: b */
    public static int f14182b = -1073741824;

    /* renamed from: c */
    public static final Map<String, Integer> f14183c = new HashMap();

    /* renamed from: d */
    public static final Set<Integer> f14184d = new HashSet();

    static {
        f14183c.put(f14181a, -1073741824);
        f14183c.put("v30_generic", -1073741823);
        f14183c.put("v21_europe", -1073741820);
        f14183c.put("v30_europe", -1073741819);
        f14183c.put("v21_japanese_utf8", -1073741816);
        f14183c.put("v30_japanese_utf8", -1073741815);
        f14183c.put("v21_japanese_mobile", 402653192);
        f14183c.put("docomo", 939524104);
        f14184d.add(-1073741816);
        f14184d.add(-1073741815);
        f14184d.add(402653192);
        f14184d.add(939524104);
    }

    /* renamed from: a */
    public static int m24840a(int i) {
        return i & 12;
    }

    /* renamed from: a */
    public static int m24839a(String str) {
        String lowerCase = str.toLowerCase();
        if (f14183c.containsKey(lowerCase)) {
            return f14183c.get(lowerCase).intValue();
        }
        if ("default".equalsIgnoreCase(str)) {
            return f14182b;
        }
        Log.e("vCard", "Unknown vCard type String: \"" + str + "\"");
        return f14182b;
    }

    /* renamed from: b */
    public static boolean m24838b(int i) {
        return f14184d.contains(Integer.valueOf(i));
    }

    /* renamed from: c */
    public static boolean m24837c(int i) {
        return (i & 3) == 0;
    }

    /* renamed from: d */
    public static boolean m24836d(int i) {
        boolean z = true;
        if ((i & 3) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    public static boolean m24835e(int i) {
        return (i & 3) == 2;
    }

    /* renamed from: f */
    public static boolean m24834f(int i) {
        return (i & 33554432) != 0;
    }
}

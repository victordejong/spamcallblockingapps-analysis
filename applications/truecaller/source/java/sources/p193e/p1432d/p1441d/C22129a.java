package p193e.p1432d.p1441d;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: e.d.d.a */
/* loaded from: classes-dex2jar.jar:e/d/d/a.class */
public class C22129a {

    /* renamed from: a */
    public static final Map<String, Integer> f61462a;

    /* renamed from: b */
    public static final Set<Integer> f61463b;

    static {
        HashMap hashMap = new HashMap();
        f61462a = hashMap;
        hashMap.put("v21_generic", -1073741824);
        hashMap.put("v30_generic", -1073741823);
        hashMap.put("v21_europe", -1073741820);
        hashMap.put("v30_europe", -1073741819);
        hashMap.put("v21_japanese_utf8", -1073741816);
        hashMap.put("v30_japanese_utf8", -1073741815);
        hashMap.put("v21_japanese_mobile", 402653192);
        hashMap.put("docomo", 939524104);
        HashSet hashSet = new HashSet();
        f61463b = hashSet;
        hashSet.add(-1073741816);
        hashSet.add(-1073741815);
        hashSet.add(402653192);
        hashSet.add(939524104);
    }

    /* renamed from: a */
    public static boolean m8542a(int i) {
        boolean z = true;
        if ((i & 3) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m8541b(int i) {
        return (i & 3) == 2;
    }
}

package p193e.p1681q.p1715g.p1717d;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* renamed from: e.q.g.d.a */
/* loaded from: classes16-dex2jar.jar:e/q/g/d/a.class */
public class C25271a {

    /* renamed from: a */
    public static final HashMap<Set<String>, String> f70699a;

    /* renamed from: b */
    public static final HashMap<Set<String>, String> f70700b;

    static {
        HashMap<Set<String>, String> hashMap = new HashMap<>();
        hashMap.put(new HashSet(Arrays.asList("januari")), "january");
        hashMap.put(new HashSet(Arrays.asList("februari")), "february");
        hashMap.put(new HashSet(Arrays.asList("mars")), "march");
        hashMap.put(new HashSet(Arrays.asList("maj")), "may");
        hashMap.put(new HashSet(Arrays.asList("juni")), "june");
        hashMap.put(new HashSet(Arrays.asList("juli")), "july");
        hashMap.put(new HashSet(Arrays.asList("augusti")), "august");
        hashMap.put(new HashSet(Arrays.asList("okt")), "october");
        f70699a = hashMap;
        HashMap<Set<String>, String> hashMap2 = new HashMap<>();
        hashMap2.put(new HashSet(Arrays.asList("måndag")), "monday");
        hashMap2.put(new HashSet(Arrays.asList("tisdag")), "tuesday");
        hashMap2.put(new HashSet(Arrays.asList("onsdag")), "wednesday");
        hashMap2.put(new HashSet(Arrays.asList("torsdag")), "thursday");
        hashMap2.put(new HashSet(Arrays.asList("fredag")), "friday");
        hashMap2.put(new HashSet(Arrays.asList("lördag")), "saturday");
        hashMap2.put(new HashSet(Arrays.asList("söndag")), "sunday");
        f70700b = hashMap2;
    }

    /* renamed from: a */
    public static SimpleDateFormat m3744a() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.ENGLISH);
    }
}

package p530d.p531a.p532v0;

import java.text.ParseException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* renamed from: d.a.v0.r0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/r0.class */
public class C9490r0 {

    /* renamed from: a */
    public static final long f36316a = TimeUnit.SECONDS.toNanos(1);

    /* renamed from: a */
    public static long m2635a(long j, long j2) {
        long j3 = j + j2;
        boolean z = true;
        boolean z2 = (j2 ^ j) < 0;
        if ((j ^ j3) < 0) {
            z = false;
        }
        return z2 | z ? j3 : ((j3 >>> 63) ^ 1) + Long.MAX_VALUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m2634a(java.lang.String r5) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p530d.p531a.p532v0.C9490r0.m2634a(java.lang.String):long");
    }

    /* renamed from: a */
    public static Boolean m2632a(Map<String, ?> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not Boolean", obj, str, map));
    }

    /* renamed from: a */
    public static List<Map<String, ?>> m2633a(List<?> list) {
        for (int i = 0; i < list.size(); i++) {
            if (!(list.get(i) instanceof Map)) {
                throw new ClassCastException(String.format("value %s for idx %d in %s is not object", list.get(i), Integer.valueOf(i), list));
            }
        }
        return list;
    }

    /* renamed from: a */
    public static boolean m2636a(long j, int i) {
        if (j < -315576000000L || j > 315576000000L) {
            return false;
        }
        long j2 = i;
        if (j2 < -999999999 || j2 >= f36316a) {
            return false;
        }
        if (j < 0 || i < 0) {
            return j <= 0 && i <= 0;
        }
        return true;
    }

    /* renamed from: b */
    public static int m2630b(String str) throws ParseException {
        int i = 0;
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = i * 10;
            i = i3;
            if (i2 < str.length()) {
                if (str.charAt(i2) < '0' || str.charAt(i2) > '9') {
                    throw new ParseException("Invalid nanoseconds.", 0);
                }
                i = i3 + (str.charAt(i2) - '0');
            }
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
        if (r0 >= r0) goto L_0x001d;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.util.concurrent.TimeUnit] */
    /* JADX WARN: Type inference failed for: r16v0, types: [long] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2, types: [long] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m2631b(long r9, int r11) {
        /*
            Method dump skipped, instructions count: 180
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p530d.p531a.p532v0.C9490r0.m2631b(long, int):long");
    }

    /* renamed from: b */
    public static List<String> m2629b(List<?> list) {
        for (int i = 0; i < list.size(); i++) {
            if (!(list.get(i) instanceof String)) {
                throw new ClassCastException(String.format("value '%s' for idx %d in '%s' is not string", list.get(i), Integer.valueOf(i), list));
            }
        }
        return list;
    }

    /* renamed from: b */
    public static List<?> m2628b(Map<String, ?> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof List) {
            return (List) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not List", obj, str, map));
    }

    /* renamed from: c */
    public static List<Map<String, ?>> m2627c(Map<String, ?> map, String str) {
        List b = m2628b(map, str);
        if (b == null) {
            return null;
        }
        m2633a(b);
        return b;
    }

    /* renamed from: d */
    public static List<String> m2626d(Map<String, ?> map, String str) {
        List b = m2628b(map, str);
        if (b == null) {
            return null;
        }
        m2629b(b);
        return b;
    }

    /* renamed from: e */
    public static Double m2625e(Map<String, ?> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof Double) {
            return (Double) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not Double", obj, str, map));
    }

    /* renamed from: f */
    public static Integer m2624f(Map<String, ?> map, String str) {
        Double e = m2625e(map, str);
        if (e == null) {
            return null;
        }
        int intValue = e.intValue();
        if (intValue == e.doubleValue()) {
            return Integer.valueOf(intValue);
        }
        throw new ClassCastException("Number expected to be integer: " + e);
    }

    /* renamed from: g */
    public static Map<String, ?> m2623g(Map<String, ?> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof Map) {
            return (Map) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not object", obj, str, map));
    }

    /* renamed from: h */
    public static String m2622h(Map<String, ?> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not String", obj, str, map));
    }

    /* renamed from: i */
    public static Long m2621i(Map<String, ?> map, String str) {
        String h = m2622h(map, str);
        if (h == null) {
            return null;
        }
        try {
            return Long.valueOf(m2634a(h));
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }
}

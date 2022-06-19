package com.bytedance.sdk.adnet.p143d;

import com.bytedance.sdk.adnet.core.C4211i;
import com.bytedance.sdk.adnet.core.C4221o;
import com.bytedance.sdk.adnet.core.Header;
import com.bytedance.sdk.adnet.face.AbstractC4246a;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;
/* renamed from: com.bytedance.sdk.adnet.d.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/c.class */
public class C4227c {
    /* renamed from: a */
    public static long m36093a(String str) {
        try {
            return m36096a().parse(str).getTime();
        } catch (Throwable th) {
            C4221o.m36107a(th, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70 */
    /* JADX WARN: Type inference failed for: r0v71 */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92 */
    /* renamed from: a */
    public static AbstractC4246a.C4247a m36094a(C4211i c4211i) {
        char c;
        char c2;
        boolean z;
        char c3;
        char c4;
        char c5;
        char c6;
        char c7;
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = c4211i.f15451c;
        String str = map.get("Date");
        char m36093a = str != null ? m36093a(str) : (char) 0;
        String str2 = map.get("Cache-Control");
        boolean z2 = false;
        int i = 0;
        if (str2 != null) {
            String[] split = str2.split(",", 0);
            z2 = false;
            c2 = 0;
            ?? r0 = 0;
            while (true) {
                c = r0;
                if (i >= split.length) {
                    z = true;
                    break;
                }
                String trim = split[i].trim();
                if (trim.equals("no-cache") || trim.equals("no-store")) {
                    return null;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        c6 = Long.parseLong(trim.substring(8));
                        c7 = c;
                    } catch (Exception e) {
                        c6 = c2;
                        c7 = c;
                    }
                } else if (trim.startsWith("stale-while-revalidate=")) {
                    c7 = Long.parseLong(trim.substring(23));
                    c6 = c2;
                } else {
                    if (!trim.equals("must-revalidate")) {
                        c6 = c2;
                        c7 = c;
                        if (!trim.equals("proxy-revalidate")) {
                        }
                    }
                    z2 = true;
                    c7 = c;
                    c6 = c2;
                }
                i++;
                c2 = c6;
                r0 = c7;
            }
        } else {
            z = false;
            c2 = 0;
            c = 0;
        }
        String str3 = map.get("Expires");
        char m36093a2 = str3 != null ? m36093a(str3) : (char) 0;
        String str4 = map.get("Last-Modified");
        char m36093a3 = str4 != null ? m36093a(str4) : (char) 0;
        String str5 = map.get("ETag");
        if (z) {
            ?? r02 = currentTimeMillis + (c2 * 1000);
            if (z2) {
                c5 = r02;
            } else {
                Long.signum(c);
                c5 = (c * 1000) + r02;
            }
            char c8 = c5;
            c3 = r02;
            c4 = c8;
        } else {
            c4 = 0;
            if (m36093a <= 0 || m36093a2 < m36093a) {
                c3 = 0;
            } else {
                c3 = currentTimeMillis + (m36093a2 - m36093a);
                c4 = c3;
            }
        }
        AbstractC4246a.C4247a c4247a = new AbstractC4246a.C4247a();
        c4247a.f15503a = c4211i.f15449a;
        c4247a.f15504b = c4211i.f15450b;
        c4247a.f15505c = str5;
        c4247a.f15509g = c3;
        c4247a.f15508f = c4;
        c4247a.f15506d = m36093a;
        c4247a.f15507e = m36093a3;
        c4247a.f15510h = map;
        c4247a.f15511i = c4211i.f15452d;
        return c4247a;
    }

    /* renamed from: a */
    public static String m36095a(long j) {
        return m36096a().format(new Date(j));
    }

    /* renamed from: a */
    public static String m36091a(Map<String, String> map) {
        return m36090a(map, "UTF-8");
    }

    /* renamed from: a */
    public static String m36090a(Map<String, String> map, String str) {
        String str2 = map.get("Content-Type");
        if (str2 != null) {
            String[] split = str2.split(";", 0);
            for (int i = 1; i < split.length; i++) {
                String[] split2 = split[i].trim().split("=", 0);
                if (split2.length == 2 && split2[0].equals("charset")) {
                    return split2[1];
                }
            }
        }
        return str;
    }

    /* renamed from: a */
    private static SimpleDateFormat m36096a() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }

    /* renamed from: a */
    public static Map<String, String> m36092a(List<Header> list) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        if (list != null) {
            for (Header header : list) {
                treeMap.put(header.getName(), header.getValue());
            }
        }
        return treeMap;
    }

    /* renamed from: b */
    public static List<Header> m36089b(Map<String, String> map) {
        if (map == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new Header(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }
}

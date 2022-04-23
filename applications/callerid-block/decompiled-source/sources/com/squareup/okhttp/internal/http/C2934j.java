package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.AbstractC2853b;
import com.squareup.okhttp.C2943k;
import com.squareup.okhttp.C2954p;
import com.squareup.okhttp.C2959r;
import com.squareup.okhttp.p089u.C2970g;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: com.squareup.okhttp.internal.http.j */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/j.class */
public final class C2934j {

    /* renamed from: a */
    private static final Comparator<String> f12380a = new C2935a();

    /* renamed from: b */
    static final String f12381b;

    /* renamed from: c */
    public static final String f12382c;

    /* renamed from: d */
    public static final String f12383d;

    /* renamed from: e */
    public static final String f12384e;

    /* renamed from: com.squareup.okhttp.internal.http.j$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/j$a.class */
    static final class C2935a implements Comparator<String> {
        C2935a() {
        }

        /* renamed from: a */
        public int compare(String str, String str2) {
            if (str == str2) {
                return 0;
            }
            if (str == null) {
                return -1;
            }
            if (str2 == null) {
                return 1;
            }
            return String.CASE_INSENSITIVE_ORDER.compare(str, str2);
        }
    }

    static {
        String g = C2970g.m673f().m672g();
        f12381b = g;
        f12382c = g + "-Sent-Millis";
        f12383d = g + "-Received-Millis";
        f12384e = g + "-Selected-Protocol";
    }

    /* renamed from: a */
    public static void m947a(C2954p.C2956b bVar, Map<String, List<String>> map) {
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            if ("Cookie".equalsIgnoreCase(key) || "Cookie2".equalsIgnoreCase(key)) {
                if (!entry.getValue().isEmpty()) {
                    bVar.m773f(key, m946b(entry.getValue()));
                }
            }
        }
    }

    /* renamed from: b */
    private static String m946b(List<String> list) {
        if (list.size() == 1) {
            return list.get(0);
        }
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append("; ");
            }
            sb.append(list.get(i));
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static long m945c(C2943k kVar) {
        return m940h(kVar.m902a("Content-Length"));
    }

    /* renamed from: d */
    public static long m944d(C2954p pVar) {
        return m945c(pVar.m786i());
    }

    /* renamed from: e */
    public static long m943e(C2959r rVar) {
        return m945c(rVar.m745r());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static boolean m942f(String str) {
        return !"Connection".equalsIgnoreCase(str) && !"Keep-Alive".equalsIgnoreCase(str) && !"Proxy-Authenticate".equalsIgnoreCase(str) && !"Proxy-Authorization".equalsIgnoreCase(str) && !"TE".equalsIgnoreCase(str) && !"Trailers".equalsIgnoreCase(str) && !"Transfer-Encoding".equalsIgnoreCase(str) && !"Upgrade".equalsIgnoreCase(str);
    }

    /* renamed from: g */
    public static C2954p m941g(AbstractC2853b bVar, C2959r rVar, Proxy proxy) {
        return rVar.m749n() == 407 ? bVar.m1316b(proxy, rVar) : bVar.m1317a(proxy, rVar);
    }

    /* renamed from: h */
    private static long m940h(String str) {
        long j = -1;
        if (str == null) {
            return -1L;
        }
        try {
            j = Long.parseLong(str);
        } catch (NumberFormatException e) {
        }
        return j;
    }

    /* renamed from: i */
    public static Map<String, List<String>> m939i(C2943k kVar, String str) {
        TreeMap treeMap = new TreeMap(f12380a);
        int f = kVar.m897f();
        for (int i = 0; i < f; i++) {
            String d = kVar.m899d(i);
            String g = kVar.m896g(i);
            ArrayList arrayList = new ArrayList();
            List list = (List) treeMap.get(d);
            if (list != null) {
                arrayList.addAll(list);
            }
            arrayList.add(g);
            treeMap.put(d, Collections.unmodifiableList(arrayList));
        }
        if (str != null) {
            treeMap.put(null, Collections.unmodifiableList(Collections.singletonList(str)));
        }
        return Collections.unmodifiableMap(treeMap);
    }
}

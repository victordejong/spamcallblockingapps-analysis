package com.b.a.a.a;

import com.b.a.a.f;
import com.b.a.b;
import com.b.a.g;
import com.b.a.p;
import com.b.a.u;
import com.b.a.w;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/j.class */
public final class j {
    private static final Comparator<String> e = new Comparator<String>() { // from class: com.b.a.a.a.j.1
        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(String str, String str2) {
            String str3 = str;
            String str4 = str2;
            return str3 == str4 ? 0 : str3 == null ? -1 : str4 == null ? 1 : String.CASE_INSENSITIVE_ORDER.compare(str3, str4);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    static final String f3212a = f.b();

    /* renamed from: b  reason: collision with root package name */
    public static final String f3213b = f3212a + "-Sent-Millis";
    public static final String c = f3212a + "-Received-Millis";
    public static final String d = f3212a + "-Selected-Protocol";

    static {
        f.a();
    }

    public static long a(p pVar) {
        return b(pVar.a("Content-Length"));
    }

    public static long a(u uVar) {
        return a(uVar.c);
    }

    public static long a(w wVar) {
        return a(wVar.f);
    }

    public static u a(b bVar, w wVar, Proxy proxy) {
        return wVar.c == 407 ? bVar.b(proxy, wVar) : bVar.a(proxy, wVar);
    }

    public static List<g> a(p pVar, String str) {
        ArrayList arrayList = new ArrayList();
        int length = pVar.f3336a.length / 2;
        for (int i = 0; i < length; i++) {
            if (str.equalsIgnoreCase(pVar.a(i))) {
                String b2 = pVar.b(i);
                int i2 = 0;
                while (i2 < b2.length()) {
                    int a2 = d.a(b2, i2, " ");
                    String trim = b2.substring(i2, a2).trim();
                    int a3 = d.a(b2, a2);
                    if (b2.regionMatches(true, a3, "realm=\"", 0, 7)) {
                        int i3 = a3 + 7;
                        int a4 = d.a(b2, i3, "\"");
                        String substring = b2.substring(i3, a4);
                        i2 = d.a(b2, d.a(b2, a4 + 1, ",") + 1);
                        arrayList.add(new g(trim, substring));
                    }
                }
            }
        }
        return arrayList;
    }

    public static void a(u.a aVar, Map<String, List<String>> map) {
        String sb;
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            if ("Cookie".equalsIgnoreCase(key) || "Cookie2".equalsIgnoreCase(key)) {
                if (!entry.getValue().isEmpty()) {
                    List<String> value = entry.getValue();
                    if (value.size() == 1) {
                        sb = value.get(0);
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        int size = value.size();
                        for (int i = 0; i < size; i++) {
                            if (i > 0) {
                                sb2.append("; ");
                            }
                            sb2.append(value.get(i));
                        }
                        sb = sb2.toString();
                    }
                    aVar.b(key, sb);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str) {
        return !"Connection".equalsIgnoreCase(str) && !"Keep-Alive".equalsIgnoreCase(str) && !"Proxy-Authenticate".equalsIgnoreCase(str) && !"Proxy-Authorization".equalsIgnoreCase(str) && !"TE".equalsIgnoreCase(str) && !"Trailers".equalsIgnoreCase(str) && !"Transfer-Encoding".equalsIgnoreCase(str) && !"Upgrade".equalsIgnoreCase(str);
    }

    private static long b(String str) {
        long j = -1;
        if (str != null) {
            try {
                j = Long.parseLong(str);
            } catch (NumberFormatException e2) {
            }
        }
        return j;
    }

    public static Map<String, List<String>> b(p pVar) {
        TreeMap treeMap = new TreeMap(e);
        int length = pVar.f3336a.length / 2;
        for (int i = 0; i < length; i++) {
            String a2 = pVar.a(i);
            String b2 = pVar.b(i);
            ArrayList arrayList = new ArrayList();
            List list = (List) treeMap.get(a2);
            if (list != null) {
                arrayList.addAll(list);
            }
            arrayList.add(b2);
            treeMap.put(a2, Collections.unmodifiableList(arrayList));
        }
        return Collections.unmodifiableMap(treeMap);
    }
}

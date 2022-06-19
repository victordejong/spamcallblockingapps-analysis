package p202p7;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: p7.b */
/* loaded from: classes2-dex2jar.jar:p7/b.class */
public final class C4026b {

    /* renamed from: e */
    public static final Comparator<String> f12640e = new C4027a();

    /* renamed from: b */
    public String f12642b;

    /* renamed from: d */
    public String f12644d;

    /* renamed from: a */
    public final List<String> f12641a = new ArrayList(20);

    /* renamed from: c */
    public int f12643c = -1;

    /* renamed from: p7.b$a */
    /* loaded from: classes2-dex2jar.jar:p7/b$a.class */
    public static final class C4027a implements Comparator<String> {
        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            String str3 = str;
            String str4 = str2;
            return str3 == str4 ? 0 : str3 == null ? -1 : str4 == null ? 1 : String.CASE_INSENSITIVE_ORDER.compare(str3, str4);
        }
    }

    /* renamed from: c */
    public static C4026b m1494c(Map<String, List<String>> map) {
        C4026b c4026b = new C4026b();
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            List<String> value = entry.getValue();
            if (key != null) {
                for (String str : value) {
                    c4026b.m1496a(key, str);
                }
            } else if (!value.isEmpty()) {
                c4026b.m1489h(value.get(value.size() - 1));
            }
        }
        return c4026b;
    }

    /* renamed from: a */
    public void m1496a(String str, String str2) {
        if (str != null) {
            if (str2 != null) {
                this.f12641a.add(str);
                this.f12641a.add(str2.trim());
                return;
            }
            PrintStream printStream = System.err;
            printStream.println("Ignoring HTTP header field '" + str + "' because its value is null");
            return;
        }
        throw new IllegalArgumentException("fieldName == null");
    }

    /* renamed from: b */
    public void m1495b(String str) {
        int indexOf = str.indexOf(":");
        if (indexOf == -1) {
            m1496a("", str);
        } else {
            m1496a(str.substring(0, indexOf), str.substring(indexOf + 1));
        }
    }

    /* renamed from: d */
    public String m1493d(int i) {
        int i2 = i * 2;
        if (i2 < 0 || i2 >= this.f12641a.size()) {
            return null;
        }
        return this.f12641a.get(i2);
    }

    /* renamed from: e */
    public String m1492e(int i) {
        int i2 = (i * 2) + 1;
        if (i2 < 0 || i2 >= this.f12641a.size()) {
            return null;
        }
        return this.f12641a.get(i2);
    }

    /* renamed from: f */
    public int m1491f() {
        return this.f12641a.size() / 2;
    }

    /* renamed from: g */
    public void m1490g(String str) {
        for (int i = 0; i < this.f12641a.size(); i += 2) {
            if (str.equalsIgnoreCase(this.f12641a.get(i))) {
                this.f12641a.remove(i);
                this.f12641a.remove(i);
            }
        }
    }

    /* renamed from: h */
    public void m1489h(String str) {
        String trim = str.trim();
        this.f12642b = trim;
        if (trim == null || !trim.startsWith("HTTP/")) {
            return;
        }
        String trim2 = trim.trim();
        int indexOf = trim2.indexOf(" ") + 1;
        if (indexOf == 0) {
            return;
        }
        trim2.charAt(indexOf - 2);
        int i = indexOf + 3;
        int i2 = i;
        if (i > trim2.length()) {
            i2 = trim2.length();
        }
        this.f12643c = Integer.parseInt(trim2.substring(indexOf, i2));
        int i3 = i2 + 1;
        if (i3 > trim2.length()) {
            return;
        }
        this.f12644d = trim2.substring(i3);
    }

    /* renamed from: i */
    public Map<String, List<String>> m1488i() {
        TreeMap treeMap = new TreeMap(f12640e);
        for (int i = 0; i < this.f12641a.size(); i += 2) {
            String str = this.f12641a.get(i);
            String str2 = this.f12641a.get(i + 1);
            ArrayList arrayList = new ArrayList();
            List list = (List) treeMap.get(str);
            if (list != null) {
                arrayList.addAll(list);
            }
            arrayList.add(str2);
            treeMap.put(str, Collections.unmodifiableList(arrayList));
        }
        String str3 = this.f12642b;
        if (str3 != null) {
            treeMap.put(null, Collections.unmodifiableList(Collections.singletonList(str3)));
        }
        return Collections.unmodifiableMap(treeMap);
    }
}

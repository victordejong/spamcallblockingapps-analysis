package p010g.p026l.p030d;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: g.l.d.f */
/* loaded from: classes2-dex2jar.jar:g/l/d/f.class */
public class C0286f {

    /* renamed from: a */
    private static Map<Character, String> f842a;

    /* renamed from: b */
    public static final String f843b = System.getProperty("line.separator");

    static {
        HashMap hashMap = new HashMap();
        f842a = hashMap;
        hashMap.put('\'', "\\'");
        f842a.put('\"', "\\\"");
        f842a.put('\\', "\\\\");
        f842a.put('/', "\\/");
        f842a.put('\b', "\\b");
        f842a.put('\n', "\\n");
        f842a.put('\t', "\\t");
        f842a.put('\f', "\\f");
        f842a.put('\r', "\\r");
    }

    /* renamed from: a */
    public static List<String> m480a(String str) {
        if (!m479b(str)) {
            return C0281a.m492l(new ArrayList(0));
        }
        String[] split = str.split(",");
        ArrayList arrayList = new ArrayList();
        for (String str2 : split) {
            if (m479b(str2)) {
                arrayList.add(str2);
            }
        }
        return C0281a.m492l(arrayList);
    }

    /* renamed from: b */
    public static boolean m479b(String str) {
        return str != null && str.trim().length() > 0;
    }

    /* renamed from: c */
    public static boolean m478c(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return false;
        }
        for (String str : strArr) {
            if (m477d(str)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    public static boolean m477d(String str) {
        return !m479b(str);
    }

    /* renamed from: e */
    public static boolean m476e(String str) {
        if (m477d(str)) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public static String m475f(List<String> list) {
        String str;
        if (list != null) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < list.size(); i++) {
                if (m479b(list.get(i))) {
                    sb.append(list.get(i));
                    if (i < list.size() - 1) {
                        sb.append(",");
                    }
                }
            }
            str = sb.toString();
        } else {
            str = null;
        }
        return str;
    }

    /* renamed from: g */
    public static String m474g(String... strArr) {
        return m475f(strArr == null ? null : Arrays.asList(strArr));
    }

    /* renamed from: h */
    public static String m473h(List<? extends Number> list) {
        ArrayList arrayList;
        if (list != null) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<? extends Number> it = list.iterator();
            while (true) {
                arrayList = arrayList2;
                if (!it.hasNext()) {
                    break;
                }
                Number number = (Number) it.next();
                if (number != null) {
                    arrayList2.add(number.toString());
                }
            }
        } else {
            arrayList = null;
        }
        return m475f(arrayList);
    }
}

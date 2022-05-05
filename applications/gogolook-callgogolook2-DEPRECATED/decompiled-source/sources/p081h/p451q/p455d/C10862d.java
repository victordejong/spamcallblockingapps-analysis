package p081h.p451q.p455d;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: h.q.d.d */
/* loaded from: classes2-dex2jar.jar:h/q/d/d.class */
public class C10862d {

    /* renamed from: a */
    public static Map<Character, String> f24820a = new HashMap();

    /* renamed from: b */
    public static final String f24821b = System.getProperty("line.separator");

    static {
        f24820a.put('\'', "\\'");
        f24820a.put('\"', "\\\"");
        f24820a.put('\\', "\\\\");
        f24820a.put('/', "\\/");
        f24820a.put('\b', "\\b");
        f24820a.put('\n', "\\n");
        f24820a.put('\t', "\\t");
        f24820a.put('\f', "\\f");
        f24820a.put('\r', "\\r");
    }

    /* renamed from: a */
    public static List<String> m10392a(String str) {
        if (!m10390b(str)) {
            return C10858a.m10397c(new ArrayList(0));
        }
        String[] split = str.split(",");
        ArrayList arrayList = new ArrayList();
        for (String str2 : split) {
            if (m10390b(str2)) {
                arrayList.add(str2);
            }
        }
        return C10858a.m10397c(arrayList);
    }

    /* renamed from: a */
    public static boolean m10391a(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return false;
        }
        for (String str : strArr) {
            if (m10389c(str)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static boolean m10390b(String str) {
        return str != null && str.trim().length() > 0;
    }

    /* renamed from: c */
    public static boolean m10389c(String str) {
        return !m10390b(str);
    }

    /* renamed from: d */
    public static boolean m10388d(String str) {
        if (m10389c(str)) {
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
}

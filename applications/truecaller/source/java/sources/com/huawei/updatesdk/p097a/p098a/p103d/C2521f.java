package com.huawei.updatesdk.p097a.p098a.p103d;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.a.a.d.f */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/a/d/f.class */
public class C2521f {
    /* renamed from: a */
    private static String m36826a(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    /* renamed from: a */
    public static String m36825a(List<String> list, String str) {
        return m36824a(list, str, (String) null, (String) null);
    }

    /* renamed from: a */
    public static String m36824a(List<String> list, String str, String str2, String str3) {
        return (list == null || list.isEmpty()) ? "" : m36822a((String[]) list.toArray(new String[0]), str, str2, str3);
    }

    /* renamed from: a */
    public static String m36823a(String[] strArr, String str) {
        return m36822a(strArr, str, (String) null, (String) null);
    }

    /* renamed from: a */
    public static String m36822a(String[] strArr, String str, String str2, String str3) {
        if (strArr == null || strArr.length == 0) {
            return "";
        }
        String m36826a = m36826a(str);
        String m36826a2 = m36826a(str2);
        String m36826a3 = m36826a(str3);
        StringBuilder m8728C = C22128a.m8728C(m36826a2);
        m8728C.append(strArr[0]);
        m8728C.append(m36826a3);
        for (int i = 1; i < strArr.length; i++) {
            m8728C.append(m36826a);
            m8728C.append(m36826a2);
            m8728C.append(strArr[i]);
            m8728C.append(m36826a3);
        }
        return m8728C.toString();
    }
}

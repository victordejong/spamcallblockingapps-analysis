package com.huawei.hms.hatool;

import android.text.TextUtils;
import java.util.Map;
import java.util.regex.Pattern;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.hatool.s0 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/s0.class */
public class C2386s0 {
    /* renamed from: a */
    public static String m37533a(String str, String str2, String str3, String str4) {
        if (!TextUtils.isEmpty(str2)) {
            return m37534a(str, str2, str3) ? str2 : str4;
        }
        C2398y.m37469f("hmsSdk", "checkStrParameter() Parameter verification failure! Parameter:" + str);
        return str4;
    }

    /* renamed from: a */
    public static boolean m37536a(String str) {
        return !m37535a("eventId", str, 256);
    }

    /* renamed from: a */
    public static boolean m37535a(String str, String str2, int i) {
        StringBuilder sb;
        String str3;
        if (TextUtils.isEmpty(str2)) {
            sb = new StringBuilder();
            str3 = "checkString() Parameter is empty : ";
        } else if (str2.length() <= i) {
            return true;
        } else {
            sb = new StringBuilder();
            str3 = "checkString() Failure of parameter length check! Parameter:";
        }
        sb.append(str3);
        sb.append(str);
        C2398y.m37469f("hmsSdk", sb.toString());
        return false;
    }

    /* renamed from: a */
    public static boolean m37534a(String str, String str2, String str3) {
        StringBuilder sb;
        String str4;
        if (TextUtils.isEmpty(str2)) {
            sb = new StringBuilder();
            str4 = "checkString() Parameter is null! Parameter:";
        } else if (Pattern.compile(str3).matcher(str2).matches()) {
            return true;
        } else {
            sb = new StringBuilder();
            str4 = "checkString() Parameter verification failure! Parameter:";
        }
        sb.append(str4);
        sb.append(str);
        C2398y.m37469f("hmsSdk", sb.toString());
        return false;
    }

    /* renamed from: a */
    public static boolean m37532a(Map<String, String> map) {
        String str;
        if (map == null || map.size() == 0) {
            str = "onEvent() mapValue has not data.so,The data will be empty";
        } else if (map.size() == 1 && (map.get("constants") != null || map.get("_constants") != null)) {
            str = "checkMap() the key can't be constants or _constants";
        } else if (map.size() <= 2048 && map.toString().length() <= 204800) {
            return true;
        } else {
            StringBuilder m8728C = C22128a.m8728C("checkMap Map data is too big! size: ");
            m8728C.append(map.size());
            m8728C.append(" length: ");
            m8728C.append(map.toString().length());
            str = m8728C.toString();
        }
        C2398y.m37469f("hmsSdk", str);
        return false;
    }
}

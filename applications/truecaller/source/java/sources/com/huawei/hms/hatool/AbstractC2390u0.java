package com.huawei.hms.hatool;

import android.util.Pair;
import com.tenor.android.core.constant.StringConstant;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.hatool.u0 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/u0.class */
public abstract class AbstractC2390u0 {
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: a */
    public static long m37514a(String str, long j) {
        char c;
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.getDefault());
            c = simpleDateFormat.parse(simpleDateFormat.format(Long.valueOf(j))).getTime();
        } catch (ParseException e) {
            C2398y.m37469f("hmsSdk/stringUtil", "getMillisOfDate(): Time conversion Exception !");
            c = 0;
        }
        return c;
    }

    /* renamed from: a */
    public static Pair<String, String> m37515a(String str) {
        String str2;
        String str3;
        if (!"_default_config_tag".equals(str)) {
            String[] split = str.split(StringConstant.DASH);
            if (split.length > 2) {
                String str4 = split[split.length - 1];
                String substring = str.substring(0, (str.length() - str4.length()) - 1);
                str3 = str4;
                str2 = substring;
            } else {
                str2 = split[0];
                str3 = split[1];
            }
            return new Pair<>(str2, str3);
        }
        return new Pair<>(str, "");
    }

    /* renamed from: a */
    public static String m37516a(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? "alltype" : "diffprivacy" : "preins" : "maint" : "oper";
    }

    /* renamed from: a */
    public static String m37513a(String str, String str2) {
        if (!"_default_config_tag".equals(str)) {
            str = C22128a.m8725C2(str, StringConstant.DASH, str2);
        }
        return str;
    }

    /* renamed from: a */
    public static String m37512a(String str, String str2, String str3) {
        return "_default_config_tag".equals(str) ? C22128a.m8543z2("_default_config_tag#", str3) : C22128a.m8717E2(str, StringConstant.DASH, str2, StringConstant.HASH, str3);
    }

    /* renamed from: a */
    public static Set<String> m37511a(Set<String> set) {
        if (set == null || set.size() == 0) {
            return new HashSet();
        }
        HashSet hashSet = new HashSet();
        for (String str : set) {
            if (!"_default_config_tag".equals(str)) {
                String m8725C2 = C22128a.m8725C2(str, StringConstant.DASH, "oper");
                String m8725C22 = C22128a.m8725C2(str, StringConstant.DASH, "maint");
                hashSet.add(m8725C2);
                hashSet.add(m8725C22);
                hashSet.add(str + StringConstant.DASH + "diffprivacy");
            } else {
                hashSet.add("_default_config_tag");
            }
        }
        return hashSet;
    }
}

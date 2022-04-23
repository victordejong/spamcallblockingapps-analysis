package com.flurry.sdk;

import android.text.TextUtils;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.flurry.sdk.eb */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/eb.class */
public class C3015eb {

    /* renamed from: a */
    public static final String f4702a = "eb";

    /* renamed from: b */
    public static final Pattern f4703b = Pattern.compile(".*?(\\$\\(\\w+\\)).*?");

    /* renamed from: a */
    public static String m33297a(C3013e eVar, String str) {
        String a = m33296a(str);
        while (a != null) {
            Map<String, String> map = eVar.f4699c.f5301b;
            if (m33295a("AD_POSN", a)) {
                String a2 = m33294a(map, "AD_POSN");
                String str2 = f4702a;
                C3356jq.m32615a(3, str2, "Replacing param AD_POSN with: " + a2);
                str = str.replace(a, C3445la.m32455c(a2));
            } else if (m33295a("V_SKIP_AVAIL", a)) {
                String a3 = m33294a(map, "V_SKIP_AVAIL");
                String str3 = f4702a;
                C3356jq.m32615a(3, str3, "Replacing param V_SKIP_AVAIL with: " + a3);
                str = str.replace(a, C3445la.m32455c(a3));
            } else if (m33295a("V_AUTOPLAYED", a)) {
                String a4 = m33294a(map, "V_AUTOPLAYED");
                String str4 = f4702a;
                C3356jq.m32615a(3, str4, "Replacing param V_AUTOPLAYED with: " + a4);
                str = str.replace(a, C3445la.m32455c(a4));
            } else if (m33295a("V_PLAYER_HEIGHT", a)) {
                String a5 = m33294a(map, "V_PLAYER_HEIGHT");
                String str5 = f4702a;
                C3356jq.m32615a(3, str5, "Replacing param V_PLAYER_HEIGHT with: " + a5);
                str = str.replace(a, C3445la.m32455c(a5));
            } else if (m33295a("V_PLAYER_WIDTH", a)) {
                String a6 = m33294a(map, "V_PLAYER_WIDTH");
                String str6 = f4702a;
                C3356jq.m32615a(3, str6, "Replacing param V_PLAYER_WIDTH with: " + a6);
                str = str.replace(a, C3445la.m32455c(a6));
            } else if (m33295a("V_MUTED", a)) {
                String a7 = m33294a(map, "V_MUTED");
                String str7 = f4702a;
                C3356jq.m32615a(3, str7, "Replacing param V_MUTED with: " + a7);
                str = str.replace(a, C3445la.m32455c(a7));
            } else if (m33295a("AD_FEEDBACK", a)) {
                String a8 = m33294a(map, "AD_FEEDBACK");
                String str8 = f4702a;
                C3356jq.m32615a(3, str8, "Replacing param AD_FEEDBACK with: " + a8);
                str = str.replace(a, C3445la.m32455c(a8));
            } else if (m33295a("click_label", a)) {
                String a9 = m33294a(map, "click_label");
                String str9 = f4702a;
                C3356jq.m32615a(3, str9, "Replacing param click_label with: " + a9);
                str = str.replace(a, C3445la.m32455c(a9));
            } else if (m33295a("impr_label", a)) {
                String a10 = m33294a(map, "impr_label");
                String str10 = f4702a;
                C3356jq.m32615a(3, str10, "Replacing param impr_label with: " + a10);
                str = str.replace(a, C3445la.m32455c(a10));
            } else if (m33295a("AD_PS", a)) {
                String a11 = m33294a(map, "AD_PS");
                String str11 = f4702a;
                C3356jq.m32615a(3, str11, "Replacing param AD_PS with: " + a11);
                str = str.replace(a, C3445la.m32455c(a11));
            } else {
                String str12 = f4702a;
                C3356jq.m32615a(3, str12, "Unknown param: " + a);
                str = str.replace(a, "");
            }
            a = m33296a(str);
        }
        return str;
    }

    /* renamed from: a */
    public static String m33296a(String str) {
        Matcher matcher = f4703b.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return null;
    }

    /* renamed from: a */
    public static String m33294a(Map<String, String> map, String str) {
        return (map == null || TextUtils.isEmpty(str) || !map.containsKey(str)) ? "" : map.get(str);
    }

    /* renamed from: a */
    public static boolean m33295a(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        return str2.equals("$(" + str + ")");
    }
}

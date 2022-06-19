package com.huawei.hms.hatool;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.hatool.g0 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/g0.class */
public class C2362g0 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* renamed from: a */
    public static long m37697a(Context context, String str, String str2, long j) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            C2398y.m37469f("hmsSdk", "context is null or spName empty or spkey is empty");
            return j;
        }
        SharedPreferences m37694b = m37694b(context, str);
        char c = j;
        if (m37694b != null) {
            c = m37694b.getLong(str2, j);
        }
        return c;
    }

    /* renamed from: a */
    public static String m37696a(Context context, String str, String str2, String str3) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            C2398y.m37469f("hmsSdk", "context is null or spName empty or spkey is empty");
            return str3;
        }
        SharedPreferences m37694b = m37694b(context, str);
        String str4 = str3;
        if (m37694b != null) {
            str4 = m37694b.getString(str2, str3);
        }
        return str4;
    }

    /* renamed from: a */
    public static Map<String, ?> m37698a(Context context, String str) {
        return m37694b(context, str).getAll();
    }

    /* renamed from: a */
    public static void m37695a(Context context, String str, String... strArr) {
        String str2;
        if (context == null || TextUtils.isEmpty(str)) {
            str2 = "clearData(): parameter error.context,spname";
        } else if (strArr != null) {
            SharedPreferences m37694b = m37694b(context, str);
            if (m37694b == null) {
                return;
            }
            SharedPreferences.Editor edit = m37694b.edit();
            if (strArr.length == 0) {
                edit.clear();
                edit.commit();
                return;
            }
            for (String str3 : strArr) {
                if (m37694b.contains(str3)) {
                    edit.remove(str3);
                    edit.commit();
                }
            }
            return;
        } else {
            str2 = "clearData(): No data need to be deleted,keys is null";
        }
        C2398y.m37469f("hmsSdk", str2);
    }

    /* renamed from: b */
    public static SharedPreferences m37694b(Context context, String str) {
        return context.getSharedPreferences(m37691c(context, str), 0);
    }

    /* renamed from: b */
    public static void m37693b(Context context, String str, String str2, long j) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            C2398y.m37469f("hmsSdk", "context is null or spName empty or spkey is empty");
            return;
        }
        SharedPreferences m37694b = m37694b(context, str);
        if (m37694b == null) {
            return;
        }
        SharedPreferences.Editor edit = m37694b.edit();
        edit.putLong(str2, j);
        edit.commit();
    }

    /* renamed from: b */
    public static void m37692b(Context context, String str, String str2, String str3) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            C2398y.m37470e("hmsSdk", "context is null or spName empty or spkey is empty");
            return;
        }
        SharedPreferences m37694b = m37694b(context, str);
        if (m37694b == null) {
            return;
        }
        SharedPreferences.Editor edit = m37694b.edit();
        edit.putString(str2, str3);
        edit.commit();
    }

    /* renamed from: c */
    public static String m37691c(Context context, String str) {
        String packageName = context.getPackageName();
        String m37756n = AbstractC2351c.m37756n("_hms_config_tag", "oper");
        if (TextUtils.isEmpty(m37756n)) {
            return C22128a.m8721D2("hms_", str, AnalyticsConstants.DELIMITER_MAIN, packageName);
        }
        StringBuilder m8688M = C22128a.m8688M("hms_", str, AnalyticsConstants.DELIMITER_MAIN, packageName, AnalyticsConstants.DELIMITER_MAIN);
        m8688M.append(m37756n);
        return m8688M.toString();
    }
}

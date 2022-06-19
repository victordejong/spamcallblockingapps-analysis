package com.razorpay;

import android.content.Context;
import android.content.SharedPreferences;
import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;
import com.huawei.hms.push.constant.RemoteMessageConst;
import org.json.JSONObject;
/* renamed from: com.razorpay.h */
/* loaded from: classes3-dex2jar.jar:com/razorpay/h.class */
public final class C2735h {

    /* renamed from: a */
    private static SharedPreferences f9455a;

    /* renamed from: b */
    private static SharedPreferences.Editor f9456b;

    /* renamed from: a */
    public static SharedPreferences m36079a(Context context) {
        if (f9455a == null) {
            f9455a = context.getSharedPreferences("rzp_preference_private", 0);
        }
        return f9455a;
    }

    /* renamed from: a */
    public static String m36078a(Context context, String str) {
        return m36079a(context).getString(str, null);
    }

    /* renamed from: a */
    public static String m36077a(Context context, String str, String str2) {
        try {
            String m36078a = m36078a(context, str);
            if (m36078a == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(m36078a);
            CryptLib cryptLib = new CryptLib();
            if (str2.equals(jSONObject.getString(HianalyticsBaseData.SDK_VERSION))) {
                return cryptLib.m36131b(jSONObject.getString(RemoteMessageConst.DATA), "c89TV2vbYJvvRkSSgx3dZZZu28EmcqCJ", jSONObject.getString("iv"));
            }
            return null;
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, "error", "Unable to decrypt value");
            d__1_.m36087a("Unable to decrypt value", e);
            return null;
        }
    }

    /* renamed from: b */
    public static SharedPreferences.Editor m36076b(Context context) {
        if (f9456b == null) {
            f9456b = m36079a(context).edit();
        }
        return f9456b;
    }

    /* renamed from: b */
    public static void m36075b(Context context, String str, String str2) {
        SharedPreferences.Editor m36076b = m36076b(context);
        m36076b.putString(str, str2);
        m36076b.commit();
    }

    /* renamed from: c */
    public static SharedPreferences m36074c(Context context) {
        try {
            return context.getSharedPreferences("rzp_preference_public", 1);
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getMessage());
            return context.getSharedPreferences("rzp_preference_public", 0);
        }
    }

    /* renamed from: d */
    public static SharedPreferences.Editor m36073d(Context context) {
        return m36074c(context).edit();
    }
}

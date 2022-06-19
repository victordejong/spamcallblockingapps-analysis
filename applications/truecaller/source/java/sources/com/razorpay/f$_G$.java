package com.razorpay;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import com.razorpay.AnalyticsProperty;
import com.razorpay.Y_;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/razorpay/f$_G$.class */
public final class f$_G$ {
    /* JADX WARN: Removed duplicated region for block: B:79:0x01b7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m36082a(android.content.Context r6, org.json.JSONArray r7) {
        /*
            Method dump skipped, instructions count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.razorpay.f$_G$.m36082a(android.content.Context, org.json.JSONArray):java.lang.String");
    }

    /* renamed from: a */
    public static void m36084a(Context context) {
        if (Y_.H_.a().b() && m36081b(context) != null) {
            AnalyticsUtil.addProperty(AnalyticsConstants.DEVICE_TOKEN_SOURCE_SINGLE, new AnalyticsProperty(context.getPackageName(), AnalyticsProperty.Scope.ORDER));
        } else if (Build.VERSION.SDK_INT < 24 || !Y_.H_.a().m()) {
            if (!Y_.H_.a().n()) {
                return;
            }
            m36082a(context, m36080c(context));
        } else {
            Intent intent = new Intent();
            intent.setAction("rzp.device_token.share");
            context.sendOrderedBroadcast(intent, null, new BroadcastReceiver() { // from class: com.razorpay.L__R$
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context2, Intent intent2) {
                    String string;
                    Bundle resultExtras = getResultExtras(true);
                    if (resultExtras == null || (string = resultExtras.getString("device_token_info_list")) == null) {
                        return;
                    }
                    try {
                        f$_G$.m36082a(context2, new JSONArray(string));
                    } catch (Exception e) {
                    }
                }
            }, null, -1, null, null);
        }
    }

    /* renamed from: a */
    public static void m36083a(Context context, String str) {
        C2735h.m36073d(context).putString("rzp_device_token", str).apply();
    }

    /* renamed from: b */
    public static String m36081b(Context context) {
        return C2735h.m36074c(context).getString("rzp_device_token", null);
    }

    /* renamed from: c */
    private static JSONArray m36080c(Context context) {
        JSONArray jSONArray = new JSONArray();
        int i = 0;
        for (ResolveInfo resolveInfo : BaseUtils.getListOfAppsWhichHandleDeepLink(context, "io.rzp://rzp.io")) {
            String str = resolveInfo.activityInfo.taskAffinity;
            int i2 = i + 1;
            try {
                String m36081b = m36081b(context.createPackageContext(str, 2));
                i = i2;
                if (m36081b != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("rzp_device_token", m36081b);
                    jSONObject.put("card_saving_token_source", str);
                    jSONArray.put(jSONObject);
                    i = i2;
                }
            } catch (Exception e) {
                if (!(e instanceof SecurityException) || Build.VERSION.SDK_INT < 24) {
                    AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getMessage());
                } else {
                    AnalyticsUtil.trackEvent(AnalyticsEvent.SHARE_PREFERENCES_SECURITY_EXCEPTION);
                }
                d__1_.m36087a("Error fetching global device token", e);
                i = i2;
            }
        }
        AnalyticsProperty.Scope scope = AnalyticsProperty.Scope.ORDER;
        AnalyticsUtil.addProperty(AnalyticsConstants.SDK_COUNT, new AnalyticsProperty(i, scope));
        AnalyticsUtil.addProperty(AnalyticsConstants.SDK_COUNT_WITH_TOKEN, new AnalyticsProperty(jSONArray.length(), scope));
        return jSONArray;
    }
}

package com.appnext.core;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import org.json.JSONObject;
/* renamed from: com.appnext.core.n */
/* loaded from: classes-dex2jar.jar:com/appnext/core/n.class */
public class C0563n {

    /* renamed from: ee */
    private static volatile C0563n f1841ee;

    /* renamed from: a */
    public static String m42346a(Context context, String str, HashMap<String, String> hashMap, String str2) {
        String str3;
        String str4;
        String str5;
        String str6;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (!TextUtils.isEmpty(str2)) {
            String str7 = "settingsServerResponsesSettingsName" + str2;
            String str8 = "settingsServerResponseAcceptedTimeSettingsName" + str2;
            String str9 = "cache_config" + str2;
            str5 = str7;
            str6 = "";
            str4 = str8;
            str3 = str9;
            if (System.currentTimeMillis() < C0562m.m42347l(context).m42352a(str8, 0L) + (C0562m.m42347l(context).m42353a(str9, 0) * 60 * 60000)) {
                str6 = C0562m.m42347l(context).m42349d(str7, null);
                new StringBuilder("SETTINGS RESPONSE - CACHE - ").append(str2);
                str5 = str7;
                str4 = str8;
                str3 = str9;
            }
        } else {
            str5 = "";
            str3 = str5;
            str4 = str5;
            str6 = "";
        }
        String str10 = str6;
        if (TextUtils.isEmpty(str6)) {
            try {
                String m42391a = C0551g.m42391a(context, str, hashMap);
                new StringBuilder("SETTINGS RESPONSE - SERVER - ").append(str2);
                str10 = m42391a;
                if (!TextUtils.isEmpty(m42391a)) {
                    str10 = m42391a;
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            JSONObject jSONObject = new JSONObject(m42391a);
                            if (jSONObject.has("cache_config")) {
                                C0562m.m42347l(context).m42351b(str3, jSONObject.getInt("cache_config"));
                            }
                        } catch (Throwable th) {
                        }
                        C0562m.m42347l(context).m42348e(str5, m42391a);
                        str6 = m42391a;
                        C0562m.m42347l(context).m42350b(str4, System.currentTimeMillis());
                        str10 = m42391a;
                    }
                }
            } catch (Throwable th2) {
                str10 = str6;
            }
        }
        return str10;
    }

    /* renamed from: ay */
    public static C0563n m42345ay() {
        if (f1841ee == null) {
            synchronized (C0563n.class) {
                try {
                    if (f1841ee == null) {
                        f1841ee = new C0563n();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1841ee;
    }
}

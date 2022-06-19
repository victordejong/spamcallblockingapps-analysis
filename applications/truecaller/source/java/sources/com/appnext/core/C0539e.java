package com.appnext.core;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.appnext.core.adswatched.C0524a;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import java.util.ArrayList;
/* renamed from: com.appnext.core.e */
/* loaded from: classes-dex2jar.jar:com/appnext/core/e.class */
public class C0539e {

    /* renamed from: cV */
    private static volatile C0539e f1780cV;

    /* renamed from: a */
    public static String m42421a(Context context, String str, String str2, long j, String str3, String str4, String str5) {
        String str6;
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        String str7 = "adsServerResponseAuid" + str2;
        String str8 = "adsServerResponseAcceptedTimeAuid" + str2;
        if (!TextUtils.isEmpty(str4.trim()) || !TextUtils.isEmpty(str5.trim()) || System.currentTimeMillis() >= (DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL * j) + C0562m.m42347l(context).m42352a(str8, 0L)) {
            str6 = "";
        } else {
            str6 = C0562m.m42347l(context).m42349d(str7, null);
            new StringBuilder("ADS RESPONSE - CACHE - ").append(str2);
        }
        String str9 = str6;
        if (TextUtils.isEmpty(str6)) {
            try {
                if (TextUtils.isEmpty(str4.trim())) {
                    String str10 = str6;
                    if (TextUtils.isEmpty(str5.trim())) {
                        String str11 = str6;
                        C0524a.m42455o(context).m42456l(str, str2);
                    }
                }
                String str12 = str6;
                String m42392a = C0551g.m42392a(context, str3, (ArrayList<Pair<String, String>>) null, 16000);
                new StringBuilder("ADS RESPONSE - SERVER - ").append(str2);
                str9 = m42392a;
                if (TextUtils.isEmpty(str4.trim())) {
                    str9 = m42392a;
                    if (TextUtils.isEmpty(str5.trim())) {
                        if (TextUtils.isEmpty(m42392a) || m42392a.equals("{\"apps\":[]}")) {
                            C0562m.m42347l(context).m42348e(str7, "");
                            C0562m.m42347l(context).m42350b(str8, 0L);
                            str9 = m42392a;
                        } else {
                            C0562m.m42347l(context).m42348e(str7, m42392a);
                            C0562m.m42347l(context).m42350b(str8, System.currentTimeMillis());
                            str9 = m42392a;
                        }
                    }
                }
            } catch (Throwable th) {
                str9 = str6;
            }
        }
        return str9;
    }

    /* renamed from: ap */
    public static C0539e m42420ap() {
        if (f1780cV == null) {
            synchronized (C0539e.class) {
                try {
                    if (f1780cV == null) {
                        f1780cV = new C0539e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1780cV;
    }
}

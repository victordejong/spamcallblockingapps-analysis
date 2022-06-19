package com.appnext.core;

import android.content.Context;
import android.text.TextUtils;
/* renamed from: com.appnext.core.p */
/* loaded from: classes-dex2jar.jar:com/appnext/core/p.class */
public class C0565p {

    /* renamed from: ek */
    private static volatile C0565p f1847ek;

    /* renamed from: aA */
    public static C0565p m42342aA() {
        if (f1847ek == null) {
            synchronized (C0565p.class) {
                try {
                    if (f1847ek == null) {
                        f1847ek = new C0565p();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1847ek;
    }

    /* renamed from: m */
    public static String m42341m(Context context) {
        String m42349d = System.currentTimeMillis() < C0562m.m42347l(context).m42352a("translateServerResponseAcceptedTime", 0L) + 604800000 ? C0562m.m42347l(context).m42349d("translateServerResponses", null) : "";
        String str = m42349d;
        if (TextUtils.isEmpty(m42349d)) {
            try {
                String m42391a = C0551g.m42391a(context, "https://cdn.appnext.com/tools/sdk/langs/2.4.4/langs.json", null);
                str = m42391a;
                if (!TextUtils.isEmpty(m42391a)) {
                    C0562m.m42347l(context).m42348e("translateServerResponses", m42391a);
                    m42349d = m42391a;
                    C0562m.m42347l(context).m42350b("translateServerResponseAcceptedTime", System.currentTimeMillis());
                    str = m42391a;
                }
            } catch (Throwable th) {
                str = m42349d;
            }
        }
        return str;
    }
}

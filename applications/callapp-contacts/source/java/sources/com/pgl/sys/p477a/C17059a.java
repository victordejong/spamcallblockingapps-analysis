package com.pgl.sys.p477a;

import android.content.Context;
import android.util.Base64;
import com.explorestack.iab.vast.VastError;
import com.pgl.p474a.p476b.C17056d;
import com.pgl.sys.ces.C17064a;
import com.pgl.sys.p477a.p478a.AbstractC17060a;
import org.json.JSONObject;
/* renamed from: com.pgl.sys.a.a */
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/a/a.class */
public final class C17059a {

    /* renamed from: a */
    static int f60579a = 504;

    /* renamed from: b */
    static boolean f60580b = false;

    /* renamed from: c */
    static String f60581c = "";

    /* renamed from: d */
    static String f60582d = "";

    /* renamed from: e */
    private static long f60583e;

    /* renamed from: f */
    private static Context f60584f;

    /* renamed from: a */
    public static String m5945a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("os", "Android");
            jSONObject.put("version", "1.0.5");
            String str = f60582d;
            if (str == null || str.length() <= 0) {
                jSONObject.put("token_id", C17064a.meta(VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD, f60584f, null));
            } else {
                jSONObject.put("token_id", f60582d);
            }
            jSONObject.put("code", f60579a);
            return Base64.encodeToString(jSONObject.toString().getBytes(), 2);
        } catch (Throwable th) {
            C17056d.m5949a();
            return "";
        }
    }

    /* renamed from: a */
    public static void m5944a(Context context, String str, AbstractC17060a abstractC17060a) {
        if (f60584f == null) {
            f60584f = context;
        }
        int i = f60579a;
        if (i == 102 || i == 202 || i == 200) {
            return;
        }
        f60583e = System.currentTimeMillis();
        f60580b = false;
        f60581c = str;
        f60579a = 102;
        Thread thread = new Thread(new RunnableC17061b(context, abstractC17060a));
        thread.setName("CZL-3");
        thread.start();
    }
}

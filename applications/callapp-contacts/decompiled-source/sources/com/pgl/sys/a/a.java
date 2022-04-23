package com.pgl.sys.a;

import android.content.Context;
import android.util.Base64;
import com.explorestack.iab.vast.VastError;
import com.pgl.a.b.d;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static int f34945a = 504;

    /* renamed from: b  reason: collision with root package name */
    static boolean f34946b = false;

    /* renamed from: c  reason: collision with root package name */
    static String f34947c = "";

    /* renamed from: d  reason: collision with root package name */
    static String f34948d = "";
    private static long e;
    private static Context f;

    public static String a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("os", "Android");
            jSONObject.put("version", "1.0.5");
            String str = f34948d;
            if (str == null || str.length() <= 0) {
                jSONObject.put("token_id", com.pgl.sys.ces.a.meta(VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD, f, null));
            } else {
                jSONObject.put("token_id", f34948d);
            }
            jSONObject.put("code", f34945a);
            return Base64.encodeToString(jSONObject.toString().getBytes(), 2);
        } catch (Throwable th) {
            d.a();
            return "";
        }
    }

    public static void a(Context context, String str, com.pgl.sys.a.a.a aVar) {
        if (f == null) {
            f = context;
        }
        int i = f34945a;
        if (i != 102 && i != 202 && i != 200) {
            e = System.currentTimeMillis();
            f34946b = false;
            f34947c = str;
            f34945a = 102;
            Thread thread = new Thread(new b(context, aVar));
            thread.setName("CZL-3");
            thread.start();
        }
    }
}

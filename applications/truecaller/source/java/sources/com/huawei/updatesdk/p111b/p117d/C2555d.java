package com.huawei.updatesdk.p111b.p117d;

import android.text.TextUtils;
import com.huawei.updatesdk.p097a.p098a.p099b.C2513b;
import com.huawei.updatesdk.p097a.p106b.p107a.C2530a;
import java.io.File;
import java.net.HttpURLConnection;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.b.d.d */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/d/d.class */
public class C2555d {

    /* renamed from: a */
    private static volatile C2555d f8266a;

    /* renamed from: a */
    public static C2555d m36640a() {
        C2555d c2555d;
        synchronized (C2555d.class) {
            try {
                if (f8266a == null) {
                    f8266a = new C2555d();
                }
                c2555d = f8266a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2555d;
    }

    /* renamed from: b */
    public static String m36638b() {
        String m36755b = C2530a.m36754c().m36755b();
        if (TextUtils.isEmpty(m36755b)) {
            return "";
        }
        String m8543z2 = C22128a.m8543z2(m36755b, "/updatesdk");
        File file = new File(m8543z2);
        return (file.exists() || file.mkdirs()) ? m8543z2 : "";
    }

    /* renamed from: a */
    public HttpURLConnection m36639a(String str) {
        HttpURLConnection m36856a = C2513b.m36856a(str, C2530a.m36754c().m36757a());
        m36856a.setConnectTimeout(7000);
        m36856a.setReadTimeout(10000);
        m36856a.setUseCaches(false);
        m36856a.setDoInput(true);
        m36856a.setRequestProperty("Accept-Encoding", "identity");
        m36856a.setInstanceFollowRedirects(true);
        return m36856a;
    }
}

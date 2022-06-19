package com.huawei.hms.framework.network.grs.p090h.p091f;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.IoUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.p090h.C2332a;
import com.huawei.hms.framework.network.grs.p090h.p092g.C2339a;
import com.tenor.android.core.constant.StringConstant;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
/* renamed from: com.huawei.hms.framework.network.grs.h.f.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/h/f/a.class */
public class C2338a {
    /* renamed from: a */
    public static HttpsURLConnection m37848a(String str, Context context, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        URLConnection openConnection = new URL(str).openConnection();
        if (!(openConnection instanceof HttpsURLConnection)) {
            Logger.m38040w("URLConnectionHelper", "urlConnection is not an instance of HttpsURLConnection");
            return null;
        }
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) openConnection;
        try {
            httpsURLConnection.setSSLSocketFactory(C2339a.m37845a(context));
            httpsURLConnection.setHostnameVerifier(C2339a.m37846a());
        } catch (IllegalArgumentException e) {
            Logger.m38040w("URLConnectionHelper", "init https ssl socket failed.");
        }
        httpsURLConnection.setConnectTimeout(10000);
        httpsURLConnection.setReadTimeout(10000);
        String m37859b = C2332a.m37859b(context, "NetworkKit-grs", str2);
        Logger.m38049d("URLConnectionHelper", "request to grs server with a User-Agent header is:" + m37859b);
        httpsURLConnection.setRequestProperty("User-Agent", m37859b);
        return httpsURLConnection;
    }

    /* renamed from: a */
    public static void m37847a(HttpsURLConnection httpsURLConnection, String str) {
        Object obj;
        if (str == null) {
            obj = "sendHttpBody: The Body Data is Null";
        } else if (httpsURLConnection != null) {
            OutputStream outputStream = null;
            try {
                OutputStream outputStream2 = httpsURLConnection.getOutputStream();
                outputStream2.write(str.getBytes(StringConstant.UTF8));
                outputStream = outputStream2;
                outputStream2.flush();
                IoUtils.closeSecure(outputStream2);
                return;
            } catch (Throwable th) {
                IoUtils.closeSecure(outputStream);
                throw th;
            }
        } else {
            obj = "sendHttpBody: HttpsURLConnection is Null";
        }
        Logger.m38044i("URLConnectionHelper", obj);
    }
}

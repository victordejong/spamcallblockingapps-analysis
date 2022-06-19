package io.bidmachine.nativead.tasks;

import android.net.Uri;
import io.bidmachine.core.Logger;
import io.bidmachine.nativead.utils.NoSSLv3SocketFactory;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
/* renamed from: io.bidmachine.nativead.tasks.b */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/tasks/b.class */
final class C17899b {
    C17899b() {
    }

    public static InputStream getInputStream(String str, int i) throws Exception {
        try {
            URLConnection openConnection = new URL(str).openConnection();
            openConnection.setConnectTimeout(i);
            openConnection.setReadTimeout(i);
            setupNoSSLv3(openConnection);
            openConnection.connect();
            return openConnection.getInputStream();
        } catch (Exception e) {
            Uri.Builder buildUpon = Uri.parse(str).buildUpon();
            buildUpon.scheme("http");
            URLConnection openConnection2 = new URL(buildUpon.build().toString()).openConnection();
            openConnection2.setConnectTimeout(i);
            openConnection2.setReadTimeout(i);
            openConnection2.connect();
            return openConnection2.getInputStream();
        }
    }

    private static void setupNoSSLv3(URLConnection uRLConnection) {
        try {
            if (!(uRLConnection instanceof HttpsURLConnection)) {
                return;
            }
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnection;
            httpsURLConnection.setSSLSocketFactory(new NoSSLv3SocketFactory(httpsURLConnection.getSSLSocketFactory()));
        } catch (Exception e) {
            Logger.log(e);
        }
    }
}

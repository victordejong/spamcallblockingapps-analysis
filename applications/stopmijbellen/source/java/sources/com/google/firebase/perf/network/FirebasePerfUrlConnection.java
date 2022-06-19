package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import p115h6.C3013b;
import p136j6.C3279c;
import p136j6.C3280d;
import p136j6.C3284h;
import p169m6.C3652e;
import p180n6.C3729e;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/network/FirebasePerfUrlConnection.class */
public class FirebasePerfUrlConnection {
    @Keep
    public static Object getContent(URL url) throws IOException {
        C3652e c3652e = C3652e.f11967s;
        C3729e c3729e = new C3729e();
        c3729e.m1838c();
        long j = c3729e.f12119a;
        C3013b c3013b = new C3013b(c3652e);
        try {
            URLConnection openConnection = url.openConnection();
            return openConnection instanceof HttpsURLConnection ? new C3280d((HttpsURLConnection) openConnection, c3729e, c3013b).getContent() : openConnection instanceof HttpURLConnection ? new C3279c((HttpURLConnection) openConnection, c3729e, c3013b).getContent() : openConnection.getContent();
        } catch (IOException e) {
            c3013b.m2743g(j);
            c3013b.m2740j(c3729e.m1840a());
            c3013b.m2738m(url.toString());
            C3284h.m2427c(c3013b);
            throw e;
        }
    }

    @Keep
    public static Object getContent(URL url, Class[] clsArr) throws IOException {
        C3652e c3652e = C3652e.f11967s;
        C3729e c3729e = new C3729e();
        c3729e.m1838c();
        long j = c3729e.f12119a;
        C3013b c3013b = new C3013b(c3652e);
        try {
            URLConnection openConnection = url.openConnection();
            return openConnection instanceof HttpsURLConnection ? new C3280d((HttpsURLConnection) openConnection, c3729e, c3013b).f11109a.m2441c(clsArr) : openConnection instanceof HttpURLConnection ? new C3279c((HttpURLConnection) openConnection, c3729e, c3013b).f11108a.m2441c(clsArr) : openConnection.getContent(clsArr);
        } catch (IOException e) {
            c3013b.m2743g(j);
            c3013b.m2740j(c3729e.m1840a());
            c3013b.m2738m(url.toString());
            C3284h.m2427c(c3013b);
            throw e;
        }
    }

    @Keep
    public static Object instrument(Object obj) throws IOException {
        return obj instanceof HttpsURLConnection ? new C3280d((HttpsURLConnection) obj, new C3729e(), new C3013b(C3652e.f11967s)) : obj instanceof HttpURLConnection ? new C3279c((HttpURLConnection) obj, new C3729e(), new C3013b(C3652e.f11967s)) : obj;
    }

    @Keep
    public static InputStream openStream(URL url) throws IOException {
        C3652e c3652e = C3652e.f11967s;
        C3729e c3729e = new C3729e();
        c3729e.m1838c();
        long j = c3729e.f12119a;
        C3013b c3013b = new C3013b(c3652e);
        try {
            URLConnection openConnection = url.openConnection();
            return openConnection instanceof HttpsURLConnection ? new C3280d((HttpsURLConnection) openConnection, c3729e, c3013b).getInputStream() : openConnection instanceof HttpURLConnection ? new C3279c((HttpURLConnection) openConnection, c3729e, c3013b).getInputStream() : openConnection.getInputStream();
        } catch (IOException e) {
            c3013b.m2743g(j);
            c3013b.m2740j(c3729e.m1840a());
            c3013b.m2738m(url.toString());
            C3284h.m2427c(c3013b);
            throw e;
        }
    }
}

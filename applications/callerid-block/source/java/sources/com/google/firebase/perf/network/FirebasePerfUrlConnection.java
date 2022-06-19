package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.firebase.perf.e.a;
import com.google.firebase.perf.p084g.C2431k;
import com.google.firebase.perf.util.C2450e;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/network/FirebasePerfUrlConnection.class */
public class FirebasePerfUrlConnection {
    private FirebasePerfUrlConnection() {
    }

    /* renamed from: a */
    static Object m3649a(C2450e c2450e, C2431k c2431k, Timer timer) {
        timer.m3584e();
        long m3585d = timer.m3585d();
        a c = a.c(c2431k);
        try {
            URLConnection m3569a = c2450e.m3569a();
            return m3569a instanceof HttpsURLConnection ? new C2435d((HttpsURLConnection) m3569a, timer, c).getContent() : m3569a instanceof HttpURLConnection ? new C2434c((HttpURLConnection) m3569a, timer, c).getContent() : m3569a.getContent();
        } catch (IOException e) {
            c.p(m3585d);
            c.v(timer.m3587b());
            c.x(c2450e.toString());
            C2439h.m3589d(c);
            throw e;
        }
    }

    /* renamed from: b */
    static Object m3648b(C2450e c2450e, Class[] clsArr, C2431k c2431k, Timer timer) {
        timer.m3584e();
        long m3585d = timer.m3585d();
        a c = a.c(c2431k);
        try {
            URLConnection m3569a = c2450e.m3569a();
            return m3569a instanceof HttpsURLConnection ? new C2435d((HttpsURLConnection) m3569a, timer, c).getContent(clsArr) : m3569a instanceof HttpURLConnection ? new C2434c((HttpURLConnection) m3569a, timer, c).getContent(clsArr) : m3569a.getContent(clsArr);
        } catch (IOException e) {
            c.p(m3585d);
            c.v(timer.m3587b());
            c.x(c2450e.toString());
            C2439h.m3589d(c);
            throw e;
        }
    }

    /* renamed from: c */
    static InputStream m3647c(C2450e c2450e, C2431k c2431k, Timer timer) {
        timer.m3584e();
        long m3585d = timer.m3585d();
        a c = a.c(c2431k);
        try {
            URLConnection m3569a = c2450e.m3569a();
            return m3569a instanceof HttpsURLConnection ? new C2435d((HttpsURLConnection) m3569a, timer, c).getInputStream() : m3569a instanceof HttpURLConnection ? new C2434c((HttpURLConnection) m3569a, timer, c).getInputStream() : m3569a.getInputStream();
        } catch (IOException e) {
            c.p(m3585d);
            c.v(timer.m3587b());
            c.x(c2450e.toString());
            C2439h.m3589d(c);
            throw e;
        }
    }

    @Keep
    public static Object getContent(URL url) {
        return m3649a(new C2450e(url), C2431k.m3680e(), new Timer());
    }

    @Keep
    public static Object getContent(URL url, Class[] clsArr) {
        return m3648b(new C2450e(url), clsArr, C2431k.m3680e(), new Timer());
    }

    @Keep
    public static Object instrument(Object obj) {
        return obj instanceof HttpsURLConnection ? new C2435d((HttpsURLConnection) obj, new Timer(), a.c(C2431k.m3680e())) : obj instanceof HttpURLConnection ? new C2434c((HttpURLConnection) obj, new Timer(), a.c(C2431k.m3680e())) : obj;
    }

    @Keep
    public static InputStream openStream(URL url) {
        return m3647c(new C2450e(url), C2431k.m3680e(), new Timer());
    }
}

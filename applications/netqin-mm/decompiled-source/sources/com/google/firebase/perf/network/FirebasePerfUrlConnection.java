package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import p131c.p161d.p282e.p340u.p343f.C5954a;
import p131c.p161d.p282e.p340u.p347j.C5974c;
import p131c.p161d.p282e.p340u.p347j.C5975d;
import p131c.p161d.p282e.p340u.p347j.C5979h;
import p131c.p161d.p282e.p340u.p348k.C5992l;
import p131c.p161d.p282e.p340u.p349l.C5997e;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/network/FirebasePerfUrlConnection.class */
public class FirebasePerfUrlConnection {
    /* renamed from: a */
    public static Object m7222a(C5997e eVar, C5992l lVar, Timer timer) throws IOException {
        timer.m7215d();
        long c = timer.m7216c();
        C5954a a = C5954a.m22565a(lVar);
        try {
            URLConnection a2 = eVar.m22361a();
            return a2 instanceof HttpsURLConnection ? new C5975d((HttpsURLConnection) a2, timer, a).getContent() : a2 instanceof HttpURLConnection ? new C5974c((HttpURLConnection) a2, timer, a).getContent() : a2.getContent();
        } catch (IOException e) {
            a.m22562b(c);
            a.m22553e(timer.m7217b());
            a.m22558c(eVar.toString());
            C5979h.m22430a(a);
            throw e;
        }
    }

    /* renamed from: a */
    public static Object m7221a(C5997e eVar, Class[] clsArr, C5992l lVar, Timer timer) throws IOException {
        timer.m7215d();
        long c = timer.m7216c();
        C5954a a = C5954a.m22565a(lVar);
        try {
            URLConnection a2 = eVar.m22361a();
            return a2 instanceof HttpsURLConnection ? new C5975d((HttpsURLConnection) a2, timer, a).getContent(clsArr) : a2 instanceof HttpURLConnection ? new C5974c((HttpURLConnection) a2, timer, a).getContent(clsArr) : a2.getContent(clsArr);
        } catch (IOException e) {
            a.m22562b(c);
            a.m22553e(timer.m7217b());
            a.m22558c(eVar.toString());
            C5979h.m22430a(a);
            throw e;
        }
    }

    /* renamed from: b */
    public static InputStream m7220b(C5997e eVar, C5992l lVar, Timer timer) throws IOException {
        timer.m7215d();
        long c = timer.m7216c();
        C5954a a = C5954a.m22565a(lVar);
        try {
            URLConnection a2 = eVar.m22361a();
            return a2 instanceof HttpsURLConnection ? new C5975d((HttpsURLConnection) a2, timer, a).getInputStream() : a2 instanceof HttpURLConnection ? new C5974c((HttpURLConnection) a2, timer, a).getInputStream() : a2.getInputStream();
        } catch (IOException e) {
            a.m22562b(c);
            a.m22553e(timer.m7217b());
            a.m22558c(eVar.toString());
            C5979h.m22430a(a);
            throw e;
        }
    }

    @Keep
    public static Object getContent(URL url) throws IOException {
        return m7222a(new C5997e(url), C5992l.m22374g(), new Timer());
    }

    @Keep
    public static Object getContent(URL url, Class[] clsArr) throws IOException {
        return m7221a(new C5997e(url), clsArr, C5992l.m22374g(), new Timer());
    }

    @Keep
    public static Object instrument(Object obj) throws IOException {
        return obj instanceof HttpsURLConnection ? new C5975d((HttpsURLConnection) obj, new Timer(), C5954a.m22565a(C5992l.m22374g())) : obj instanceof HttpURLConnection ? new C5974c((HttpURLConnection) obj, new Timer(), C5954a.m22565a(C5992l.m22374g())) : obj;
    }

    @Keep
    public static InputStream openStream(URL url) throws IOException {
        return m7220b(new C5997e(url), C5992l.m22374g(), new Timer());
    }
}

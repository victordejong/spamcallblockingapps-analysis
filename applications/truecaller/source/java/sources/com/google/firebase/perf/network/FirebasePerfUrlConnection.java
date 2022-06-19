package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.firebase.perf.util.Timer;
import e.m.d.z.j.b;
import e.m.d.z.k.c;
import e.m.d.z.k.d;
import e.m.d.z.k.h;
import e.m.d.z.m.k;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes3-dex2jar.jar:com/google/firebase/perf/network/FirebasePerfUrlConnection.class */
public class FirebasePerfUrlConnection {
    @Keep
    public static Object getContent(URL url) throws IOException {
        k kVar = k.s;
        Timer timer = new Timer();
        timer.m38295c();
        long j = timer.f7077a;
        b bVar = new b(kVar);
        try {
            URLConnection openConnection = url.openConnection();
            return openConnection instanceof HttpsURLConnection ? new d((HttpsURLConnection) openConnection, timer, bVar).getContent() : openConnection instanceof HttpURLConnection ? new c((HttpURLConnection) openConnection, timer, bVar).getContent() : openConnection.getContent();
        } catch (IOException e) {
            bVar.f(j);
            bVar.i(timer.m38297a());
            bVar.l(url.toString());
            h.c(bVar);
            throw e;
        }
    }

    @Keep
    public static Object getContent(URL url, Class[] clsArr) throws IOException {
        k kVar = k.s;
        Timer timer = new Timer();
        timer.m38295c();
        long j = timer.f7077a;
        b bVar = new b(kVar);
        try {
            URLConnection openConnection = url.openConnection();
            return openConnection instanceof HttpsURLConnection ? new d((HttpsURLConnection) openConnection, timer, bVar).a.c(clsArr) : openConnection instanceof HttpURLConnection ? new c((HttpURLConnection) openConnection, timer, bVar).a.c(clsArr) : openConnection.getContent(clsArr);
        } catch (IOException e) {
            bVar.f(j);
            bVar.i(timer.m38297a());
            bVar.l(url.toString());
            h.c(bVar);
            throw e;
        }
    }

    @Keep
    public static Object instrument(Object obj) throws IOException {
        return obj instanceof HttpsURLConnection ? new d((HttpsURLConnection) obj, new Timer(), new b(k.s)) : obj instanceof HttpURLConnection ? new c((HttpURLConnection) obj, new Timer(), new b(k.s)) : obj;
    }

    @Keep
    public static InputStream openStream(URL url) throws IOException {
        k kVar = k.s;
        Timer timer = new Timer();
        timer.m38295c();
        long j = timer.f7077a;
        b bVar = new b(kVar);
        try {
            URLConnection openConnection = url.openConnection();
            return openConnection instanceof HttpsURLConnection ? new d((HttpsURLConnection) openConnection, timer, bVar).getInputStream() : openConnection instanceof HttpURLConnection ? new c((HttpURLConnection) openConnection, timer, bVar).getInputStream() : openConnection.getInputStream();
        } catch (IOException e) {
            bVar.f(j);
            bVar.i(timer.m38297a());
            bVar.l(url.toString());
            h.c(bVar);
            throw e;
        }
    }
}

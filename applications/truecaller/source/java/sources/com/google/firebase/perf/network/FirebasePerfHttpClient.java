package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.firebase.perf.util.Timer;
import e.m.d.z.j.b;
import e.m.d.z.k.f;
import e.m.d.z.k.h;
import e.m.d.z.m.k;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;
/* loaded from: classes3-dex2jar.jar:com/google/firebase/perf/network/FirebasePerfHttpClient.class */
public class FirebasePerfHttpClient {
    @Keep
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) throws IOException {
        Timer timer = new Timer();
        b bVar = new b(k.s);
        try {
            bVar.l(httpHost.toURI() + httpRequest.getRequestLine().getUri());
            bVar.c(httpRequest.getRequestLine().getMethod());
            Long a = h.a(httpRequest);
            if (a != null) {
                bVar.e(a.longValue());
            }
            timer.m38295c();
            bVar.f(timer.f7077a);
            return (T) httpClient.execute(httpHost, httpRequest, new f(responseHandler, timer, bVar));
        } catch (IOException e) {
            bVar.i(timer.m38297a());
            h.c(bVar);
            throw e;
        }
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws IOException {
        Timer timer = new Timer();
        b bVar = new b(k.s);
        try {
            bVar.l(httpHost.toURI() + httpRequest.getRequestLine().getUri());
            bVar.c(httpRequest.getRequestLine().getMethod());
            Long a = h.a(httpRequest);
            if (a != null) {
                bVar.e(a.longValue());
            }
            timer.m38295c();
            bVar.f(timer.f7077a);
            return (T) httpClient.execute(httpHost, httpRequest, new f(responseHandler, timer, bVar), httpContext);
        } catch (IOException e) {
            bVar.i(timer.m38297a());
            h.c(bVar);
            throw e;
        }
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler) throws IOException {
        Timer timer = new Timer();
        b bVar = new b(k.s);
        try {
            bVar.l(httpUriRequest.getURI().toString());
            bVar.c(httpUriRequest.getMethod());
            Long a = h.a(httpUriRequest);
            if (a != null) {
                bVar.e(a.longValue());
            }
            timer.m38295c();
            bVar.f(timer.f7077a);
            return (T) httpClient.execute(httpUriRequest, new f(responseHandler, timer, bVar));
        } catch (IOException e) {
            bVar.i(timer.m38297a());
            h.c(bVar);
            throw e;
        }
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, HttpContext httpContext) throws IOException {
        Timer timer = new Timer();
        b bVar = new b(k.s);
        try {
            bVar.l(httpUriRequest.getURI().toString());
            bVar.c(httpUriRequest.getMethod());
            Long a = h.a(httpUriRequest);
            if (a != null) {
                bVar.e(a.longValue());
            }
            timer.m38295c();
            bVar.f(timer.f7077a);
            return (T) httpClient.execute(httpUriRequest, new f(responseHandler, timer, bVar), httpContext);
        } catch (IOException e) {
            bVar.i(timer.m38297a());
            h.c(bVar);
            throw e;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest) throws IOException {
        TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        ?? nanoTime = System.nanoTime();
        b bVar = new b(k.s);
        char c = nanoTime;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(httpHost.toURI());
            sb.append(httpRequest.getRequestLine().getUri());
            bVar.l(sb.toString());
            bVar.c(httpRequest.getRequestLine().getMethod());
            Long a = h.a(httpRequest);
            if (a != null) {
                bVar.e(a.longValue());
            }
            long micros = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
            ?? nanoTime2 = System.nanoTime();
            bVar.f(micros);
            HttpResponse execute = httpClient.execute(httpHost, httpRequest);
            bVar.i(TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - nanoTime2));
            bVar.d(execute.getStatusLine().getStatusCode());
            Long a2 = h.a(execute);
            if (a2 != null) {
                bVar.h(a2.longValue());
            }
            String b = h.b(execute);
            if (b != null) {
                bVar.g(b);
            }
            c = nanoTime2;
            bVar.b();
            return execute;
        } catch (IOException e) {
            bVar.i(TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - c));
            h.c(bVar);
            throw e;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws IOException {
        TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        ?? nanoTime = System.nanoTime();
        b bVar = new b(k.s);
        char c = nanoTime;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(httpHost.toURI());
            sb.append(httpRequest.getRequestLine().getUri());
            bVar.l(sb.toString());
            bVar.c(httpRequest.getRequestLine().getMethod());
            Long a = h.a(httpRequest);
            if (a != null) {
                bVar.e(a.longValue());
            }
            long micros = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
            ?? nanoTime2 = System.nanoTime();
            bVar.f(micros);
            HttpResponse execute = httpClient.execute(httpHost, httpRequest, httpContext);
            bVar.i(TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - nanoTime2));
            bVar.d(execute.getStatusLine().getStatusCode());
            Long a2 = h.a(execute);
            if (a2 != null) {
                bVar.h(a2.longValue());
            }
            String b = h.b(execute);
            if (b != null) {
                bVar.g(b);
            }
            c = nanoTime2;
            bVar.b();
            return execute;
        } catch (IOException e) {
            bVar.i(TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - c));
            h.c(bVar);
            throw e;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest) throws IOException {
        TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        ?? nanoTime = System.nanoTime();
        b bVar = new b(k.s);
        char c = nanoTime;
        try {
            bVar.l(httpUriRequest.getURI().toString());
            bVar.c(httpUriRequest.getMethod());
            Long a = h.a(httpUriRequest);
            if (a != null) {
                bVar.e(a.longValue());
            }
            long micros = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
            ?? nanoTime2 = System.nanoTime();
            bVar.f(micros);
            HttpResponse execute = httpClient.execute(httpUriRequest);
            bVar.i(TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - nanoTime2));
            bVar.d(execute.getStatusLine().getStatusCode());
            Long a2 = h.a(execute);
            if (a2 != null) {
                bVar.h(a2.longValue());
            }
            String b = h.b(execute);
            if (b != null) {
                bVar.g(b);
            }
            c = nanoTime2;
            bVar.b();
            return execute;
        } catch (IOException e) {
            bVar.i(TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - c));
            h.c(bVar);
            throw e;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext) throws IOException {
        TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        ?? nanoTime = System.nanoTime();
        b bVar = new b(k.s);
        char c = nanoTime;
        try {
            bVar.l(httpUriRequest.getURI().toString());
            bVar.c(httpUriRequest.getMethod());
            Long a = h.a(httpUriRequest);
            if (a != null) {
                bVar.e(a.longValue());
            }
            long micros = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
            ?? nanoTime2 = System.nanoTime();
            bVar.f(micros);
            HttpResponse execute = httpClient.execute(httpUriRequest, httpContext);
            bVar.i(TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - nanoTime2));
            bVar.d(execute.getStatusLine().getStatusCode());
            Long a2 = h.a(execute);
            if (a2 != null) {
                bVar.h(a2.longValue());
            }
            String b = h.b(execute);
            if (b != null) {
                bVar.g(b);
            }
            c = nanoTime2;
            bVar.b();
            return execute;
        } catch (IOException e) {
            bVar.i(TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - c));
            h.c(bVar);
            throw e;
        }
    }
}

package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;
import p115h6.C3013b;
import p136j6.C3282f;
import p136j6.C3284h;
import p169m6.C3652e;
import p180n6.C3729e;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/network/FirebasePerfHttpClient.class */
public class FirebasePerfHttpClient {
    @Keep
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) throws IOException {
        C3729e c3729e = new C3729e();
        C3013b c3013b = new C3013b(C3652e.f11967s);
        try {
            c3013b.m2738m(httpHost.toURI() + httpRequest.getRequestLine().getUri());
            c3013b.m2746c(httpRequest.getRequestLine().getMethod());
            Long m2429a = C3284h.m2429a(httpRequest);
            if (m2429a != null) {
                c3013b.m2744f(m2429a.longValue());
            }
            c3729e.m1838c();
            c3013b.m2743g(c3729e.f12119a);
            return (T) httpClient.execute(httpHost, httpRequest, new C3282f(responseHandler, c3729e, c3013b));
        } catch (IOException e) {
            c3013b.m2740j(c3729e.m1840a());
            C3284h.m2427c(c3013b);
            throw e;
        }
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws IOException {
        C3729e c3729e = new C3729e();
        C3013b c3013b = new C3013b(C3652e.f11967s);
        try {
            c3013b.m2738m(httpHost.toURI() + httpRequest.getRequestLine().getUri());
            c3013b.m2746c(httpRequest.getRequestLine().getMethod());
            Long m2429a = C3284h.m2429a(httpRequest);
            if (m2429a != null) {
                c3013b.m2744f(m2429a.longValue());
            }
            c3729e.m1838c();
            c3013b.m2743g(c3729e.f12119a);
            return (T) httpClient.execute(httpHost, httpRequest, new C3282f(responseHandler, c3729e, c3013b), httpContext);
        } catch (IOException e) {
            c3013b.m2740j(c3729e.m1840a());
            C3284h.m2427c(c3013b);
            throw e;
        }
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler) throws IOException {
        C3729e c3729e = new C3729e();
        C3013b c3013b = new C3013b(C3652e.f11967s);
        try {
            c3013b.m2738m(httpUriRequest.getURI().toString());
            c3013b.m2746c(httpUriRequest.getMethod());
            Long m2429a = C3284h.m2429a(httpUriRequest);
            if (m2429a != null) {
                c3013b.m2744f(m2429a.longValue());
            }
            c3729e.m1838c();
            c3013b.m2743g(c3729e.f12119a);
            return (T) httpClient.execute(httpUriRequest, new C3282f(responseHandler, c3729e, c3013b));
        } catch (IOException e) {
            c3013b.m2740j(c3729e.m1840a());
            C3284h.m2427c(c3013b);
            throw e;
        }
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, HttpContext httpContext) throws IOException {
        C3729e c3729e = new C3729e();
        C3013b c3013b = new C3013b(C3652e.f11967s);
        try {
            c3013b.m2738m(httpUriRequest.getURI().toString());
            c3013b.m2746c(httpUriRequest.getMethod());
            Long m2429a = C3284h.m2429a(httpUriRequest);
            if (m2429a != null) {
                c3013b.m2744f(m2429a.longValue());
            }
            c3729e.m1838c();
            c3013b.m2743g(c3729e.f12119a);
            return (T) httpClient.execute(httpUriRequest, new C3282f(responseHandler, c3729e, c3013b), httpContext);
        } catch (IOException e) {
            c3013b.m2740j(c3729e.m1840a());
            C3284h.m2427c(c3013b);
            throw e;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest) throws IOException {
        TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        ?? nanoTime = System.nanoTime();
        C3013b c3013b = new C3013b(C3652e.f11967s);
        char c = nanoTime;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(httpHost.toURI());
            sb.append(httpRequest.getRequestLine().getUri());
            c3013b.m2738m(sb.toString());
            c3013b.m2746c(httpRequest.getRequestLine().getMethod());
            Long m2429a = C3284h.m2429a(httpRequest);
            if (m2429a != null) {
                c3013b.m2744f(m2429a.longValue());
            }
            long micros = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
            ?? nanoTime2 = System.nanoTime();
            c3013b.m2743g(micros);
            HttpResponse execute = httpClient.execute(httpHost, httpRequest);
            c3013b.m2740j(TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - nanoTime2));
            c3013b.m2745e(execute.getStatusLine().getStatusCode());
            Long m2429a2 = C3284h.m2429a(execute);
            if (m2429a2 != null) {
                c3013b.m2741i(m2429a2.longValue());
            }
            String m2428b = C3284h.m2428b(execute);
            if (m2428b != null) {
                c3013b.m2742h(m2428b);
            }
            c = nanoTime2;
            c3013b.m2747b();
            return execute;
        } catch (IOException e) {
            c3013b.m2740j(TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - c));
            C3284h.m2427c(c3013b);
            throw e;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws IOException {
        TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        ?? nanoTime = System.nanoTime();
        C3013b c3013b = new C3013b(C3652e.f11967s);
        char c = nanoTime;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(httpHost.toURI());
            sb.append(httpRequest.getRequestLine().getUri());
            c3013b.m2738m(sb.toString());
            c3013b.m2746c(httpRequest.getRequestLine().getMethod());
            Long m2429a = C3284h.m2429a(httpRequest);
            if (m2429a != null) {
                c3013b.m2744f(m2429a.longValue());
            }
            long micros = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
            ?? nanoTime2 = System.nanoTime();
            c3013b.m2743g(micros);
            HttpResponse execute = httpClient.execute(httpHost, httpRequest, httpContext);
            c3013b.m2740j(TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - nanoTime2));
            c3013b.m2745e(execute.getStatusLine().getStatusCode());
            Long m2429a2 = C3284h.m2429a(execute);
            if (m2429a2 != null) {
                c3013b.m2741i(m2429a2.longValue());
            }
            String m2428b = C3284h.m2428b(execute);
            if (m2428b != null) {
                c3013b.m2742h(m2428b);
            }
            c = nanoTime2;
            c3013b.m2747b();
            return execute;
        } catch (IOException e) {
            c3013b.m2740j(TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - c));
            C3284h.m2427c(c3013b);
            throw e;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest) throws IOException {
        TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        ?? nanoTime = System.nanoTime();
        C3013b c3013b = new C3013b(C3652e.f11967s);
        char c = nanoTime;
        try {
            c3013b.m2738m(httpUriRequest.getURI().toString());
            c3013b.m2746c(httpUriRequest.getMethod());
            Long m2429a = C3284h.m2429a(httpUriRequest);
            if (m2429a != null) {
                c3013b.m2744f(m2429a.longValue());
            }
            long micros = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
            ?? nanoTime2 = System.nanoTime();
            c3013b.m2743g(micros);
            HttpResponse execute = httpClient.execute(httpUriRequest);
            c3013b.m2740j(TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - nanoTime2));
            c3013b.m2745e(execute.getStatusLine().getStatusCode());
            Long m2429a2 = C3284h.m2429a(execute);
            if (m2429a2 != null) {
                c3013b.m2741i(m2429a2.longValue());
            }
            String m2428b = C3284h.m2428b(execute);
            if (m2428b != null) {
                c3013b.m2742h(m2428b);
            }
            c = nanoTime2;
            c3013b.m2747b();
            return execute;
        } catch (IOException e) {
            c3013b.m2740j(TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - c));
            C3284h.m2427c(c3013b);
            throw e;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext) throws IOException {
        TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        ?? nanoTime = System.nanoTime();
        C3013b c3013b = new C3013b(C3652e.f11967s);
        char c = nanoTime;
        try {
            c3013b.m2738m(httpUriRequest.getURI().toString());
            c3013b.m2746c(httpUriRequest.getMethod());
            Long m2429a = C3284h.m2429a(httpUriRequest);
            if (m2429a != null) {
                c3013b.m2744f(m2429a.longValue());
            }
            long micros = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
            ?? nanoTime2 = System.nanoTime();
            c3013b.m2743g(micros);
            HttpResponse execute = httpClient.execute(httpUriRequest, httpContext);
            c3013b.m2740j(TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - nanoTime2));
            c3013b.m2745e(execute.getStatusLine().getStatusCode());
            Long m2429a2 = C3284h.m2429a(execute);
            if (m2429a2 != null) {
                c3013b.m2741i(m2429a2.longValue());
            }
            String m2428b = C3284h.m2428b(execute);
            if (m2428b != null) {
                c3013b.m2742h(m2428b);
            }
            c = nanoTime2;
            c3013b.m2747b();
            return execute;
        } catch (IOException e) {
            c3013b.m2740j(TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - c));
            C3284h.m2427c(c3013b);
            throw e;
        }
    }
}

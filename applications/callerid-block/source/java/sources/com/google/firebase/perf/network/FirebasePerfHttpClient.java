package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.firebase.perf.e.a;
import com.google.firebase.perf.p084g.C2431k;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/network/FirebasePerfHttpClient.class */
public class FirebasePerfHttpClient {
    private FirebasePerfHttpClient() {
    }

    /* renamed from: a */
    static <T> T m3658a(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, Timer timer, C2431k c2431k) {
        a c = a.c(c2431k);
        try {
            c.x(httpHost.toURI() + httpRequest.getRequestLine().getUri());
            c.l(httpRequest.getRequestLine().getMethod());
            Long m3592a = C2439h.m3592a(httpRequest);
            if (m3592a != null) {
                c.o(m3592a.longValue());
            }
            timer.m3584e();
            c.p(timer.m3585d());
            return (T) httpClient.execute(httpHost, httpRequest, new C2437f(responseHandler, timer, c));
        } catch (IOException e) {
            c.v(timer.m3587b());
            C2439h.m3589d(c);
            throw e;
        }
    }

    /* renamed from: b */
    static <T> T m3657b(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext, Timer timer, C2431k c2431k) {
        a c = a.c(c2431k);
        try {
            c.x(httpHost.toURI() + httpRequest.getRequestLine().getUri());
            c.l(httpRequest.getRequestLine().getMethod());
            Long m3592a = C2439h.m3592a(httpRequest);
            if (m3592a != null) {
                c.o(m3592a.longValue());
            }
            timer.m3584e();
            c.p(timer.m3585d());
            return (T) httpClient.execute(httpHost, httpRequest, new C2437f(responseHandler, timer, c), httpContext);
        } catch (IOException e) {
            c.v(timer.m3587b());
            C2439h.m3589d(c);
            throw e;
        }
    }

    /* renamed from: c */
    static <T> T m3656c(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, Timer timer, C2431k c2431k) {
        a c = a.c(c2431k);
        try {
            c.x(httpUriRequest.getURI().toString());
            c.l(httpUriRequest.getMethod());
            Long m3592a = C2439h.m3592a(httpUriRequest);
            if (m3592a != null) {
                c.o(m3592a.longValue());
            }
            timer.m3584e();
            c.p(timer.m3585d());
            return (T) httpClient.execute(httpUriRequest, new C2437f(responseHandler, timer, c));
        } catch (IOException e) {
            c.v(timer.m3587b());
            C2439h.m3589d(c);
            throw e;
        }
    }

    /* renamed from: d */
    static <T> T m3655d(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, HttpContext httpContext, Timer timer, C2431k c2431k) {
        a c = a.c(c2431k);
        try {
            c.x(httpUriRequest.getURI().toString());
            c.l(httpUriRequest.getMethod());
            Long m3592a = C2439h.m3592a(httpUriRequest);
            if (m3592a != null) {
                c.o(m3592a.longValue());
            }
            timer.m3584e();
            c.p(timer.m3585d());
            return (T) httpClient.execute(httpUriRequest, new C2437f(responseHandler, timer, c), httpContext);
        } catch (IOException e) {
            c.v(timer.m3587b());
            C2439h.m3589d(c);
            throw e;
        }
    }

    /* renamed from: e */
    static HttpResponse m3654e(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, Timer timer, C2431k c2431k) {
        a c = a.c(c2431k);
        try {
            c.x(httpHost.toURI() + httpRequest.getRequestLine().getUri());
            c.l(httpRequest.getRequestLine().getMethod());
            Long m3592a = C2439h.m3592a(httpRequest);
            if (m3592a != null) {
                c.o(m3592a.longValue());
            }
            timer.m3584e();
            c.p(timer.m3585d());
            HttpResponse execute = httpClient.execute(httpHost, httpRequest);
            c.v(timer.m3587b());
            c.m(execute.getStatusLine().getStatusCode());
            Long m3592a2 = C2439h.m3592a(execute);
            if (m3592a2 != null) {
                c.s(m3592a2.longValue());
            }
            String m3591b = C2439h.m3591b(execute);
            if (m3591b != null) {
                c.q(m3591b);
            }
            c.b();
            return execute;
        } catch (IOException e) {
            c.v(timer.m3587b());
            C2439h.m3589d(c);
            throw e;
        }
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) {
        return (T) m3658a(httpClient, httpHost, httpRequest, responseHandler, new Timer(), C2431k.m3680e());
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) {
        return (T) m3657b(httpClient, httpHost, httpRequest, responseHandler, httpContext, new Timer(), C2431k.m3680e());
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler) {
        return (T) m3656c(httpClient, httpUriRequest, responseHandler, new Timer(), C2431k.m3680e());
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, HttpContext httpContext) {
        return (T) m3655d(httpClient, httpUriRequest, responseHandler, httpContext, new Timer(), C2431k.m3680e());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest) {
        return m3654e(httpClient, httpHost, httpRequest, new Timer(), C2431k.m3680e());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) {
        return m3653f(httpClient, httpHost, httpRequest, httpContext, new Timer(), C2431k.m3680e());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest) {
        return m3652g(httpClient, httpUriRequest, new Timer(), C2431k.m3680e());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext) {
        return m3651h(httpClient, httpUriRequest, httpContext, new Timer(), C2431k.m3680e());
    }

    /* renamed from: f */
    static HttpResponse m3653f(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext, Timer timer, C2431k c2431k) {
        a c = a.c(c2431k);
        try {
            c.x(httpHost.toURI() + httpRequest.getRequestLine().getUri());
            c.l(httpRequest.getRequestLine().getMethod());
            Long m3592a = C2439h.m3592a(httpRequest);
            if (m3592a != null) {
                c.o(m3592a.longValue());
            }
            timer.m3584e();
            c.p(timer.m3585d());
            HttpResponse execute = httpClient.execute(httpHost, httpRequest, httpContext);
            c.v(timer.m3587b());
            c.m(execute.getStatusLine().getStatusCode());
            Long m3592a2 = C2439h.m3592a(execute);
            if (m3592a2 != null) {
                c.s(m3592a2.longValue());
            }
            String m3591b = C2439h.m3591b(execute);
            if (m3591b != null) {
                c.q(m3591b);
            }
            c.b();
            return execute;
        } catch (IOException e) {
            c.v(timer.m3587b());
            C2439h.m3589d(c);
            throw e;
        }
    }

    /* renamed from: g */
    static HttpResponse m3652g(HttpClient httpClient, HttpUriRequest httpUriRequest, Timer timer, C2431k c2431k) {
        a c = a.c(c2431k);
        try {
            c.x(httpUriRequest.getURI().toString());
            c.l(httpUriRequest.getMethod());
            Long m3592a = C2439h.m3592a(httpUriRequest);
            if (m3592a != null) {
                c.o(m3592a.longValue());
            }
            timer.m3584e();
            c.p(timer.m3585d());
            HttpResponse execute = httpClient.execute(httpUriRequest);
            c.v(timer.m3587b());
            c.m(execute.getStatusLine().getStatusCode());
            Long m3592a2 = C2439h.m3592a(execute);
            if (m3592a2 != null) {
                c.s(m3592a2.longValue());
            }
            String m3591b = C2439h.m3591b(execute);
            if (m3591b != null) {
                c.q(m3591b);
            }
            c.b();
            return execute;
        } catch (IOException e) {
            c.v(timer.m3587b());
            C2439h.m3589d(c);
            throw e;
        }
    }

    /* renamed from: h */
    static HttpResponse m3651h(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext, Timer timer, C2431k c2431k) {
        a c = a.c(c2431k);
        try {
            c.x(httpUriRequest.getURI().toString());
            c.l(httpUriRequest.getMethod());
            Long m3592a = C2439h.m3592a(httpUriRequest);
            if (m3592a != null) {
                c.o(m3592a.longValue());
            }
            timer.m3584e();
            c.p(timer.m3585d());
            HttpResponse execute = httpClient.execute(httpUriRequest, httpContext);
            c.v(timer.m3587b());
            c.m(execute.getStatusLine().getStatusCode());
            Long m3592a2 = C2439h.m3592a(execute);
            if (m3592a2 != null) {
                c.s(m3592a2.longValue());
            }
            String m3591b = C2439h.m3591b(execute);
            if (m3591b != null) {
                c.q(m3591b);
            }
            c.b();
            return execute;
        } catch (IOException e) {
            c.v(timer.m3587b());
            C2439h.m3589d(c);
            throw e;
        }
    }
}

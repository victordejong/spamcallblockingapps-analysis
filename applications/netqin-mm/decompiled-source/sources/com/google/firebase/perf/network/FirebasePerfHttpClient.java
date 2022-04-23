package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import org.apache.http.HttpHost;
import org.apache.http.HttpMessage;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;
import p131c.p161d.p282e.p340u.p343f.C5954a;
import p131c.p161d.p282e.p340u.p347j.C5977f;
import p131c.p161d.p282e.p340u.p347j.C5979h;
import p131c.p161d.p282e.p340u.p348k.C5992l;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/network/FirebasePerfHttpClient.class */
public class FirebasePerfHttpClient {
    /* renamed from: a */
    public static <T> T m7230a(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, Timer timer, C5992l lVar) throws IOException {
        C5954a a = C5954a.m22565a(lVar);
        try {
            a.m22558c(httpHost.toURI() + httpRequest.getRequestLine().getUri());
            a.m22564a(httpRequest.getRequestLine().getMethod());
            Long a2 = C5979h.m22428a((HttpMessage) httpRequest);
            if (a2 != null) {
                a.m22566a(a2.longValue());
            }
            timer.m7215d();
            a.m22562b(timer.m7216c());
            return (T) httpClient.execute(httpHost, httpRequest, new C5977f(responseHandler, timer, a));
        } catch (IOException e) {
            a.m22553e(timer.m7217b());
            C5979h.m22430a(a);
            throw e;
        }
    }

    /* renamed from: a */
    public static <T> T m7229a(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext, Timer timer, C5992l lVar) throws IOException {
        C5954a a = C5954a.m22565a(lVar);
        try {
            a.m22558c(httpHost.toURI() + httpRequest.getRequestLine().getUri());
            a.m22564a(httpRequest.getRequestLine().getMethod());
            Long a2 = C5979h.m22428a((HttpMessage) httpRequest);
            if (a2 != null) {
                a.m22566a(a2.longValue());
            }
            timer.m7215d();
            a.m22562b(timer.m7216c());
            return (T) httpClient.execute(httpHost, httpRequest, new C5977f(responseHandler, timer, a), httpContext);
        } catch (IOException e) {
            a.m22553e(timer.m7217b());
            C5979h.m22430a(a);
            throw e;
        }
    }

    /* renamed from: a */
    public static <T> T m7226a(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, Timer timer, C5992l lVar) throws IOException {
        C5954a a = C5954a.m22565a(lVar);
        try {
            a.m22558c(httpUriRequest.getURI().toString());
            a.m22564a(httpUriRequest.getMethod());
            Long a2 = C5979h.m22428a((HttpMessage) httpUriRequest);
            if (a2 != null) {
                a.m22566a(a2.longValue());
            }
            timer.m7215d();
            a.m22562b(timer.m7216c());
            return (T) httpClient.execute(httpUriRequest, new C5977f(responseHandler, timer, a));
        } catch (IOException e) {
            a.m22553e(timer.m7217b());
            C5979h.m22430a(a);
            throw e;
        }
    }

    /* renamed from: a */
    public static <T> T m7225a(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, HttpContext httpContext, Timer timer, C5992l lVar) throws IOException {
        C5954a a = C5954a.m22565a(lVar);
        try {
            a.m22558c(httpUriRequest.getURI().toString());
            a.m22564a(httpUriRequest.getMethod());
            Long a2 = C5979h.m22428a((HttpMessage) httpUriRequest);
            if (a2 != null) {
                a.m22566a(a2.longValue());
            }
            timer.m7215d();
            a.m22562b(timer.m7216c());
            return (T) httpClient.execute(httpUriRequest, new C5977f(responseHandler, timer, a), httpContext);
        } catch (IOException e) {
            a.m22553e(timer.m7217b());
            C5979h.m22430a(a);
            throw e;
        }
    }

    /* renamed from: a */
    public static HttpResponse m7231a(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, Timer timer, C5992l lVar) throws IOException {
        C5954a a = C5954a.m22565a(lVar);
        try {
            a.m22558c(httpHost.toURI() + httpRequest.getRequestLine().getUri());
            a.m22564a(httpRequest.getRequestLine().getMethod());
            Long a2 = C5979h.m22428a((HttpMessage) httpRequest);
            if (a2 != null) {
                a.m22566a(a2.longValue());
            }
            timer.m7215d();
            a.m22562b(timer.m7216c());
            HttpResponse execute = httpClient.execute(httpHost, httpRequest);
            a.m22553e(timer.m7217b());
            a.m22567a(execute.getStatusLine().getStatusCode());
            Long a3 = C5979h.m22428a((HttpMessage) execute);
            if (a3 != null) {
                a.m22559c(a3.longValue());
            }
            String a4 = C5979h.m22427a(execute);
            if (a4 != null) {
                a.m22561b(a4);
            }
            a.m22568a();
            return execute;
        } catch (IOException e) {
            a.m22553e(timer.m7217b());
            C5979h.m22430a(a);
            throw e;
        }
    }

    /* renamed from: a */
    public static HttpResponse m7228a(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext, Timer timer, C5992l lVar) throws IOException {
        C5954a a = C5954a.m22565a(lVar);
        try {
            a.m22558c(httpHost.toURI() + httpRequest.getRequestLine().getUri());
            a.m22564a(httpRequest.getRequestLine().getMethod());
            Long a2 = C5979h.m22428a((HttpMessage) httpRequest);
            if (a2 != null) {
                a.m22566a(a2.longValue());
            }
            timer.m7215d();
            a.m22562b(timer.m7216c());
            HttpResponse execute = httpClient.execute(httpHost, httpRequest, httpContext);
            a.m22553e(timer.m7217b());
            a.m22567a(execute.getStatusLine().getStatusCode());
            Long a3 = C5979h.m22428a((HttpMessage) execute);
            if (a3 != null) {
                a.m22559c(a3.longValue());
            }
            String a4 = C5979h.m22427a(execute);
            if (a4 != null) {
                a.m22561b(a4);
            }
            a.m22568a();
            return execute;
        } catch (IOException e) {
            a.m22553e(timer.m7217b());
            C5979h.m22430a(a);
            throw e;
        }
    }

    /* renamed from: a */
    public static HttpResponse m7227a(HttpClient httpClient, HttpUriRequest httpUriRequest, Timer timer, C5992l lVar) throws IOException {
        C5954a a = C5954a.m22565a(lVar);
        try {
            a.m22558c(httpUriRequest.getURI().toString());
            a.m22564a(httpUriRequest.getMethod());
            Long a2 = C5979h.m22428a((HttpMessage) httpUriRequest);
            if (a2 != null) {
                a.m22566a(a2.longValue());
            }
            timer.m7215d();
            a.m22562b(timer.m7216c());
            HttpResponse execute = httpClient.execute(httpUriRequest);
            a.m22553e(timer.m7217b());
            a.m22567a(execute.getStatusLine().getStatusCode());
            Long a3 = C5979h.m22428a((HttpMessage) execute);
            if (a3 != null) {
                a.m22559c(a3.longValue());
            }
            String a4 = C5979h.m22427a(execute);
            if (a4 != null) {
                a.m22561b(a4);
            }
            a.m22568a();
            return execute;
        } catch (IOException e) {
            a.m22553e(timer.m7217b());
            C5979h.m22430a(a);
            throw e;
        }
    }

    /* renamed from: a */
    public static HttpResponse m7224a(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext, Timer timer, C5992l lVar) throws IOException {
        C5954a a = C5954a.m22565a(lVar);
        try {
            a.m22558c(httpUriRequest.getURI().toString());
            a.m22564a(httpUriRequest.getMethod());
            Long a2 = C5979h.m22428a((HttpMessage) httpUriRequest);
            if (a2 != null) {
                a.m22566a(a2.longValue());
            }
            timer.m7215d();
            a.m22562b(timer.m7216c());
            HttpResponse execute = httpClient.execute(httpUriRequest, httpContext);
            a.m22553e(timer.m7217b());
            a.m22567a(execute.getStatusLine().getStatusCode());
            Long a3 = C5979h.m22428a((HttpMessage) execute);
            if (a3 != null) {
                a.m22559c(a3.longValue());
            }
            String a4 = C5979h.m22427a(execute);
            if (a4 != null) {
                a.m22561b(a4);
            }
            a.m22568a();
            return execute;
        } catch (IOException e) {
            a.m22553e(timer.m7217b());
            C5979h.m22430a(a);
            throw e;
        }
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) throws IOException {
        return (T) m7230a(httpClient, httpHost, httpRequest, responseHandler, new Timer(), C5992l.m22374g());
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws IOException {
        return (T) m7229a(httpClient, httpHost, httpRequest, responseHandler, httpContext, new Timer(), C5992l.m22374g());
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler) throws IOException {
        return (T) m7226a(httpClient, httpUriRequest, responseHandler, new Timer(), C5992l.m22374g());
    }

    @Keep
    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, HttpContext httpContext) throws IOException {
        return (T) m7225a(httpClient, httpUriRequest, responseHandler, httpContext, new Timer(), C5992l.m22374g());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest) throws IOException {
        return m7231a(httpClient, httpHost, httpRequest, new Timer(), C5992l.m22374g());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws IOException {
        return m7228a(httpClient, httpHost, httpRequest, httpContext, new Timer(), C5992l.m22374g());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest) throws IOException {
        return m7227a(httpClient, httpUriRequest, new Timer(), C5992l.m22374g());
    }

    @Keep
    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext) throws IOException {
        return m7224a(httpClient, httpUriRequest, httpContext, new Timer(), C5992l.m22374g());
    }
}

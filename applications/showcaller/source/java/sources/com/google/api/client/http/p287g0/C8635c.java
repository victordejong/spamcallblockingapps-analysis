package com.google.api.client.http.p287g0;

import com.google.api.client.http.AbstractC8615a0;
import com.google.api.client.http.AbstractC8664z;
import com.google.api.client.util.AbstractC8735z;
import com.google.api.client.util.C8731w;
import com.yanzhenjie.nohttp.Headers;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.api.client.http.g0.c */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/g0/c.class */
public final class C8635c extends AbstractC8664z {

    /* renamed from: e */
    private static final AbstractC8638c f38331e = new C8637b();

    /* renamed from: f */
    private final HttpURLConnection f38332f;

    /* renamed from: g */
    private int f38333g = 0;

    /* renamed from: com.google.api.client.http.g0.c$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/http/g0/c$a.class */
    public class CallableC8636a implements Callable<Boolean> {

        /* renamed from: a */
        final /* synthetic */ AbstractC8638c f38334a;

        /* renamed from: b */
        final /* synthetic */ OutputStream f38335b;

        /* renamed from: c */
        final /* synthetic */ AbstractC8735z f38336c;

        CallableC8636a(AbstractC8638c abstractC8638c, OutputStream outputStream, AbstractC8735z abstractC8735z) {
            C8635c.this = r4;
            this.f38334a = abstractC8638c;
            this.f38335b = outputStream;
            this.f38336c = abstractC8735z;
        }

        /* renamed from: a */
        public Boolean call() {
            this.f38334a.mo3193a(this.f38335b, this.f38336c);
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.google.api.client.http.g0.c$b */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/http/g0/c$b.class */
    static class C8637b implements AbstractC8638c {
        C8637b() {
        }

        @Override // com.google.api.client.http.p287g0.C8635c.AbstractC8638c
        /* renamed from: a */
        public void mo3193a(OutputStream outputStream, AbstractC8735z abstractC8735z) {
            abstractC8735z.writeTo(outputStream);
        }
    }

    /* renamed from: com.google.api.client.http.g0.c$c */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/http/g0/c$c.class */
    public interface AbstractC8638c {
        /* renamed from: a */
        void mo3193a(OutputStream outputStream, AbstractC8735z abstractC8735z);
    }

    public C8635c(HttpURLConnection httpURLConnection) {
        this.f38332f = httpURLConnection;
        httpURLConnection.setInstanceFollowRedirects(false);
    }

    /* renamed from: n */
    private boolean m3196n(HttpURLConnection httpURLConnection) {
        boolean z = false;
        try {
            if (httpURLConnection.getResponseCode() > 0) {
                z = true;
            }
        } catch (IOException e) {
        }
        return z;
    }

    /* renamed from: o */
    private void m3195o(AbstractC8638c abstractC8638c, OutputStream outputStream) {
        if (this.f38333g == 0) {
            abstractC8638c.mo3193a(outputStream, m3036f());
            return;
        }
        CallableC8636a callableC8636a = new CallableC8636a(abstractC8638c, outputStream, m3036f());
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Future submit = newSingleThreadExecutor.submit(new FutureTask(callableC8636a), null);
        newSingleThreadExecutor.shutdown();
        try {
            submit.get(this.f38333g, TimeUnit.MILLISECONDS);
            if (newSingleThreadExecutor.isTerminated()) {
                return;
            }
            newSingleThreadExecutor.shutdown();
        } catch (InterruptedException e) {
            throw new IOException("Socket write interrupted", e);
        } catch (ExecutionException e2) {
            throw new IOException("Exception in socket write", e2);
        } catch (TimeoutException e3) {
            throw new IOException("Socket write timed out", e3);
        }
    }

    @Override // com.google.api.client.http.AbstractC8664z
    /* renamed from: a */
    public void mo3041a(String str, String str2) {
        this.f38332f.addRequestProperty(str, str2);
    }

    @Override // com.google.api.client.http.AbstractC8664z
    /* renamed from: b */
    public AbstractC8615a0 mo3040b() {
        return m3197m(f38331e);
    }

    @Override // com.google.api.client.http.AbstractC8664z
    /* renamed from: k */
    public void mo3031k(int i, int i2) {
        this.f38332f.setReadTimeout(i2);
        this.f38332f.setConnectTimeout(i);
    }

    @Override // com.google.api.client.http.AbstractC8664z
    /* renamed from: l */
    public void mo3030l(int i) {
        this.f38333g = i;
    }

    /* renamed from: m */
    AbstractC8615a0 m3197m(AbstractC8638c abstractC8638c) {
        HttpURLConnection httpURLConnection = this.f38332f;
        if (m3036f() != null) {
            String m3037e = m3037e();
            if (m3037e != null) {
                mo3041a(Headers.HEAD_KEY_CONTENT_TYPE, m3037e);
            }
            String m3039c = m3039c();
            if (m3039c != null) {
                mo3041a(Headers.HEAD_KEY_CONTENT_ENCODING, m3039c);
            }
            long m3038d = m3038d();
            int i = (m3038d > 0L ? 1 : (m3038d == 0L ? 0 : -1));
            if (i >= 0) {
                httpURLConnection.setRequestProperty(Headers.HEAD_KEY_CONTENT_LENGTH, Long.toString(m3038d));
            }
            String requestMethod = httpURLConnection.getRequestMethod();
            if ("POST".equals(requestMethod) || OkHttpUtils.METHOD.PUT.equals(requestMethod)) {
                httpURLConnection.setDoOutput(true);
                if (i < 0 || m3038d > 2147483647L) {
                    httpURLConnection.setChunkedStreamingMode(0);
                } else {
                    httpURLConnection.setFixedLengthStreamingMode((int) m3038d);
                }
                OutputStream outputStream = httpURLConnection.getOutputStream();
                try {
                    try {
                        m3195o(abstractC8638c, outputStream);
                        try {
                            outputStream.close();
                        } catch (IOException e) {
                            throw e;
                        }
                    } catch (Throwable th) {
                        try {
                            outputStream.close();
                        } catch (IOException e2) {
                        }
                        throw th;
                    }
                } catch (IOException e3) {
                    if (!m3196n(httpURLConnection)) {
                        throw e3;
                    }
                    try {
                        outputStream.close();
                    } catch (IOException e4) {
                    }
                }
            } else {
                C8731w.m2837c(i == 0, "%s with non-zero content length is not supported", requestMethod);
            }
        }
        try {
            httpURLConnection.connect();
            return new C8639d(httpURLConnection);
        } catch (Throwable th2) {
            httpURLConnection.disconnect();
            throw th2;
        }
    }
}

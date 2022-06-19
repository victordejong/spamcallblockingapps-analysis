package com.google.api.client.http.p383a;

import com.google.api.client.http.AbstractC15313aa;
import com.google.api.client.http.AbstractC15349z;
import com.google.api.client.p379a.AbstractC15211ad;
import com.google.common.base.C15391m;
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
/* renamed from: com.google.api.client.http.a.c */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/a/c.class */
public final class C15306c extends AbstractC15349z {

    /* renamed from: c */
    private static final AbstractC15309b f55290c = new C15308a();

    /* renamed from: a */
    private final HttpURLConnection f55291a;

    /* renamed from: b */
    private int f55292b = 0;

    /* renamed from: com.google.api.client.http.a.c$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/http/a/c$a.class */
    static final class C15308a implements AbstractC15309b {
        C15308a() {
        }

        @Override // com.google.api.client.http.p383a.C15306c.AbstractC15309b
        /* renamed from: a */
        public final void mo9140a(OutputStream outputStream, AbstractC15211ad abstractC15211ad) throws IOException {
            abstractC15211ad.writeTo(outputStream);
        }
    }

    /* renamed from: com.google.api.client.http.a.c$b */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/http/a/c$b.class */
    public interface AbstractC15309b {
        /* renamed from: a */
        void mo9140a(OutputStream outputStream, AbstractC15211ad abstractC15211ad) throws IOException;
    }

    public C15306c(HttpURLConnection httpURLConnection) {
        this.f55291a = httpURLConnection;
        httpURLConnection.setInstanceFollowRedirects(false);
    }

    /* renamed from: a */
    private AbstractC15313aa m9142a(final AbstractC15309b abstractC15309b) throws IOException {
        HttpURLConnection httpURLConnection = this.f55291a;
        if (getStreamingContent() != null) {
            String contentType = getContentType();
            if (contentType != null) {
                addHeader("Content-Type", contentType);
            }
            String contentEncoding = getContentEncoding();
            if (contentEncoding != null) {
                addHeader("Content-Encoding", contentEncoding);
            }
            long contentLength = getContentLength();
            int i = (contentLength > 0L ? 1 : (contentLength == 0L ? 0 : -1));
            if (i >= 0) {
                httpURLConnection.setRequestProperty("Content-Length", Long.toString(contentLength));
            }
            String requestMethod = httpURLConnection.getRequestMethod();
            if ("POST".equals(requestMethod) || "PUT".equals(requestMethod)) {
                httpURLConnection.setDoOutput(true);
                if (i < 0 || contentLength > 2147483647L) {
                    httpURLConnection.setChunkedStreamingMode(0);
                } else {
                    httpURLConnection.setFixedLengthStreamingMode((int) contentLength);
                }
                final OutputStream outputStream = httpURLConnection.getOutputStream();
                try {
                    try {
                        if (this.f55292b == 0) {
                            abstractC15309b.mo9140a(outputStream, getStreamingContent());
                        } else {
                            final AbstractC15211ad streamingContent = getStreamingContent();
                            Callable<Boolean> callable = new Callable<Boolean>() { // from class: com.google.api.client.http.a.c.1
                                @Override // java.util.concurrent.Callable
                                public final /* synthetic */ Boolean call() throws Exception {
                                    abstractC15309b.mo9140a(outputStream, streamingContent);
                                    return Boolean.TRUE;
                                }
                            };
                            ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
                            Future submit = newSingleThreadExecutor.submit(new FutureTask(callable), null);
                            newSingleThreadExecutor.shutdown();
                            try {
                                submit.get(this.f55292b, TimeUnit.MILLISECONDS);
                                if (!newSingleThreadExecutor.isTerminated()) {
                                    newSingleThreadExecutor.shutdown();
                                }
                            } catch (InterruptedException e) {
                                throw new IOException("Socket write interrupted", e);
                            } catch (ExecutionException e2) {
                                throw new IOException("Exception in socket write", e2);
                            } catch (TimeoutException e3) {
                                throw new IOException("Socket write timed out", e3);
                            }
                        }
                        try {
                            outputStream.close();
                        } catch (IOException e4) {
                            throw e4;
                        }
                    } catch (IOException e5) {
                        if (!m9141a(httpURLConnection)) {
                            throw e5;
                        }
                        try {
                            outputStream.close();
                        } catch (IOException e6) {
                        }
                    }
                } catch (Throwable th) {
                    try {
                        outputStream.close();
                    } catch (IOException e7) {
                    }
                    throw th;
                }
            } else {
                C15391m.m8936a(i == 0, "%s with non-zero content length is not supported", requestMethod);
            }
        }
        try {
            httpURLConnection.connect();
            return new C15310d(httpURLConnection);
        } catch (Throwable th2) {
            httpURLConnection.disconnect();
            throw th2;
        }
    }

    /* renamed from: a */
    private static boolean m9141a(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode() > 0;
        } catch (IOException e) {
            return false;
        }
    }

    @Override // com.google.api.client.http.AbstractC15349z
    public final void addHeader(String str, String str2) {
        this.f55291a.addRequestProperty(str, str2);
    }

    @Override // com.google.api.client.http.AbstractC15349z
    public final AbstractC15313aa execute() throws IOException {
        return m9142a(f55290c);
    }

    @Override // com.google.api.client.http.AbstractC15349z
    public final void setTimeout(int i, int i2) {
        this.f55291a.setReadTimeout(i2);
        this.f55291a.setConnectTimeout(i);
    }

    @Override // com.google.api.client.http.AbstractC15349z
    public final void setWriteTimeout(int i) throws IOException {
        this.f55292b = i;
    }
}

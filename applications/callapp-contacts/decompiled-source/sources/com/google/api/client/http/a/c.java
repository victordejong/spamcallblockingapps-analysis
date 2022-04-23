package com.google.api.client.http.a;

import com.google.api.client.a.ad;
import com.google.api.client.http.aa;
import com.google.api.client.http.z;
import com.google.common.base.m;
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
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/a/c.class */
final class c extends z {

    /* renamed from: c  reason: collision with root package name */
    private static final b f31769c = new a();

    /* renamed from: a  reason: collision with root package name */
    private final HttpURLConnection f31770a;

    /* renamed from: b  reason: collision with root package name */
    private int f31771b = 0;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/http/a/c$a.class */
    static final class a implements b {
        a() {
        }

        @Override // com.google.api.client.http.a.c.b
        public final void a(OutputStream outputStream, ad adVar) throws IOException {
            adVar.writeTo(outputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/http/a/c$b.class */
    public interface b {
        void a(OutputStream outputStream, ad adVar) throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(HttpURLConnection httpURLConnection) {
        this.f31770a = httpURLConnection;
        httpURLConnection.setInstanceFollowRedirects(false);
    }

    private aa a(final b bVar) throws IOException {
        HttpURLConnection httpURLConnection = this.f31770a;
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
                        if (this.f31771b == 0) {
                            bVar.a(outputStream, getStreamingContent());
                        } else {
                            final ad streamingContent = getStreamingContent();
                            Callable<Boolean> callable = new Callable<Boolean>() { // from class: com.google.api.client.http.a.c.1
                                @Override // java.util.concurrent.Callable
                                public final /* synthetic */ Boolean call() throws Exception {
                                    bVar.a(outputStream, streamingContent);
                                    return Boolean.TRUE;
                                }
                            };
                            ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
                            Future submit = newSingleThreadExecutor.submit(new FutureTask(callable), null);
                            newSingleThreadExecutor.shutdown();
                            try {
                                submit.get(this.f31771b, TimeUnit.MILLISECONDS);
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
                        if (a(httpURLConnection)) {
                            try {
                                outputStream.close();
                            } catch (IOException e6) {
                            }
                        } else {
                            throw e5;
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
                m.a(i == 0, "%s with non-zero content length is not supported", requestMethod);
            }
        }
        try {
            httpURLConnection.connect();
            return new d(httpURLConnection);
        } catch (Throwable th2) {
            httpURLConnection.disconnect();
            throw th2;
        }
    }

    private static boolean a(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode() > 0;
        } catch (IOException e) {
            return false;
        }
    }

    @Override // com.google.api.client.http.z
    public final void addHeader(String str, String str2) {
        this.f31770a.addRequestProperty(str, str2);
    }

    @Override // com.google.api.client.http.z
    public final aa execute() throws IOException {
        return a(f31769c);
    }

    @Override // com.google.api.client.http.z
    public final void setTimeout(int i, int i2) {
        this.f31770a.setReadTimeout(i2);
        this.f31770a.setConnectTimeout(i);
    }

    @Override // com.google.api.client.http.z
    public final void setWriteTimeout(int i) throws IOException {
        this.f31771b = i;
    }
}

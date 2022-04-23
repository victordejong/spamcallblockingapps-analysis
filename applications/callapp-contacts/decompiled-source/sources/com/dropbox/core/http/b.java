package com.dropbox.core.http;

import c.ab;
import c.f;
import c.g;
import c.k;
import c.q;
import c.r;
import com.dropbox.core.http.a;
import com.dropbox.core.http.c;
import com.dropbox.core.util.IOUtil;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/b.class */
public final class b extends com.dropbox.core.http.a {

    /* renamed from: c  reason: collision with root package name */
    private final OkHttpClient f17786c;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/b$a.class */
    public static final class a implements Callback {

        /* renamed from: a  reason: collision with root package name */
        private c f17787a;

        /* renamed from: b  reason: collision with root package name */
        private IOException f17788b;

        /* renamed from: c  reason: collision with root package name */
        private Response f17789c;

        private a(c cVar) {
            this.f17787a = cVar;
            this.f17788b = null;
            this.f17789c = null;
        }

        public final Response a() throws IOException {
            IOException iOException;
            Response response;
            synchronized (this) {
                while (true) {
                    iOException = this.f17788b;
                    if (iOException != null || this.f17789c != null) {
                        break;
                    }
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                }
                if (iOException == null) {
                    response = this.f17789c;
                } else {
                    throw iOException;
                }
            }
            return response;
        }

        @Override // okhttp3.Callback
        public final void onFailure(Call call, IOException iOException) {
            synchronized (this) {
                this.f17788b = iOException;
                this.f17787a.close();
                notifyAll();
            }
        }

        @Override // okhttp3.Callback
        public final void onResponse(Call call, Response response) throws IOException {
            synchronized (this) {
                this.f17789c = response;
                notifyAll();
            }
        }
    }

    /* renamed from: com.dropbox.core.http.b$b  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/b$b.class */
    final class C0355b extends a.c {

        /* renamed from: c  reason: collision with root package name */
        private final String f17791c;

        /* renamed from: d  reason: collision with root package name */
        private final Request.Builder f17792d;
        private RequestBody e = null;
        private Call f = null;
        private a g = null;
        private boolean h = false;
        private boolean i = false;

        public C0355b(String str, Request.Builder builder) {
            this.f17791c = str;
            this.f17792d = builder;
        }

        private void a(RequestBody requestBody) {
            d();
            this.e = requestBody;
            this.f17792d.method(this.f17791c, requestBody);
        }

        private void d() {
            if (this.e != null) {
                throw new IllegalStateException("Request body already set.");
            }
        }

        @Override // com.dropbox.core.http.a.c
        public final OutputStream a() {
            RequestBody requestBody = this.e;
            if (requestBody instanceof c) {
                return ((c) requestBody).f17793a.f17798b;
            }
            c cVar = new c();
            if (this.f17785a != null) {
                cVar.f17794b = this.f17785a;
            }
            a(cVar);
            this.g = new a(cVar);
            Call newCall = b.this.f17786c.newCall(this.f17792d.build());
            this.f = newCall;
            newCall.enqueue(this.g);
            return cVar.f17793a.f17798b;
        }

        @Override // com.dropbox.core.http.a.c
        public final void a(byte[] bArr) {
            a(RequestBody.create((MediaType) null, bArr));
        }

        @Override // com.dropbox.core.http.a.c
        public final void b() {
            RequestBody requestBody = this.e;
            if (requestBody != null && (requestBody instanceof Closeable)) {
                try {
                    ((Closeable) requestBody).close();
                } catch (IOException e) {
                }
            }
            this.h = true;
        }

        @Override // com.dropbox.core.http.a.c
        public final a.b c() throws IOException {
            Response a2;
            if (!this.i) {
                if (this.e == null) {
                    a(new byte[0]);
                }
                if (this.g != null) {
                    try {
                        a().close();
                    } catch (IOException e) {
                    }
                    a2 = this.g.a();
                } else {
                    Call newCall = b.this.f17786c.newCall(this.f17792d.build());
                    this.f = newCall;
                    a2 = newCall.execute();
                }
                Response a3 = b.a(a2);
                return new a.b(a3.code(), a3.body().byteStream(), b.a(a3.headers()));
            }
            throw new IllegalStateException("Already aborted");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/b$c.class */
    public static final class c extends RequestBody implements Closeable {

        /* renamed from: a  reason: collision with root package name */
        final c.a f17793a = new c.a();

        /* renamed from: b  reason: collision with root package name */
        IOUtil.a f17794b;

        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/b$c$a.class */
        final class a extends k {

            /* renamed from: b  reason: collision with root package name */
            private long f17796b = 0;

            public a(ab abVar) {
                super(abVar);
            }

            @Override // c.k, c.ab
            public final void write(f fVar, long j) throws IOException {
                super.write(fVar, j);
                this.f17796b += j;
                if (c.this.f17794b != null) {
                    IOUtil.a unused = c.this.f17794b;
                }
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            this.f17793a.close();
        }

        @Override // okhttp3.RequestBody
        public final long contentLength() {
            return -1L;
        }

        @Override // okhttp3.RequestBody
        public final MediaType contentType() {
            return null;
        }

        @Override // okhttp3.RequestBody
        public final void writeTo(g gVar) throws IOException {
            g a2 = r.a(new a(gVar));
            a2.a(q.a(this.f17793a.f17797a));
            a2.flush();
            close();
        }
    }

    public b(OkHttpClient okHttpClient) {
        Objects.requireNonNull(okHttpClient, "client");
        ExecutorService executorService = okHttpClient.dispatcher().executorService();
        Thread currentThread = Thread.currentThread();
        try {
            if (!currentThread.equals((Thread) executorService.submit(new Callable<Thread>() { // from class: com.dropbox.core.http.c.1
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Thread call() throws Exception {
                    return Thread.currentThread();
                }
            }).get(2L, TimeUnit.MINUTES))) {
                this.f17786c = okHttpClient;
                return;
            }
            throw new IllegalArgumentException("OkHttp dispatcher uses same-thread executor. This is not supported by the SDK and may result in dead-locks. Please configure your Dispatcher to use an ExecutorService that runs tasks on separate threads.");
        } catch (InterruptedException e) {
            currentThread.interrupt();
            throw new IllegalArgumentException("Unable to verify OkHttp dispatcher executor.", e);
        } catch (Exception e2) {
            throw new IllegalArgumentException("Unable to verify OkHttp dispatcher executor.", e2);
        }
    }

    static /* synthetic */ Map a(Headers headers) {
        HashMap hashMap = new HashMap(headers.size());
        for (String str : headers.names()) {
            hashMap.put(str, headers.values(str));
        }
        return hashMap;
    }

    public static OkHttpClient a() {
        return new OkHttpClient.Builder().connectTimeout(f17778a, TimeUnit.MILLISECONDS).readTimeout(f17779b, TimeUnit.MILLISECONDS).writeTimeout(f17779b, TimeUnit.MILLISECONDS).sslSocketFactory(SSLConfig.b(), SSLConfig.a()).build();
    }

    protected static Response a(Response response) {
        return response;
    }

    @Override // com.dropbox.core.http.a
    public final a.c a(String str, Iterable<a.C0354a> iterable) throws IOException {
        Request.Builder url = new Request.Builder().url(str);
        for (a.C0354a aVar : iterable) {
            url.addHeader(aVar.f17780a, aVar.f17781b);
        }
        return new C0355b("POST", url);
    }
}

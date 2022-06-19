package com.dropbox.core.http;

import com.dropbox.core.http.AbstractC8582a;
import com.dropbox.core.http.C8592c;
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
import p092c.AbstractC3188ab;
import p092c.AbstractC3206g;
import p092c.AbstractC3211k;
import p092c.C3202f;
import p092c.C3217q;
import p092c.C3218r;
/* renamed from: com.dropbox.core.http.b */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/b.class */
public final class C8586b extends AbstractC8582a {

    /* renamed from: c */
    private final OkHttpClient f30570c;

    /* renamed from: com.dropbox.core.http.b$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/b$a.class */
    public static final class C8588a implements Callback {

        /* renamed from: a */
        private C8590c f30571a;

        /* renamed from: b */
        private IOException f30572b;

        /* renamed from: c */
        private Response f30573c;

        private C8588a(C8590c c8590c) {
            this.f30571a = c8590c;
            this.f30572b = null;
            this.f30573c = null;
        }

        /* renamed from: a */
        public final Response m25297a() throws IOException {
            IOException iOException;
            Response response;
            synchronized (this) {
                while (true) {
                    iOException = this.f30572b;
                    if (iOException != null || this.f30573c != null) {
                        break;
                    }
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                }
                if (iOException != null) {
                    throw iOException;
                }
                response = this.f30573c;
            }
            return response;
        }

        @Override // okhttp3.Callback
        public final void onFailure(Call call, IOException iOException) {
            synchronized (this) {
                this.f30572b = iOException;
                this.f30571a.close();
                notifyAll();
            }
        }

        @Override // okhttp3.Callback
        public final void onResponse(Call call, Response response) throws IOException {
            synchronized (this) {
                this.f30573c = response;
                notifyAll();
            }
        }
    }

    /* renamed from: com.dropbox.core.http.b$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/b$b.class */
    final class C8589b extends AbstractC8582a.AbstractC8585c {

        /* renamed from: c */
        private final String f30575c;

        /* renamed from: d */
        private final Request.Builder f30576d;

        /* renamed from: e */
        private RequestBody f30577e = null;

        /* renamed from: f */
        private Call f30578f = null;

        /* renamed from: g */
        private C8588a f30579g = null;

        /* renamed from: h */
        private boolean f30580h = false;

        /* renamed from: i */
        private boolean f30581i = false;

        public C8589b(String str, Request.Builder builder) {
            C8586b.this = r4;
            this.f30575c = str;
            this.f30576d = builder;
        }

        /* renamed from: a */
        private void m25296a(RequestBody requestBody) {
            m25294d();
            this.f30577e = requestBody;
            this.f30576d.method(this.f30575c, requestBody);
        }

        /* renamed from: d */
        private void m25294d() {
            if (this.f30577e == null) {
                return;
            }
            throw new IllegalStateException("Request body already set.");
        }

        @Override // com.dropbox.core.http.AbstractC8582a.AbstractC8585c
        /* renamed from: a */
        public final OutputStream mo25287a() {
            RequestBody requestBody = this.f30577e;
            if (requestBody instanceof C8590c) {
                return ((C8590c) requestBody).f30582a.f30587b;
            }
            C8590c c8590c = new C8590c();
            if (this.f30569a != null) {
                c8590c.f30583b = this.f30569a;
            }
            m25296a(c8590c);
            this.f30579g = new C8588a(c8590c);
            Call newCall = C8586b.this.f30570c.newCall(this.f30576d.build());
            this.f30578f = newCall;
            newCall.enqueue(this.f30579g);
            return c8590c.f30582a.f30587b;
        }

        @Override // com.dropbox.core.http.AbstractC8582a.AbstractC8585c
        /* renamed from: a */
        public final void mo25295a(byte[] bArr) {
            m25296a(RequestBody.create((MediaType) null, bArr));
        }

        @Override // com.dropbox.core.http.AbstractC8582a.AbstractC8585c
        /* renamed from: b */
        public final void mo25285b() {
            RequestBody requestBody = this.f30577e;
            if (requestBody != null && (requestBody instanceof Closeable)) {
                try {
                    ((Closeable) requestBody).close();
                } catch (IOException e) {
                }
            }
            this.f30580h = true;
        }

        @Override // com.dropbox.core.http.AbstractC8582a.AbstractC8585c
        /* renamed from: c */
        public final AbstractC8582a.C8584b mo25284c() throws IOException {
            Response m25297a;
            if (!this.f30581i) {
                if (this.f30577e == null) {
                    mo25295a(new byte[0]);
                }
                if (this.f30579g != null) {
                    try {
                        mo25287a().close();
                    } catch (IOException e) {
                    }
                    m25297a = this.f30579g.m25297a();
                } else {
                    Call newCall = C8586b.this.f30570c.newCall(this.f30576d.build());
                    this.f30578f = newCall;
                    m25297a = newCall.execute();
                }
                Response m25298a = C8586b.m25298a(m25297a);
                return new AbstractC8582a.C8584b(m25298a.code(), m25298a.body().byteStream(), C8586b.m25299a(m25298a.headers()));
            }
            throw new IllegalStateException("Already aborted");
        }
    }

    /* renamed from: com.dropbox.core.http.b$c */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/b$c.class */
    public static final class C8590c extends RequestBody implements Closeable {

        /* renamed from: a */
        final C8592c.C8594a f30582a = new C8592c.C8594a();

        /* renamed from: b */
        IOUtil.AbstractC8630a f30583b;

        /* renamed from: com.dropbox.core.http.b$c$a */
        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/b$c$a.class */
        final class C8591a extends AbstractC3211k {

            /* renamed from: b */
            private long f30585b = 0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C8591a(AbstractC3188ab abstractC3188ab) {
                super(abstractC3188ab);
                C8590c.this = r5;
            }

            @Override // p092c.AbstractC3211k, p092c.AbstractC3188ab
            public final void write(C3202f c3202f, long j) throws IOException {
                super.write(c3202f, j);
                this.f30585b += j;
                if (C8590c.this.f30583b != null) {
                    IOUtil.AbstractC8630a unused = C8590c.this.f30583b;
                }
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            this.f30582a.close();
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
        public final void writeTo(AbstractC3206g abstractC3206g) throws IOException {
            AbstractC3206g m39151a = C3218r.m39151a(new C8591a(abstractC3206g));
            m39151a.mo39145a(C3217q.m39158a(this.f30582a.f30586a));
            m39151a.flush();
            close();
        }
    }

    public C8586b(OkHttpClient okHttpClient) {
        Objects.requireNonNull(okHttpClient, "client");
        ExecutorService executorService = okHttpClient.dispatcher().executorService();
        Thread currentThread = Thread.currentThread();
        try {
            if (currentThread.equals((Thread) executorService.submit(new Callable<Thread>() { // from class: com.dropbox.core.http.c.1
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Thread call() throws Exception {
                    return Thread.currentThread();
                }
            }).get(2L, TimeUnit.MINUTES))) {
                throw new IllegalArgumentException("OkHttp dispatcher uses same-thread executor. This is not supported by the SDK and may result in dead-locks. Please configure your Dispatcher to use an ExecutorService that runs tasks on separate threads.");
            }
            this.f30570c = okHttpClient;
        } catch (InterruptedException e) {
            currentThread.interrupt();
            throw new IllegalArgumentException("Unable to verify OkHttp dispatcher executor.", e);
        } catch (Exception e2) {
            throw new IllegalArgumentException("Unable to verify OkHttp dispatcher executor.", e2);
        }
    }

    /* renamed from: a */
    static /* synthetic */ Map m25299a(Headers headers) {
        HashMap hashMap = new HashMap(headers.size());
        for (String str : headers.names()) {
            hashMap.put(str, headers.values(str));
        }
        return hashMap;
    }

    /* renamed from: a */
    public static OkHttpClient m25301a() {
        return new OkHttpClient.Builder().connectTimeout(f30562a, TimeUnit.MILLISECONDS).readTimeout(f30563b, TimeUnit.MILLISECONDS).writeTimeout(f30563b, TimeUnit.MILLISECONDS).sslSocketFactory(SSLConfig.m25303b(), SSLConfig.m25311a()).build();
    }

    /* renamed from: a */
    protected static Response m25298a(Response response) {
        return response;
    }

    @Override // com.dropbox.core.http.AbstractC8582a
    /* renamed from: a */
    public final AbstractC8582a.AbstractC8585c mo25291a(String str, Iterable<AbstractC8582a.C8583a> iterable) throws IOException {
        Request.Builder url = new Request.Builder().url(str);
        for (AbstractC8582a.C8583a c8583a : iterable) {
            url.addHeader(c8583a.f30564a, c8583a.f30565b);
        }
        return new C8589b("POST", url);
    }
}

package retrofit2;

import c.f;
import c.h;
import c.l;
import c.r;
import java.io.IOException;
import java.util.Objects;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:retrofit2/j.class */
public final class j<T> implements Call<T> {

    /* renamed from: a  reason: collision with root package name */
    private final o f39469a;

    /* renamed from: b  reason: collision with root package name */
    private final Object[] f39470b;

    /* renamed from: c  reason: collision with root package name */
    private final Call.Factory f39471c;

    /* renamed from: d  reason: collision with root package name */
    private final e<ResponseBody, T> f39472d;
    private volatile boolean e;
    private Call f;
    private Throwable g;
    private boolean h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:retrofit2/j$a.class */
    public static final class a extends ResponseBody {

        /* renamed from: a  reason: collision with root package name */
        IOException f39475a;

        /* renamed from: b  reason: collision with root package name */
        private final ResponseBody f39476b;

        /* renamed from: c  reason: collision with root package name */
        private final h f39477c;

        a(ResponseBody responseBody) {
            this.f39476b = responseBody;
            this.f39477c = r.a(new l(responseBody.source()) { // from class: retrofit2.j.a.1
                @Override // c.l, c.ad
                public final long read(f fVar, long j) throws IOException {
                    try {
                        return super.read(fVar, j);
                    } catch (IOException e) {
                        a.this.f39475a = e;
                        throw e;
                    }
                }
            });
        }

        @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            this.f39476b.close();
        }

        @Override // okhttp3.ResponseBody
        public final long contentLength() {
            return this.f39476b.contentLength();
        }

        @Override // okhttp3.ResponseBody
        public final MediaType contentType() {
            return this.f39476b.contentType();
        }

        @Override // okhttp3.ResponseBody
        public final h source() {
            return this.f39477c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:retrofit2/j$b.class */
    public static final class b extends ResponseBody {

        /* renamed from: a  reason: collision with root package name */
        private final MediaType f39479a;

        /* renamed from: b  reason: collision with root package name */
        private final long f39480b;

        b(MediaType mediaType, long j) {
            this.f39479a = mediaType;
            this.f39480b = j;
        }

        @Override // okhttp3.ResponseBody
        public final long contentLength() {
            return this.f39480b;
        }

        @Override // okhttp3.ResponseBody
        public final MediaType contentType() {
            return this.f39479a;
        }

        @Override // okhttp3.ResponseBody
        public final h source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(o oVar, Object[] objArr, Call.Factory factory, e<ResponseBody, T> eVar) {
        this.f39469a = oVar;
        this.f39470b = objArr;
        this.f39471c = factory;
        this.f39472d = eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public j<T> d() {
        return new j<>(this.f39469a, this.f39470b, this.f39471c, this.f39472d);
    }

    private Call g() throws IOException {
        Call call = this.f;
        if (call != null) {
            return call;
        }
        Throwable th = this.g;
        if (th == null) {
            try {
                Call h = h();
                this.f = h;
                return h;
            } catch (IOException | Error | RuntimeException e) {
                s.a(e);
                this.g = e;
                throw e;
            }
        } else if (th instanceof IOException) {
            throw ((IOException) th);
        } else if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        } else {
            throw ((Error) th);
        }
    }

    private Call h() throws IOException {
        Call newCall = this.f39471c.newCall(this.f39469a.a(this.f39470b));
        Objects.requireNonNull(newCall, "Call.Factory returned null.");
        return newCall;
    }

    @Override // retrofit2.Call
    public final Response<T> a() throws IOException {
        Call g;
        synchronized (this) {
            if (!this.h) {
                this.h = true;
                g = g();
            } else {
                throw new IllegalStateException("Already executed.");
            }
        }
        if (this.e) {
            g.cancel();
        }
        return a(g.execute());
    }

    /* JADX WARN: Finally extract failed */
    final Response<T> a(Response response) throws IOException {
        ResponseBody body = response.body();
        Response build = response.newBuilder().body(new b(body.contentType(), body.contentLength())).build();
        int code = build.code();
        if (code < 200 || code >= 300) {
            try {
                Response<T> a2 = Response.a(s.a(body), build);
                body.close();
                return a2;
            } catch (Throwable th) {
                body.close();
                throw th;
            }
        } else if (code == 204 || code == 205) {
            body.close();
            return Response.a((Object) null, build);
        } else {
            a aVar = new a(body);
            try {
                return Response.a(this.f39472d.a(aVar), build);
            } catch (RuntimeException e) {
                if (aVar.f39475a != null) {
                    throw aVar.f39475a;
                }
                throw e;
            }
        }
    }

    @Override // retrofit2.Call
    public final void a(final c<T> cVar) {
        Call call;
        Throwable th;
        Objects.requireNonNull(cVar, "callback == null");
        synchronized (this) {
            if (!this.h) {
                this.h = true;
                Call call2 = this.f;
                Throwable th2 = this.g;
                call = call2;
                th = th2;
                if (call2 == null) {
                    call = call2;
                    th = th2;
                    if (th2 == null) {
                        call = h();
                        this.f = call;
                        th = th2;
                    }
                }
            } else {
                throw new IllegalStateException("Already executed.");
            }
        }
        if (th != null) {
            cVar.onFailure(this, th);
            return;
        }
        if (this.e) {
            call.cancel();
        }
        call.enqueue(new Callback() { // from class: retrofit2.j.1
            private void a(Throwable th3) {
                try {
                    cVar.onFailure(j.this, th3);
                } catch (Throwable th4) {
                    s.a(th4);
                    th4.printStackTrace();
                }
            }

            @Override // okhttp3.Callback
            public final void onFailure(Call call3, IOException iOException) {
                a(iOException);
            }

            @Override // okhttp3.Callback
            public final void onResponse(Call call3, Response response) {
                try {
                    try {
                        cVar.onResponse(j.this, j.this.a(response));
                    } catch (Throwable th3) {
                        s.a(th3);
                        th3.printStackTrace();
                    }
                } catch (Throwable th4) {
                    s.a(th4);
                    a(th4);
                }
            }
        });
    }

    @Override // retrofit2.Call
    public final void b() {
        Call call;
        this.e = true;
        synchronized (this) {
            call = this.f;
        }
        if (call != null) {
            call.cancel();
        }
    }

    @Override // retrofit2.Call
    public final boolean c() {
        boolean z = true;
        if (this.e) {
            return true;
        }
        synchronized (this) {
            Call call = this.f;
            if (call == null || !call.isCanceled()) {
                z = false;
            }
        }
        return z;
    }

    @Override // retrofit2.Call
    public final Request e() {
        Request request;
        synchronized (this) {
            try {
                request = g().request();
            } catch (IOException e) {
                throw new RuntimeException("Unable to create request.", e);
            }
        }
        return request;
    }
}

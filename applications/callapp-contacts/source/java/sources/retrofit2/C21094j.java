package retrofit2;

import java.io.IOException;
import java.util.Objects;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import p092c.AbstractC3207h;
import p092c.AbstractC3212l;
import p092c.C3202f;
import p092c.C3218r;
/* renamed from: retrofit2.j */
/* loaded from: classes5-dex2jar.jar:retrofit2/j.class */
public final class C21094j<T> implements Call<T> {

    /* renamed from: a */
    private final C21124o f67709a;

    /* renamed from: b */
    private final Object[] f67710b;

    /* renamed from: c */
    private final Call.Factory f67711c;

    /* renamed from: d */
    private final AbstractC21074e<ResponseBody, T> f67712d;

    /* renamed from: e */
    private volatile boolean f67713e;

    /* renamed from: f */
    private Call f67714f;

    /* renamed from: g */
    private Throwable f67715g;

    /* renamed from: h */
    private boolean f67716h;

    /* renamed from: retrofit2.j$a */
    /* loaded from: classes5-dex2jar.jar:retrofit2/j$a.class */
    public static final class C21096a extends ResponseBody {

        /* renamed from: a */
        IOException f67719a;

        /* renamed from: b */
        private final ResponseBody f67720b;

        /* renamed from: c */
        private final AbstractC3207h f67721c;

        C21096a(ResponseBody responseBody) {
            this.f67720b = responseBody;
            this.f67721c = C3218r.m39150a(new AbstractC3212l(responseBody.source()) { // from class: retrofit2.j.a.1
                @Override // p092c.AbstractC3212l, p092c.AbstractC3190ad
                public final long read(C3202f c3202f, long j) throws IOException {
                    try {
                        return super.read(c3202f, j);
                    } catch (IOException e) {
                        C21096a.this.f67719a = e;
                        throw e;
                    }
                }
            });
        }

        @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            this.f67720b.close();
        }

        @Override // okhttp3.ResponseBody
        public final long contentLength() {
            return this.f67720b.contentLength();
        }

        @Override // okhttp3.ResponseBody
        public final MediaType contentType() {
            return this.f67720b.contentType();
        }

        @Override // okhttp3.ResponseBody
        public final AbstractC3207h source() {
            return this.f67721c;
        }
    }

    /* renamed from: retrofit2.j$b */
    /* loaded from: classes5-dex2jar.jar:retrofit2/j$b.class */
    public static final class C21098b extends ResponseBody {

        /* renamed from: a */
        private final MediaType f67723a;

        /* renamed from: b */
        private final long f67724b;

        C21098b(MediaType mediaType, long j) {
            this.f67723a = mediaType;
            this.f67724b = j;
        }

        @Override // okhttp3.ResponseBody
        public final long contentLength() {
            return this.f67724b;
        }

        @Override // okhttp3.ResponseBody
        public final MediaType contentType() {
            return this.f67723a;
        }

        @Override // okhttp3.ResponseBody
        public final AbstractC3207h source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    public C21094j(C21124o c21124o, Object[] objArr, Call.Factory factory, AbstractC21074e<ResponseBody, T> abstractC21074e) {
        this.f67709a = c21124o;
        this.f67710b = objArr;
        this.f67711c = factory;
        this.f67712d = abstractC21074e;
    }

    /* renamed from: f */
    public C21094j<T> mo51d() {
        return new C21094j<>(this.f67709a, this.f67710b, this.f67711c, this.f67712d);
    }

    /* renamed from: g */
    private Call m48g() throws IOException {
        Call call = this.f67714f;
        if (call != null) {
            return call;
        }
        Throwable th = this.f67715g;
        if (th != null) {
            if (th instanceof IOException) {
                throw ((IOException) th);
            }
            if (!(th instanceof RuntimeException)) {
                throw ((Error) th);
            }
            throw ((RuntimeException) th);
        }
        try {
            Call m47h = m47h();
            this.f67714f = m47h;
            return m47h;
        } catch (IOException | Error | RuntimeException e) {
            C21129s.m15a(e);
            this.f67715g = e;
            throw e;
        }
    }

    /* renamed from: h */
    private Call m47h() throws IOException {
        Call newCall = this.f67711c.newCall(this.f67709a.m26a(this.f67710b));
        Objects.requireNonNull(newCall, "Call.Factory returned null.");
        return newCall;
    }

    @Override // retrofit2.Call
    /* renamed from: a */
    public final Response<T> mo56a() throws IOException {
        Call m48g;
        synchronized (this) {
            if (this.f67716h) {
                throw new IllegalStateException("Already executed.");
            }
            this.f67716h = true;
            m48g = m48g();
        }
        if (this.f67713e) {
            m48g.cancel();
        }
        return m55a(m48g.execute());
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    final Response<T> m55a(Response response) throws IOException {
        ResponseBody body = response.body();
        Response build = response.newBuilder().body(new C21098b(body.contentType(), body.contentLength())).build();
        int code = build.code();
        if (code < 200 || code >= 300) {
            try {
                Response<T> m112a = Response.m112a(C21129s.m5a(body), build);
                body.close();
                return m112a;
            } catch (Throwable th) {
                body.close();
                throw th;
            }
        } else if (code == 204 || code == 205) {
            body.close();
            return Response.m113a((Object) null, build);
        } else {
            C21096a c21096a = new C21096a(body);
            try {
                return Response.m113a(this.f67712d.mo44a(c21096a), build);
            } catch (RuntimeException e) {
                if (c21096a.f67719a == null) {
                    throw e;
                }
                throw c21096a.f67719a;
            }
        }
    }

    @Override // retrofit2.Call
    /* renamed from: a */
    public final void mo54a(final AbstractC21067c<T> abstractC21067c) {
        Call call;
        Throwable th;
        Objects.requireNonNull(abstractC21067c, "callback == null");
        synchronized (this) {
            if (this.f67716h) {
                throw new IllegalStateException("Already executed.");
            }
            this.f67716h = true;
            Call call2 = this.f67714f;
            Throwable th2 = this.f67715g;
            call = call2;
            th = th2;
            if (call2 == null) {
                call = call2;
                th = th2;
                if (th2 == null) {
                    call = m47h();
                    this.f67714f = call;
                    th = th2;
                }
            }
        }
        if (th != null) {
            abstractC21067c.onFailure(this, th);
            return;
        }
        if (this.f67713e) {
            call.cancel();
        }
        call.enqueue(new Callback() { // from class: retrofit2.j.1
            /* renamed from: a */
            private void m46a(Throwable th3) {
                try {
                    abstractC21067c.onFailure(C21094j.this, th3);
                } catch (Throwable th4) {
                    C21129s.m15a(th4);
                    th4.printStackTrace();
                }
            }

            @Override // okhttp3.Callback
            public final void onFailure(Call call3, IOException iOException) {
                m46a(iOException);
            }

            @Override // okhttp3.Callback
            public final void onResponse(Call call3, Response response) {
                try {
                    try {
                        abstractC21067c.onResponse(C21094j.this, C21094j.this.m55a(response));
                    } catch (Throwable th3) {
                        C21129s.m15a(th3);
                        th3.printStackTrace();
                    }
                } catch (Throwable th4) {
                    C21129s.m15a(th4);
                    m46a(th4);
                }
            }
        });
    }

    @Override // retrofit2.Call
    /* renamed from: b */
    public final void mo53b() {
        Call call;
        this.f67713e = true;
        synchronized (this) {
            call = this.f67714f;
        }
        if (call != null) {
            call.cancel();
        }
    }

    @Override // retrofit2.Call
    /* renamed from: c */
    public final boolean mo52c() {
        boolean z = true;
        if (this.f67713e) {
            return true;
        }
        synchronized (this) {
            Call call = this.f67714f;
            if (call == null || !call.isCanceled()) {
                z = false;
            }
        }
        return z;
    }

    @Override // retrofit2.Call
    /* renamed from: e */
    public final Request mo50e() {
        Request request;
        synchronized (this) {
            try {
                request = m48g().request();
            } catch (IOException e) {
                throw new RuntimeException("Unable to create request.", e);
            }
        }
        return request;
    }
}

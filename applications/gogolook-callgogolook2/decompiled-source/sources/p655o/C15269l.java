package p655o;

import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import java.io.IOException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import p645m.AbstractC15174e;
import p645m.AbstractC15177h;
import p645m.AbstractC15193s;
import p645m.C15170c;
import p645m.C15181l;
/* renamed from: o.l */
/* loaded from: classes3-dex2jar.jar:o/l.class */
public final class C15269l<T> implements AbstractC15235b<T> {

    /* renamed from: a */
    public final C15297q f33290a;

    /* renamed from: b */
    public final Object[] f33291b;

    /* renamed from: c */
    public final Call.Factory f33292c;

    /* renamed from: d */
    public final AbstractC15246f<ResponseBody, T> f33293d;

    /* renamed from: e */
    public volatile boolean f33294e;
    @GuardedBy("this")
    @Nullable

    /* renamed from: f */
    public Call f33295f;
    @GuardedBy("this")
    @Nullable

    /* renamed from: g */
    public Throwable f33296g;
    @GuardedBy("this")

    /* renamed from: h */
    public boolean f33297h;

    /* renamed from: o.l$a */
    /* loaded from: classes3-dex2jar.jar:o/l$a.class */
    public class C15270a implements Callback {

        /* renamed from: a */
        public final /* synthetic */ AbstractC15238d f33298a;

        public C15270a(AbstractC15238d dVar) {
            this.f33298a = dVar;
        }

        /* renamed from: a */
        public final void m138a(Throwable th) {
            try {
                this.f33298a.onFailure(C15269l.this, th);
            } catch (Throwable th2) {
                C15306w.m65a(th2);
                th2.printStackTrace();
            }
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            m138a(iOException);
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) {
            try {
                try {
                    this.f33298a.onResponse(C15269l.this, C15269l.this.m139a(response));
                } catch (Throwable th) {
                    C15306w.m65a(th);
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                C15306w.m65a(th2);
                m138a(th2);
            }
        }
    }

    /* renamed from: o.l$b */
    /* loaded from: classes3-dex2jar.jar:o/l$b.class */
    public static final class C15271b extends ResponseBody {

        /* renamed from: a */
        public final ResponseBody f33300a;

        /* renamed from: b */
        public final AbstractC15174e f33301b;
        @Nullable

        /* renamed from: c */
        public IOException f33302c;

        /* renamed from: o.l$b$a */
        /* loaded from: classes3-dex2jar.jar:o/l$b$a.class */
        public class C15272a extends AbstractC15177h {
            public C15272a(AbstractC15193s sVar) {
                super(sVar);
            }

            @Override // p645m.AbstractC15177h, p645m.AbstractC15193s
            public long read(C15170c cVar, long j) throws IOException {
                try {
                    return super.read(cVar, j);
                } catch (IOException e) {
                    C15271b.this.f33302c = e;
                    throw e;
                }
            }
        }

        public C15271b(ResponseBody responseBody) {
            this.f33300a = responseBody;
            this.f33301b = C15181l.m318a(new C15272a(responseBody.source()));
        }

        /* renamed from: a */
        public void m137a() throws IOException {
            IOException iOException = this.f33302c;
            if (iOException != null) {
                throw iOException;
            }
        }

        @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f33300a.close();
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.f33300a.contentLength();
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            return this.f33300a.contentType();
        }

        @Override // okhttp3.ResponseBody
        public AbstractC15174e source() {
            return this.f33301b;
        }
    }

    /* renamed from: o.l$c */
    /* loaded from: classes3-dex2jar.jar:o/l$c.class */
    public static final class C15273c extends ResponseBody {
        @Nullable

        /* renamed from: a */
        public final MediaType f33304a;

        /* renamed from: b */
        public final long f33305b;

        public C15273c(@Nullable MediaType mediaType, long j) {
            this.f33304a = mediaType;
            this.f33305b = j;
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.f33305b;
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            return this.f33304a;
        }

        @Override // okhttp3.ResponseBody
        public AbstractC15174e source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    public C15269l(C15297q qVar, Object[] objArr, Call.Factory factory, AbstractC15246f<ResponseBody, T> fVar) {
        this.f33290a = qVar;
        this.f33291b = objArr;
        this.f33292c = factory;
        this.f33293d = fVar;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public C15299r<T> m139a(Response response) throws IOException {
        ResponseBody body = response.body();
        Response.Builder newBuilder = response.newBuilder();
        newBuilder.body(new C15273c(body.contentType(), body.contentLength()));
        Response build = newBuilder.build();
        int code = build.code();
        if (code < 200 || code >= 300) {
            try {
                C15299r<T> a = C15299r.m93a(C15306w.m54a(body), build);
                body.close();
                return a;
            } catch (Throwable th) {
                body.close();
                throw th;
            }
        } else if (code == 204 || code == 205) {
            body.close();
            return C15299r.m94a((Object) null, build);
        } else {
            C15271b bVar = new C15271b(body);
            try {
                return C15299r.m94a(this.f33293d.convert(bVar), build);
            } catch (RuntimeException e) {
                bVar.m137a();
                throw e;
            }
        }
    }

    /* renamed from: a */
    public final Call m141a() throws IOException {
        Call newCall = this.f33292c.newCall(this.f33290a.m106a(this.f33291b));
        if (newCall != null) {
            return newCall;
        }
        throw new NullPointerException("Call.Factory returned null.");
    }

    @Override // p655o.AbstractC15235b
    /* renamed from: a */
    public void mo140a(AbstractC15238d<T> dVar) {
        Call call;
        Throwable th;
        C15306w.m66a(dVar, "callback == null");
        synchronized (this) {
            if (!this.f33297h) {
                this.f33297h = true;
                Call call2 = this.f33295f;
                Throwable th2 = this.f33296g;
                call = call2;
                th = th2;
                if (call2 == null) {
                    call = call2;
                    th = th2;
                    if (th2 == null) {
                        call = m141a();
                        this.f33295f = call;
                        th = th2;
                    }
                }
            } else {
                throw new IllegalStateException("Already executed.");
            }
        }
        if (th != null) {
            dVar.onFailure(this, th);
            return;
        }
        if (this.f33294e) {
            call.cancel();
        }
        FirebasePerfOkHttpClient.enqueue(call, new C15270a(dVar));
    }

    @Override // p655o.AbstractC15235b
    public void cancel() {
        Call call;
        this.f33294e = true;
        synchronized (this) {
            call = this.f33295f;
        }
        if (call != null) {
            call.cancel();
        }
    }

    @Override // p655o.AbstractC15235b
    public C15269l<T> clone() {
        return new C15269l<>(this.f33290a, this.f33291b, this.f33292c, this.f33293d);
    }

    @Override // p655o.AbstractC15235b
    public C15299r<T> execute() throws IOException {
        Call call;
        synchronized (this) {
            if (!this.f33297h) {
                this.f33297h = true;
                if (this.f33296g == null) {
                    Call call2 = this.f33295f;
                    call = call2;
                    if (call2 == null) {
                        try {
                            call = m141a();
                            this.f33295f = call;
                        } catch (IOException | Error | RuntimeException e) {
                            C15306w.m65a(e);
                            this.f33296g = e;
                            throw e;
                        }
                    }
                } else if (this.f33296g instanceof IOException) {
                    throw ((IOException) this.f33296g);
                } else if (this.f33296g instanceof RuntimeException) {
                    throw ((RuntimeException) this.f33296g);
                } else {
                    throw ((Error) this.f33296g);
                }
            } else {
                throw new IllegalStateException("Already executed.");
            }
        }
        if (this.f33294e) {
            call.cancel();
        }
        return m139a(FirebasePerfOkHttpClient.execute(call));
    }

    @Override // p655o.AbstractC15235b
    public boolean isCanceled() {
        boolean z = true;
        if (this.f33294e) {
            return true;
        }
        synchronized (this) {
            if (this.f33295f == null || !this.f33295f.isCanceled()) {
                z = false;
            }
        }
        return z;
    }

    @Override // p655o.AbstractC15235b
    public Request request() {
        Throwable e;
        synchronized (this) {
            Call call = this.f33295f;
            if (call != null) {
                return call.request();
            } else if (this.f33296g == null) {
                try {
                    Call a = m141a();
                    this.f33295f = a;
                    return a.request();
                } catch (IOException e2) {
                    this.f33296g = e2;
                    throw new RuntimeException("Unable to create request.", e2);
                } catch (Error e3) {
                    e = e3;
                    C15306w.m65a(e);
                    this.f33296g = e;
                    throw e;
                } catch (RuntimeException e4) {
                    e = e4;
                    C15306w.m65a(e);
                    this.f33296g = e;
                    throw e;
                }
            } else if (this.f33296g instanceof IOException) {
                throw new RuntimeException("Unable to create request.", this.f33296g);
            } else if (this.f33296g instanceof RuntimeException) {
                throw ((RuntimeException) this.f33296g);
            } else {
                throw ((Error) this.f33296g);
            }
        }
    }
}

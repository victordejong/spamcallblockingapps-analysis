package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Objects;
import java.util.concurrent.Executor;
import okhttp3.Request;
import retrofit2.b;
import retrofit2.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:retrofit2/f.class */
public final class f extends b.a {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f39441a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:retrofit2/f$a.class */
    public static final class a<T> implements Call<T> {

        /* renamed from: a  reason: collision with root package name */
        final Executor f39445a;

        /* renamed from: b  reason: collision with root package name */
        final Call<T> f39446b;

        /* renamed from: retrofit2.f$a$1  reason: invalid class name */
        /* loaded from: classes5-dex2jar.jar:retrofit2/f$a$1.class */
        final class AnonymousClass1 implements c<T> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ c f39447a;

            AnonymousClass1(c cVar) {
                this.f39447a = cVar;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void a(c cVar, Throwable th) {
                cVar.onFailure(a.this, th);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void a(c cVar, Response response) {
                if (a.this.f39446b.c()) {
                    cVar.onFailure(a.this, new IOException("Canceled"));
                } else {
                    cVar.onResponse(a.this, response);
                }
            }

            @Override // retrofit2.c
            public final void onFailure(Call<T> call, final Throwable th) {
                Executor executor = a.this.f39445a;
                final c cVar = this.f39447a;
                executor.execute(new Runnable() { // from class: retrofit2._$$Lambda$f$a$1$9MPuvbCESJ40q8vfxim_3usom3M
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.a.AnonymousClass1.this.a(cVar, th);
                    }
                });
            }

            @Override // retrofit2.c
            public final void onResponse(Call<T> call, final Response<T> response) {
                Executor executor = a.this.f39445a;
                final c cVar = this.f39447a;
                executor.execute(new Runnable() { // from class: retrofit2._$$Lambda$f$a$1$T5NSBM5vmQRcl2ORC2KeY7XbazE
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.a.AnonymousClass1.this.a(cVar, response);
                    }
                });
            }
        }

        a(Executor executor, Call<T> call) {
            this.f39445a = executor;
            this.f39446b = call;
        }

        @Override // retrofit2.Call
        public final Response<T> a() throws IOException {
            return this.f39446b.a();
        }

        @Override // retrofit2.Call
        public final void a(c<T> cVar) {
            Objects.requireNonNull(cVar, "callback == null");
            this.f39446b.a(new AnonymousClass1(cVar));
        }

        @Override // retrofit2.Call
        public final void b() {
            this.f39446b.b();
        }

        @Override // retrofit2.Call
        public final boolean c() {
            return this.f39446b.c();
        }

        @Override // retrofit2.Call
        /* renamed from: d */
        public final Call<T> clone() {
            return new a(this.f39445a, this.f39446b.d());
        }

        @Override // retrofit2.Call
        public final Request e() {
            return this.f39446b.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Executor executor) {
        this.f39441a = executor;
    }

    @Override // retrofit2.b.a
    public final b<?, ?> a(Type type, Annotation[] annotationArr) {
        Class<?> a2 = s.a(type);
        final Executor executor = null;
        if (a2 != Call.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            final Type a3 = s.a(0, (ParameterizedType) type);
            if (!s.a(annotationArr, q.class)) {
                executor = this.f39441a;
            }
            return new b<Object, Call<?>>() { // from class: retrofit2.f.1
                @Override // retrofit2.b
                public final /* synthetic */ Call<?> a(Call<Object> call) {
                    Executor executor2 = executor;
                    return executor2 == null ? call : new a(executor2, call);
                }

                @Override // retrofit2.b
                public final Type a() {
                    return a3;
                }
            };
        }
        throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
    }
}

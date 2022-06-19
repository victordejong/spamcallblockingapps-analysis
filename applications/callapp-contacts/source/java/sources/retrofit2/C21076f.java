package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Objects;
import java.util.concurrent.Executor;
import okhttp3.Request;
import retrofit2.AbstractC21040b;
import retrofit2.C21076f;
/* renamed from: retrofit2.f */
/* loaded from: classes5-dex2jar.jar:retrofit2/f.class */
public final class C21076f extends AbstractC21040b.AbstractC21041a {

    /* renamed from: a */
    private final Executor f67681a;

    /* renamed from: retrofit2.f$a */
    /* loaded from: classes5-dex2jar.jar:retrofit2/f$a.class */
    public static final class C21078a<T> implements Call<T> {

        /* renamed from: a */
        final Executor f67685a;

        /* renamed from: b */
        final Call<T> f67686b;

        /* renamed from: retrofit2.f$a$1 */
        /* loaded from: classes5-dex2jar.jar:retrofit2/f$a$1.class */
        public final class C210791 implements AbstractC21067c<T> {

            /* renamed from: a */
            final /* synthetic */ AbstractC21067c f67687a;

            C210791(AbstractC21067c abstractC21067c) {
                C21078a.this = r4;
                this.f67687a = abstractC21067c;
            }

            /* renamed from: a */
            public /* synthetic */ void m64a(AbstractC21067c abstractC21067c, Throwable th) {
                abstractC21067c.onFailure(C21078a.this, th);
            }

            /* renamed from: a */
            public /* synthetic */ void m63a(AbstractC21067c abstractC21067c, Response response) {
                if (C21078a.this.f67686b.mo52c()) {
                    abstractC21067c.onFailure(C21078a.this, new IOException("Canceled"));
                } else {
                    abstractC21067c.onResponse(C21078a.this, response);
                }
            }

            @Override // retrofit2.AbstractC21067c
            public final void onFailure(Call<T> call, final Throwable th) {
                Executor executor = C21078a.this.f67685a;
                final AbstractC21067c abstractC21067c = this.f67687a;
                executor.execute(new Runnable() { // from class: retrofit2._$$Lambda$f$a$1$9MPuvbCESJ40q8vfxim_3usom3M
                    @Override // java.lang.Runnable
                    public final void run() {
                        C21076f.C21078a.C210791.this.m64a(abstractC21067c, th);
                    }
                });
            }

            @Override // retrofit2.AbstractC21067c
            public final void onResponse(Call<T> call, final Response<T> response) {
                Executor executor = C21078a.this.f67685a;
                final AbstractC21067c abstractC21067c = this.f67687a;
                executor.execute(new Runnable() { // from class: retrofit2._$$Lambda$f$a$1$T5NSBM5vmQRcl2ORC2KeY7XbazE
                    @Override // java.lang.Runnable
                    public final void run() {
                        C21076f.C21078a.C210791.this.m63a(abstractC21067c, response);
                    }
                });
            }
        }

        C21078a(Executor executor, Call<T> call) {
            this.f67685a = executor;
            this.f67686b = call;
        }

        @Override // retrofit2.Call
        /* renamed from: a */
        public final Response<T> mo56a() throws IOException {
            return this.f67686b.mo56a();
        }

        @Override // retrofit2.Call
        /* renamed from: a */
        public final void mo54a(AbstractC21067c<T> abstractC21067c) {
            Objects.requireNonNull(abstractC21067c, "callback == null");
            this.f67686b.mo54a(new C210791(abstractC21067c));
        }

        @Override // retrofit2.Call
        /* renamed from: b */
        public final void mo53b() {
            this.f67686b.mo53b();
        }

        @Override // retrofit2.Call
        /* renamed from: c */
        public final boolean mo52c() {
            return this.f67686b.mo52c();
        }

        @Override // retrofit2.Call
        /* renamed from: d */
        public final Call<T> clone() {
            return new C21078a(this.f67685a, this.f67686b.mo51d());
        }

        @Override // retrofit2.Call
        /* renamed from: e */
        public final Request mo50e() {
            return this.f67686b.mo50e();
        }
    }

    public C21076f(Executor executor) {
        this.f67681a = executor;
    }

    @Override // retrofit2.AbstractC21040b.AbstractC21041a
    /* renamed from: a */
    public final AbstractC21040b<?, ?> mo67a(Type type, Annotation[] annotationArr) {
        if (C21129s.m9a(type) != Call.class) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
        }
        final Type m16a = C21129s.m16a(0, (ParameterizedType) type);
        final Executor executor = C21129s.m4a(annotationArr, AbstractC21127q.class) ? null : this.f67681a;
        return new AbstractC21040b<Object, Call<?>>() { // from class: retrofit2.f.1
            @Override // retrofit2.AbstractC21040b
            /* renamed from: a */
            public final /* synthetic */ Call<?> mo65a(Call<Object> call) {
                Executor executor2 = executor;
                return executor2 == null ? call : new C21078a(executor2, call);
            }

            @Override // retrofit2.AbstractC21040b
            /* renamed from: a */
            public final Type mo66a() {
                return m16a;
            }
        };
    }
}

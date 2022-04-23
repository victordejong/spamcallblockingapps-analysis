package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.CompletableFuture;
import retrofit2.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:retrofit2/d.class */
public final class d extends b.a {

    /* renamed from: a  reason: collision with root package name */
    static final b.a f39433a = new d();

    /* loaded from: classes5-dex2jar.jar:retrofit2/d$a.class */
    static final class a<R> implements retrofit2.b<R, CompletableFuture<R>> {

        /* renamed from: a  reason: collision with root package name */
        private final Type f39434a;

        a(Type type) {
            this.f39434a = type;
        }

        @Override // retrofit2.b
        public final /* synthetic */ Object a(Call call) {
            final b bVar = new b(call);
            call.a(new retrofit2.c<R>() { // from class: retrofit2.d.a.1
                @Override // retrofit2.c
                public final void onFailure(Call<R> call2, Throwable th) {
                    bVar.completeExceptionally(th);
                }

                @Override // retrofit2.c
                public final void onResponse(Call<R> call2, Response<R> response) {
                    if (response.f39404a.isSuccessful()) {
                        bVar.complete(response.f39405b);
                    } else {
                        bVar.completeExceptionally(new HttpException(response));
                    }
                }
            });
            return bVar;
        }

        @Override // retrofit2.b
        public final Type a() {
            return this.f39434a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/d$b.class */
    static final class b<T> extends CompletableFuture<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Call<?> f39437a;

        b(Call<?> call) {
            this.f39437a = call;
        }

        @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            if (z) {
                this.f39437a.b();
            }
            return super.cancel(z);
        }
    }

    /* loaded from: classes5-dex2jar.jar:retrofit2/d$c.class */
    static final class c<R> implements retrofit2.b<R, CompletableFuture<Response<R>>> {

        /* renamed from: a  reason: collision with root package name */
        private final Type f39438a;

        c(Type type) {
            this.f39438a = type;
        }

        @Override // retrofit2.b
        public final /* synthetic */ Object a(Call call) {
            final b bVar = new b(call);
            call.a(new retrofit2.c<R>() { // from class: retrofit2.d.c.1
                @Override // retrofit2.c
                public final void onFailure(Call<R> call2, Throwable th) {
                    bVar.completeExceptionally(th);
                }

                @Override // retrofit2.c
                public final void onResponse(Call<R> call2, Response<R> response) {
                    bVar.complete(response);
                }
            });
            return bVar;
        }

        @Override // retrofit2.b
        public final Type a() {
            return this.f39438a;
        }
    }

    d() {
    }

    @Override // retrofit2.b.a
    public final retrofit2.b<?, ?> a(Type type, Annotation[] annotationArr) {
        if (s.a(type) != CompletableFuture.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            Type a2 = s.a(0, (ParameterizedType) type);
            if (s.a(a2) != Response.class) {
                return new a(a2);
            }
            if (a2 instanceof ParameterizedType) {
                return new c(s.a(0, (ParameterizedType) a2));
            }
            throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
        }
        throw new IllegalStateException("CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>");
    }
}

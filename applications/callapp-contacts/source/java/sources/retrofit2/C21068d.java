package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.CompletableFuture;
import retrofit2.AbstractC21040b;
/* renamed from: retrofit2.d */
/* loaded from: classes5-dex2jar.jar:retrofit2/d.class */
public final class C21068d extends AbstractC21040b.AbstractC21041a {

    /* renamed from: a */
    static final AbstractC21040b.AbstractC21041a f67673a = new C21068d();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: retrofit2.d$a */
    /* loaded from: classes5-dex2jar.jar:retrofit2/d$a.class */
    public static final class C21069a<R> implements AbstractC21040b<R, CompletableFuture<R>> {

        /* renamed from: a */
        private final Type f67674a;

        C21069a(Type type) {
            this.f67674a = type;
        }

        @Override // retrofit2.AbstractC21040b
        /* renamed from: a */
        public final /* synthetic */ Object mo65a(Call call) {
            final C21071b c21071b = new C21071b(call);
            call.mo54a(new AbstractC21067c<R>() { // from class: retrofit2.d.a.1
                @Override // retrofit2.AbstractC21067c
                public final void onFailure(Call<R> call2, Throwable th) {
                    c21071b.completeExceptionally(th);
                }

                @Override // retrofit2.AbstractC21067c
                public final void onResponse(Call<R> call2, Response<R> response) {
                    if (response.f67638a.isSuccessful()) {
                        c21071b.complete(response.f67639b);
                    } else {
                        c21071b.completeExceptionally(new HttpException(response));
                    }
                }
            });
            return c21071b;
        }

        @Override // retrofit2.AbstractC21040b
        /* renamed from: a */
        public final Type mo66a() {
            return this.f67674a;
        }
    }

    /* renamed from: retrofit2.d$b */
    /* loaded from: classes5-dex2jar.jar:retrofit2/d$b.class */
    static final class C21071b<T> extends CompletableFuture<T> {

        /* renamed from: a */
        private final Call<?> f67677a;

        C21071b(Call<?> call) {
            this.f67677a = call;
        }

        @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            if (z) {
                this.f67677a.mo53b();
            }
            return super.cancel(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: retrofit2.d$c */
    /* loaded from: classes5-dex2jar.jar:retrofit2/d$c.class */
    public static final class C21072c<R> implements AbstractC21040b<R, CompletableFuture<Response<R>>> {

        /* renamed from: a */
        private final Type f67678a;

        C21072c(Type type) {
            this.f67678a = type;
        }

        @Override // retrofit2.AbstractC21040b
        /* renamed from: a */
        public final /* synthetic */ Object mo65a(Call call) {
            final C21071b c21071b = new C21071b(call);
            call.mo54a(new AbstractC21067c<R>() { // from class: retrofit2.d.c.1
                @Override // retrofit2.AbstractC21067c
                public final void onFailure(Call<R> call2, Throwable th) {
                    c21071b.completeExceptionally(th);
                }

                @Override // retrofit2.AbstractC21067c
                public final void onResponse(Call<R> call2, Response<R> response) {
                    c21071b.complete(response);
                }
            });
            return c21071b;
        }

        @Override // retrofit2.AbstractC21040b
        /* renamed from: a */
        public final Type mo66a() {
            return this.f67678a;
        }
    }

    C21068d() {
    }

    @Override // retrofit2.AbstractC21040b.AbstractC21041a
    /* renamed from: a */
    public final AbstractC21040b<?, ?> mo67a(Type type, Annotation[] annotationArr) {
        if (C21129s.m9a(type) != CompletableFuture.class) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            throw new IllegalStateException("CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>");
        }
        Type m16a = C21129s.m16a(0, (ParameterizedType) type);
        if (C21129s.m9a(m16a) != Response.class) {
            return new C21069a(m16a);
        }
        if (!(m16a instanceof ParameterizedType)) {
            throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
        }
        return new C21072c(C21129s.m16a(0, (ParameterizedType) m16a));
    }
}

package p655o;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.CompletableFuture;
import javax.annotation.Nullable;
import p655o.AbstractC15236c;
/* renamed from: o.e */
/* loaded from: classes3-dex2jar.jar:o/e.class */
public final class C15239e extends AbstractC15236c.AbstractC15237a {

    /* renamed from: a */
    public static final AbstractC15236c.AbstractC15237a f33252a = new C15239e();

    /* renamed from: o.e$a */
    /* loaded from: classes3-dex2jar.jar:o/e$a.class */
    public static final class C15240a<R> implements AbstractC15236c<R, CompletableFuture<R>> {

        /* renamed from: a */
        public final Type f33253a;

        /* renamed from: o.e$a$a */
        /* loaded from: classes3-dex2jar.jar:o/e$a$a.class */
        public class C15241a extends CompletableFuture<R> {

            /* renamed from: a */
            public final /* synthetic */ AbstractC15235b f33254a;

            public C15241a(C15240a aVar, AbstractC15235b bVar) {
                this.f33254a = bVar;
            }

            @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
            public boolean cancel(boolean z) {
                if (z) {
                    this.f33254a.cancel();
                }
                return super.cancel(z);
            }
        }

        /* renamed from: o.e$a$b */
        /* loaded from: classes3-dex2jar.jar:o/e$a$b.class */
        public class C15242b implements AbstractC15238d<R> {

            /* renamed from: a */
            public final /* synthetic */ CompletableFuture f33255a;

            public C15242b(C15240a aVar, CompletableFuture completableFuture) {
                this.f33255a = completableFuture;
            }

            @Override // p655o.AbstractC15238d
            public void onFailure(AbstractC15235b<R> bVar, Throwable th) {
                this.f33255a.completeExceptionally(th);
            }

            @Override // p655o.AbstractC15238d
            public void onResponse(AbstractC15235b<R> bVar, C15299r<R> rVar) {
                if (rVar.m90d()) {
                    this.f33255a.complete(rVar.m95a());
                } else {
                    this.f33255a.completeExceptionally(new C15254h(rVar));
                }
            }
        }

        public C15240a(Type type) {
            this.f33253a = type;
        }

        @Override // p655o.AbstractC15236c
        /* renamed from: a */
        public Type mo153a() {
            return this.f33253a;
        }

        @Override // p655o.AbstractC15236c
        /* renamed from: a */
        public CompletableFuture<R> mo152a(AbstractC15235b<R> bVar) {
            C15241a aVar = new C15241a(this, bVar);
            bVar.mo140a(new C15242b(this, aVar));
            return aVar;
        }
    }

    /* renamed from: o.e$b */
    /* loaded from: classes3-dex2jar.jar:o/e$b.class */
    public static final class C15243b<R> implements AbstractC15236c<R, CompletableFuture<C15299r<R>>> {

        /* renamed from: a */
        public final Type f33256a;

        /* renamed from: o.e$b$a */
        /* loaded from: classes3-dex2jar.jar:o/e$b$a.class */
        public class C15244a extends CompletableFuture<C15299r<R>> {

            /* renamed from: a */
            public final /* synthetic */ AbstractC15235b f33257a;

            public C15244a(C15243b bVar, AbstractC15235b bVar2) {
                this.f33257a = bVar2;
            }

            @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
            public boolean cancel(boolean z) {
                if (z) {
                    this.f33257a.cancel();
                }
                return super.cancel(z);
            }
        }

        /* renamed from: o.e$b$b */
        /* loaded from: classes3-dex2jar.jar:o/e$b$b.class */
        public class C15245b implements AbstractC15238d<R> {

            /* renamed from: a */
            public final /* synthetic */ CompletableFuture f33258a;

            public C15245b(C15243b bVar, CompletableFuture completableFuture) {
                this.f33258a = completableFuture;
            }

            @Override // p655o.AbstractC15238d
            public void onFailure(AbstractC15235b<R> bVar, Throwable th) {
                this.f33258a.completeExceptionally(th);
            }

            @Override // p655o.AbstractC15238d
            public void onResponse(AbstractC15235b<R> bVar, C15299r<R> rVar) {
                this.f33258a.complete(rVar);
            }
        }

        public C15243b(Type type) {
            this.f33256a = type;
        }

        @Override // p655o.AbstractC15236c
        /* renamed from: a */
        public Type mo153a() {
            return this.f33256a;
        }

        @Override // p655o.AbstractC15236c
        /* renamed from: a */
        public CompletableFuture<C15299r<R>> mo152a(AbstractC15235b<R> bVar) {
            C15244a aVar = new C15244a(this, bVar);
            bVar.mo140a(new C15245b(this, aVar));
            return aVar;
        }
    }

    @Override // p655o.AbstractC15236c.AbstractC15237a
    @Nullable
    /* renamed from: a */
    public AbstractC15236c<?, ?> mo154a(Type type, Annotation[] annotationArr, C15300s sVar) {
        if (AbstractC15236c.AbstractC15237a.m158a(type) != CompletableFuture.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            Type a = AbstractC15236c.AbstractC15237a.m159a(0, (ParameterizedType) type);
            if (AbstractC15236c.AbstractC15237a.m158a(a) != C15299r.class) {
                return new C15240a(a);
            }
            if (a instanceof ParameterizedType) {
                return new C15243b(AbstractC15236c.AbstractC15237a.m159a(0, (ParameterizedType) a));
            }
            throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
        }
        throw new IllegalStateException("CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>");
    }
}

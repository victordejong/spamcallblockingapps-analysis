package p655o;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import okhttp3.Request;
import p655o.AbstractC15236c;
/* renamed from: o.g */
/* loaded from: classes3-dex2jar.jar:o/g.class */
public final class C15248g extends AbstractC15236c.AbstractC15237a {
    @Nullable

    /* renamed from: a */
    public final Executor f33259a;

    /* renamed from: o.g$a */
    /* loaded from: classes3-dex2jar.jar:o/g$a.class */
    public class C15249a implements AbstractC15236c<Object, AbstractC15235b<?>> {

        /* renamed from: a */
        public final /* synthetic */ Type f33260a;

        /* renamed from: b */
        public final /* synthetic */ Executor f33261b;

        public C15249a(C15248g gVar, Type type, Executor executor) {
            this.f33260a = type;
            this.f33261b = executor;
        }

        @Override // p655o.AbstractC15236c
        /* renamed from: a */
        public Type mo153a() {
            return this.f33260a;
        }

        @Override // p655o.AbstractC15236c
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public AbstractC15235b<?> mo152a(AbstractC15235b<Object> bVar) {
            Executor executor = this.f33261b;
            if (executor != null) {
                bVar = new C15250b<>(executor, bVar);
            }
            return bVar;
        }
    }

    /* renamed from: o.g$b */
    /* loaded from: classes3-dex2jar.jar:o/g$b.class */
    public static final class C15250b<T> implements AbstractC15235b<T> {

        /* renamed from: a */
        public final Executor f33262a;

        /* renamed from: b */
        public final AbstractC15235b<T> f33263b;

        /* renamed from: o.g$b$a */
        /* loaded from: classes3-dex2jar.jar:o/g$b$a.class */
        public class C15251a implements AbstractC15238d<T> {

            /* renamed from: a */
            public final /* synthetic */ AbstractC15238d f33264a;

            /* renamed from: o.g$b$a$a */
            /* loaded from: classes3-dex2jar.jar:o/g$b$a$a.class */
            public class RunnableC15252a implements Runnable {

                /* renamed from: a */
                public final /* synthetic */ C15299r f33266a;

                public RunnableC15252a(C15299r rVar) {
                    this.f33266a = rVar;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (C15250b.this.f33263b.isCanceled()) {
                        C15251a aVar = C15251a.this;
                        aVar.f33264a.onFailure(C15250b.this, new IOException("Canceled"));
                        return;
                    }
                    C15251a aVar2 = C15251a.this;
                    aVar2.f33264a.onResponse(C15250b.this, this.f33266a);
                }
            }

            /* renamed from: o.g$b$a$b */
            /* loaded from: classes3-dex2jar.jar:o/g$b$a$b.class */
            public class RunnableC15253b implements Runnable {

                /* renamed from: a */
                public final /* synthetic */ Throwable f33268a;

                public RunnableC15253b(Throwable th) {
                    this.f33268a = th;
                }

                @Override // java.lang.Runnable
                public void run() {
                    C15251a aVar = C15251a.this;
                    aVar.f33264a.onFailure(C15250b.this, this.f33268a);
                }
            }

            public C15251a(AbstractC15238d dVar) {
                this.f33264a = dVar;
            }

            @Override // p655o.AbstractC15238d
            public void onFailure(AbstractC15235b<T> bVar, Throwable th) {
                C15250b.this.f33262a.execute(new RunnableC15253b(th));
            }

            @Override // p655o.AbstractC15238d
            public void onResponse(AbstractC15235b<T> bVar, C15299r<T> rVar) {
                C15250b.this.f33262a.execute(new RunnableC15252a(rVar));
            }
        }

        public C15250b(Executor executor, AbstractC15235b<T> bVar) {
            this.f33262a = executor;
            this.f33263b = bVar;
        }

        @Override // p655o.AbstractC15235b
        /* renamed from: a */
        public void mo140a(AbstractC15238d<T> dVar) {
            C15306w.m66a(dVar, "callback == null");
            this.f33263b.mo140a(new C15251a(dVar));
        }

        @Override // p655o.AbstractC15235b
        public void cancel() {
            this.f33263b.cancel();
        }

        @Override // p655o.AbstractC15235b
        public AbstractC15235b<T> clone() {
            return new C15250b(this.f33262a, this.f33263b.clone());
        }

        @Override // p655o.AbstractC15235b
        public C15299r<T> execute() throws IOException {
            return this.f33263b.execute();
        }

        @Override // p655o.AbstractC15235b
        public boolean isCanceled() {
            return this.f33263b.isCanceled();
        }

        @Override // p655o.AbstractC15235b
        public Request request() {
            return this.f33263b.request();
        }
    }

    public C15248g(@Nullable Executor executor) {
        this.f33259a = executor;
    }

    @Override // p655o.AbstractC15236c.AbstractC15237a
    @Nullable
    /* renamed from: a */
    public AbstractC15236c<?, ?> mo154a(Type type, Annotation[] annotationArr, C15300s sVar) {
        Class<?> a = AbstractC15236c.AbstractC15237a.m158a(type);
        Executor executor = null;
        if (a != AbstractC15235b.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            Type b = C15306w.m51b(0, (ParameterizedType) type);
            if (!C15306w.m52a(annotationArr, (Class<? extends Annotation>) AbstractC15304u.class)) {
                executor = this.f33259a;
            }
            return new C15249a(this, b, executor);
        }
        throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
    }
}

package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;
import retrofit2.AbstractC5587c;
/* renamed from: retrofit2.g */
/* loaded from: classes-dex2jar.jar:retrofit2/g.class */
public final class C5594g extends AbstractC5587c.AbstractC5588a {

    /* renamed from: a */
    final Executor f23255a;

    /* renamed from: retrofit2.g$a */
    /* loaded from: classes-dex2jar.jar:retrofit2/g$a.class */
    public static final class C5596a<T> implements AbstractC5586b<T> {

        /* renamed from: a */
        final Executor f23258a;

        /* renamed from: b */
        final AbstractC5586b<T> f23259b;

        C5596a(Executor executor, AbstractC5586b<T> abstractC5586b) {
            this.f23258a = executor;
            this.f23259b = abstractC5586b;
        }

        @Override // retrofit2.AbstractC5586b
        /* renamed from: a */
        public C5627l<T> mo102a() {
            return this.f23259b.mo102a();
        }

        @Override // retrofit2.AbstractC5586b
        /* renamed from: a */
        public void mo100a(final AbstractC5589d<T> abstractC5589d) {
            C5633o.m15a(abstractC5589d, "callback == null");
            this.f23259b.mo100a(new AbstractC5589d<T>() { // from class: retrofit2.g.a.1
                @Override // retrofit2.AbstractC5589d
                /* renamed from: a */
                public void mo104a(AbstractC5586b<T> abstractC5586b, final Throwable th) {
                    C5596a.this.f23258a.execute(new Runnable() { // from class: retrofit2.g.a.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            abstractC5589d.mo104a(C5596a.this, th);
                        }
                    });
                }

                @Override // retrofit2.AbstractC5589d
                /* renamed from: a */
                public void mo103a(AbstractC5586b<T> abstractC5586b, final C5627l<T> c5627l) {
                    C5596a.this.f23258a.execute(new Runnable() { // from class: retrofit2.g.a.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (C5596a.this.f23259b.mo98c()) {
                                abstractC5589d.mo104a(C5596a.this, new IOException("Canceled"));
                            } else {
                                abstractC5589d.mo103a(C5596a.this, c5627l);
                            }
                        }
                    });
                }
            });
        }

        @Override // retrofit2.AbstractC5586b
        /* renamed from: b */
        public void mo99b() {
            this.f23259b.mo99b();
        }

        @Override // retrofit2.AbstractC5586b
        /* renamed from: c */
        public boolean mo98c() {
            return this.f23259b.mo98c();
        }

        @Override // retrofit2.AbstractC5586b
        /* renamed from: d */
        public AbstractC5586b<T> clone() {
            return new C5596a(this.f23258a, this.f23259b.mo97d());
        }
    }

    public C5594g(Executor executor) {
        this.f23255a = executor;
    }

    @Override // retrofit2.AbstractC5587c.AbstractC5588a
    /* renamed from: a */
    public AbstractC5587c<?, ?> mo108a(Type type, Annotation[] annotationArr, C5628m c5628m) {
        AbstractC5587c<?, ?> abstractC5587c;
        if (m114a(type) != AbstractC5586b.class) {
            abstractC5587c = null;
        } else {
            final Type m0e = C5633o.m0e(type);
            abstractC5587c = new AbstractC5587c<Object, AbstractC5586b<?>>() { // from class: retrofit2.g.1
                @Override // retrofit2.AbstractC5587c
                /* renamed from: a */
                public Type mo107a() {
                    return m0e;
                }

                /* renamed from: b */
                public AbstractC5586b<Object> mo106a(AbstractC5586b<Object> abstractC5586b) {
                    return new C5596a(C5594g.this.f23255a, abstractC5586b);
                }
            };
        }
        return abstractC5587c;
    }
}

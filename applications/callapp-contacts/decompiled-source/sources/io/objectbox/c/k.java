package io.objectbox.c;

import io.objectbox.c.k;
import java.util.concurrent.ExecutorService;
/* loaded from: classes5-dex2jar.jar:io/objectbox/c/k.class */
public final class k<T> {

    /* renamed from: a  reason: collision with root package name */
    final ExecutorService f36207a;

    /* renamed from: b  reason: collision with root package name */
    io.objectbox.c.a<T> f36208b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f36209c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f36210d;
    g<T, Object> e;
    j f;
    i g;
    private final b<T> h;
    private final Object i;
    private boolean j;
    private f k;

    /* loaded from: classes5-dex2jar.jar:io/objectbox/c/k$a.class */
    final class a implements io.objectbox.c.a<T>, h<T> {

        /* renamed from: b  reason: collision with root package name */
        private final e f36212b;

        /* renamed from: c  reason: collision with root package name */
        private k<T>.a.b f36213c;

        /* renamed from: d  reason: collision with root package name */
        private k<T>.a.C0591a f36214d;

        /* renamed from: io.objectbox.c.k$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:io/objectbox/c/k$a$a.class */
        final class C0591a {
            C0591a() {
            }
        }

        /* loaded from: classes5-dex2jar.jar:io/objectbox/c/k$a$b.class */
        final class b {
            b() {
            }
        }

        public a(e eVar) {
            this.f36212b = eVar;
            if (k.this.f != null) {
                this.f36214d = new C0591a();
                if (k.this.g != null) {
                    this.f36213c = new b();
                }
            }
        }

        private void a(T t) {
            if (!this.f36212b.f36201a && k.this.f == null) {
                try {
                    k.this.f36208b.onData(t);
                } catch (Error | RuntimeException e) {
                    a(e, "Observer failed without an ErrorObserver set");
                }
            }
        }

        private void a(Throwable th, String str) {
            if (k.this.g != null) {
                if (this.f36212b.f36201a || k.this.f != null) {
                }
                return;
            }
            RuntimeException runtimeException = new RuntimeException(str, th);
            runtimeException.printStackTrace();
            throw runtimeException;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ void b(Object obj) {
            if (!this.f36212b.f36201a) {
                try {
                    a(k.this.e.a());
                } catch (Throwable th) {
                    a(th, "Transformer failed without an ErrorObserver set");
                }
            }
        }

        @Override // io.objectbox.c.h
        public final io.objectbox.c.a<T> a() {
            return k.this.f36208b;
        }

        @Override // io.objectbox.c.a
        public final void onData(final T t) {
            if (k.this.e != null) {
                k.this.f36207a.submit(new Runnable() { // from class: io.objectbox.c._$$Lambda$k$a$92Ih1B3ro49wOCyalKZLr1ijGbA
                    @Override // java.lang.Runnable
                    public final void run() {
                        k.a.this.b(t);
                    }
                });
            } else {
                a(t);
            }
        }
    }

    public k(b<T> bVar, Object obj, ExecutorService executorService) {
        this.h = bVar;
        this.i = obj;
        this.f36207a = executorService;
    }

    public final d a(io.objectbox.c.a<T> aVar) {
        l lVar;
        if (this.f36209c) {
            lVar = new l(aVar);
            aVar = lVar;
        } else {
            lVar = null;
        }
        this.f36208b = aVar;
        e eVar = new e(this.h, this.i, aVar);
        if (lVar != null) {
            lVar.f36217a = eVar;
        }
        f fVar = this.k;
        if (fVar != null) {
            fVar.a(eVar);
        }
        if (!(this.e == null && this.f == null && this.g == null)) {
            aVar = new a(eVar);
        }
        if (!this.j) {
            this.h.a(aVar, this.i);
            if (!this.f36210d) {
                this.h.c(aVar, this.i);
            }
        } else if (!this.f36210d) {
            this.h.c(aVar, this.i);
        } else {
            throw new IllegalStateException("Illegal combination of single() and onlyChanges()");
        }
        return eVar;
    }
}

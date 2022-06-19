package io.objectbox.p503c;

import io.objectbox.p503c.C17968k;
import java.util.concurrent.ExecutorService;
/* renamed from: io.objectbox.c.k */
/* loaded from: classes5-dex2jar.jar:io/objectbox/c/k.class */
public final class C17968k<T> {

    /* renamed from: a */
    final ExecutorService f62750a;

    /* renamed from: b */
    AbstractC17958a<T> f62751b;

    /* renamed from: c */
    public boolean f62752c;

    /* renamed from: d */
    public boolean f62753d;

    /* renamed from: e */
    AbstractC17964g<T, Object> f62754e;

    /* renamed from: f */
    AbstractC17967j f62755f;

    /* renamed from: g */
    AbstractC17966i f62756g;

    /* renamed from: h */
    private final AbstractC17959b<T> f62757h;

    /* renamed from: i */
    private final Object f62758i;

    /* renamed from: j */
    private boolean f62759j;

    /* renamed from: k */
    private C17963f f62760k;

    /* renamed from: io.objectbox.c.k$a */
    /* loaded from: classes5-dex2jar.jar:io/objectbox/c/k$a.class */
    public final class C17969a implements AbstractC17958a<T>, AbstractC17965h<T> {

        /* renamed from: b */
        private final C17962e f62762b;

        /* renamed from: c */
        private C17968k<T>.C17969a.C17971b f62763c;

        /* renamed from: d */
        private C17968k<T>.C17969a.C17970a f62764d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.objectbox.c.k$a$a */
        /* loaded from: classes5-dex2jar.jar:io/objectbox/c/k$a$a.class */
        public final class C17970a {
            C17970a() {
                C17969a.this = r4;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.objectbox.c.k$a$b */
        /* loaded from: classes5-dex2jar.jar:io/objectbox/c/k$a$b.class */
        public final class C17971b {
            C17971b() {
                C17969a.this = r4;
            }
        }

        public C17969a(C17962e c17962e) {
            C17968k.this = r6;
            this.f62762b = c17962e;
            if (r6.f62755f != null) {
                this.f62764d = new C17970a();
                if (r6.f62756g == null) {
                    return;
                }
                this.f62763c = new C17971b();
            }
        }

        /* renamed from: a */
        private void m4676a(T t) {
            if (this.f62762b.f62744a || C17968k.this.f62755f != null) {
                return;
            }
            try {
                C17968k.this.f62751b.onData(t);
            } catch (Error | RuntimeException e) {
                m4675a(e, "Observer failed without an ErrorObserver set");
            }
        }

        /* renamed from: a */
        private void m4675a(Throwable th, String str) {
            if (C17968k.this.f62756g != null) {
                if (this.f62762b.f62744a || C17968k.this.f62755f != null) {
                }
                return;
            }
            RuntimeException runtimeException = new RuntimeException(str, th);
            runtimeException.printStackTrace();
            throw runtimeException;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        public /* synthetic */ void m4674b(Object obj) {
            if (this.f62762b.f62744a) {
                return;
            }
            try {
                m4676a(C17968k.this.f62754e.m4678a());
            } catch (Throwable th) {
                m4675a(th, "Transformer failed without an ErrorObserver set");
            }
        }

        @Override // io.objectbox.p503c.AbstractC17965h
        /* renamed from: a */
        public final AbstractC17958a<T> mo4673a() {
            return C17968k.this.f62751b;
        }

        @Override // io.objectbox.p503c.AbstractC17958a
        public final void onData(final T t) {
            if (C17968k.this.f62754e != null) {
                C17968k.this.f62750a.submit(new Runnable() { // from class: io.objectbox.c._$$Lambda$k$a$92Ih1B3ro49wOCyalKZLr1ijGbA
                    @Override // java.lang.Runnable
                    public final void run() {
                        C17968k.C17969a.this.m4674b(t);
                    }
                });
            } else {
                m4676a(t);
            }
        }
    }

    public C17968k(AbstractC17959b<T> abstractC17959b, Object obj, ExecutorService executorService) {
        this.f62757h = abstractC17959b;
        this.f62758i = obj;
        this.f62750a = executorService;
    }

    /* renamed from: a */
    public final AbstractC17961d m4677a(AbstractC17958a<T> abstractC17958a) {
        C17972l c17972l;
        if (this.f62752c) {
            c17972l = new C17972l(abstractC17958a);
            abstractC17958a = c17972l;
        } else {
            c17972l = null;
        }
        this.f62751b = abstractC17958a;
        C17962e c17962e = new C17962e(this.f62757h, this.f62758i, abstractC17958a);
        if (c17972l != null) {
            c17972l.f62767a = c17962e;
        }
        C17963f c17963f = this.f62760k;
        if (c17963f != null) {
            c17963f.m4679a(c17962e);
        }
        if (this.f62754e != null || this.f62755f != null || this.f62756g != null) {
            abstractC17958a = new C17969a(c17962e);
        }
        if (!this.f62759j) {
            this.f62757h.mo4591a(abstractC17958a, this.f62758i);
            if (!this.f62753d) {
                this.f62757h.mo4588c(abstractC17958a, this.f62758i);
            }
        } else if (this.f62753d) {
            throw new IllegalStateException("Illegal combination of single() and onlyChanges()");
        } else {
            this.f62757h.mo4588c(abstractC17958a, this.f62758i);
        }
        return c17962e;
    }
}

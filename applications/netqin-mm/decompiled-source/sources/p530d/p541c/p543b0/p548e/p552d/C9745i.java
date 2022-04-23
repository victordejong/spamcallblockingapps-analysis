package p530d.p541c.p543b0.p548e.p552d;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Iterator;
import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p547d.AbstractC9663b;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.b0.e.d.i */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/i.class */
public final class C9745i<T> extends AbstractC9840o<T> {

    /* renamed from: a */
    public final Iterable<? extends T> f36858a;

    /* renamed from: d.c.b0.e.d.i$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/i$a.class */
    public static final class C9746a<T> extends AbstractC9663b<T> {

        /* renamed from: a */
        public final AbstractC9844r<? super T> f36859a;

        /* renamed from: b */
        public final Iterator<? extends T> f36860b;

        /* renamed from: c */
        public volatile boolean f36861c;

        /* renamed from: d */
        public boolean f36862d;

        /* renamed from: e */
        public boolean f36863e;

        /* renamed from: f */
        public boolean f36864f;

        public C9746a(AbstractC9844r<? super T> rVar, Iterator<? extends T> it) {
            this.f36859a = rVar;
            this.f36860b = it;
        }

        /* renamed from: a */
        public void m2073a() {
            while (!isDisposed()) {
                try {
                    Object next = this.f36860b.next();
                    C9650a.m2095a(next, "The iterator returned a null value");
                    this.f36859a.onNext(next);
                    if (!isDisposed()) {
                        try {
                            if (!this.f36860b.hasNext()) {
                                if (!isDisposed()) {
                                    this.f36859a.onComplete();
                                    return;
                                }
                                return;
                            }
                        } catch (Throwable th) {
                            C9863a.m1822b(th);
                            this.f36859a.onError(th);
                            return;
                        }
                    } else {
                        return;
                    }
                } catch (Throwable th2) {
                    C9863a.m1822b(th2);
                    this.f36859a.onError(th2);
                    return;
                }
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public void clear() {
            this.f36863e = true;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            this.f36861c = true;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f36861c;
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public boolean isEmpty() {
            return this.f36863e;
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public T poll() {
            if (this.f36863e) {
                return null;
            }
            if (!this.f36864f) {
                this.f36864f = true;
            } else if (!this.f36860b.hasNext()) {
                this.f36863e = true;
                return null;
            }
            T t = (T) this.f36860b.next();
            C9650a.m2095a((Object) t, "The iterator returned a null value");
            return t;
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
        public int requestFusion(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            this.f36862d = true;
            return 1;
        }
    }

    public C9745i(Iterable<? extends T> iterable) {
        this.f36858a = iterable;
    }

    @Override // p530d.p541c.AbstractC9840o
    /* renamed from: a */
    public void mo192a(AbstractC9844r<? super T> rVar) {
        try {
            Iterator<? extends T> it = this.f36858a.iterator();
            try {
                if (!it.hasNext()) {
                    EmptyDisposable.complete(rVar);
                    return;
                }
                C9746a aVar = new C9746a(rVar, it);
                rVar.onSubscribe(aVar);
                if (!aVar.f36862d) {
                    aVar.m2073a();
                }
            } catch (Throwable th) {
                C9863a.m1822b(th);
                EmptyDisposable.error(th, rVar);
            }
        } catch (Throwable th2) {
            C9863a.m1822b(th2);
            EmptyDisposable.error(th2, rVar);
        }
    }
}

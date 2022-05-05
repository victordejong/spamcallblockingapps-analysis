package p033i.p064c.p066b0.p073e.p078f.p083e;

import i.c.b0.e.k.j;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p033i.p064c.p066b0.p070b.AbstractC0449a0;
import p033i.p064c.p066b0.p070b.C0472u;
/* renamed from: i.c.b0.e.f.e.e */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/e.class */
public final class C0512e<T> implements Iterable<T> {

    /* renamed from: f */
    final AbstractC0449a0<T> f1093f;

    /* renamed from: i.c.b0.e.f.e.e$a */
    /* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/e$a.class */
    static final class C0513a<T> implements Iterator<T> {

        /* renamed from: f */
        private final b<T> f1094f;

        /* renamed from: g */
        private final AbstractC0449a0<T> f1095g;

        /* renamed from: h */
        private T f1096h;

        /* renamed from: i */
        private boolean f1097i = true;

        /* renamed from: j */
        private boolean f1098j = true;

        /* renamed from: k */
        private Throwable f1099k;

        /* renamed from: l */
        private boolean f1100l;

        C0513a(AbstractC0449a0<T> a0Var, b<T> bVar) {
            this.f1095g = a0Var;
            this.f1094f = bVar;
        }

        /* renamed from: a */
        private boolean m0a() {
            if (!this.f1100l) {
                this.f1100l = true;
                this.f1094f.d();
                new b2(this.f1095g).subscribe(this.f1094f);
            }
            C0472u e = this.f1094f.e();
            if (e.m72h()) {
                this.f1098j = false;
                this.f1096h = (T) e.m75e();
                return true;
            }
            this.f1097i = false;
            if (e.m74f()) {
                return false;
            }
            Throwable d = e.m76d();
            this.f1099k = d;
            throw j.g(d);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Throwable th = this.f1099k;
            if (th == null) {
                boolean z = false;
                if (!this.f1097i) {
                    return false;
                }
                if (!this.f1098j || m0a()) {
                    z = true;
                }
                return z;
            }
            throw j.g(th);
        }

        @Override // java.util.Iterator
        public T next() {
            Throwable th = this.f1099k;
            if (th != null) {
                throw j.g(th);
            } else if (hasNext()) {
                this.f1098j = true;
                return this.f1096h;
            } else {
                throw new NoSuchElementException("No more elements");
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read only iterator");
        }
    }

    public C0512e(AbstractC0449a0<T> a0Var) {
        this.f1093f = a0Var;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new C0513a(this.f1093f, new b());
    }
}

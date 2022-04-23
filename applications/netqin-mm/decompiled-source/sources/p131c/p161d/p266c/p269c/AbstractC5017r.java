package p131c.p161d.p266c.p269c;

import com.google.common.base.Optional;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import java.util.Iterator;
import p131c.p161d.p266c.p267a.AbstractC4934o;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.c.r */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/r.class */
public abstract class AbstractC5017r<E> implements Iterable<E> {

    /* renamed from: a */
    public final Optional<Iterable<E>> f17638a;

    /* renamed from: c.d.c.c.r$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/r$a.class */
    public static final class C5018a extends AbstractC5017r<E> {

        /* renamed from: b */
        public final /* synthetic */ Iterable f17639b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5018a(Iterable iterable, Iterable iterable2) {
            super(iterable);
            this.f17639b = iterable2;
        }

        @Override // java.lang.Iterable
        public Iterator<E> iterator() {
            return this.f17639b.iterator();
        }
    }

    /* renamed from: c.d.c.c.r$b */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/r$b.class */
    public static final class C5019b extends AbstractC5017r<T> {

        /* renamed from: b */
        public final /* synthetic */ Iterable[] f17640b;

        /* renamed from: c.d.c.c.r$b$a */
        /* loaded from: classes2-dex2jar.jar:c/d/c/c/r$b$a.class */
        public class C5020a extends AbstractC4956a<Iterator<? extends T>> {
            public C5020a(int i) {
                super(i);
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC4956a
            /* renamed from: a */
            public Iterator<? extends T> mo8246a(int i) {
                return C5019b.this.f17640b[i].iterator();
            }
        }

        public C5019b(Iterable[] iterableArr) {
            this.f17640b = iterableArr;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.m8254c(new C5020a(this.f17640b.length));
        }
    }

    public AbstractC5017r() {
        this.f17638a = Optional.absent();
    }

    public AbstractC5017r(Iterable<E> iterable) {
        C4933n.m24795a(iterable);
        this.f17638a = Optional.fromNullable(this == iterable ? null : iterable);
    }

    /* renamed from: a */
    public static <E> AbstractC5017r<E> m24631a(Iterable<E> iterable) {
        return iterable instanceof AbstractC5017r ? (AbstractC5017r) iterable : new C5018a(iterable, iterable);
    }

    /* renamed from: a */
    public static <T> AbstractC5017r<T> m24630a(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return m24629a(iterable, iterable2);
    }

    /* renamed from: a */
    public static <T> AbstractC5017r<T> m24629a(Iterable<? extends T>... iterableArr) {
        for (Iterable<? extends T> iterable : iterableArr) {
            C4933n.m24795a(iterable);
        }
        return new C5019b(iterableArr);
    }

    /* renamed from: a */
    public final AbstractC5017r<E> m24632a(AbstractC4934o<? super E> oVar) {
        return m24631a(C4983g0.m24722a((Iterable) m24633a(), (AbstractC4934o) oVar));
    }

    /* renamed from: a */
    public final Iterable<E> m24633a() {
        return this.f17638a.mo8562or((Optional<Iterable<E>>) this);
    }

    /* renamed from: b */
    public final ImmutableSet<E> m24628b() {
        return ImmutableSet.copyOf(m24633a());
    }

    public String toString() {
        return C4983g0.m24712f(m24633a());
    }
}

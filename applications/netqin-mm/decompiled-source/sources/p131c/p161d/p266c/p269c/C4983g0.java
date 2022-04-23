package p131c.p161d.p266c.p269c;

import com.google.common.collect.Iterators;
import com.google.common.collect.Lists;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.AbstractC4934o;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.c.g0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/g0.class */
public final class C4983g0 {

    /* renamed from: c.d.c.c.g0$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/g0$a.class */
    public static final class C4984a extends AbstractC5017r<T> {

        /* renamed from: b */
        public final /* synthetic */ Iterable f17604b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC4934o f17605c;

        public C4984a(Iterable iterable, AbstractC4934o oVar) {
            this.f17604b = iterable;
            this.f17605c = oVar;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.m8263a(this.f17604b.iterator(), this.f17605c);
        }
    }

    /* renamed from: c.d.c.c.g0$b */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/g0$b.class */
    public static final class C4985b extends AbstractC5017r<T> {

        /* renamed from: b */
        public final /* synthetic */ Iterable f17606b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC4920g f17607c;

        public C4985b(Iterable iterable, AbstractC4920g gVar) {
            this.f17606b = iterable;
            this.f17607c = gVar;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.m8264a(this.f17606b.iterator(), this.f17607c);
        }
    }

    /* renamed from: c.d.c.c.g0$c */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/g0$c.class */
    public static final class C4986c extends AbstractC5017r<T> {

        /* renamed from: b */
        public final /* synthetic */ Iterable f17608b;

        /* renamed from: c */
        public final /* synthetic */ int f17609c;

        /* renamed from: c.d.c.c.g0$c$a */
        /* loaded from: classes2-dex2jar.jar:c/d/c/c/g0$c$a.class */
        public class C4987a implements Iterator<T> {

            /* renamed from: a */
            public boolean f17610a = true;

            /* renamed from: b */
            public final /* synthetic */ Iterator f17611b;

            public C4987a(C4986c cVar, Iterator it) {
                this.f17611b = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f17611b.hasNext();
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
            /* JADX WARN: Unknown variable types count: 1 */
            @Override // java.util.Iterator
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public T next() {
                /*
                    r3 = this;
                    r0 = r3
                    java.util.Iterator r0 = r0.f17611b
                    java.lang.Object r0 = r0.next()
                    r4 = r0
                    r0 = r3
                    r1 = 0
                    r0.f17610a = r1
                    r0 = r4
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p266c.p269c.C4983g0.C4986c.C4987a.next():java.lang.Object");
            }

            @Override // java.util.Iterator
            public void remove() {
                C5006n.m24660a(!this.f17610a);
                this.f17611b.remove();
            }
        }

        public C4986c(Iterable iterable, int i) {
            this.f17608b = iterable;
            this.f17609c = i;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            Iterable iterable = this.f17608b;
            if (iterable instanceof List) {
                List list = (List) iterable;
                return list.subList(Math.min(list.size(), this.f17609c), list.size()).iterator();
            }
            Iterator it = iterable.iterator();
            Iterators.m8265a(it, this.f17609c);
            return new C4987a(this, it);
        }
    }

    /* renamed from: a */
    public static <T> Iterable<T> m24724a(Iterable<T> iterable, int i) {
        C4933n.m24795a(iterable);
        C4933n.m24790a(i >= 0, "number to skip cannot be negative");
        return new C4986c(iterable, i);
    }

    /* renamed from: a */
    public static <F, T> Iterable<T> m24723a(Iterable<F> iterable, AbstractC4920g<? super F, ? extends T> gVar) {
        C4933n.m24795a(iterable);
        C4933n.m24795a(gVar);
        return new C4985b(iterable, gVar);
    }

    /* renamed from: a */
    public static <T> Iterable<T> m24722a(Iterable<T> iterable, AbstractC4934o<? super T> oVar) {
        C4933n.m24795a(iterable);
        C4933n.m24795a(oVar);
        return new C4984a(iterable, oVar);
    }

    /* renamed from: a */
    public static <T> Iterable<T> m24721a(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return AbstractC5017r.m24630a(iterable, iterable2);
    }

    /* renamed from: a */
    public static <T> T m24720a(Iterable<? extends T> iterable, T t) {
        return (T) Iterators.m8257b(iterable.iterator(), t);
    }

    /* renamed from: a */
    public static <T> T m24717a(List<T> list) {
        return list.get(list.size() - 1);
    }

    /* renamed from: a */
    public static <E> Collection<E> m24725a(Iterable<E> iterable) {
        return iterable instanceof Collection ? (Collection) iterable : Lists.m8227a(iterable.iterator());
    }

    /* renamed from: a */
    public static <T> boolean m24718a(Collection<T> collection, Iterable<? extends T> iterable) {
        if (iterable instanceof Collection) {
            return collection.addAll(C5008o.m24657a(iterable));
        }
        C4933n.m24795a(iterable);
        return Iterators.m8267a(collection, iterable.iterator());
    }

    /* renamed from: a */
    public static <T> T[] m24719a(Iterable<? extends T> iterable, T[] tArr) {
        return (T[]) m24725a(iterable).toArray(tArr);
    }

    /* renamed from: b */
    public static <T> T m24716b(Iterable<T> iterable) {
        if (!(iterable instanceof List)) {
            return (T) Iterators.m8253d(iterable.iterator());
        }
        List list = (List) iterable;
        if (!list.isEmpty()) {
            return (T) m24717a((List<Object>) list);
        }
        throw new NoSuchElementException();
    }

    /* renamed from: c */
    public static <T> T m24715c(Iterable<T> iterable) {
        return (T) Iterators.m8252e(iterable.iterator());
    }

    /* renamed from: d */
    public static boolean m24714d(Iterable<?> iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).isEmpty() : !iterable.iterator().hasNext();
    }

    /* renamed from: e */
    public static Object[] m24713e(Iterable<?> iterable) {
        return m24725a(iterable).toArray();
    }

    /* renamed from: f */
    public static String m24712f(Iterable<?> iterable) {
        return Iterators.m8248i(iterable.iterator());
    }
}

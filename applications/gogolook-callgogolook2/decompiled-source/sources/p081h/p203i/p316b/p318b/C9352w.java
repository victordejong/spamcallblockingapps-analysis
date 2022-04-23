package p081h.p203i.p316b.p318b;

import java.util.AbstractSet;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import p081h.p203i.p316b.p317a.C9301k;
/* renamed from: h.i.b.b.w */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/w.class */
public final class C9352w {

    /* renamed from: h.i.b.b.w$a */
    /* loaded from: classes2-dex2jar.jar:h/i/b/b/w$a.class */
    public static final class C9353a extends AbstractC9355b<E> {

        /* renamed from: a */
        public final /* synthetic */ Set f21395a;

        /* renamed from: b */
        public final /* synthetic */ Set f21396b;

        /* renamed from: h.i.b.b.w$a$a */
        /* loaded from: classes2-dex2jar.jar:h/i/b/b/w$a$a.class */
        public class C9354a extends AbstractC9312b<E> {

            /* renamed from: c */
            public final Iterator<E> f21397c;

            public C9354a() {
                this.f21397c = C9353a.this.f21395a.iterator();
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v7, types: [E, java.lang.Object] */
            /* JADX WARN: Unknown variable types count: 1 */
            @Override // p081h.p203i.p316b.p318b.AbstractC9312b
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public E mo15373a() {
                /*
                    r3 = this;
                L_0x0000:
                    r0 = r3
                    java.util.Iterator<E> r0 = r0.f21397c
                    boolean r0 = r0.hasNext()
                    if (r0 == 0) goto L_0x0028
                    r0 = r3
                    java.util.Iterator<E> r0 = r0.f21397c
                    java.lang.Object r0 = r0.next()
                    r4 = r0
                    r0 = r3
                    h.i.b.b.w$a r0 = p081h.p203i.p316b.p318b.C9352w.C9353a.this
                    java.util.Set r0 = r0.f21396b
                    r1 = r4
                    boolean r0 = r0.contains(r1)
                    if (r0 != 0) goto L_0x0000
                    r0 = r4
                    return r0
                L_0x0028:
                    r0 = r3
                    java.lang.Object r0 = r0.m15442b()
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p316b.p318b.C9352w.C9353a.C9354a.mo15373a():java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9353a(Set set, Set set2) {
            super(null);
            this.f21395a = set;
            this.f21396b = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f21395a.contains(obj) && !this.f21396b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f21396b.containsAll(this.f21395a);
        }

        @Override // p081h.p203i.p316b.p318b.C9352w.AbstractC9355b, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public AbstractC9311a0<E> iterator() {
            return new C9354a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int i = 0;
            for (Object obj : this.f21395a) {
                if (!this.f21396b.contains(obj)) {
                    i++;
                }
            }
            return i;
        }
    }

    /* renamed from: h.i.b.b.w$b */
    /* loaded from: classes2-dex2jar.jar:h/i/b/b/w$b.class */
    public static abstract class AbstractC9355b<E> extends AbstractSet<E> {
        public AbstractC9355b() {
        }

        public /* synthetic */ AbstractC9355b(C9351v vVar) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean add(E e) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public abstract AbstractC9311a0<E> iterator();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: a */
    public static int m15376a(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i = ((i + (next != null ? next.hashCode() : 0)) ^ (-1)) ^ (-1);
        }
        return i;
    }

    /* renamed from: a */
    public static <E> AbstractC9355b<E> m15374a(Set<E> set, Set<?> set2) {
        C9301k.m15477a(set, "set1");
        C9301k.m15477a(set2, "set2");
        return new C9353a(set, set2);
    }

    /* renamed from: a */
    public static <E> HashSet<E> m15377a() {
        return new HashSet<>();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        if (r3.containsAll(r0) != false) goto L_0x0035;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m15375a(java.util.Set<?> r3, java.lang.Object r4) {
        /*
            r0 = 1
            r5 = r0
            r0 = r3
            r1 = r4
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof java.util.Set
            if (r0 == 0) goto L_0x0037
            r0 = r4
            java.util.Set r0 = (java.util.Set) r0
            r4 = r0
            r0 = r3
            int r0 = r0.size()     // Catch: NullPointerException | ClassCastException -> 0x0039
            r1 = r4
            int r1 = r1.size()     // Catch: NullPointerException | ClassCastException -> 0x0039
            if (r0 != r1) goto L_0x0033
            r0 = r3
            r1 = r4
            boolean r0 = r0.containsAll(r1)     // Catch: NullPointerException | ClassCastException -> 0x0039
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0033
            goto L_0x0035
        L_0x0033:
            r0 = 0
            r5 = r0
        L_0x0035:
            r0 = r5
            return r0
        L_0x0037:
            r0 = 0
            return r0
        L_0x0039:
            r3 = move-exception
            goto L_0x0037
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p316b.p318b.C9352w.m15375a(java.util.Set, java.lang.Object):boolean");
    }
}

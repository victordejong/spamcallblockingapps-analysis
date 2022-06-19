package com.google.common.collect;

import com.google.common.base.C15391m;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* renamed from: com.google.common.collect.av */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/av.class */
public final class C15484av {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.av$1 */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/av$1.class */
    public final class C154851 extends AbstractC15490b<E> {

        /* renamed from: a */
        final /* synthetic */ Set f55758a;

        /* renamed from: b */
        final /* synthetic */ Set f55759b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C154851(Set set, Set set2) {
            super(null);
            this.f55758a = set;
            this.f55759b = set2;
        }

        @Override // com.google.common.collect.C15484av.AbstractC15490b
        /* renamed from: a */
        public final AbstractC15493ay<E> iterator() {
            return new AbstractC15495b<E>() { // from class: com.google.common.collect.av.1.1

                /* renamed from: a */
                final Iterator<? extends E> f55760a;

                /* renamed from: b */
                final Iterator<? extends E> f55761b;

                {
                    C154851.this = this;
                    this.f55760a = this.f55758a.iterator();
                    this.f55761b = this.f55759b.iterator();
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v10, types: [E, java.lang.Object] */
                /* JADX WARN: Type inference failed for: r0v18, types: [E, java.lang.Object] */
                @Override // com.google.common.collect.AbstractC15495b
                /* renamed from: a */
                protected final E mo8817a() {
                    if (this.f55760a.hasNext()) {
                        return this.f55760a.next();
                    }
                    while (this.f55761b.hasNext()) {
                        ?? next = this.f55761b.next();
                        if (!C154851.this.f55758a.contains(next)) {
                            return next;
                        }
                    }
                    return m8816b();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.f55758a.contains(obj) || this.f55759b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return this.f55758a.isEmpty() && this.f55759b.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            int size = this.f55758a.size();
            for (Object obj : this.f55759b) {
                if (!this.f55758a.contains(obj)) {
                    size++;
                }
            }
            return size;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.av$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/av$a.class */
    public static abstract class AbstractC15489a<E> extends AbstractSet<E> {
        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            C15391m.m8946a(collection);
            Set<E> set = collection;
            if (collection instanceof AbstractC15467ak) {
                set = ((AbstractC15467ak) collection).m8838a();
            }
            if (!(set instanceof Set) || set.size() <= size()) {
                return C15484av.m8822a((Set<?>) this, set.iterator());
            }
            Iterator<E> it2 = iterator();
            C15391m.m8946a(set);
            boolean z = false;
            while (it2.hasNext()) {
                if (set.contains(it2.next())) {
                    it2.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            return super.retainAll((Collection) C15391m.m8946a(collection));
        }
    }

    /* renamed from: com.google.common.collect.av$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/av$b.class */
    public static abstract class AbstractC15490b<E> extends AbstractSet<E> {
        private AbstractC15490b() {
        }

        /* synthetic */ AbstractC15490b(C154851 c154851) {
            this();
        }

        /* renamed from: a */
        public abstract AbstractC15493ay<E> iterator();

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

    private C15484av() {
    }

    /* renamed from: a */
    public static int m8824a(Set<?> set) {
        Iterator<?> it2 = set.iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it2.hasNext()) {
                Object next = it2.next();
                i = ((i2 + (next != null ? next.hashCode() : 0)) ^ (-1)) ^ (-1);
            } else {
                return i2;
            }
        }
    }

    /* renamed from: a */
    public static <E> AbstractC15490b<E> m8821a(final Set<E> set, final Set<?> set2) {
        C15391m.m8945a(set, "set1");
        C15391m.m8945a(set2, "set2");
        return new AbstractC15490b<E>() { // from class: com.google.common.collect.av.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(null);
            }

            @Override // com.google.common.collect.C15484av.AbstractC15490b
            /* renamed from: a */
            public final AbstractC15493ay<E> iterator() {
                return new AbstractC15495b<E>() { // from class: com.google.common.collect.av.2.1

                    /* renamed from: a */
                    final Iterator<E> f55765a;

                    {
                        C154872.this = this;
                        this.f55765a = set.iterator();
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r0v7, types: [E, java.lang.Object] */
                    @Override // com.google.common.collect.AbstractC15495b
                    /* renamed from: a */
                    protected final E mo8817a() {
                        while (this.f55765a.hasNext()) {
                            ?? next = this.f55765a.next();
                            if (set2.contains(next)) {
                                return next;
                            }
                        }
                        return m8816b();
                    }
                };
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(Object obj) {
                return set.contains(obj) && set2.contains(obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean containsAll(Collection<?> collection) {
                return set.containsAll(collection) && set2.containsAll(collection);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean isEmpty() {
                return Collections.disjoint(set2, set);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final int size() {
                int i = 0;
                for (Object obj : set) {
                    if (set2.contains(obj)) {
                        i++;
                    }
                }
                return i;
            }
        };
    }

    /* renamed from: a */
    public static <E> HashSet<E> m8825a(int i) {
        return new HashSet<>(C15446ag.m8847a(i));
    }

    /* renamed from: a */
    public static <E> HashSet<E> m8820a(E... eArr) {
        HashSet<E> m8825a = m8825a(eArr.length);
        Collections.addAll(m8825a, eArr);
        return m8825a;
    }

    /* renamed from: a */
    public static boolean m8823a(Set<?> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            if (set.size() != set2.size()) {
                return false;
            }
            return set.containsAll(set2);
        } catch (ClassCastException | NullPointerException e) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m8822a(Set<?> set, Iterator<?> it2) {
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (it2.hasNext()) {
                z = z2 | set.remove(it2.next());
            } else {
                return z2;
            }
        }
    }
}

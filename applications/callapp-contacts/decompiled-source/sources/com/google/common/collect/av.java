package com.google.common.collect;

import com.google.common.base.m;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/av.class */
public final class av {

    /* renamed from: com.google.common.collect.av$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/av$1.class */
    final class AnonymousClass1 extends b<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Set f32030a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Set f32031b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Set set, Set set2) {
            super(null);
            this.f32030a = set;
            this.f32031b = set2;
        }

        @Override // com.google.common.collect.av.b
        /* renamed from: a */
        public final ay<E> iterator() {
            return new com.google.common.collect.b<E>() { // from class: com.google.common.collect.av.1.1

                /* renamed from: a  reason: collision with root package name */
                final Iterator<? extends E> f32032a;

                /* renamed from: b  reason: collision with root package name */
                final Iterator<? extends E> f32033b;

                {
                    this.f32032a = AnonymousClass1.this.f32030a.iterator();
                    this.f32033b = AnonymousClass1.this.f32031b.iterator();
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v10, types: [E, java.lang.Object] */
                /* JADX WARN: Type inference failed for: r0v18, types: [E, java.lang.Object] */
                /* JADX WARN: Unknown variable types count: 1 */
                @Override // com.google.common.collect.b
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                protected final E a() {
                    /*
                        r3 = this;
                        r0 = r3
                        java.util.Iterator<? extends E> r0 = r0.f32032a
                        boolean r0 = r0.hasNext()
                        if (r0 == 0) goto L_0x0016
                        r0 = r3
                        java.util.Iterator<? extends E> r0 = r0.f32032a
                        java.lang.Object r0 = r0.next()
                        return r0
                    L_0x0016:
                        r0 = r3
                        java.util.Iterator<? extends E> r0 = r0.f32033b
                        boolean r0 = r0.hasNext()
                        if (r0 == 0) goto L_0x003e
                        r0 = r3
                        java.util.Iterator<? extends E> r0 = r0.f32033b
                        java.lang.Object r0 = r0.next()
                        r4 = r0
                        r0 = r3
                        com.google.common.collect.av$1 r0 = com.google.common.collect.av.AnonymousClass1.this
                        java.util.Set r0 = r0.f32030a
                        r1 = r4
                        boolean r0 = r0.contains(r1)
                        if (r0 != 0) goto L_0x0016
                        r0 = r4
                        return r0
                    L_0x003e:
                        r0 = r3
                        java.lang.Object r0 = r0.b()
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.av.AnonymousClass1.C05101.a():java.lang.Object");
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.f32030a.contains(obj) || this.f32031b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return this.f32030a.isEmpty() && this.f32031b.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            int size = this.f32030a.size();
            for (Object obj : this.f32031b) {
                if (!this.f32030a.contains(obj)) {
                    size++;
                }
            }
            return size;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/av$a.class */
    static abstract class a<E> extends AbstractSet<E> {
        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            m.a(collection);
            Set<E> set = collection;
            if (collection instanceof ak) {
                set = ((ak) collection).a();
            }
            if (!(set instanceof Set) || set.size() <= size()) {
                return av.a((Set<?>) this, set.iterator());
            }
            Iterator<E> it2 = iterator();
            m.a(set);
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
            return super.retainAll((Collection) m.a(collection));
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/av$b.class */
    public static abstract class b<E> extends AbstractSet<E> {
        private b() {
        }

        /* synthetic */ b(AnonymousClass1 r3) {
            this();
        }

        /* renamed from: a */
        public abstract ay<E> iterator();

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

    private av() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Set<?> set) {
        Iterator<?> it2 = set.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Object next = it2.next();
            i = ((i + (next != null ? next.hashCode() : 0)) ^ (-1)) ^ (-1);
        }
        return i;
    }

    public static <E> b<E> a(final Set<E> set, final Set<?> set2) {
        m.a(set, "set1");
        m.a(set2, "set2");
        return new b<E>() { // from class: com.google.common.collect.av.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(null);
            }

            @Override // com.google.common.collect.av.b
            /* renamed from: a */
            public final ay<E> iterator() {
                return new com.google.common.collect.b<E>() { // from class: com.google.common.collect.av.2.1

                    /* renamed from: a  reason: collision with root package name */
                    final Iterator<E> f32037a;

                    {
                        this.f32037a = set.iterator();
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r0v7, types: [E, java.lang.Object] */
                    /* JADX WARN: Unknown variable types count: 1 */
                    @Override // com.google.common.collect.b
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    protected final E a() {
                        /*
                            r3 = this;
                        L_0x0000:
                            r0 = r3
                            java.util.Iterator<E> r0 = r0.f32037a
                            boolean r0 = r0.hasNext()
                            if (r0 == 0) goto L_0x0028
                            r0 = r3
                            java.util.Iterator<E> r0 = r0.f32037a
                            java.lang.Object r0 = r0.next()
                            r4 = r0
                            r0 = r3
                            com.google.common.collect.av$2 r0 = com.google.common.collect.av.AnonymousClass2.this
                            java.util.Set r0 = r5
                            r1 = r4
                            boolean r0 = r0.contains(r1)
                            if (r0 == 0) goto L_0x0000
                            r0 = r4
                            return r0
                        L_0x0028:
                            r0 = r3
                            java.lang.Object r0 = r0.b()
                            return r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.av.AnonymousClass2.AnonymousClass1.a():java.lang.Object");
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

    public static <E> HashSet<E> a(int i) {
        return new HashSet<>(ag.a(i));
    }

    public static <E> HashSet<E> a(E... eArr) {
        HashSet<E> a2 = a(eArr.length);
        Collections.addAll(a2, eArr);
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Set<?> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            if (set.size() == set2.size()) {
                return set.containsAll(set2);
            }
            return false;
        } catch (ClassCastException | NullPointerException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Set<?> set, Iterator<?> it2) {
        boolean z = false;
        while (it2.hasNext()) {
            z |= set.remove(it2.next());
        }
        return z;
    }
}

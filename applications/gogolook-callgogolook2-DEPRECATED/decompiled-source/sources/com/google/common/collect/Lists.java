package com.google.common.collect;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import p081h.p203i.p316b.p317a.C9295g;
import p081h.p203i.p316b.p317a.C9301k;
import p081h.p203i.p316b.p318b.AbstractC9323i;
import p081h.p203i.p316b.p318b.C9317d;
import p081h.p203i.p316b.p318b.C9333l;
import p081h.p203i.p316b.p318b.C9334m;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/Lists.class */
public final class Lists {

    /* renamed from: com.google.common.collect.Lists$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Lists$a.class */
    public static class C3665a<T> extends C3666b<T> implements RandomAccess {
        public C3665a(List<T> list) {
            super(list);
        }
    }

    /* renamed from: com.google.common.collect.Lists$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Lists$b.class */
    public static class C3666b<T> extends AbstractList<T> {

        /* renamed from: a */
        public final List<T> f7710a;

        /* renamed from: com.google.common.collect.Lists$b$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Lists$b$a.class */
        public class C3667a implements ListIterator<T> {

            /* renamed from: a */
            public boolean f7711a;

            /* renamed from: b */
            public final /* synthetic */ ListIterator f7712b;

            public C3667a(ListIterator listIterator) {
                this.f7712b = listIterator;
            }

            @Override // java.util.ListIterator
            public void add(T t) {
                this.f7712b.add(t);
                this.f7712b.previous();
                this.f7711a = false;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public boolean hasNext() {
                return this.f7712b.hasPrevious();
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return this.f7712b.hasNext();
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public T next() {
                if (hasNext()) {
                    this.f7711a = true;
                    return (T) this.f7712b.previous();
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return C3666b.this.m31122h(this.f7712b.nextIndex());
            }

            @Override // java.util.ListIterator
            public T previous() {
                if (hasPrevious()) {
                    this.f7711a = true;
                    return (T) this.f7712b.next();
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return nextIndex() - 1;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public void remove() {
                C9317d.m15438a(this.f7711a);
                this.f7712b.remove();
                this.f7711a = false;
            }

            @Override // java.util.ListIterator
            public void set(T t) {
                C9301k.m15468b(this.f7711a);
                this.f7712b.set(t);
            }
        }

        public C3666b(List<T> list) {
            C9301k.m15478a(list);
            this.f7710a = list;
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int i, T t) {
            this.f7710a.add(m31122h(i), t);
        }

        /* renamed from: b */
        public List<T> m31124b() {
            return this.f7710a;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.f7710a.clear();
        }

        /* renamed from: g */
        public final int m31123g(int i) {
            int size = size();
            C9301k.m15481a(i, size);
            return (size - 1) - i;
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i) {
            return this.f7710a.get(m31123g(i));
        }

        /* renamed from: h */
        public final int m31122h(int i) {
            int size = size();
            C9301k.m15471b(i, size);
            return size - i;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<T> iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i) {
            return new C3667a(this.f7710a.listIterator(m31122h(i)));
        }

        @Override // java.util.AbstractList, java.util.List
        public T remove(int i) {
            return this.f7710a.remove(m31123g(i));
        }

        @Override // java.util.AbstractList
        public void removeRange(int i, int i2) {
            subList(i, i2).clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public T set(int i, T t) {
            return this.f7710a.set(m31123g(i), t);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f7710a.size();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<T> subList(int i, int i2) {
            C9301k.m15470b(i, i2, size());
            return Lists.reverse(this.f7710a.subList(m31122h(i2), m31122h(i)));
        }
    }

    /* renamed from: a */
    public static <E> ArrayList<E> m31133a() {
        return new ArrayList<>();
    }

    /* renamed from: a */
    public static <E> LinkedList<E> m31132a(Iterable<? extends E> iterable) {
        LinkedList<E> b = m31130b();
        C9333l.m15409a(b, iterable);
        return b;
    }

    /* renamed from: a */
    public static boolean m31131a(List<?> list, Object obj) {
        C9301k.m15478a(list);
        if (obj == list) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list2 = (List) obj;
        int size = list.size();
        if (size != list2.size()) {
            return false;
        }
        if (!(list instanceof RandomAccess) || !(list2 instanceof RandomAccess)) {
            return C9334m.m15406a(list.iterator(), list2.iterator());
        }
        for (int i = 0; i < size; i++) {
            if (!C9295g.m15488a(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static int m31129b(List<?> list, Object obj) {
        if (list instanceof RandomAccess) {
            return m31128c(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            if (C9295g.m15488a(obj, listIterator.next())) {
                return listIterator.previousIndex();
            }
        }
        return -1;
    }

    /* renamed from: b */
    public static <E> LinkedList<E> m31130b() {
        return new LinkedList<>();
    }

    /* renamed from: c */
    public static int m31128c(List<?> list, Object obj) {
        int size = list.size();
        if (obj == null) {
            for (int i = 0; i < size; i++) {
                if (list.get(i) == null) {
                    return i;
                }
            }
            return -1;
        }
        for (int i2 = 0; i2 < size; i2++) {
            if (obj.equals(list.get(i2))) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: d */
    public static int m31127d(List<?> list, Object obj) {
        if (list instanceof RandomAccess) {
            return m31126e(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (C9295g.m15488a(obj, listIterator.previous())) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    /* renamed from: e */
    public static int m31126e(List<?> list, Object obj) {
        if (obj == null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size) == null) {
                    return size;
                }
            }
            return -1;
        }
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            if (obj.equals(list.get(size2))) {
                return size2;
            }
        }
        return -1;
    }

    public static <T> List<T> reverse(List<T> list) {
        return list instanceof AbstractC9323i ? ((AbstractC9323i) list).mo15422r() : list instanceof C3666b ? ((C3666b) list).m31124b() : list instanceof RandomAccess ? new C3665a(list) : new C3666b(list);
    }
}

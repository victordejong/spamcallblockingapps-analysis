package com.facebook.stetho.common;

import java.util.AbstractList;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/common/ListUtil.class */
public final class ListUtil {

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/common/ListUtil$FiveItemImmutableList.class */
    private static final class FiveItemImmutableList<E> extends AbstractList<E> implements ImmutableList<E> {
        private final E mItem0;
        private final E mItem1;
        private final E mItem2;
        private final E mItem3;
        private final E mItem4;

        public FiveItemImmutableList(E e, E e2, E e3, E e4, E e5) {
            this.mItem0 = e;
            this.mItem1 = e2;
            this.mItem2 = e3;
            this.mItem3 = e4;
            this.mItem4 = e5;
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i) {
            if (i == 0) {
                return this.mItem0;
            }
            if (i == 1) {
                return this.mItem1;
            }
            if (i == 2) {
                return this.mItem2;
            }
            if (i == 3) {
                return this.mItem3;
            }
            if (i == 4) {
                return this.mItem4;
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return 5;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/common/ListUtil$FourItemImmutableList.class */
    private static final class FourItemImmutableList<E> extends AbstractList<E> implements ImmutableList<E> {
        private final E mItem0;
        private final E mItem1;
        private final E mItem2;
        private final E mItem3;

        public FourItemImmutableList(E e, E e2, E e3, E e4) {
            this.mItem0 = e;
            this.mItem1 = e2;
            this.mItem2 = e3;
            this.mItem3 = e4;
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i) {
            if (i == 0) {
                return this.mItem0;
            }
            if (i == 1) {
                return this.mItem1;
            }
            if (i == 2) {
                return this.mItem2;
            }
            if (i == 3) {
                return this.mItem3;
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return 4;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/common/ListUtil$ImmutableArrayList.class */
    private static final class ImmutableArrayList<E> extends AbstractList<E> implements ImmutableList<E> {
        private final Object[] mArray;

        public ImmutableArrayList(Object[] objArr) {
            this.mArray = objArr;
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i) {
            return (E) this.mArray[i];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.mArray.length;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/common/ListUtil$ImmutableList.class */
    private interface ImmutableList<E> extends List<E>, RandomAccess {
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/common/ListUtil$OneItemImmutableList.class */
    private static final class OneItemImmutableList<E> extends AbstractList<E> implements ImmutableList<E> {
        private final E mItem;

        public OneItemImmutableList(E e) {
            this.mItem = e;
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i) {
            if (i == 0) {
                return this.mItem;
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return 1;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/common/ListUtil$ThreeItemImmutableList.class */
    private static final class ThreeItemImmutableList<E> extends AbstractList<E> implements ImmutableList<E> {
        private final E mItem0;
        private final E mItem1;
        private final E mItem2;

        public ThreeItemImmutableList(E e, E e2, E e3) {
            this.mItem0 = e;
            this.mItem1 = e2;
            this.mItem2 = e3;
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i) {
            if (i == 0) {
                return this.mItem0;
            }
            if (i == 1) {
                return this.mItem1;
            }
            if (i == 2) {
                return this.mItem2;
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return 3;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/common/ListUtil$TwoItemImmutableList.class */
    private static final class TwoItemImmutableList<E> extends AbstractList<E> implements ImmutableList<E> {
        private final E mItem0;
        private final E mItem1;

        public TwoItemImmutableList(E e, E e2) {
            this.mItem0 = e;
            this.mItem1 = e2;
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i) {
            if (i == 0) {
                return this.mItem0;
            }
            if (i == 1) {
                return this.mItem1;
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return 2;
        }
    }

    private ListUtil() {
    }

    public static <T> List<T> copyToImmutableList(List<T> list) {
        if (list instanceof ImmutableList) {
            return list;
        }
        int size = list.size();
        return size != 0 ? size != 1 ? size != 2 ? size != 3 ? size != 4 ? size != 5 ? new ImmutableArrayList(list.toArray()) : new FiveItemImmutableList(list.get(0), list.get(1), list.get(2), list.get(3), list.get(4)) : new FourItemImmutableList(list.get(0), list.get(1), list.get(2), list.get(3)) : new ThreeItemImmutableList(list.get(0), list.get(1), list.get(2)) : new TwoItemImmutableList(list.get(0), list.get(1)) : new OneItemImmutableList(list.get(0)) : Collections.emptyList();
    }

    public static <T> boolean identityEquals(List<? extends T> list, List<? extends T> list2) {
        if (list == list2) {
            return true;
        }
        int size = list.size();
        if (size != list2.size()) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (list.get(i) != list2.get(i)) {
                return false;
            }
        }
        return true;
    }

    public static <T> List<T> newImmutableList(T t) {
        return new OneItemImmutableList(t);
    }

    public static <T> List<T> newImmutableList(T t, T t2) {
        return new TwoItemImmutableList(t, t2);
    }
}

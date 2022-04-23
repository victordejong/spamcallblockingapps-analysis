package com.google.common.collect;

import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/SortedLists.class */
public final class SortedLists {

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/SortedLists$KeyAbsentBehavior.class */
    public enum KeyAbsentBehavior {
        NEXT_LOWER { // from class: com.google.common.collect.SortedLists.KeyAbsentBehavior.1
            @Override // com.google.common.collect.SortedLists.KeyAbsentBehavior
            public int resultIndex(int i) {
                return i - 1;
            }
        },
        NEXT_HIGHER { // from class: com.google.common.collect.SortedLists.KeyAbsentBehavior.2
            @Override // com.google.common.collect.SortedLists.KeyAbsentBehavior
            public int resultIndex(int i) {
                return i;
            }
        },
        INVERTED_INSERTION_INDEX { // from class: com.google.common.collect.SortedLists.KeyAbsentBehavior.3
            @Override // com.google.common.collect.SortedLists.KeyAbsentBehavior
            public int resultIndex(int i) {
                return i ^ (-1);
            }
        };

        public abstract int resultIndex(int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/SortedLists$KeyPresentBehavior.class */
    public enum KeyPresentBehavior {
        ANY_PRESENT { // from class: com.google.common.collect.SortedLists.KeyPresentBehavior.1
            @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
            public <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i) {
                return i;
            }
        },
        LAST_PRESENT { // from class: com.google.common.collect.SortedLists.KeyPresentBehavior.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
            public <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i) {
                int size = list.size() - 1;
                while (i < size) {
                    int i2 = ((i + size) + 1) >>> 1;
                    if (comparator.compare((Object) list.get(i2), e) > 0) {
                        size = i2 - 1;
                    } else {
                        i = i2;
                    }
                }
                return i;
            }
        },
        FIRST_PRESENT { // from class: com.google.common.collect.SortedLists.KeyPresentBehavior.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
            public <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i) {
                int i2 = 0;
                while (i2 < i) {
                    int i3 = (i2 + i) >>> 1;
                    if (comparator.compare((Object) list.get(i3), e) < 0) {
                        i2 = i3 + 1;
                    } else {
                        i = i3;
                    }
                }
                return i2;
            }
        },
        FIRST_AFTER { // from class: com.google.common.collect.SortedLists.KeyPresentBehavior.4
            @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
            public <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i) {
                return KeyPresentBehavior.LAST_PRESENT.resultIndex(comparator, e, list, i) + 1;
            }
        },
        LAST_BEFORE { // from class: com.google.common.collect.SortedLists.KeyPresentBehavior.5
            @Override // com.google.common.collect.SortedLists.KeyPresentBehavior
            public <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i) {
                return KeyPresentBehavior.FIRST_PRESENT.resultIndex(comparator, e, list, i) - 1;
            }
        };

        public abstract <E> int resultIndex(Comparator<? super E> comparator, E e, List<? extends E> list, int i);
    }

    /* renamed from: a */
    public static <E, K extends Comparable> int m8055a(List<E> list, AbstractC4920g<? super E, K> gVar, K k, KeyPresentBehavior keyPresentBehavior, KeyAbsentBehavior keyAbsentBehavior) {
        return m8054a(list, gVar, k, Ordering.natural(), keyPresentBehavior, keyAbsentBehavior);
    }

    /* renamed from: a */
    public static <E, K> int m8054a(List<E> list, AbstractC4920g<? super E, K> gVar, K k, Comparator<? super K> comparator, KeyPresentBehavior keyPresentBehavior, KeyAbsentBehavior keyAbsentBehavior) {
        return m8053a(Lists.m8226a(list, gVar), k, comparator, keyPresentBehavior, keyAbsentBehavior);
    }

    /* renamed from: a */
    public static <E> int m8053a(List<? extends E> list, E e, Comparator<? super E> comparator, KeyPresentBehavior keyPresentBehavior, KeyAbsentBehavior keyAbsentBehavior) {
        C4933n.m24795a(comparator);
        C4933n.m24795a(list);
        C4933n.m24795a(keyPresentBehavior);
        C4933n.m24795a(keyAbsentBehavior);
        List<? extends E> list2 = list;
        if (!(list instanceof RandomAccess)) {
            list2 = Lists.m8230a(list);
        }
        int i = 0;
        int size = list2.size() - 1;
        while (i <= size) {
            int i2 = (i + size) >>> 1;
            int compare = comparator.compare(e, (Object) list2.get(i2));
            if (compare < 0) {
                size = i2 - 1;
            } else if (compare <= 0) {
                return i + keyPresentBehavior.resultIndex(comparator, e, list2.subList(i, size + 1), i2 - i);
            } else {
                i = i2 + 1;
            }
        }
        return keyAbsentBehavior.resultIndex(i);
    }
}

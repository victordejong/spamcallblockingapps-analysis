package com.privacystar.core.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/CollectionExtensions.class */
public class CollectionExtensions {

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/CollectionExtensions$TieBreaker.class */
    public interface TieBreaker<T> {
        T getPreferred(T t, T t2);

        boolean keepBoth(T t, T t2);
    }

    public static Object getIndex(@NonNull Collection<Object> collection, int i) {
        synchronized (CollectionExtensions.class) {
            try {
                if (collection.size() <= i) {
                    return null;
                }
                Iterator<Object> it = collection.iterator();
                for (int i2 = 0; i2 < i; i2++) {
                    it.next();
                }
                return it.next();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static <T extends Comparable> List<T> merge(List<T> list, List<T> list2) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        while (i < list.size() && i2 < list2.size()) {
            T t = list.get(i);
            T t2 = list2.get(i2);
            if (t.compareTo(t2) == 1) {
                arrayList.add(t);
                i++;
            } else {
                arrayList.add(t2);
                i2++;
            }
        }
        arrayList.addAll(list.subList(i, list.size()));
        arrayList.addAll(list2.subList(i2, list2.size()));
        return arrayList;
    }

    public static <T> List<T> merge(List<T> list, List<T> list2, Comparator<T> comparator) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        while (i < list.size() && i2 < list2.size()) {
            T t = list.get(i);
            T t2 = list2.get(i2);
            int compare = comparator.compare(t, t2);
            if (compare == 0) {
                arrayList.add(t2);
                i++;
                i2++;
            } else if (compare > 0) {
                arrayList.add(t);
                i++;
            } else {
                arrayList.add(t2);
                i2++;
            }
        }
        arrayList.addAll(list.subList(i, list.size()));
        arrayList.addAll(list2.subList(i2, list2.size()));
        return arrayList;
    }

    public static <T> List<T> mergeN(Comparator<T> comparator, List<T>... listArr) {
        List<T> list = listArr[0];
        for (int i = 1; i < listArr.length; i++) {
            list = merge(list, listArr[i], comparator);
        }
        return list;
    }

    public static <T extends Comparable> List<T> mergeN(List<T>... listArr) {
        List<T> list = listArr[0];
        for (int i = 1; i < listArr.length; i++) {
            list = merge(list, listArr[i]);
        }
        return list;
    }

    public static <T extends Comparable> List<T> mergeUnsorted(List<T> list, List<T> list2) {
        Collections.sort(list);
        Collections.sort(list2);
        return merge(list, list2);
    }

    public static <T> List<T> mergeUnsorted(List<T> list, List<T> list2, Comparator<T> comparator) {
        Collections.sort(list, comparator);
        Collections.sort(list2, comparator);
        return merge(list, list2, comparator);
    }

    public static <T> List<T> mergeWithTieBreaker(Comparator<T> comparator, TieBreaker<T> tieBreaker, List<T>... listArr) {
        List<T> list = listArr[0];
        for (int i = 1; i < listArr.length; i++) {
            list = mergeWithTieBreaker(list, listArr[i], comparator, tieBreaker);
        }
        return list;
    }

    public static <T extends Comparable> List<T> mergeWithTieBreaker(List<T> list, List<T> list2, TieBreaker<T> tieBreaker) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        printMergeHeader(list, list2, tieBreaker, false);
        int i2 = 0;
        while (i < list.size() && i2 < list2.size()) {
            T t = list.get(i);
            T t2 = list2.get(i2);
            if (!tieBreaker.keepBoth(t, t2)) {
                i++;
                i2++;
                arrayList.add(tieBreaker.getPreferred(t, t2));
            } else if (t.compareTo(t2) == 1) {
                arrayList.add(t);
                i++;
            } else {
                arrayList.add(t2);
                i2++;
            }
        }
        arrayList.addAll(list.subList(i, list.size()));
        arrayList.addAll(list2.subList(i2, list2.size()));
        return arrayList;
    }

    public static <T> List<T> mergeWithTieBreaker(List<T> list, List<T> list2, Comparator<T> comparator, TieBreaker<T> tieBreaker) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        while (i < list.size() && i2 < list2.size()) {
            T t = list.get(i);
            T t2 = list2.get(i2);
            if (!tieBreaker.keepBoth(t, t2)) {
                i++;
                i2++;
                arrayList.add(tieBreaker.getPreferred(t, t2));
            } else if (comparator.compare(t, t2) == 1) {
                arrayList.add(t);
                i++;
            } else {
                arrayList.add(t2);
                i2++;
            }
        }
        arrayList.addAll(list.subList(i, list.size()));
        arrayList.addAll(list2.subList(i2, list2.size()));
        return arrayList;
    }

    private static <T> void printMergeHeader(List<T> list, List<T> list2, @Nullable TieBreaker<T> tieBreaker, boolean z) {
        T t;
        Timber.m37d("Sorting lists of sizes (%d, %d).", Integer.valueOf(list.size()), Integer.valueOf(list2.size()));
        Timber.m37d("Sorting the lists? %b", Boolean.valueOf(z));
        if (tieBreaker != null) {
            Timber.m28v("Using tie breaker %s", tieBreaker.getClass().getCanonicalName());
        }
        if (list.size() > 0) {
            t = list.get(0);
        } else if (list2.size() > 0) {
            t = list2.get(0);
        } else {
            Timber.m37d("Lists are both empty, cannot determine type of contents...", new Object[0]);
            return;
        }
        Timber.m28v("Sorting objects of type %s", t.getClass().getCanonicalName());
    }
}

package io.reactivex.internal.util;

import io.reactivex.Observer;
import io.reactivex.functions.BiPredicate;
import io.reactivex.functions.Predicate;
import org.reactivestreams.Subscriber;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/AppendOnlyLinkedArrayList.class */
public class AppendOnlyLinkedArrayList<T> {
    final int capacity;
    final Object[] head;
    int offset;
    Object[] tail;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate.class */
    public interface NonThrowingPredicate<T> extends Predicate<T> {
        @Override // io.reactivex.functions.Predicate
        boolean test(T t);
    }

    public AppendOnlyLinkedArrayList(int i) {
        this.capacity = i;
        this.head = new Object[i + 1];
        this.tail = this.head;
    }

    public <U> boolean accept(Observer<? super U> observer) {
        Object[] objArr;
        Object[] objArr2 = this.head;
        int i = this.capacity;
        while (true) {
            if (objArr2 == null) {
                return false;
            }
            for (int i2 = 0; i2 < i && (objArr = objArr2[i2]) != null; i2++) {
                if (NotificationLite.acceptFull(objArr, observer)) {
                    return true;
                }
            }
            objArr2 = objArr2[i];
        }
    }

    public <U> boolean accept(Subscriber<? super U> subscriber) {
        Object[] objArr;
        Object[] objArr2 = this.head;
        int i = this.capacity;
        while (true) {
            if (objArr2 == null) {
                return false;
            }
            for (int i2 = 0; i2 < i && (objArr = objArr2[i2]) != null; i2++) {
                if (NotificationLite.acceptFull(objArr, subscriber)) {
                    return true;
                }
            }
            objArr2 = objArr2[i];
        }
    }

    public void add(T t) {
        int i = this.capacity;
        int i2 = this.offset;
        int i3 = i2;
        if (i2 == i) {
            Object[] objArr = new Object[i + 1];
            this.tail[i] = objArr;
            this.tail = objArr;
            i3 = 0;
        }
        this.tail[i3] = t;
        this.offset = i3 + 1;
    }

    public void forEachWhile(NonThrowingPredicate<? super T> nonThrowingPredicate) {
        Object obj;
        int i = this.capacity;
        for (Object[] objArr = this.head; objArr != null; objArr = (Object[]) objArr[i]) {
            for (int i2 = 0; i2 < i && (obj = objArr[i2]) != null && !nonThrowingPredicate.test(obj); i2++) {
            }
        }
    }

    public <S> void forEachWhile(S s, BiPredicate<? super S, ? super T> biPredicate) throws Exception {
        Object[] objArr = this.head;
        int i = this.capacity;
        while (true) {
            for (int i2 = 0; i2 < i; i2++) {
                Object obj = objArr[i2];
                if (obj == null || biPredicate.test(s, obj)) {
                    return;
                }
            }
            objArr = (Object[]) objArr[i];
        }
    }

    public void setFirst(T t) {
        this.head[0] = t;
    }
}

package p660rx.observers;

import p660rx.Observer;
import p660rx.exceptions.Exceptions;
import p660rx.exceptions.OnErrorThrowable;
import p660rx.internal.operators.NotificationLite;
/* renamed from: rx.observers.SerializedObserver */
/* loaded from: classes3-dex2jar.jar:rx/observers/SerializedObserver.class */
public class SerializedObserver<T> implements Observer<T> {
    public final Observer<? super T> actual;
    public boolean emitting;
    public FastList queue;
    public volatile boolean terminated;

    /* renamed from: rx.observers.SerializedObserver$FastList */
    /* loaded from: classes3-dex2jar.jar:rx/observers/SerializedObserver$FastList.class */
    public static final class FastList {
        public Object[] array;
        public int size;

        public void add(Object obj) {
            Object[] objArr;
            int i = this.size;
            Object[] objArr2 = this.array;
            if (objArr2 == null) {
                objArr = new Object[16];
                this.array = objArr;
            } else {
                objArr = objArr2;
                if (i == objArr2.length) {
                    objArr = new Object[(i >> 2) + i];
                    System.arraycopy(objArr2, 0, objArr, 0, i);
                    this.array = objArr;
                }
            }
            objArr[i] = obj;
            this.size = i + 1;
        }
    }

    public SerializedObserver(Observer<? super T> observer) {
        this.actual = observer;
    }

    @Override // p660rx.Observer
    public void onCompleted() {
        if (!this.terminated) {
            synchronized (this) {
                if (!this.terminated) {
                    this.terminated = true;
                    if (this.emitting) {
                        FastList fastList = this.queue;
                        FastList fastList2 = fastList;
                        if (fastList == null) {
                            fastList2 = new FastList();
                            this.queue = fastList2;
                        }
                        fastList2.add(NotificationLite.completed());
                        return;
                    }
                    this.emitting = true;
                    this.actual.onCompleted();
                }
            }
        }
    }

    @Override // p660rx.Observer
    public void onError(Throwable th) {
        Exceptions.throwIfFatal(th);
        if (!this.terminated) {
            synchronized (this) {
                if (!this.terminated) {
                    this.terminated = true;
                    if (this.emitting) {
                        FastList fastList = this.queue;
                        FastList fastList2 = fastList;
                        if (fastList == null) {
                            fastList2 = new FastList();
                            this.queue = fastList2;
                        }
                        fastList2.add(NotificationLite.error(th));
                        return;
                    }
                    this.emitting = true;
                    this.actual.onError(th);
                }
            }
        }
    }

    @Override // p660rx.Observer
    public void onNext(T t) {
        Object obj;
        if (!this.terminated) {
            synchronized (this) {
                if (!this.terminated) {
                    if (this.emitting) {
                        FastList fastList = this.queue;
                        FastList fastList2 = fastList;
                        if (fastList == null) {
                            fastList2 = new FastList();
                            this.queue = fastList2;
                        }
                        fastList2.add(NotificationLite.next(t));
                        return;
                    }
                    this.emitting = true;
                    try {
                        this.actual.onNext(t);
                        while (true) {
                            synchronized (this) {
                                FastList fastList3 = this.queue;
                                if (fastList3 == null) {
                                    this.emitting = false;
                                    return;
                                }
                                this.queue = null;
                                Object[] objArr = fastList3.array;
                                int length = objArr.length;
                                for (int i = 0; i < length && (obj = objArr[i]) != null; i++) {
                                    try {
                                        if (NotificationLite.accept(this.actual, obj)) {
                                            this.terminated = true;
                                            return;
                                        }
                                    } catch (Throwable th) {
                                        this.terminated = true;
                                        Exceptions.throwIfFatal(th);
                                        this.actual.onError(OnErrorThrowable.addValueAsLastCause(th, t));
                                        return;
                                    }
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        this.terminated = true;
                        Exceptions.throwOrReport(th2, this.actual, t);
                    }
                }
            }
        }
    }
}

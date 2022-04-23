package io.reactivex.subjects;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.plugins.RxJavaPlugins;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/SerializedSubject.class */
public final class SerializedSubject<T> extends Subject<T> implements AppendOnlyLinkedArrayList.NonThrowingPredicate<Object> {

    /* renamed from: f */
    final Subject<T> f19761f;

    /* renamed from: g */
    boolean f19762g;

    /* renamed from: h */
    AppendOnlyLinkedArrayList<Object> f19763h;

    /* renamed from: i */
    volatile boolean f19764i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SerializedSubject(Subject<T> subject) {
        this.f19761f = subject;
    }

    @Override // io.reactivex.internal.util.AppendOnlyLinkedArrayList.NonThrowingPredicate, io.reactivex.functions.Predicate
    /* renamed from: a */
    public boolean mo3191a(Object obj) {
        return NotificationLite.acceptFull(obj, this.f19761f);
    }

    /* renamed from: e */
    void m3190e() {
        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList;
        while (true) {
            synchronized (this) {
                appendOnlyLinkedArrayList = this.f19763h;
                if (appendOnlyLinkedArrayList == null) {
                    this.f19762g = false;
                    return;
                }
                this.f19763h = null;
            }
            appendOnlyLinkedArrayList.m3458d(this);
        }
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (!this.f19764i) {
            synchronized (this) {
                if (!this.f19764i) {
                    this.f19764i = true;
                    if (this.f19762g) {
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f19763h;
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList2 = appendOnlyLinkedArrayList;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList2 = new AppendOnlyLinkedArrayList<>(4);
                            this.f19763h = appendOnlyLinkedArrayList2;
                        }
                        appendOnlyLinkedArrayList2.m3459c(NotificationLite.complete());
                        return;
                    }
                    this.f19762g = true;
                    this.f19761f.onComplete();
                }
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        if (this.f19764i) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        synchronized (this) {
            boolean z = true;
            if (!this.f19764i) {
                this.f19764i = true;
                if (this.f19762g) {
                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f19763h;
                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList2 = appendOnlyLinkedArrayList;
                    if (appendOnlyLinkedArrayList == null) {
                        appendOnlyLinkedArrayList2 = new AppendOnlyLinkedArrayList<>(4);
                        this.f19763h = appendOnlyLinkedArrayList2;
                    }
                    appendOnlyLinkedArrayList2.m3457e(NotificationLite.error(th));
                    return;
                }
                this.f19762g = true;
                z = false;
            }
            if (z) {
                RxJavaPlugins.m3354t(th);
            } else {
                this.f19761f.onError(th);
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        if (!this.f19764i) {
            synchronized (this) {
                if (!this.f19764i) {
                    if (this.f19762g) {
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f19763h;
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList2 = appendOnlyLinkedArrayList;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList2 = new AppendOnlyLinkedArrayList<>(4);
                            this.f19763h = appendOnlyLinkedArrayList2;
                        }
                        appendOnlyLinkedArrayList2.m3459c(NotificationLite.next(t));
                        return;
                    }
                    this.f19762g = true;
                    this.f19761f.onNext(t);
                    m3190e();
                }
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        boolean z = true;
        z = true;
        if (!this.f19764i) {
            synchronized (this) {
                if (!this.f19764i) {
                    if (this.f19762g) {
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f19763h;
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList2 = appendOnlyLinkedArrayList;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList2 = new AppendOnlyLinkedArrayList<>(4);
                            this.f19763h = appendOnlyLinkedArrayList2;
                        }
                        appendOnlyLinkedArrayList2.m3459c(NotificationLite.disposable(disposable));
                        return;
                    }
                    this.f19762g = true;
                    z = false;
                }
            }
        }
        if (z) {
            disposable.dispose();
            return;
        }
        this.f19761f.onSubscribe(disposable);
        m3190e();
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f19761f.subscribe(observer);
    }
}

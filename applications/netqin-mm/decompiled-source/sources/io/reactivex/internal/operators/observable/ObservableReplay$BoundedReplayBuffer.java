package io.reactivex.internal.operators.observable;

import io.reactivex.internal.util.NotificationLite;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p543b0.p548e.p552d.AbstractC9753o;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer.class */
public abstract class ObservableReplay$BoundedReplayBuffer<T> extends AtomicReference<ObservableReplay$Node> implements AbstractC9753o<T> {
    public static final long serialVersionUID = 2346567790059478686L;
    public int size;
    public ObservableReplay$Node tail;

    public ObservableReplay$BoundedReplayBuffer() {
        ObservableReplay$Node observableReplay$Node = new ObservableReplay$Node(null);
        this.tail = observableReplay$Node;
        set(observableReplay$Node);
    }

    public final void addLast(ObservableReplay$Node observableReplay$Node) {
        this.tail.set(observableReplay$Node);
        this.tail = observableReplay$Node;
        this.size++;
    }

    public final void collect(Collection<? super T> collection) {
        ObservableReplay$Node head = getHead();
        while (true) {
            head = head.get();
            if (head != null) {
                Object leaveTransform = leaveTransform(head.value);
                if (!NotificationLite.isComplete(leaveTransform) && !NotificationLite.isError(leaveTransform)) {
                    collection.add((Object) NotificationLite.getValue(leaveTransform));
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    @Override // p530d.p541c.p543b0.p548e.p552d.AbstractC9753o
    public final void complete() {
        addLast(new ObservableReplay$Node(enterTransform(NotificationLite.complete())));
        truncateFinal();
    }

    public Object enterTransform(Object obj) {
        return obj;
    }

    @Override // p530d.p541c.p543b0.p548e.p552d.AbstractC9753o
    public final void error(Throwable th) {
        addLast(new ObservableReplay$Node(enterTransform(NotificationLite.error(th))));
        truncateFinal();
    }

    public ObservableReplay$Node getHead() {
        return get();
    }

    public boolean hasCompleted() {
        Object obj = this.tail.value;
        return obj != null && NotificationLite.isComplete(leaveTransform(obj));
    }

    public boolean hasError() {
        Object obj = this.tail.value;
        return obj != null && NotificationLite.isError(leaveTransform(obj));
    }

    public Object leaveTransform(Object obj) {
        return obj;
    }

    @Override // p530d.p541c.p543b0.p548e.p552d.AbstractC9753o
    public final void next(T t) {
        addLast(new ObservableReplay$Node(enterTransform(NotificationLite.next(t))));
        truncate();
    }

    public final void removeFirst() {
        this.size--;
        setFirst(get().get());
    }

    public final void removeSome(int i) {
        ObservableReplay$Node observableReplay$Node = get();
        while (i > 0) {
            observableReplay$Node = observableReplay$Node.get();
            i--;
            this.size--;
        }
        setFirst(observableReplay$Node);
    }

    @Override // p530d.p541c.p543b0.p548e.p552d.AbstractC9753o
    public final void replay(ObservableReplay$InnerDisposable<T> observableReplay$InnerDisposable) {
        int addAndGet;
        if (observableReplay$InnerDisposable.getAndIncrement() == 0) {
            int i = 1;
            do {
                ObservableReplay$Node observableReplay$Node = (ObservableReplay$Node) observableReplay$InnerDisposable.index();
                ObservableReplay$Node observableReplay$Node2 = observableReplay$Node;
                if (observableReplay$Node == null) {
                    observableReplay$Node2 = getHead();
                    observableReplay$InnerDisposable.index = observableReplay$Node2;
                }
                while (!observableReplay$InnerDisposable.isDisposed()) {
                    ObservableReplay$Node observableReplay$Node3 = observableReplay$Node2.get();
                    if (observableReplay$Node3 == null) {
                        observableReplay$InnerDisposable.index = observableReplay$Node2;
                        addAndGet = observableReplay$InnerDisposable.addAndGet(-i);
                        i = addAndGet;
                    } else if (NotificationLite.accept(leaveTransform(observableReplay$Node3.value), observableReplay$InnerDisposable.child)) {
                        observableReplay$InnerDisposable.index = null;
                        return;
                    } else {
                        observableReplay$Node2 = observableReplay$Node3;
                    }
                }
                return;
            } while (addAndGet != 0);
        }
    }

    public final void setFirst(ObservableReplay$Node observableReplay$Node) {
        set(observableReplay$Node);
    }

    public final void trimHead() {
        ObservableReplay$Node observableReplay$Node = get();
        if (observableReplay$Node.value != null) {
            ObservableReplay$Node observableReplay$Node2 = new ObservableReplay$Node(null);
            observableReplay$Node2.lazySet(observableReplay$Node.get());
            set(observableReplay$Node2);
        }
    }

    public abstract void truncate();

    public void truncateFinal() {
        trimHead();
    }
}

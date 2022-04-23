package io.reactivex.internal.queue;

import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p543b0.p546c.AbstractC9660i;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/queue/MpscLinkedQueue.class */
public final class MpscLinkedQueue<T> implements AbstractC9660i<T> {

    /* renamed from: a */
    public final AtomicReference<LinkedQueueNode<T>> f38561a = new AtomicReference<>();

    /* renamed from: b */
    public final AtomicReference<LinkedQueueNode<T>> f38562b = new AtomicReference<>();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/queue/MpscLinkedQueue$LinkedQueueNode.class */
    public static final class LinkedQueueNode<E> extends AtomicReference<LinkedQueueNode<E>> {
        public static final long serialVersionUID = 2404266111789071508L;
        public E value;

        public LinkedQueueNode() {
        }

        public LinkedQueueNode(E e) {
            spValue(e);
        }

        public E getAndNullValue() {
            E lpValue = lpValue();
            spValue(null);
            return lpValue;
        }

        public E lpValue() {
            return this.value;
        }

        public LinkedQueueNode<E> lvNext() {
            return get();
        }

        public void soNext(LinkedQueueNode<E> linkedQueueNode) {
            lazySet(linkedQueueNode);
        }

        public void spValue(E e) {
            this.value = e;
        }
    }

    public MpscLinkedQueue() {
        LinkedQueueNode<T> linkedQueueNode = new LinkedQueueNode<>();
        m229a(linkedQueueNode);
        m227b(linkedQueueNode);
    }

    /* renamed from: a */
    public LinkedQueueNode<T> m230a() {
        return this.f38562b.get();
    }

    /* renamed from: a */
    public void m229a(LinkedQueueNode<T> linkedQueueNode) {
        this.f38562b.lazySet(linkedQueueNode);
    }

    /* renamed from: b */
    public LinkedQueueNode<T> m228b() {
        return this.f38562b.get();
    }

    /* renamed from: b */
    public LinkedQueueNode<T> m227b(LinkedQueueNode<T> linkedQueueNode) {
        return this.f38561a.getAndSet(linkedQueueNode);
    }

    /* renamed from: c */
    public LinkedQueueNode<T> m226c() {
        return this.f38561a.get();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
        while (poll() != null && !isEmpty()) {
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return m228b() == m226c();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean offer(T t) {
        if (t != null) {
            LinkedQueueNode<T> linkedQueueNode = new LinkedQueueNode<>(t);
            m227b(linkedQueueNode).soNext(linkedQueueNode);
            return true;
        }
        throw new NullPointerException("Null is not a valid element");
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9660i, p530d.p541c.p543b0.p546c.AbstractC9661j
    public T poll() {
        LinkedQueueNode<T> lvNext;
        LinkedQueueNode<T> a = m230a();
        LinkedQueueNode<T> lvNext2 = a.lvNext();
        if (lvNext2 != null) {
            T andNullValue = lvNext2.getAndNullValue();
            m229a(lvNext2);
            return andNullValue;
        } else if (a == m226c()) {
            return null;
        } else {
            do {
                lvNext = a.lvNext();
            } while (lvNext == null);
            T andNullValue2 = lvNext.getAndNullValue();
            m229a(lvNext);
            return andNullValue2;
        }
    }
}

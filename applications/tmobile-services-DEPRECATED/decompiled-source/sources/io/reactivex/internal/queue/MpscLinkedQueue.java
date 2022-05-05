package io.reactivex.internal.queue;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/queue/MpscLinkedQueue.class */
public final class MpscLinkedQueue<T> implements SimplePlainQueue<T> {

    /* renamed from: f */
    private final AtomicReference<LinkedQueueNode<T>> f19205f = new AtomicReference<>();

    /* renamed from: g */
    private final AtomicReference<LinkedQueueNode<T>> f19206g = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/queue/MpscLinkedQueue$LinkedQueueNode.class */
    public static final class LinkedQueueNode<E> extends AtomicReference<LinkedQueueNode<E>> {
        private static final long serialVersionUID = 2404266111789071508L;

        /* renamed from: f */
        private E f19207f;

        LinkedQueueNode() {
        }

        LinkedQueueNode(E e) {
            m3563e(e);
        }

        /* renamed from: a */
        public E m3567a() {
            E b = m3566b();
            m3563e(null);
            return b;
        }

        /* renamed from: b */
        public E m3566b() {
            return this.f19207f;
        }

        /* renamed from: c */
        public LinkedQueueNode<E> m3565c() {
            return get();
        }

        /* renamed from: d */
        public void m3564d(LinkedQueueNode<E> linkedQueueNode) {
            lazySet(linkedQueueNode);
        }

        /* renamed from: e */
        public void m3563e(E e) {
            this.f19207f = e;
        }
    }

    public MpscLinkedQueue() {
        LinkedQueueNode<T> linkedQueueNode = new LinkedQueueNode<>();
        m3569d(linkedQueueNode);
        m3568f(linkedQueueNode);
    }

    /* renamed from: a */
    LinkedQueueNode<T> m3572a() {
        return this.f19206g.get();
    }

    /* renamed from: b */
    LinkedQueueNode<T> m3571b() {
        return this.f19206g.get();
    }

    /* renamed from: c */
    LinkedQueueNode<T> m3570c() {
        return this.f19205f.get();
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public void clear() {
        while (poll() != null && !isEmpty()) {
        }
    }

    /* renamed from: d */
    void m3569d(LinkedQueueNode<T> linkedQueueNode) {
        this.f19206g.lazySet(linkedQueueNode);
    }

    /* renamed from: f */
    LinkedQueueNode<T> m3568f(LinkedQueueNode<T> linkedQueueNode) {
        return this.f19205f.getAndSet(linkedQueueNode);
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean isEmpty() {
        return m3571b() == m3570c();
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean offer(T t) {
        if (t != null) {
            LinkedQueueNode<T> linkedQueueNode = new LinkedQueueNode<>(t);
            m3568f(linkedQueueNode).m3564d(linkedQueueNode);
            return true;
        }
        throw new NullPointerException("Null is not a valid element");
    }

    @Override // io.reactivex.internal.fuseable.SimplePlainQueue, io.reactivex.internal.fuseable.SimpleQueue
    @Nullable
    public T poll() {
        LinkedQueueNode<T> c;
        LinkedQueueNode<T> a = m3572a();
        LinkedQueueNode<T> c2 = a.m3565c();
        if (c2 != null) {
            T a2 = c2.m3567a();
            m3569d(c2);
            return a2;
        } else if (a == m3570c()) {
            return null;
        } else {
            do {
                c = a.m3565c();
            } while (c == null);
            T a3 = c.m3567a();
            m3569d(c);
            return a3;
        }
    }
}

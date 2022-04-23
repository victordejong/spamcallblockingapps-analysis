package com.google.common.collect;

import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Queue;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4957a0;
import p131c.p161d.p266c.p269c.C4983g0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/EvictingQueue.class */
public final class EvictingQueue<E> extends AbstractC4957a0<E> implements Serializable {
    public static final long serialVersionUID = 0;
    public final Queue<E> delegate;
    public final int maxSize;

    public EvictingQueue(int i) {
        C4933n.m24787a(i >= 0, "maxSize (%s) must >= 0", i);
        this.delegate = new ArrayDeque(i);
        this.maxSize = i;
    }

    public static <E> EvictingQueue<E> create(int i) {
        return new EvictingQueue<>(i);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
    public boolean add(E e) {
        C4933n.m24795a(e);
        if (this.maxSize == 0) {
            return true;
        }
        if (size() == this.maxSize) {
            this.delegate.remove();
        }
        this.delegate.add(e);
        return true;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        int size = collection.size();
        if (size < this.maxSize) {
            return standardAddAll(collection);
        }
        clear();
        return C4983g0.m24718a((Collection) this, C4983g0.m24724a(collection, size - this.maxSize));
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
    public boolean contains(Object obj) {
        Queue<E> delegate = delegate();
        C4933n.m24795a(obj);
        return delegate.contains(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4957a0, p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
    public Queue<E> delegate() {
        return this.delegate;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4957a0, java.util.Queue
    public boolean offer(E e) {
        return add(e);
    }

    public int remainingCapacity() {
        return this.maxSize - size();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
    public boolean remove(Object obj) {
        Queue<E> delegate = delegate();
        C4933n.m24795a(obj);
        return delegate.remove(obj);
    }
}

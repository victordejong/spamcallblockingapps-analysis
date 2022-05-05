package p081h.p160h.p179e.p180a.p190p;

import android.annotation.SuppressLint;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;
@SuppressLint({"NewApi"})
/* renamed from: h.h.e.a.p.h */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/p/h.class */
public class C6437h<E> extends LinkedBlockingDeque<E> {
    @Override // java.util.concurrent.LinkedBlockingDeque, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue, java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue, java.util.Deque
    public boolean add(E e) {
        return super.offerFirst(e);
    }

    @Override // java.util.concurrent.LinkedBlockingDeque, java.util.Queue, java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue, java.util.Deque
    public boolean offer(E e) {
        return super.offerFirst(e);
    }

    @Override // java.util.concurrent.LinkedBlockingDeque, java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue
    public boolean offer(E e, long j, TimeUnit timeUnit) throws InterruptedException {
        return super.offerFirst(e, j, timeUnit);
    }

    @Override // java.util.concurrent.LinkedBlockingDeque, java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue
    public void put(E e) throws InterruptedException {
        super.putFirst(e);
    }
}

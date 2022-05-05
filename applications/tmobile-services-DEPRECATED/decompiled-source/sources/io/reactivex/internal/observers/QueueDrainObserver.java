package io.reactivex.internal.observers;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.util.ObservableQueueDrain;
import io.reactivex.internal.util.QueueDrainHelper;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/observers/QueueDrainObserver.class */
public abstract class QueueDrainObserver<T, U, V> extends QueueDrainSubscriberPad2 implements Observer<T>, ObservableQueueDrain<U, V> {

    /* renamed from: g */
    protected final Observer<? super V> f15214g;

    /* renamed from: h */
    protected final SimplePlainQueue<U> f15215h;

    /* renamed from: i */
    protected volatile boolean f15216i;

    /* renamed from: j */
    protected volatile boolean f15217j;

    /* renamed from: k */
    protected Throwable f15218k;

    public QueueDrainObserver(Observer<? super V> observer, SimplePlainQueue<U> simplePlainQueue) {
        this.f15214g = observer;
        this.f15215h = simplePlainQueue;
    }

    @Override // io.reactivex.internal.util.ObservableQueueDrain
    /* renamed from: a */
    public final boolean mo3425a() {
        return this.f15217j;
    }

    @Override // io.reactivex.internal.util.ObservableQueueDrain
    /* renamed from: b */
    public final boolean mo3424b() {
        return this.f15216i;
    }

    @Override // io.reactivex.internal.util.ObservableQueueDrain
    /* renamed from: c */
    public final Throwable mo3423c() {
        return this.f15218k;
    }

    @Override // io.reactivex.internal.util.ObservableQueueDrain
    /* renamed from: d */
    public final int mo3422d(int i) {
        return this.f15219f.addAndGet(i);
    }

    @Override // io.reactivex.internal.util.ObservableQueueDrain
    /* renamed from: e */
    public void mo3421e(Observer<? super V> observer, U u) {
    }

    /* renamed from: f */
    public final boolean m4344f() {
        return this.f15219f.getAndIncrement() == 0;
    }

    /* renamed from: g */
    public final boolean m4343g() {
        boolean z = true;
        if (this.f15219f.get() != 0 || !this.f15219f.compareAndSet(0, 1)) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final void m4342h(U u, boolean z, Disposable disposable) {
        Observer<? super V> observer = this.f15214g;
        SimplePlainQueue<U> simplePlainQueue = this.f15215h;
        if (this.f15219f.get() != 0 || !this.f15219f.compareAndSet(0, 1)) {
            simplePlainQueue.offer(u);
            if (!m4344f()) {
                return;
            }
        } else {
            mo3421e(observer, u);
            if (mo3422d(-1) == 0) {
                return;
            }
        }
        QueueDrainHelper.m3402d(simplePlainQueue, observer, z, disposable, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: i */
    public final void m4341i(U u, boolean z, Disposable disposable) {
        Observer<? super V> observer = this.f15214g;
        SimplePlainQueue<U> simplePlainQueue = this.f15215h;
        if (this.f15219f.get() != 0 || !this.f15219f.compareAndSet(0, 1)) {
            simplePlainQueue.offer(u);
            if (!m4344f()) {
                return;
            }
        } else if (simplePlainQueue.isEmpty()) {
            mo3421e(observer, u);
            if (mo3422d(-1) == 0) {
                return;
            }
        } else {
            simplePlainQueue.offer(u);
        }
        QueueDrainHelper.m3402d(simplePlainQueue, observer, z, disposable, this);
    }
}

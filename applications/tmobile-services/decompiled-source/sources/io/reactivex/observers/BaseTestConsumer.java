package io.reactivex.observers;

import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.VolatileSizeArrayList;
import io.reactivex.observers.BaseTestConsumer;
import java.util.List;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes2-dex2jar.jar:io/reactivex/observers/BaseTestConsumer.class */
public abstract class BaseTestConsumer<T, U extends BaseTestConsumer<T, U>> implements Disposable {

    /* renamed from: i */
    protected long f19441i;

    /* renamed from: j */
    protected boolean f19442j;

    /* renamed from: k */
    protected int f19443k;

    /* renamed from: l */
    protected int f19444l;

    /* renamed from: g */
    protected final List<T> f19439g = new VolatileSizeArrayList();

    /* renamed from: h */
    protected final List<Throwable> f19440h = new VolatileSizeArrayList();

    /* renamed from: f */
    protected final CountDownLatch f19438f = new CountDownLatch(1);

    /* loaded from: classes2-dex2jar.jar:io/reactivex/observers/BaseTestConsumer$TestWaitStrategy.class */
    public enum TestWaitStrategy implements Runnable {
        SPIN { // from class: io.reactivex.observers.BaseTestConsumer.TestWaitStrategy.1
            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
            }
        },
        YIELD { // from class: io.reactivex.observers.BaseTestConsumer.TestWaitStrategy.2
            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                Thread.yield();
            }
        },
        SLEEP_1MS { // from class: io.reactivex.observers.BaseTestConsumer.TestWaitStrategy.3
            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.sleep(1);
            }
        },
        SLEEP_10MS { // from class: io.reactivex.observers.BaseTestConsumer.TestWaitStrategy.4
            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.sleep(10);
            }
        },
        SLEEP_100MS { // from class: io.reactivex.observers.BaseTestConsumer.TestWaitStrategy.5
            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.sleep(100);
            }
        },
        SLEEP_1000MS { // from class: io.reactivex.observers.BaseTestConsumer.TestWaitStrategy.6
            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.sleep(1000);
            }
        };

        static void sleep(int i) {
            try {
                Thread.sleep(i);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // java.lang.Runnable
        public abstract void run();
    }
}

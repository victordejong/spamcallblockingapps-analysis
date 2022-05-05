package io.reactivex.internal.schedulers;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/RxThreadFactory.class */
public final class RxThreadFactory extends AtomicLong implements ThreadFactory {
    private static final long serialVersionUID = -7789753024099756196L;

    /* renamed from: f */
    final String f19294f;

    /* renamed from: g */
    final int f19295g;

    /* renamed from: h */
    final boolean f19296h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/RxThreadFactory$RxCustomThread.class */
    static final class RxCustomThread extends Thread implements NonBlockingThread {
        RxCustomThread(Runnable runnable, String str) {
            super(runnable, str);
        }
    }

    public RxThreadFactory(String str) {
        this(str, 5, false);
    }

    public RxThreadFactory(String str, int i) {
        this(str, i, false);
    }

    public RxThreadFactory(String str, int i, boolean z) {
        this.f19294f = str;
        this.f19295g = i;
        this.f19296h = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        String str = this.f19294f + '-' + incrementAndGet();
        Thread rxCustomThread = this.f19296h ? new RxCustomThread(runnable, str) : new Thread(runnable, str);
        rxCustomThread.setPriority(this.f19295g);
        rxCustomThread.setDaemon(true);
        return rxCustomThread;
    }

    @Override // java.util.concurrent.atomic.AtomicLong
    public String toString() {
        return "RxThreadFactory[" + this.f19294f + "]";
    }
}

package io.bidmachine;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/b.class */
class b extends ThreadPoolExecutor {
    private static volatile b instance;
    private boolean isEnabled = false;
    private List<Runnable> pendingCommands;

    b(int i) {
        super(i, i, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
    }

    public static b get() {
        if (instance == null) {
            synchronized (b.class) {
                try {
                    if (instance == null) {
                        instance = new b(Runtime.getRuntime().availableProcessors() * 2);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void enable() {
        this.isEnabled = true;
        synchronized (this) {
            List<Runnable> list = this.pendingCommands;
            if (list != null) {
                for (Runnable runnable : list) {
                    execute(runnable);
                }
                this.pendingCommands.clear();
            }
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (this.isEnabled) {
            super.execute(runnable);
            return;
        }
        synchronized (this) {
            if (this.isEnabled) {
                super.execute(runnable);
            } else {
                if (this.pendingCommands == null) {
                    this.pendingCommands = new ArrayList();
                }
                this.pendingCommands.add(runnable);
            }
        }
    }
}

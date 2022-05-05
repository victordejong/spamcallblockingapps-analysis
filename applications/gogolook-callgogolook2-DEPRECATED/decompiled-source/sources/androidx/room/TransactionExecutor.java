package androidx.room;

import androidx.annotation.NonNull;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/room/TransactionExecutor.class */
public class TransactionExecutor implements Executor {
    public Runnable mActive;
    public final Executor mExecutor;
    public final ArrayDeque<Runnable> mTasks = new ArrayDeque<>();

    public TransactionExecutor(@NonNull Executor executor) {
        this.mExecutor = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(final Runnable runnable) {
        synchronized (this) {
            this.mTasks.offer(new Runnable() { // from class: androidx.room.TransactionExecutor.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        runnable.run();
                    } finally {
                        TransactionExecutor.this.scheduleNext();
                    }
                }
            });
            if (this.mActive == null) {
                scheduleNext();
            }
        }
    }

    public void scheduleNext() {
        synchronized (this) {
            Runnable poll = this.mTasks.poll();
            this.mActive = poll;
            if (poll != null) {
                this.mExecutor.execute(this.mActive);
            }
        }
    }
}

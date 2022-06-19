package androidx.room;

import androidx.sqlite.p082db.AbstractC2795e;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: androidx.room.o */
/* loaded from: classes-dex2jar.jar:androidx/room/o.class */
public abstract class AbstractC2764o {
    private final AbstractC2748h mDatabase;
    private final AtomicBoolean mLock = new AtomicBoolean(false);
    private volatile AbstractC2795e mStmt;

    public AbstractC2764o(AbstractC2748h abstractC2748h) {
        this.mDatabase = abstractC2748h;
    }

    private AbstractC2795e createNewStatement() {
        return this.mDatabase.m39963a(createQuery());
    }

    private AbstractC2795e getStmt(boolean z) {
        AbstractC2795e abstractC2795e;
        if (z) {
            if (this.mStmt == null) {
                this.mStmt = createNewStatement();
            }
            abstractC2795e = this.mStmt;
        } else {
            abstractC2795e = createNewStatement();
        }
        return abstractC2795e;
    }

    public AbstractC2795e acquire() {
        assertNotMainThread();
        return getStmt(this.mLock.compareAndSet(false, true));
    }

    protected void assertNotMainThread() {
        this.mDatabase.m39961c();
    }

    protected abstract String createQuery();

    public void release(AbstractC2795e abstractC2795e) {
        if (abstractC2795e == this.mStmt) {
            this.mLock.set(false);
        }
    }
}

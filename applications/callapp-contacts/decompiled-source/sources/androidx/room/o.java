package androidx.room;

import androidx.sqlite.db.e;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:androidx/room/o.class */
public abstract class o {
    private final h mDatabase;
    private final AtomicBoolean mLock = new AtomicBoolean(false);
    private volatile e mStmt;

    public o(h hVar) {
        this.mDatabase = hVar;
    }

    private e createNewStatement() {
        return this.mDatabase.a(createQuery());
    }

    private e getStmt(boolean z) {
        e eVar;
        if (z) {
            if (this.mStmt == null) {
                this.mStmt = createNewStatement();
            }
            eVar = this.mStmt;
        } else {
            eVar = createNewStatement();
        }
        return eVar;
    }

    public e acquire() {
        assertNotMainThread();
        return getStmt(this.mLock.compareAndSet(false, true));
    }

    protected void assertNotMainThread() {
        this.mDatabase.c();
    }

    protected abstract String createQuery();

    public void release(e eVar) {
        if (eVar == this.mStmt) {
            this.mLock.set(false);
        }
    }
}

package p1727n3.p1751c0;

import java.util.concurrent.atomic.AtomicBoolean;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: n3.c0.c0 */
/* loaded from: classes-dex2jar.jar:n3/c0/c0.class */
public abstract class AbstractC25646c0 {
    private final AbstractC25677q mDatabase;
    private final AtomicBoolean mLock = new AtomicBoolean(false);
    private volatile AbstractC26154f mStmt;

    public AbstractC25646c0(AbstractC25677q abstractC25677q) {
        this.mDatabase = abstractC25677q;
    }

    private AbstractC26154f createNewStatement() {
        return this.mDatabase.compileStatement(createQuery());
    }

    private AbstractC26154f getStmt(boolean z) {
        AbstractC26154f abstractC26154f;
        if (z) {
            if (this.mStmt == null) {
                this.mStmt = createNewStatement();
            }
            abstractC26154f = this.mStmt;
        } else {
            abstractC26154f = createNewStatement();
        }
        return abstractC26154f;
    }

    public AbstractC26154f acquire() {
        assertNotMainThread();
        return getStmt(this.mLock.compareAndSet(false, true));
    }

    public void assertNotMainThread() {
        this.mDatabase.assertNotMainThread();
    }

    public abstract String createQuery();

    public void release(AbstractC26154f abstractC26154f) {
        if (abstractC26154f == this.mStmt) {
            this.mLock.set(false);
        }
    }
}

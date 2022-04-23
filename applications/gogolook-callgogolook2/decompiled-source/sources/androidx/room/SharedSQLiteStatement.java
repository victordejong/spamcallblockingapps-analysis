package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.sqlite.p008db.SupportSQLiteStatement;
import java.util.concurrent.atomic.AtomicBoolean;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/room/SharedSQLiteStatement.class */
public abstract class SharedSQLiteStatement {
    public final RoomDatabase mDatabase;
    public final AtomicBoolean mLock = new AtomicBoolean(false);
    public volatile SupportSQLiteStatement mStmt;

    public SharedSQLiteStatement(RoomDatabase roomDatabase) {
        this.mDatabase = roomDatabase;
    }

    private SupportSQLiteStatement createNewStatement() {
        return this.mDatabase.compileStatement(createQuery());
    }

    private SupportSQLiteStatement getStmt(boolean z) {
        SupportSQLiteStatement supportSQLiteStatement;
        if (z) {
            if (this.mStmt == null) {
                this.mStmt = createNewStatement();
            }
            supportSQLiteStatement = this.mStmt;
        } else {
            supportSQLiteStatement = createNewStatement();
        }
        return supportSQLiteStatement;
    }

    public SupportSQLiteStatement acquire() {
        assertNotMainThread();
        return getStmt(this.mLock.compareAndSet(false, true));
    }

    public void assertNotMainThread() {
        this.mDatabase.assertNotMainThread();
    }

    public abstract String createQuery();

    public void release(SupportSQLiteStatement supportSQLiteStatement) {
        if (supportSQLiteStatement == this.mStmt) {
            this.mLock.set(false);
        }
    }
}

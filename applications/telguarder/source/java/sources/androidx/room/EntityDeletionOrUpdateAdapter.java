package androidx.room;

import androidx.sqlite.p006db.SupportSQLiteStatement;
/* loaded from: classes-dex2jar.jar:androidx/room/EntityDeletionOrUpdateAdapter.class */
public abstract class EntityDeletionOrUpdateAdapter<T> extends SharedSQLiteStatement {
    public EntityDeletionOrUpdateAdapter(RoomDatabase roomDatabase) {
        super(roomDatabase);
    }

    protected abstract void bind(SupportSQLiteStatement supportSQLiteStatement, T t);

    @Override // androidx.room.SharedSQLiteStatement
    protected abstract String createQuery();

    public final int handle(T t) {
        SupportSQLiteStatement acquire = acquire();
        try {
            bind(acquire, t);
            return acquire.executeUpdateDelete();
        } finally {
            release(acquire);
        }
    }

    /* JADX WARN: Finally extract failed */
    public final int handleMultiple(Iterable<T> iterable) {
        SupportSQLiteStatement acquire = acquire();
        int i = 0;
        try {
            for (T t : iterable) {
                bind(acquire, t);
                i += acquire.executeUpdateDelete();
            }
            release(acquire);
            return i;
        } catch (Throwable th) {
            release(acquire);
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    public final int handleMultiple(T[] tArr) {
        SupportSQLiteStatement acquire = acquire();
        try {
            int i = 0;
            for (T t : tArr) {
                bind(acquire, t);
                i += acquire.executeUpdateDelete();
            }
            release(acquire);
            return i;
        } catch (Throwable th) {
            release(acquire);
            throw th;
        }
    }
}

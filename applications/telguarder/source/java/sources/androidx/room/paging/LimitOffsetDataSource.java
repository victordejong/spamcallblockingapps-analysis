package androidx.room.paging;

import android.database.Cursor;
import androidx.paging.PositionalDataSource;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.sqlite.p006db.SupportSQLiteQuery;
import java.util.Collections;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/room/paging/LimitOffsetDataSource.class */
public abstract class LimitOffsetDataSource<T> extends PositionalDataSource<T> {
    private final String mCountQuery;
    private final RoomDatabase mDb;
    private final boolean mInTransaction;
    private final String mLimitOffsetQuery;
    private final InvalidationTracker.Observer mObserver;
    private final RoomSQLiteQuery mSourceQuery;

    protected LimitOffsetDataSource(RoomDatabase roomDatabase, RoomSQLiteQuery roomSQLiteQuery, boolean z, String... strArr) {
        this.mDb = roomDatabase;
        this.mSourceQuery = roomSQLiteQuery;
        this.mInTransaction = z;
        this.mCountQuery = "SELECT COUNT(*) FROM ( " + roomSQLiteQuery.getSql() + " )";
        this.mLimitOffsetQuery = "SELECT * FROM ( " + roomSQLiteQuery.getSql() + " ) LIMIT ? OFFSET ?";
        InvalidationTracker.Observer observer = new InvalidationTracker.Observer(strArr) { // from class: androidx.room.paging.LimitOffsetDataSource.1
            @Override // androidx.room.InvalidationTracker.Observer
            public void onInvalidated(Set<String> set) {
                LimitOffsetDataSource.this.invalidate();
            }
        };
        this.mObserver = observer;
        roomDatabase.getInvalidationTracker().addWeakObserver(observer);
    }

    protected LimitOffsetDataSource(RoomDatabase roomDatabase, SupportSQLiteQuery supportSQLiteQuery, boolean z, String... strArr) {
        this(roomDatabase, RoomSQLiteQuery.copyFrom(supportSQLiteQuery), z, strArr);
    }

    private RoomSQLiteQuery getSQLiteQuery(int i, int i2) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(this.mLimitOffsetQuery, this.mSourceQuery.getArgCount() + 2);
        acquire.copyArgumentsFrom(this.mSourceQuery);
        acquire.bindLong(acquire.getArgCount() - 1, i2);
        acquire.bindLong(acquire.getArgCount(), i);
        return acquire;
    }

    protected abstract List<T> convertRows(Cursor cursor);

    public int countItems() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(this.mCountQuery, this.mSourceQuery.getArgCount());
        acquire.copyArgumentsFrom(this.mSourceQuery);
        Cursor query = this.mDb.query(acquire);
        try {
            if (query.moveToFirst()) {
                return query.getInt(0);
            }
            query.close();
            acquire.release();
            return 0;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public boolean isInvalid() {
        this.mDb.getInvalidationTracker().refreshVersionsSync();
        return LimitOffsetDataSource.super.isInvalid();
    }

    public void loadInitial(PositionalDataSource.LoadInitialParams loadInitialParams, PositionalDataSource.LoadInitialCallback<T> loadInitialCallback) {
        RoomSQLiteQuery roomSQLiteQuery;
        Throwable th;
        Cursor cursor;
        int i;
        Cursor cursor2;
        List<T> list;
        List<T> emptyList = Collections.emptyList();
        this.mDb.beginTransaction();
        try {
            int countItems = countItems();
            if (countItems != 0) {
                i = computeInitialLoadPosition(loadInitialParams, countItems);
                roomSQLiteQuery = getSQLiteQuery(i, computeInitialLoadSize(loadInitialParams, i, countItems));
                cursor = null;
                try {
                    cursor2 = this.mDb.query(roomSQLiteQuery);
                    List<T> convertRows = convertRows(cursor2);
                    cursor = cursor2;
                    this.mDb.setTransactionSuccessful();
                    list = convertRows;
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    this.mDb.endTransaction();
                    if (roomSQLiteQuery != null) {
                        roomSQLiteQuery.release();
                    }
                    throw th;
                }
            } else {
                i = 0;
                roomSQLiteQuery = null;
                cursor2 = null;
                list = emptyList;
            }
            if (cursor2 != null) {
                cursor2.close();
            }
            this.mDb.endTransaction();
            if (roomSQLiteQuery != null) {
                roomSQLiteQuery.release();
            }
            loadInitialCallback.onResult(list, i, countItems);
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = null;
            cursor = null;
        }
    }

    public List<T> loadRange(int i, int i2) {
        RoomSQLiteQuery sQLiteQuery = getSQLiteQuery(i, i2);
        if (!this.mInTransaction) {
            Cursor query = this.mDb.query(sQLiteQuery);
            try {
                return convertRows(query);
            } finally {
                query.close();
                sQLiteQuery.release();
            }
        }
        this.mDb.beginTransaction();
        Cursor cursor = null;
        try {
            Cursor query2 = this.mDb.query(sQLiteQuery);
            List<T> convertRows = convertRows(query2);
            cursor = query2;
            this.mDb.setTransactionSuccessful();
            if (query2 != null) {
                query2.close();
            }
            this.mDb.endTransaction();
            sQLiteQuery.release();
            return convertRows;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            this.mDb.endTransaction();
            sQLiteQuery.release();
            throw th;
        }
    }

    public void loadRange(PositionalDataSource.LoadRangeParams loadRangeParams, PositionalDataSource.LoadRangeCallback<T> loadRangeCallback) {
        loadRangeCallback.onResult(loadRange(loadRangeParams.startPosition, loadRangeParams.loadSize));
    }
}

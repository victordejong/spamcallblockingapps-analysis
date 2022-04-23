package android.arch.persistence.room.paging;

import android.arch.paging.PositionalDataSource;
import android.arch.persistence.p000db.SupportSQLiteQuery;
import android.arch.persistence.room.InvalidationTracker;
import android.arch.persistence.room.RoomDatabase;
import android.arch.persistence.room.RoomSQLiteQuery;
import android.database.Cursor;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import java.util.Collections;
import java.util.List;
import java.util.Set;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:android/arch/persistence/room/paging/LimitOffsetDataSource.class */
public abstract class LimitOffsetDataSource<T> extends PositionalDataSource<T> {
    private final String mCountQuery;
    private final RoomDatabase mDb;
    private final boolean mInTransaction;
    private final String mLimitOffsetQuery;
    private final InvalidationTracker.Observer mObserver;
    private final RoomSQLiteQuery mSourceQuery;

    protected LimitOffsetDataSource(RoomDatabase roomDatabase, SupportSQLiteQuery supportSQLiteQuery, boolean z, String... strArr) {
        this(roomDatabase, RoomSQLiteQuery.copyFrom(supportSQLiteQuery), z, strArr);
    }

    protected LimitOffsetDataSource(RoomDatabase roomDatabase, RoomSQLiteQuery roomSQLiteQuery, boolean z, String... strArr) {
        this.mDb = roomDatabase;
        this.mSourceQuery = roomSQLiteQuery;
        this.mInTransaction = z;
        this.mCountQuery = "SELECT COUNT(*) FROM ( " + this.mSourceQuery.getSql() + " )";
        this.mLimitOffsetQuery = "SELECT * FROM ( " + this.mSourceQuery.getSql() + " ) LIMIT ? OFFSET ?";
        this.mObserver = new InvalidationTracker.Observer(strArr) { // from class: android.arch.persistence.room.paging.LimitOffsetDataSource.1
            @Override // android.arch.persistence.room.InvalidationTracker.Observer
            public void onInvalidated(@NonNull Set<String> set) {
                LimitOffsetDataSource.this.invalidate();
            }
        };
        roomDatabase.getInvalidationTracker().addWeakObserver(this.mObserver);
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

    public void loadInitial(@NonNull PositionalDataSource.LoadInitialParams loadInitialParams, @NonNull PositionalDataSource.LoadInitialCallback<T> loadInitialCallback) {
        int countItems = countItems();
        if (countItems == 0) {
            loadInitialCallback.onResult(Collections.emptyList(), 0, 0);
            return;
        }
        int computeInitialLoadPosition = computeInitialLoadPosition(loadInitialParams, countItems);
        int computeInitialLoadSize = computeInitialLoadSize(loadInitialParams, computeInitialLoadPosition, countItems);
        List<T> loadRange = loadRange(computeInitialLoadPosition, computeInitialLoadSize);
        if (loadRange == null || loadRange.size() != computeInitialLoadSize) {
            invalidate();
        } else {
            loadInitialCallback.onResult(loadRange, computeInitialLoadPosition, countItems);
        }
    }

    @Nullable
    public List<T> loadRange(int i, int i2) {
        Throwable th;
        Cursor cursor;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(this.mLimitOffsetQuery, this.mSourceQuery.getArgCount() + 2);
        acquire.copyArgumentsFrom(this.mSourceQuery);
        acquire.bindLong(acquire.getArgCount() - 1, i2);
        acquire.bindLong(acquire.getArgCount(), i);
        if (this.mInTransaction) {
            this.mDb.beginTransaction();
            try {
                cursor = this.mDb.query(acquire);
                try {
                    List<T> convertRows = convertRows(cursor);
                    this.mDb.setTransactionSuccessful();
                    if (cursor != null) {
                        cursor.close();
                    }
                    this.mDb.endTransaction();
                    acquire.release();
                    return convertRows;
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    this.mDb.endTransaction();
                    acquire.release();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        } else {
            Cursor query = this.mDb.query(acquire);
            try {
                return convertRows(query);
            } finally {
                query.close();
                acquire.release();
            }
        }
    }

    public void loadRange(@NonNull PositionalDataSource.LoadRangeParams loadRangeParams, @NonNull PositionalDataSource.LoadRangeCallback<T> loadRangeCallback) {
        List<T> loadRange = loadRange(loadRangeParams.startPosition, loadRangeParams.loadSize);
        if (loadRange != null) {
            loadRangeCallback.onResult(loadRange);
        } else {
            invalidate();
        }
    }
}

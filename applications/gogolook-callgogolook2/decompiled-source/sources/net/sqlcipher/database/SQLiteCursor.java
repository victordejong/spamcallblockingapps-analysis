package net.sqlcipher.database;

import android.database.DataSetObserver;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import gogolook.callgogolook2.gson.UserProfile;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import net.sqlcipher.AbstractWindowedCursor;
import net.sqlcipher.CursorWindow;
import net.sqlcipher.SQLException;
/* loaded from: classes3-dex2jar.jar:net/sqlcipher/database/SQLiteCursor.class */
public class SQLiteCursor extends AbstractWindowedCursor {
    public static final int NO_COUNT = -1;
    public static final String TAG = "Cursor";
    public String[] mColumns;
    public SQLiteDatabase mDatabase;
    public SQLiteCursorDriver mDriver;
    public String mEditTable;
    public MainThreadNotificationHandler mNotificationHandler;
    public SQLiteQuery mQuery;
    public int mCount = -1;
    public int mMaxRead = Integer.MAX_VALUE;
    public int mInitialRead = Integer.MAX_VALUE;
    public int mCursorState = 0;
    public ReentrantLock mLock = null;
    public boolean mPendingData = false;
    public Throwable mStackTrace = new DatabaseObjectNotClosedException().fillInStackTrace();
    public Map<String, Integer> mColumnNameMap = null;

    /* loaded from: classes3-dex2jar.jar:net/sqlcipher/database/SQLiteCursor$MainThreadNotificationHandler.class */
    public static class MainThreadNotificationHandler extends Handler {
        public final WeakReference<SQLiteCursor> wrappedCursor;

        public MainThreadNotificationHandler(SQLiteCursor sQLiteCursor) {
            this.wrappedCursor = new WeakReference<>(sQLiteCursor);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            SQLiteCursor sQLiteCursor = this.wrappedCursor.get();
            if (sQLiteCursor != null) {
                sQLiteCursor.notifyDataSetChange();
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:net/sqlcipher/database/SQLiteCursor$QueryThread.class */
    public final class QueryThread implements Runnable {
        public final int mThreadState;

        public QueryThread(int i) {
            this.mThreadState = i;
        }

        private void sendMessage() {
            SQLiteCursor sQLiteCursor = SQLiteCursor.this;
            MainThreadNotificationHandler mainThreadNotificationHandler = sQLiteCursor.mNotificationHandler;
            if (mainThreadNotificationHandler != null) {
                mainThreadNotificationHandler.sendEmptyMessage(1);
                SQLiteCursor.this.mPendingData = false;
                return;
            }
            sQLiteCursor.mPendingData = true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0080, code lost:
            r5.this$0.mCount = r0;
            sendMessage();
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r5 = this;
                r0 = r5
                net.sqlcipher.database.SQLiteCursor r0 = net.sqlcipher.database.SQLiteCursor.this
                net.sqlcipher.CursorWindow r0 = net.sqlcipher.database.SQLiteCursor.access$100(r0)
                r6 = r0
                int r0 = android.os.Process.myTid()
                r1 = 10
                android.os.Process.setThreadPriority(r0, r1)
            L_0x0010:
                r0 = r5
                net.sqlcipher.database.SQLiteCursor r0 = net.sqlcipher.database.SQLiteCursor.this
                java.util.concurrent.locks.ReentrantLock r0 = net.sqlcipher.database.SQLiteCursor.access$200(r0)
                r0.lock()
                r0 = r5
                net.sqlcipher.database.SQLiteCursor r0 = net.sqlcipher.database.SQLiteCursor.this
                int r0 = net.sqlcipher.database.SQLiteCursor.access$300(r0)
                r1 = r5
                int r1 = r1.mThreadState
                if (r0 == r1) goto L_0x0035
                r0 = r5
                net.sqlcipher.database.SQLiteCursor r0 = net.sqlcipher.database.SQLiteCursor.this
                java.util.concurrent.locks.ReentrantLock r0 = net.sqlcipher.database.SQLiteCursor.access$200(r0)
                r0.unlock()
                goto L_0x00a7
            L_0x0035:
                r0 = r5
                net.sqlcipher.database.SQLiteCursor r0 = net.sqlcipher.database.SQLiteCursor.this     // Catch: all -> 0x0090, Exception -> 0x00a8
                net.sqlcipher.database.SQLiteQuery r0 = net.sqlcipher.database.SQLiteCursor.access$600(r0)     // Catch: all -> 0x0090, Exception -> 0x00a8
                r1 = r6
                r2 = r5
                net.sqlcipher.database.SQLiteCursor r2 = net.sqlcipher.database.SQLiteCursor.this     // Catch: all -> 0x0090, Exception -> 0x00a8
                int r2 = net.sqlcipher.database.SQLiteCursor.access$400(r2)     // Catch: all -> 0x0090, Exception -> 0x00a8
                r3 = r5
                net.sqlcipher.database.SQLiteCursor r3 = net.sqlcipher.database.SQLiteCursor.this     // Catch: all -> 0x0090, Exception -> 0x00a8
                int r3 = net.sqlcipher.database.SQLiteCursor.access$500(r3)     // Catch: all -> 0x0090, Exception -> 0x00a8
                int r0 = r0.fillWindow(r1, r2, r3)     // Catch: all -> 0x0090, Exception -> 0x00a8
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L_0x009d
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L_0x0080
                r0 = r5
                net.sqlcipher.database.SQLiteCursor r0 = net.sqlcipher.database.SQLiteCursor.this     // Catch: all -> 0x0090, Exception -> 0x00a8
                r1 = r5
                net.sqlcipher.database.SQLiteCursor r1 = net.sqlcipher.database.SQLiteCursor.this     // Catch: all -> 0x0090, Exception -> 0x00a8
                int r1 = net.sqlcipher.database.SQLiteCursor.access$500(r1)     // Catch: all -> 0x0090, Exception -> 0x00a8
                r2 = r5
                net.sqlcipher.database.SQLiteCursor r2 = net.sqlcipher.database.SQLiteCursor.this     // Catch: all -> 0x0090, Exception -> 0x00a8
                int r2 = net.sqlcipher.database.SQLiteCursor.access$400(r2)     // Catch: all -> 0x0090, Exception -> 0x00a8
                int r1 = r1 + r2
                int r0 = net.sqlcipher.database.SQLiteCursor.access$502(r0, r1)     // Catch: all -> 0x0090, Exception -> 0x00a8
                r0 = r5
                r0.sendMessage()     // Catch: all -> 0x0090, Exception -> 0x00a8
                r0 = r5
                net.sqlcipher.database.SQLiteCursor r0 = net.sqlcipher.database.SQLiteCursor.this
                java.util.concurrent.locks.ReentrantLock r0 = net.sqlcipher.database.SQLiteCursor.access$200(r0)
                r0.unlock()
                goto L_0x0010
            L_0x0080:
                r0 = r5
                net.sqlcipher.database.SQLiteCursor r0 = net.sqlcipher.database.SQLiteCursor.this     // Catch: all -> 0x0090, Exception -> 0x00a8
                r1 = r7
                int r0 = net.sqlcipher.database.SQLiteCursor.access$502(r0, r1)     // Catch: all -> 0x0090, Exception -> 0x00a8
                r0 = r5
                r0.sendMessage()     // Catch: all -> 0x0090, Exception -> 0x00a8
                goto L_0x009d
            L_0x0090:
                r6 = move-exception
                r0 = r5
                net.sqlcipher.database.SQLiteCursor r0 = net.sqlcipher.database.SQLiteCursor.this
                java.util.concurrent.locks.ReentrantLock r0 = net.sqlcipher.database.SQLiteCursor.access$200(r0)
                r0.unlock()
                r0 = r6
                throw r0
            L_0x009d:
                r0 = r5
                net.sqlcipher.database.SQLiteCursor r0 = net.sqlcipher.database.SQLiteCursor.this
                java.util.concurrent.locks.ReentrantLock r0 = net.sqlcipher.database.SQLiteCursor.access$200(r0)
                r0.unlock()
            L_0x00a7:
                return
            L_0x00a8:
                r6 = move-exception
                goto L_0x009d
            */
            throw new UnsupportedOperationException("Method not decompiled: net.sqlcipher.database.SQLiteCursor.QueryThread.run():void");
        }
    }

    public SQLiteCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        this.mDatabase = sQLiteDatabase;
        this.mDriver = sQLiteCursorDriver;
        this.mEditTable = str;
        this.mQuery = sQLiteQuery;
        try {
            sQLiteDatabase.lock();
            int columnCountLocked = this.mQuery.columnCountLocked();
            this.mColumns = new String[columnCountLocked];
            for (int i = 0; i < columnCountLocked; i++) {
                String columnNameLocked = this.mQuery.columnNameLocked(i);
                this.mColumns[i] = columnNameLocked;
                if ("_id".equals(columnNameLocked)) {
                    this.mRowIdColumnIndex = i;
                }
            }
        } finally {
            sQLiteDatabase.unlock();
        }
    }

    private void deactivateCommon() {
        this.mCursorState = 0;
        CursorWindow cursorWindow = this.mWindow;
        if (cursorWindow != null) {
            cursorWindow.close();
            this.mWindow = null;
        }
    }

    private void fillWindow(int i) {
        if (this.mWindow == null) {
            this.mWindow = new CursorWindow(true);
        } else {
            this.mCursorState++;
            queryThreadLock();
            try {
                this.mWindow.clear();
            } finally {
                queryThreadUnlock();
            }
        }
        this.mWindow.setStartPosition(i);
        this.mCount = this.mQuery.fillWindow(this.mWindow, this.mInitialRead, 0);
        if (this.mCount == -1) {
            this.mCount = i + this.mInitialRead;
            new Thread(new QueryThread(this.mCursorState), "query thread").start();
        }
    }

    private void queryThreadLock() {
        ReentrantLock reentrantLock = this.mLock;
        if (reentrantLock != null) {
            reentrantLock.lock();
        }
    }

    private void queryThreadUnlock() {
        ReentrantLock reentrantLock = this.mLock;
        if (reentrantLock != null) {
            reentrantLock.unlock();
        }
    }

    @Override // net.sqlcipher.AbstractCursor, android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        deactivateCommon();
        this.mQuery.close();
        this.mDriver.cursorClosed();
    }

    @Override // net.sqlcipher.AbstractCursor
    public boolean commitUpdates(Map<? extends Long, ? extends Map<String, Object>> map) {
        if (!supportsUpdates()) {
            Log.e("Cursor", "commitUpdates not supported on this cursor, did you include the _id column?");
            return false;
        }
        synchronized (this.mUpdatedRows) {
            if (map != null) {
                this.mUpdatedRows.putAll(map);
            }
            if (this.mUpdatedRows.size() == 0) {
                return true;
            }
            this.mDatabase.beginTransaction();
            StringBuilder sb = new StringBuilder(128);
            for (Map.Entry<Long, Map<String, Object>> entry : this.mUpdatedRows.entrySet()) {
                Map<String, Object> value = entry.getValue();
                Long key = entry.getKey();
                if (key == null || value == null) {
                    throw new IllegalStateException("null rowId or values found! rowId = " + key + ", values = " + value);
                } else if (value.size() != 0) {
                    long longValue = key.longValue();
                    Iterator<Map.Entry<String, Object>> it = value.entrySet().iterator();
                    sb.setLength(0);
                    sb.append("UPDATE " + this.mEditTable + " SET ");
                    Object[] objArr = new Object[value.size()];
                    int i = 0;
                    while (it.hasNext()) {
                        Map.Entry<String, Object> next = it.next();
                        sb.append(next.getKey());
                        sb.append("=?");
                        objArr[i] = next.getValue();
                        if (it.hasNext()) {
                            sb.append(UserProfile.CARD_CATE_SEPARATOR);
                        }
                        i++;
                    }
                    sb.append(" WHERE " + this.mColumns[this.mRowIdColumnIndex] + '=' + longValue);
                    sb.append(';');
                    this.mDatabase.execSQL(sb.toString(), objArr);
                    this.mDatabase.rowUpdated(this.mEditTable, longValue);
                }
            }
            this.mDatabase.setTransactionSuccessful();
            this.mDatabase.endTransaction();
            this.mUpdatedRows.clear();
            onChange(true);
            return true;
        }
    }

    @Override // net.sqlcipher.AbstractCursor, android.database.Cursor
    public void deactivate() {
        super.deactivate();
        deactivateCommon();
        this.mDriver.cursorDeactivated();
    }

    @Override // net.sqlcipher.AbstractCursor
    public boolean deleteRow() {
        boolean z;
        checkPosition();
        if (this.mRowIdColumnIndex == -1 || this.mCurrentRowID == null) {
            Log.e("Cursor", "Could not delete row because either the row ID column is not available or ithas not been read.");
            return false;
        }
        this.mDatabase.lock();
        try {
            try {
                SQLiteDatabase sQLiteDatabase = this.mDatabase;
                String str = this.mEditTable;
                sQLiteDatabase.delete(str, this.mColumns[this.mRowIdColumnIndex] + "=?", new String[]{this.mCurrentRowID.toString()});
                z = true;
            } finally {
                this.mDatabase.unlock();
            }
        } catch (SQLException e) {
            z = false;
        }
        int i = this.mPos;
        requery();
        moveToPosition(i);
        if (!z) {
            return false;
        }
        onChange(true);
        return true;
    }

    @Override // net.sqlcipher.AbstractCursor, android.database.CrossProcessCursor
    public void fillWindow(int i, android.database.CursorWindow cursorWindow) {
        if (this.mWindow == null) {
            this.mWindow = new CursorWindow(true);
        } else {
            this.mCursorState++;
            queryThreadLock();
            try {
                this.mWindow.clear();
            } finally {
                queryThreadUnlock();
            }
        }
        this.mWindow.setStartPosition(i);
        this.mCount = this.mQuery.fillWindow(this.mWindow, this.mInitialRead, 0);
        if (this.mCount == -1) {
            this.mCount = i + this.mInitialRead;
            new Thread(new QueryThread(this.mCursorState), "query thread").start();
        }
    }

    @Override // net.sqlcipher.AbstractCursor
    public void finalize() {
        try {
            if (this.mWindow != null) {
                int length = this.mQuery.mSql.length();
                StringBuilder sb = new StringBuilder();
                sb.append("Finalizing a Cursor that has not been deactivated or closed. database = ");
                sb.append(this.mDatabase.getPath());
                sb.append(", table = ");
                sb.append(this.mEditTable);
                sb.append(", query = ");
                String str = this.mQuery.mSql;
                int i = length;
                if (length > 100) {
                    i = 100;
                }
                sb.append(str.substring(0, i));
                Log.e("Cursor", sb.toString(), this.mStackTrace);
                close();
                SQLiteDebug.notifyActiveCursorFinalized();
            }
        } finally {
            super.finalize();
        }
    }

    @Override // net.sqlcipher.AbstractCursor, android.database.Cursor
    public int getColumnIndex(String str) {
        if (this.mColumnNameMap == null) {
            String[] strArr = this.mColumns;
            int length = strArr.length;
            HashMap hashMap = new HashMap(length, 1.0f);
            for (int i = 0; i < length; i++) {
                hashMap.put(strArr[i], Integer.valueOf(i));
            }
            this.mColumnNameMap = hashMap;
        }
        int lastIndexOf = str.lastIndexOf(46);
        String str2 = str;
        if (lastIndexOf != -1) {
            Exception exc = new Exception();
            Log.e("Cursor", "requesting column name with table name -- " + str, exc);
            str2 = str.substring(lastIndexOf + 1);
        }
        Integer num = this.mColumnNameMap.get(str2);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    @Override // net.sqlcipher.AbstractCursor, android.database.Cursor
    public String[] getColumnNames() {
        return this.mColumns;
    }

    @Override // net.sqlcipher.AbstractCursor, android.database.Cursor
    public int getCount() {
        if (this.mCount == -1) {
            fillWindow(0);
        }
        return this.mCount;
    }

    public SQLiteDatabase getDatabase() {
        return this.mDatabase;
    }

    @Override // net.sqlcipher.AbstractCursor, android.database.CrossProcessCursor
    public boolean onMove(int i, int i2) {
        CursorWindow cursorWindow = this.mWindow;
        if (cursorWindow != null && i2 >= cursorWindow.getStartPosition() && i2 < this.mWindow.getStartPosition() + this.mWindow.getNumRows()) {
            return true;
        }
        fillWindow(i2);
        return true;
    }

    @Override // net.sqlcipher.AbstractCursor, android.database.Cursor
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        super.registerDataSetObserver(dataSetObserver);
        if (!(Integer.MAX_VALUE == this.mMaxRead && Integer.MAX_VALUE == this.mInitialRead) && this.mNotificationHandler == null) {
            queryThreadLock();
            try {
                this.mNotificationHandler = new MainThreadNotificationHandler(this);
                if (this.mPendingData) {
                    notifyDataSetChange();
                    this.mPendingData = false;
                }
            } finally {
                queryThreadUnlock();
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // net.sqlcipher.AbstractCursor, android.database.Cursor
    public boolean requery() {
        if (isClosed()) {
            return false;
        }
        this.mDatabase.lock();
        try {
            if (this.mWindow != null) {
                this.mWindow.clear();
            }
            this.mPos = -1;
            this.mDriver.cursorRequeried(this);
            this.mCount = -1;
            this.mCursorState++;
            queryThreadLock();
            this.mQuery.requery();
            queryThreadUnlock();
            this.mDatabase.unlock();
            return super.requery();
        } catch (Throwable th) {
            this.mDatabase.unlock();
            throw th;
        }
    }

    public void setLoadStyle(int i, int i2) {
        this.mMaxRead = i2;
        this.mInitialRead = i;
        this.mLock = new ReentrantLock(true);
    }

    public void setSelectionArguments(String[] strArr) {
        this.mDriver.setBindArguments(strArr);
    }

    /* JADX WARN: Finally extract failed */
    @Override // net.sqlcipher.AbstractWindowedCursor
    public void setWindow(CursorWindow cursorWindow) {
        if (this.mWindow != null) {
            this.mCursorState++;
            queryThreadLock();
            try {
                this.mWindow.close();
                queryThreadUnlock();
                this.mCount = -1;
            } catch (Throwable th) {
                queryThreadUnlock();
                throw th;
            }
        }
        this.mWindow = cursorWindow;
    }

    @Override // net.sqlcipher.AbstractCursor
    public boolean supportsUpdates() {
        return !TextUtils.isEmpty(this.mEditTable);
    }
}

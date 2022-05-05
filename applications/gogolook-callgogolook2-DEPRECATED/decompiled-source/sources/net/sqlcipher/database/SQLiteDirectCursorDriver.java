package net.sqlcipher.database;

import net.sqlcipher.Cursor;
import net.sqlcipher.database.SQLiteDatabase;
/* loaded from: classes3-dex2jar.jar:net/sqlcipher/database/SQLiteDirectCursorDriver.class */
public class SQLiteDirectCursorDriver implements SQLiteCursorDriver {
    public Cursor mCursor;
    public SQLiteDatabase mDatabase;
    public String mEditTable;
    public SQLiteQuery mQuery;
    public String mSql;

    public SQLiteDirectCursorDriver(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        this.mDatabase = sQLiteDatabase;
        this.mEditTable = str2;
        this.mSql = str;
    }

    @Override // net.sqlcipher.database.SQLiteCursorDriver
    public void cursorClosed() {
        this.mCursor = null;
    }

    @Override // net.sqlcipher.database.SQLiteCursorDriver
    public void cursorDeactivated() {
    }

    @Override // net.sqlcipher.database.SQLiteCursorDriver
    public void cursorRequeried(android.database.Cursor cursor) {
    }

    public Cursor query(SQLiteDatabase.CursorFactory cursorFactory, Object[] objArr) {
        SQLiteQuery sQLiteQuery = new SQLiteQuery(this.mDatabase, this.mSql, 0, objArr);
        SQLiteQuery sQLiteQuery2 = sQLiteQuery;
        try {
            sQLiteQuery.bindArguments(objArr);
            if (cursorFactory == null) {
                this.mCursor = new SQLiteCursor(this.mDatabase, this, this.mEditTable, sQLiteQuery);
            } else {
                this.mCursor = cursorFactory.newCursor(this.mDatabase, this, this.mEditTable, sQLiteQuery);
            }
            this.mQuery = sQLiteQuery;
            sQLiteQuery2 = null;
            return this.mCursor;
        } catch (Throwable th) {
            if (sQLiteQuery2 != null) {
                sQLiteQuery2.close();
            }
            throw th;
        }
    }

    @Override // net.sqlcipher.database.SQLiteCursorDriver
    public Cursor query(SQLiteDatabase.CursorFactory cursorFactory, String[] strArr) {
        int i;
        SQLiteQuery sQLiteQuery;
        int i2 = 0;
        SQLiteQuery sQLiteQuery2 = new SQLiteQuery(this.mDatabase, this.mSql, 0, strArr);
        if (strArr == null) {
            i = 0;
        } else {
            sQLiteQuery = sQLiteQuery2;
            try {
                i = strArr.length;
            } catch (Throwable th) {
                if (sQLiteQuery != null) {
                    sQLiteQuery.close();
                }
                throw th;
            }
        }
        while (i2 < i) {
            int i3 = i2 + 1;
            sQLiteQuery2.bindString(i3, strArr[i2]);
            i2 = i3;
        }
        if (cursorFactory == null) {
            this.mCursor = new SQLiteCursor(this.mDatabase, this, this.mEditTable, sQLiteQuery2);
        } else {
            this.mCursor = cursorFactory.newCursor(this.mDatabase, this, this.mEditTable, sQLiteQuery2);
        }
        this.mQuery = sQLiteQuery2;
        sQLiteQuery = null;
        return this.mCursor;
    }

    @Override // net.sqlcipher.database.SQLiteCursorDriver
    public void setBindArguments(String[] strArr) {
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            this.mQuery.bindString(i2, strArr[i]);
            i = i2;
        }
    }

    public String toString() {
        return "SQLiteDirectCursorDriver: " + this.mSql;
    }
}

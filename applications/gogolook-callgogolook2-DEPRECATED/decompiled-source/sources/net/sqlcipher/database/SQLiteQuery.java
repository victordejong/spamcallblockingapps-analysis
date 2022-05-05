package net.sqlcipher.database;

import android.os.SystemClock;
import net.sqlcipher.CursorWindow;
/* loaded from: classes3-dex2jar.jar:net/sqlcipher/database/SQLiteQuery.class */
public class SQLiteQuery extends SQLiteProgram {
    public static final String TAG = "Cursor";
    public String[] mBindArgs;
    public Object[] mObjectBindArgs;
    public int mOffsetIndex;

    public SQLiteQuery(SQLiteDatabase sQLiteDatabase, String str, int i, Object[] objArr) {
        super(sQLiteDatabase, str);
        this.mOffsetIndex = i;
        this.mObjectBindArgs = objArr;
        Object[] objArr2 = this.mObjectBindArgs;
        this.mBindArgs = new String[objArr2 != null ? objArr2.length : 0];
    }

    public SQLiteQuery(SQLiteDatabase sQLiteDatabase, String str, int i, String[] strArr) {
        super(sQLiteDatabase, str);
        this.mOffsetIndex = i;
        this.mBindArgs = strArr;
    }

    private final native int native_column_count();

    private final native String native_column_name(int i);

    private final native int native_fill_window(CursorWindow cursorWindow, int i, int i2, int i3, int i4);

    public void bindArguments(Object[] objArr) {
        if (objArr != null && objArr.length > 0) {
            for (int i = 0; i < objArr.length; i++) {
                Object obj = objArr[i];
                if (obj == null) {
                    bindNull(i + 1);
                } else if (obj instanceof Double) {
                    bindDouble(i + 1, ((Double) obj).doubleValue());
                } else if (obj instanceof Float) {
                    bindDouble(i + 1, Double.valueOf(((Number) obj).floatValue()).doubleValue());
                } else if (obj instanceof Long) {
                    bindLong(i + 1, ((Long) obj).longValue());
                } else if (obj instanceof Integer) {
                    bindLong(i + 1, Long.valueOf(((Number) obj).intValue()).longValue());
                } else if (obj instanceof Boolean) {
                    bindLong(i + 1, ((Boolean) obj).booleanValue() ? 1L : 0L);
                } else if (obj instanceof byte[]) {
                    bindBlob(i + 1, (byte[]) obj);
                } else {
                    bindString(i + 1, obj.toString());
                }
            }
        }
    }

    @Override // net.sqlcipher.database.SQLiteProgram
    public void bindDouble(int i, double d) {
        this.mBindArgs[i - 1] = Double.toString(d);
        if (!this.mClosed) {
            super.bindDouble(i, d);
        }
    }

    @Override // net.sqlcipher.database.SQLiteProgram
    public void bindLong(int i, long j) {
        this.mBindArgs[i - 1] = Long.toString(j);
        if (!this.mClosed) {
            super.bindLong(i, j);
        }
    }

    @Override // net.sqlcipher.database.SQLiteProgram
    public void bindNull(int i) {
        this.mBindArgs[i - 1] = null;
        if (!this.mClosed) {
            super.bindNull(i);
        }
    }

    @Override // net.sqlcipher.database.SQLiteProgram
    public void bindString(int i, String str) {
        this.mBindArgs[i - 1] = str;
        if (!this.mClosed) {
            super.bindString(i, str);
        }
    }

    public int columnCountLocked() {
        acquireReference();
        try {
            return native_column_count();
        } finally {
            releaseReference();
        }
    }

    public String columnNameLocked(int i) {
        acquireReference();
        try {
            return native_column_name(i);
        } finally {
            releaseReference();
        }
    }

    public int fillWindow(CursorWindow cursorWindow, int i, int i2) {
        int i3;
        SystemClock.uptimeMillis();
        this.mDatabase.lock();
        try {
            acquireReference();
            try {
                cursorWindow.acquireReference();
                i3 = native_fill_window(cursorWindow, cursorWindow.getStartPosition(), this.mOffsetIndex, i, i2);
                if (SQLiteDebug.DEBUG_SQL_STATEMENTS) {
                    String str = "fillWindow(): " + this.mSql;
                }
                cursorWindow.releaseReference();
            } catch (IllegalStateException e) {
                i3 = 0;
                cursorWindow.releaseReference();
            } catch (SQLiteDatabaseCorruptException e2) {
                this.mDatabase.onCorruption();
                throw e2;
            }
            return i3;
        } finally {
            releaseReference();
            this.mDatabase.unlock();
        }
    }

    public void requery() {
        String[] strArr = this.mBindArgs;
        if (strArr != null) {
            int length = strArr.length;
            try {
                if (this.mObjectBindArgs != null) {
                    bindArguments(this.mObjectBindArgs);
                    return;
                }
                int i = 0;
                while (i < length) {
                    int i2 = i + 1;
                    super.bindString(i2, this.mBindArgs[i]);
                    i = i2;
                }
            } catch (SQLiteMisuseException e) {
                StringBuilder sb = new StringBuilder("mSql " + this.mSql);
                for (int i3 = 0; i3 < length; i3++) {
                    sb.append(" ");
                    sb.append(this.mBindArgs[i3]);
                }
                sb.append(" ");
                throw new IllegalStateException(sb.toString(), e);
            }
        }
    }

    public String toString() {
        return "SQLiteQuery: " + this.mSql;
    }
}

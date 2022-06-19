package com.yanzhenjie.nohttp.p320db;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.yanzhenjie.nohttp.p320db.BasicEntity;
import java.util.List;
/* renamed from: com.yanzhenjie.nohttp.db.BaseDao */
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/db/BaseDao.class */
public abstract class BaseDao<T extends BasicEntity> {
    private SQLiteOpenHelper liteOpenHelper;

    public BaseDao(SQLiteOpenHelper sQLiteOpenHelper) {
        this.liteOpenHelper = sQLiteOpenHelper;
    }

    public final void closeCursor(Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return;
        }
        cursor.close();
    }

    public final void closeDateBase(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            return;
        }
        sQLiteDatabase.close();
    }

    public final int count() {
        return countColumn("_id");
    }

    public final int count(String str) {
        SQLiteDatabase reader = getReader();
        Cursor rawQuery = reader.rawQuery(str, null);
        int i = 0;
        if (rawQuery.moveToNext()) {
            i = rawQuery.getInt(0);
        }
        closeCursor(rawQuery);
        closeDateBase(reader);
        return i;
    }

    public final int countColumn(String str) {
        return count("SELECT COUNT(" + str + ") FROM " + getTableName());
    }

    public final boolean delete(String str) {
        boolean z;
        SQLiteDatabase writer = getWriter();
        String str2 = "DELETE FROM " + getTableName() + " WHERE " + str;
        writer.beginTransaction();
        try {
            writer.execSQL(str2);
            writer.setTransactionSuccessful();
            z = true;
        } catch (SQLException e) {
            z = false;
        } catch (Throwable th) {
            writer.endTransaction();
            closeDateBase(writer);
            throw th;
        }
        writer.endTransaction();
        closeDateBase(writer);
        return z;
    }

    public final boolean delete(List<T> list) {
        StringBuilder sb = new StringBuilder("_id");
        sb.append(" IN(");
        for (T t : list) {
            long id = t.getId();
            if (id > 0) {
                sb.append(',');
                sb.append(id);
            }
        }
        sb.append(')');
        if (',' == sb.charAt(6)) {
            sb.deleteCharAt(6);
        }
        return delete(sb.toString());
    }

    public final boolean deleteAll() {
        return delete("1=1");
    }

    public final List<T> getAll() {
        return getList(null, null, null, null);
    }

    protected abstract List<T> getList(String str);

    public final List<T> getList(String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder("SELECT ");
        sb.append(BasicSQLHelper.ALL);
        sb.append(" FROM ");
        sb.append(getTableName());
        if (!TextUtils.isEmpty(str)) {
            sb.append(" WHERE ");
            sb.append(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            sb.append(" ORDER BY ");
            sb.append(str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            sb.append(" LIMIT ");
            sb.append(str3);
        }
        if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
            sb.append(" OFFSET ");
            sb.append(str4);
        }
        return getList(sb.toString());
    }

    public final SQLiteDatabase getReader() {
        return this.liteOpenHelper.getReadableDatabase();
    }

    protected abstract String getTableName();

    public final SQLiteDatabase getWriter() {
        return this.liteOpenHelper.getWritableDatabase();
    }

    public abstract long replace(T t);
}

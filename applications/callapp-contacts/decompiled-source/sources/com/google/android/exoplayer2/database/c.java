package com.google.android.exoplayer2.database;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/database/c.class */
public final class c {
    private c() {
    }

    public static void a(SQLiteDatabase sQLiteDatabase, int i, String str) throws DatabaseIOException {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS ExoPlayerVersions (feature INTEGER NOT NULL,instance_uid TEXT NOT NULL,version INTEGER NOT NULL,PRIMARY KEY (feature, instance_uid))");
            ContentValues contentValues = new ContentValues();
            contentValues.put("feature", Integer.valueOf(i));
            contentValues.put("instance_uid", str);
            contentValues.put("version", (Integer) 1);
            sQLiteDatabase.replaceOrThrow("ExoPlayerVersions", null, contentValues);
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    public static String[] a(int i, String str) {
        return new String[]{Integer.toString(i), str};
    }

    public static int b(SQLiteDatabase sQLiteDatabase, int i, String str) throws DatabaseIOException {
        try {
            if (!af.a(sQLiteDatabase, "ExoPlayerVersions")) {
                return -1;
            }
            Cursor query = sQLiteDatabase.query("ExoPlayerVersions", new String[]{"version"}, "feature = ? AND instance_uid = ?", a(i, str), null, null, null);
            if (query.getCount() != 0) {
                query.moveToNext();
                int i2 = query.getInt(0);
                if (query != null) {
                    query.close();
                }
                return i2;
            } else if (query == null) {
                return -1;
            } else {
                query.close();
                return -1;
            }
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }
}

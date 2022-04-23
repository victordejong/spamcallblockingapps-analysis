package net.sqlcipher.database;

import android.database.Cursor;
import net.sqlcipher.database.SQLiteDatabase;
/* loaded from: classes3-dex2jar.jar:net/sqlcipher/database/SQLiteCursorDriver.class */
public interface SQLiteCursorDriver {
    void cursorClosed();

    void cursorDeactivated();

    void cursorRequeried(Cursor cursor);

    net.sqlcipher.Cursor query(SQLiteDatabase.CursorFactory cursorFactory, String[] strArr);

    void setBindArguments(String[] strArr);
}

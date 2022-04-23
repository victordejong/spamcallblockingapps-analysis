package net.sqlcipher;

import net.sqlcipher.database.SQLiteDatabase;
/* loaded from: classes3-dex2jar.jar:net/sqlcipher/DatabaseErrorHandler.class */
public interface DatabaseErrorHandler {
    void onCorruption(SQLiteDatabase sQLiteDatabase);
}

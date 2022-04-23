package net.sqlcipher.database;
/* loaded from: classes3-dex2jar.jar:net/sqlcipher/database/SQLiteDatabaseHook.class */
public interface SQLiteDatabaseHook {
    void postKey(SQLiteDatabase sQLiteDatabase);

    void preKey(SQLiteDatabase sQLiteDatabase);
}

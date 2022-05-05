package net.sqlcipher.database;

import android.content.Context;
import android.util.Log;
import java.io.File;
import net.sqlcipher.DatabaseErrorHandler;
import net.sqlcipher.DefaultDatabaseErrorHandler;
import net.sqlcipher.database.SQLiteDatabase;
/* loaded from: classes3-dex2jar.jar:net/sqlcipher/database/SQLiteOpenHelper.class */
public abstract class SQLiteOpenHelper {
    public static final String TAG = "SQLiteOpenHelper";
    public final Context mContext;
    public SQLiteDatabase mDatabase;
    public final DatabaseErrorHandler mErrorHandler;
    public final SQLiteDatabase.CursorFactory mFactory;
    public final SQLiteDatabaseHook mHook;
    public boolean mIsInitializing;
    public final String mName;
    public final int mNewVersion;

    public SQLiteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        this(context, str, cursorFactory, i, null, new DefaultDatabaseErrorHandler());
    }

    public SQLiteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i, SQLiteDatabaseHook sQLiteDatabaseHook) {
        this(context, str, cursorFactory, i, sQLiteDatabaseHook, new DefaultDatabaseErrorHandler());
    }

    public SQLiteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i, SQLiteDatabaseHook sQLiteDatabaseHook, DatabaseErrorHandler databaseErrorHandler) {
        this.mDatabase = null;
        this.mIsInitializing = false;
        if (i < 1) {
            throw new IllegalArgumentException("Version must be >= 1, was " + i);
        } else if (databaseErrorHandler != null) {
            this.mContext = context;
            this.mName = str;
            this.mFactory = cursorFactory;
            this.mNewVersion = i;
            this.mHook = sQLiteDatabaseHook;
            this.mErrorHandler = databaseErrorHandler;
        } else {
            throw new IllegalArgumentException("DatabaseErrorHandler param value can't be null.");
        }
    }

    public void close() {
        synchronized (this) {
            if (this.mIsInitializing) {
                throw new IllegalStateException("Closed during initialization");
            } else if (this.mDatabase != null && this.mDatabase.isOpen()) {
                this.mDatabase.close();
                this.mDatabase = null;
            }
        }
    }

    public SQLiteDatabase getReadableDatabase(String str) {
        SQLiteDatabase readableDatabase;
        synchronized (this) {
            readableDatabase = getReadableDatabase(str == null ? null : str.toCharArray());
        }
        return readableDatabase;
    }

    public SQLiteDatabase getReadableDatabase(char[] cArr) {
        synchronized (this) {
            if (this.mDatabase != null && this.mDatabase.isOpen()) {
                return this.mDatabase;
            } else if (!this.mIsInitializing) {
                try {
                    return getWritableDatabase(cArr);
                } catch (SQLiteException e) {
                    if (this.mName != null) {
                        String str = TAG;
                        Log.e(str, "Couldn't open " + this.mName + " for writing (will try read-only):", e);
                        SQLiteDatabase sQLiteDatabase = null;
                        this.mIsInitializing = true;
                        String path = this.mContext.getDatabasePath(this.mName).getPath();
                        File file = new File(path);
                        File file2 = new File(this.mContext.getDatabasePath(this.mName).getParent());
                        if (!file2.exists()) {
                            file2.mkdirs();
                        }
                        if (!file.exists()) {
                            this.mIsInitializing = false;
                            sQLiteDatabase = getWritableDatabase(cArr);
                            this.mIsInitializing = true;
                            sQLiteDatabase.close();
                        }
                        SQLiteDatabase openDatabase = SQLiteDatabase.openDatabase(path, cArr, this.mFactory, 1);
                        if (openDatabase.getVersion() == this.mNewVersion) {
                            onOpen(openDatabase);
                            StringBuilder sb = new StringBuilder();
                            sb.append("Opened ");
                            sb.append(this.mName);
                            sb.append(" in read-only mode");
                            sb.toString();
                            this.mDatabase = openDatabase;
                            SQLiteDatabase sQLiteDatabase2 = this.mDatabase;
                            this.mIsInitializing = false;
                            if (!(openDatabase == null || openDatabase == this.mDatabase)) {
                                openDatabase.close();
                            }
                            return sQLiteDatabase2;
                        }
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Can't upgrade read-only database from version ");
                        sb2.append(openDatabase.getVersion());
                        sb2.append(" to ");
                        sb2.append(this.mNewVersion);
                        sb2.append(": ");
                        sb2.append(path);
                        throw new SQLiteException(sb2.toString());
                    }
                    throw e;
                }
            } else {
                throw new IllegalStateException("getReadableDatabase called recursively");
            }
        }
    }

    public SQLiteDatabase getWritableDatabase(String str) {
        SQLiteDatabase writableDatabase;
        synchronized (this) {
            writableDatabase = getWritableDatabase(str == null ? null : str.toCharArray());
        }
        return writableDatabase;
    }

    public SQLiteDatabase getWritableDatabase(char[] cArr) {
        SQLiteDatabase openOrCreateDatabase;
        synchronized (this) {
            if (this.mDatabase != null && this.mDatabase.isOpen() && !this.mDatabase.isReadOnly()) {
                return this.mDatabase;
            } else if (!this.mIsInitializing) {
                if (this.mDatabase != null) {
                    this.mDatabase.lock();
                }
                this.mIsInitializing = true;
                if (this.mName == null) {
                    openOrCreateDatabase = SQLiteDatabase.create((SQLiteDatabase.CursorFactory) null, cArr);
                } else {
                    String path = this.mContext.getDatabasePath(this.mName).getPath();
                    File file = new File(path);
                    if (!file.exists()) {
                        file.getParentFile().mkdirs();
                    }
                    openOrCreateDatabase = SQLiteDatabase.openOrCreateDatabase(path, cArr, this.mFactory, this.mHook, this.mErrorHandler);
                }
                int version = openOrCreateDatabase.getVersion();
                if (version != this.mNewVersion) {
                    openOrCreateDatabase.beginTransaction();
                    if (version == 0) {
                        onCreate(openOrCreateDatabase);
                    } else {
                        onUpgrade(openOrCreateDatabase, version, this.mNewVersion);
                    }
                    openOrCreateDatabase.setVersion(this.mNewVersion);
                    openOrCreateDatabase.setTransactionSuccessful();
                    openOrCreateDatabase.endTransaction();
                }
                onOpen(openOrCreateDatabase);
                this.mIsInitializing = false;
                if (this.mDatabase != null) {
                    try {
                        this.mDatabase.close();
                    } catch (Exception e) {
                    }
                    this.mDatabase.unlock();
                }
                this.mDatabase = openOrCreateDatabase;
                return openOrCreateDatabase;
            } else {
                throw new IllegalStateException("getWritableDatabase called recursively");
            }
        }
    }

    public abstract void onCreate(SQLiteDatabase sQLiteDatabase);

    public void onOpen(SQLiteDatabase sQLiteDatabase) {
    }

    public abstract void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2);
}

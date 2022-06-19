package com.j256.ormlite.android.apptools;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.j256.ormlite.android.AndroidConnectionSource;
import com.j256.ormlite.android.AndroidDatabaseConnection;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.misc.IOUtils;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.DatabaseTableConfigLoader;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.SQLException;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper.class */
public abstract class OrmLiteSqliteOpenHelper extends SQLiteOpenHelper {
    protected static Logger logger = LoggerFactory.getLogger(OrmLiteSqliteOpenHelper.class);
    protected boolean cancelQueriesEnabled;
    protected AndroidConnectionSource connectionSource;
    private volatile boolean isOpen;

    public OrmLiteSqliteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
        this.connectionSource = new AndroidConnectionSource(this);
        this.isOpen = true;
        logger.trace("{}: constructed connectionSource {}", this, this.connectionSource);
    }

    public OrmLiteSqliteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i, int i2) {
        this(context, str, cursorFactory, i, openFileId(context, i2));
    }

    public OrmLiteSqliteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i, DatabaseErrorHandler databaseErrorHandler) {
        super(context, str, cursorFactory, i, databaseErrorHandler);
        this.connectionSource = new AndroidConnectionSource(this);
        this.isOpen = true;
        logger.trace("{}: constructed connectionSource {}", this, this.connectionSource);
    }

    public OrmLiteSqliteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i, File file) {
        this(context, str, cursorFactory, i, openFile(file));
    }

    public OrmLiteSqliteOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i, InputStream inputStream) {
        super(context, str, cursorFactory, i);
        Throwable th;
        SQLException e;
        BufferedReader bufferedReader;
        this.connectionSource = new AndroidConnectionSource(this);
        this.isOpen = true;
        if (inputStream == null) {
            return;
        }
        BufferedReader bufferedReader2 = null;
        InputStream inputStream2 = inputStream;
        try {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 4096);
            } catch (SQLException e2) {
                e = e2;
                bufferedReader = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            DaoManager.addCachedDatabaseConfigs(DatabaseTableConfigLoader.loadDatabaseConfigFromReader(bufferedReader));
            IOUtils.closeQuietly(bufferedReader);
            IOUtils.closeQuietly(null);
        } catch (SQLException e3) {
            e = e3;
            inputStream = null;
            BufferedReader bufferedReader3 = bufferedReader;
            bufferedReader2 = bufferedReader;
            inputStream2 = inputStream;
            throw new IllegalStateException("Could not load object config file", e);
        } catch (Throwable th3) {
            bufferedReader2 = bufferedReader;
            th = th3;
            inputStream2 = null;
            IOUtils.closeQuietly(bufferedReader2);
            IOUtils.closeQuietly(inputStream2);
            throw th;
        }
    }

    private static InputStream openFile(File file) {
        if (file == null) {
            return null;
        }
        try {
            return new FileInputStream(file);
        } catch (FileNotFoundException e) {
            throw new IllegalArgumentException("Could not open config file " + file, e);
        }
    }

    private static InputStream openFileId(Context context, int i) {
        InputStream openRawResource = context.getResources().openRawResource(i);
        if (openRawResource != null) {
            return openRawResource;
        }
        throw new IllegalStateException("Could not find object config file with id " + i);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public void close() {
        super.close();
        this.connectionSource.close();
        this.isOpen = false;
    }

    public ConnectionSource getConnectionSource() {
        if (!this.isOpen) {
            logger.warn(new IllegalStateException(), "Getting connectionSource was called after closed");
        }
        return this.connectionSource;
    }

    public <D extends Dao<T, ?>, T> D getDao(Class<T> cls) throws SQLException {
        return (D) DaoManager.createDao(getConnectionSource(), cls);
    }

    public <D extends RuntimeExceptionDao<T, ?>, T> D getRuntimeExceptionDao(Class<T> cls) {
        try {
            return (D) new RuntimeExceptionDao(getDao(cls));
        } catch (SQLException e) {
            throw new RuntimeException("Could not create RuntimeExcepitionDao for class " + cls, e);
        }
    }

    public boolean isOpen() {
        return this.isOpen;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        ConnectionSource connectionSource = getConnectionSource();
        AndroidDatabaseConnection specialConnection = connectionSource.getSpecialConnection(null);
        boolean z = true;
        if (specialConnection == null) {
            specialConnection = new AndroidDatabaseConnection(sQLiteDatabase, true, this.cancelQueriesEnabled);
            try {
                connectionSource.saveSpecialConnection(specialConnection);
            } catch (SQLException e) {
                throw new IllegalStateException("Could not save special connection", e);
            }
        } else {
            z = false;
        }
        try {
            onCreate(sQLiteDatabase, connectionSource);
            if (!z) {
                return;
            }
            connectionSource.clearSpecialConnection(specialConnection);
        } catch (Throwable th) {
            if (z) {
                connectionSource.clearSpecialConnection(specialConnection);
            }
            throw th;
        }
    }

    public abstract void onCreate(SQLiteDatabase sQLiteDatabase, ConnectionSource connectionSource);

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        ConnectionSource connectionSource = getConnectionSource();
        AndroidDatabaseConnection specialConnection = connectionSource.getSpecialConnection(null);
        boolean z = true;
        if (specialConnection == null) {
            specialConnection = new AndroidDatabaseConnection(sQLiteDatabase, true, this.cancelQueriesEnabled);
            try {
                connectionSource.saveSpecialConnection(specialConnection);
            } catch (SQLException e) {
                throw new IllegalStateException("Could not save special connection", e);
            }
        } else {
            z = false;
        }
        try {
            onUpgrade(sQLiteDatabase, connectionSource, i, i2);
            if (!z) {
                return;
            }
            connectionSource.clearSpecialConnection(specialConnection);
        } catch (Throwable th) {
            if (z) {
                connectionSource.clearSpecialConnection(specialConnection);
            }
            throw th;
        }
    }

    public abstract void onUpgrade(SQLiteDatabase sQLiteDatabase, ConnectionSource connectionSource, int i, int i2);

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(super.hashCode());
    }
}

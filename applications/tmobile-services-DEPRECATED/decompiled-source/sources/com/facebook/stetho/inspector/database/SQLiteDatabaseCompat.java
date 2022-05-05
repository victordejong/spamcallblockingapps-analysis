package com.facebook.stetho.inspector.database;

import android.annotation.TargetApi;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/database/SQLiteDatabaseCompat.class */
public abstract class SQLiteDatabaseCompat {
    public static final int ENABLE_FOREIGN_KEY_CONSTRAINTS = 2;
    public static final int ENABLE_WRITE_AHEAD_LOGGING = 1;
    private static final SQLiteDatabaseCompat sInstance;

    @TargetApi(11)
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/database/SQLiteDatabaseCompat$HoneycombImpl.class */
    private static class HoneycombImpl extends SQLiteDatabaseCompat {
        private HoneycombImpl() {
        }

        @Override // com.facebook.stetho.inspector.database.SQLiteDatabaseCompat
        public void enableFeatures(@SQLiteOpenOptions int i, SQLiteDatabase sQLiteDatabase) {
            if ((i & 1) != 0) {
                sQLiteDatabase.enableWriteAheadLogging();
            }
            if ((i & 2) != 0) {
                sQLiteDatabase.execSQL("PRAGMA foreign_keys = ON");
            }
        }

        @Override // com.facebook.stetho.inspector.database.SQLiteDatabaseCompat
        public int provideOpenFlags(@SQLiteOpenOptions int i) {
            return 0;
        }
    }

    @TargetApi(16)
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/database/SQLiteDatabaseCompat$JellyBeanAndBeyondImpl.class */
    private static class JellyBeanAndBeyondImpl extends SQLiteDatabaseCompat {
        private JellyBeanAndBeyondImpl() {
        }

        @Override // com.facebook.stetho.inspector.database.SQLiteDatabaseCompat
        public void enableFeatures(@SQLiteOpenOptions int i, SQLiteDatabase sQLiteDatabase) {
            if ((i & 2) != 0) {
                sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
            }
        }

        @Override // com.facebook.stetho.inspector.database.SQLiteDatabaseCompat
        public int provideOpenFlags(@SQLiteOpenOptions int i) {
            return (i & 1) != 0 ? 536870912 : 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/database/SQLiteDatabaseCompat$NoopImpl.class */
    private static class NoopImpl extends SQLiteDatabaseCompat {
        private NoopImpl() {
        }

        @Override // com.facebook.stetho.inspector.database.SQLiteDatabaseCompat
        public void enableFeatures(@SQLiteOpenOptions int i, SQLiteDatabase sQLiteDatabase) {
        }

        @Override // com.facebook.stetho.inspector.database.SQLiteDatabaseCompat
        public int provideOpenFlags(@SQLiteOpenOptions int i) {
            return 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/database/SQLiteDatabaseCompat$SQLiteOpenOptions.class */
    public @interface SQLiteOpenOptions {
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 16) {
            sInstance = new JellyBeanAndBeyondImpl();
        } else if (i >= 11) {
            sInstance = new HoneycombImpl();
        } else {
            sInstance = new NoopImpl();
        }
    }

    public static SQLiteDatabaseCompat getInstance() {
        return sInstance;
    }

    public abstract void enableFeatures(@SQLiteOpenOptions int i, SQLiteDatabase sQLiteDatabase);

    public abstract int provideOpenFlags(@SQLiteOpenOptions int i);
}

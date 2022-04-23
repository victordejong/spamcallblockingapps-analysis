package android.arch.persistence.p000db.framework;

import android.arch.persistence.p000db.SupportSQLiteDatabase;
import android.arch.persistence.p000db.SupportSQLiteOpenHelper;
import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.support.annotation.RequiresApi;
/* renamed from: android.arch.persistence.db.framework.FrameworkSQLiteOpenHelper */
/* loaded from: classes-dex2jar.jar:android/arch/persistence/db/framework/FrameworkSQLiteOpenHelper.class */
class FrameworkSQLiteOpenHelper implements SupportSQLiteOpenHelper {
    private final OpenHelper mDelegate;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.arch.persistence.db.framework.FrameworkSQLiteOpenHelper$OpenHelper */
    /* loaded from: classes-dex2jar.jar:android/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper.class */
    public static class OpenHelper extends SQLiteOpenHelper {
        final SupportSQLiteOpenHelper.Callback mCallback;
        final FrameworkSQLiteDatabase[] mDbRef;
        private boolean mMigrated;

        OpenHelper(Context context, String str, final FrameworkSQLiteDatabase[] frameworkSQLiteDatabaseArr, final SupportSQLiteOpenHelper.Callback callback) {
            super(context, str, null, callback.version, new DatabaseErrorHandler() { // from class: android.arch.persistence.db.framework.FrameworkSQLiteOpenHelper.OpenHelper.1
                @Override // android.database.DatabaseErrorHandler
                public void onCorruption(SQLiteDatabase sQLiteDatabase) {
                    FrameworkSQLiteDatabase frameworkSQLiteDatabase = frameworkSQLiteDatabaseArr[0];
                    if (frameworkSQLiteDatabase != null) {
                        callback.onCorruption(frameworkSQLiteDatabase);
                    }
                }
            });
            this.mCallback = callback;
            this.mDbRef = frameworkSQLiteDatabaseArr;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public void close() {
            synchronized (this) {
                super.close();
                this.mDbRef[0] = null;
            }
        }

        SupportSQLiteDatabase getReadableSupportDatabase() {
            synchronized (this) {
                this.mMigrated = false;
                SQLiteDatabase readableDatabase = super.getReadableDatabase();
                if (this.mMigrated) {
                    close();
                    return getReadableSupportDatabase();
                }
                return getWrappedDb(readableDatabase);
            }
        }

        FrameworkSQLiteDatabase getWrappedDb(SQLiteDatabase sQLiteDatabase) {
            if (this.mDbRef[0] == null) {
                this.mDbRef[0] = new FrameworkSQLiteDatabase(sQLiteDatabase);
            }
            return this.mDbRef[0];
        }

        SupportSQLiteDatabase getWritableSupportDatabase() {
            synchronized (this) {
                this.mMigrated = false;
                SQLiteDatabase writableDatabase = super.getWritableDatabase();
                if (this.mMigrated) {
                    close();
                    return getWritableSupportDatabase();
                }
                return getWrappedDb(writableDatabase);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            this.mCallback.onConfigure(getWrappedDb(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.mCallback.onCreate(getWrappedDb(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.mMigrated = true;
            this.mCallback.onDowngrade(getWrappedDb(sQLiteDatabase), i, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (!this.mMigrated) {
                this.mCallback.onOpen(getWrappedDb(sQLiteDatabase));
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.mMigrated = true;
            this.mCallback.onUpgrade(getWrappedDb(sQLiteDatabase), i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FrameworkSQLiteOpenHelper(Context context, String str, SupportSQLiteOpenHelper.Callback callback) {
        this.mDelegate = createDelegate(context, str, callback);
    }

    private OpenHelper createDelegate(Context context, String str, SupportSQLiteOpenHelper.Callback callback) {
        return new OpenHelper(context, str, new FrameworkSQLiteDatabase[1], callback);
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteOpenHelper
    public void close() {
        this.mDelegate.close();
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteOpenHelper
    public String getDatabaseName() {
        return this.mDelegate.getDatabaseName();
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteOpenHelper
    public SupportSQLiteDatabase getReadableDatabase() {
        return this.mDelegate.getReadableSupportDatabase();
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteOpenHelper
    public SupportSQLiteDatabase getWritableDatabase() {
        return this.mDelegate.getWritableSupportDatabase();
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteOpenHelper
    @RequiresApi(api = 16)
    public void setWriteAheadLoggingEnabled(boolean z) {
        this.mDelegate.setWriteAheadLoggingEnabled(z);
    }
}

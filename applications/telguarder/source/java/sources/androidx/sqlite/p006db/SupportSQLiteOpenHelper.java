package androidx.sqlite.p006db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.util.Log;
import android.util.Pair;
import java.io.File;
import java.io.IOException;
import java.util.List;
/* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper */
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/SupportSQLiteOpenHelper.class */
public interface SupportSQLiteOpenHelper {

    /* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper$Callback */
    /* loaded from: classes-dex2jar.jar:androidx/sqlite/db/SupportSQLiteOpenHelper$Callback.class */
    public static abstract class Callback {
        private static final String TAG = "SupportSQLite";
        public final int version;

        public Callback(int i) {
            this.version = i;
        }

        private void deleteDatabaseFile(String str) {
            if (str.equalsIgnoreCase(":memory:") || str.trim().length() == 0) {
                return;
            }
            Log.w(TAG, "deleting the database file: " + str);
            try {
                if (Build.VERSION.SDK_INT >= 16) {
                    SQLiteDatabase.deleteDatabase(new File(str));
                } else {
                    try {
                        if (!new File(str).delete()) {
                            Log.e(TAG, "Could not delete the database file " + str);
                        }
                    } catch (Exception e) {
                        Log.e(TAG, "error while deleting corrupted database file", e);
                    }
                }
            } catch (Exception e2) {
                Log.w(TAG, "delete failed: ", e2);
            }
        }

        public void onConfigure(SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        public void onCorruption(SupportSQLiteDatabase supportSQLiteDatabase) {
            Log.e(TAG, "Corruption reported by sqlite on database: " + supportSQLiteDatabase.getPath());
            if (!supportSQLiteDatabase.isOpen()) {
                deleteDatabaseFile(supportSQLiteDatabase.getPath());
                return;
            }
            List<Pair<String, String>> list = null;
            List<Pair<String, String>> list2 = null;
            try {
                try {
                    list = supportSQLiteDatabase.getAttachedDbs();
                } catch (SQLiteException e) {
                }
                list2 = list;
                try {
                    supportSQLiteDatabase.close();
                } catch (IOException e2) {
                }
                if (list == null) {
                    deleteDatabaseFile(supportSQLiteDatabase.getPath());
                    return;
                }
                for (Pair<String, String> pair : list) {
                    deleteDatabaseFile((String) pair.second);
                }
            } catch (Throwable th) {
                if (list2 != null) {
                    for (Pair<String, String> pair2 : list2) {
                        deleteDatabaseFile((String) pair2.second);
                    }
                } else {
                    deleteDatabaseFile(supportSQLiteDatabase.getPath());
                }
                throw th;
            }
        }

        public abstract void onCreate(SupportSQLiteDatabase supportSQLiteDatabase);

        public void onDowngrade(SupportSQLiteDatabase supportSQLiteDatabase, int i, int i2) {
            throw new SQLiteException("Can't downgrade database from version " + i + " to " + i2);
        }

        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        public abstract void onUpgrade(SupportSQLiteDatabase supportSQLiteDatabase, int i, int i2);
    }

    /* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration */
    /* loaded from: classes-dex2jar.jar:androidx/sqlite/db/SupportSQLiteOpenHelper$Configuration.class */
    public static class Configuration {
        public final Callback callback;
        public final Context context;
        public final String name;

        /* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Builder */
        /* loaded from: classes-dex2jar.jar:androidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder.class */
        public static class Builder {
            Callback mCallback;
            Context mContext;
            String mName;

            Builder(Context context) {
                this.mContext = context;
            }

            public Configuration build() {
                Callback callback = this.mCallback;
                if (callback != null) {
                    Context context = this.mContext;
                    if (context == null) {
                        throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
                    }
                    return new Configuration(context, this.mName, callback);
                }
                throw new IllegalArgumentException("Must set a callback to create the configuration.");
            }

            public Builder callback(Callback callback) {
                this.mCallback = callback;
                return this;
            }

            public Builder name(String str) {
                this.mName = str;
                return this;
            }
        }

        Configuration(Context context, String str, Callback callback) {
            this.context = context;
            this.name = str;
            this.callback = callback;
        }

        public static Builder builder(Context context) {
            return new Builder(context);
        }
    }

    /* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper$Factory */
    /* loaded from: classes-dex2jar.jar:androidx/sqlite/db/SupportSQLiteOpenHelper$Factory.class */
    public interface Factory {
        SupportSQLiteOpenHelper create(Configuration configuration);
    }

    void close();

    String getDatabaseName();

    SupportSQLiteDatabase getReadableDatabase();

    SupportSQLiteDatabase getWritableDatabase();

    void setWriteAheadLoggingEnabled(boolean z);
}

package androidx.sqlite.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/SupportSQLiteOpenHelper.class */
public interface SupportSQLiteOpenHelper extends Closeable {

    /* loaded from: classes-dex2jar.jar:androidx/sqlite/db/SupportSQLiteOpenHelper$Configuration.class */
    public static class Configuration {
        public final a callback;
        public final Context context;
        public final String name;
        public final boolean useNoBackupDirectory;

        /* loaded from: classes-dex2jar.jar:androidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder.class */
        public static class Builder {
            a mCallback;
            Context mContext;
            String mName;
            boolean mUseNoBackUpDirectory;

            Builder(Context context) {
                this.mContext = context;
            }

            public Configuration build() {
                if (this.mCallback == null) {
                    throw new IllegalArgumentException("Must set a callback to create the configuration.");
                } else if (this.mContext == null) {
                    throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
                } else if (!this.mUseNoBackUpDirectory || !TextUtils.isEmpty(this.mName)) {
                    return new Configuration(this.mContext, this.mName, this.mCallback, this.mUseNoBackUpDirectory);
                } else {
                    throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
                }
            }

            public Builder callback(a aVar) {
                this.mCallback = aVar;
                return this;
            }

            public Builder name(String str) {
                this.mName = str;
                return this;
            }

            public Builder noBackupDirectory(boolean z) {
                this.mUseNoBackUpDirectory = z;
                return this;
            }
        }

        Configuration(Context context, String str, a aVar) {
            this(context, str, aVar, false);
        }

        Configuration(Context context, String str, a aVar, boolean z) {
            this.context = context;
            this.name = str;
            this.callback = aVar;
            this.useNoBackupDirectory = z;
        }

        public static Builder builder(Context context) {
            return new Builder(context);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/sqlite/db/SupportSQLiteOpenHelper$a.class */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f5627a;

        public a(int i) {
            this.f5627a = i;
        }

        public static void a(String str) {
            if (!str.equalsIgnoreCase(":memory:") && str.trim().length() != 0) {
                Log.w("SupportSQLite", "deleting the database file: ".concat(String.valueOf(str)));
                try {
                    if (Build.VERSION.SDK_INT >= 16) {
                        SQLiteDatabase.deleteDatabase(new File(str));
                        return;
                    }
                    try {
                        if (!new File(str).delete()) {
                            Log.e("SupportSQLite", "Could not delete the database file ".concat(String.valueOf(str)));
                        }
                    } catch (Exception e) {
                        Log.e("SupportSQLite", "error while deleting corrupted database file", e);
                    }
                } catch (Exception e2) {
                    Log.w("SupportSQLite", "delete failed: ", e2);
                }
            }
        }

        public abstract void a(androidx.sqlite.db.b bVar);

        public abstract void a(androidx.sqlite.db.b bVar, int i, int i2);

        public void b(androidx.sqlite.db.b bVar) {
        }

        public void b(androidx.sqlite.db.b bVar, int i, int i2) {
            throw new SQLiteException("Can't downgrade database from version " + i + " to " + i2);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/sqlite/db/SupportSQLiteOpenHelper$b.class */
    public interface b {
        SupportSQLiteOpenHelper a(Configuration configuration);
    }

    String a();

    void a(boolean z);

    androidx.sqlite.db.b b();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();
}

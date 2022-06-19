package androidx.sqlite.p082db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
/* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper */
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/SupportSQLiteOpenHelper.class */
public interface SupportSQLiteOpenHelper extends Closeable {

    /* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration */
    /* loaded from: classes-dex2jar.jar:androidx/sqlite/db/SupportSQLiteOpenHelper$Configuration.class */
    public static class Configuration {
        public final AbstractC2781a callback;
        public final Context context;
        public final String name;
        public final boolean useNoBackupDirectory;

        /* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper$Configuration$Builder */
        /* loaded from: classes-dex2jar.jar:androidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder.class */
        public static class Builder {
            AbstractC2781a mCallback;
            Context mContext;
            String mName;
            boolean mUseNoBackUpDirectory;

            Builder(Context context) {
                this.mContext = context;
            }

            public Configuration build() {
                if (this.mCallback != null) {
                    if (this.mContext == null) {
                        throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
                    }
                    if (this.mUseNoBackUpDirectory && TextUtils.isEmpty(this.mName)) {
                        throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
                    }
                    return new Configuration(this.mContext, this.mName, this.mCallback, this.mUseNoBackUpDirectory);
                }
                throw new IllegalArgumentException("Must set a callback to create the configuration.");
            }

            public Builder callback(AbstractC2781a abstractC2781a) {
                this.mCallback = abstractC2781a;
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

        Configuration(Context context, String str, AbstractC2781a abstractC2781a) {
            this(context, str, abstractC2781a, false);
        }

        Configuration(Context context, String str, AbstractC2781a abstractC2781a, boolean z) {
            this.context = context;
            this.name = str;
            this.callback = abstractC2781a;
            this.useNoBackupDirectory = z;
        }

        public static Builder builder(Context context) {
            return new Builder(context);
        }
    }

    /* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper$a */
    /* loaded from: classes-dex2jar.jar:androidx/sqlite/db/SupportSQLiteOpenHelper$a.class */
    public static abstract class AbstractC2781a {

        /* renamed from: a */
        public final int f10531a;

        public AbstractC2781a(int i) {
            this.f10531a = i;
        }

        /* renamed from: a */
        public static void m39912a(String str) {
            if (str.equalsIgnoreCase(":memory:") || str.trim().length() == 0) {
                return;
            }
            Log.w("SupportSQLite", "deleting the database file: ".concat(String.valueOf(str)));
            try {
                if (Build.VERSION.SDK_INT >= 16) {
                    SQLiteDatabase.deleteDatabase(new File(str));
                    return;
                }
                try {
                    if (new File(str).delete()) {
                        return;
                    }
                    Log.e("SupportSQLite", "Could not delete the database file ".concat(String.valueOf(str)));
                } catch (Exception e) {
                    Log.e("SupportSQLite", "error while deleting corrupted database file", e);
                }
            } catch (Exception e2) {
                Log.w("SupportSQLite", "delete failed: ", e2);
            }
        }

        /* renamed from: a */
        public abstract void mo39914a(AbstractC2792b abstractC2792b);

        /* renamed from: a */
        public abstract void mo39913a(AbstractC2792b abstractC2792b, int i, int i2);

        /* renamed from: b */
        public void mo39911b(AbstractC2792b abstractC2792b) {
        }

        /* renamed from: b */
        public void mo39910b(AbstractC2792b abstractC2792b, int i, int i2) {
            throw new SQLiteException("Can't downgrade database from version " + i + " to " + i2);
        }
    }

    /* renamed from: androidx.sqlite.db.SupportSQLiteOpenHelper$b */
    /* loaded from: classes-dex2jar.jar:androidx/sqlite/db/SupportSQLiteOpenHelper$b.class */
    public interface AbstractC2782b {
        /* renamed from: a */
        SupportSQLiteOpenHelper mo39489a(Configuration configuration);
    }

    /* renamed from: a */
    String mo39908a();

    /* renamed from: a */
    void mo39907a(boolean z);

    /* renamed from: b */
    AbstractC2792b mo39906b();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();
}

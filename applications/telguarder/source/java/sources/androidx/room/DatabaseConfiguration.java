package androidx.room;

import android.content.Context;
import androidx.room.RoomDatabase;
import androidx.sqlite.p006db.SupportSQLiteOpenHelper;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/room/DatabaseConfiguration.class */
public class DatabaseConfiguration {
    public final boolean allowDestructiveMigrationOnDowngrade;
    public final boolean allowMainThreadQueries;
    public final List<RoomDatabase.Callback> callbacks;
    public final Context context;
    public final RoomDatabase.JournalMode journalMode;
    private final Set<Integer> mMigrationNotRequiredFrom;
    public final RoomDatabase.MigrationContainer migrationContainer;
    public final boolean multiInstanceInvalidation;
    public final String name;
    public final Executor queryExecutor;
    public final boolean requireMigration;
    public final SupportSQLiteOpenHelper.Factory sqliteOpenHelperFactory;
    public final Executor transactionExecutor;

    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List<RoomDatabase.Callback> list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set) {
        this.sqliteOpenHelperFactory = factory;
        this.context = context;
        this.name = str;
        this.migrationContainer = migrationContainer;
        this.callbacks = list;
        this.allowMainThreadQueries = z;
        this.journalMode = journalMode;
        this.queryExecutor = executor;
        this.transactionExecutor = executor2;
        this.multiInstanceInvalidation = z2;
        this.requireMigration = z3;
        this.allowDestructiveMigrationOnDowngrade = z4;
        this.mMigrationNotRequiredFrom = set;
    }

    @Deprecated
    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.Factory factory, RoomDatabase.MigrationContainer migrationContainer, List<RoomDatabase.Callback> list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, boolean z2, Set<Integer> set) {
        this(context, str, factory, migrationContainer, list, z, journalMode, executor, executor, false, z2, false, set);
    }

    public boolean isMigrationRequired(int i, int i2) {
        boolean z;
        if (!(i > i2) || !this.allowDestructiveMigrationOnDowngrade) {
            if (this.requireMigration) {
                Set<Integer> set = this.mMigrationNotRequiredFrom;
                z = true;
                if (set != null) {
                    if (!set.contains(Integer.valueOf(i))) {
                        z = true;
                    }
                }
                return z;
            }
            z = false;
            return z;
        }
        return false;
    }

    public boolean isMigrationRequiredFrom(int i) {
        return isMigrationRequired(i, i + 1);
    }
}

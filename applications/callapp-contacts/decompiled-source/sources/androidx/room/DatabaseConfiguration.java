package androidx.room;

import android.content.Context;
import androidx.room.h;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.io.File;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/room/DatabaseConfiguration.class */
public class DatabaseConfiguration {
    public final boolean allowDestructiveMigrationOnDowngrade;
    public final boolean allowMainThreadQueries;
    public final List<h.b> callbacks;
    public final Context context;
    public final String copyFromAssetPath;
    public final File copyFromFile;
    public final h.c journalMode;
    private final Set<Integer> mMigrationNotRequiredFrom;
    public final h.d migrationContainer;
    public final boolean multiInstanceInvalidation;
    public final String name;
    public final Executor queryExecutor;
    public final boolean requireMigration;
    public final SupportSQLiteOpenHelper.b sqliteOpenHelperFactory;
    public final Executor transactionExecutor;

    @Deprecated
    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.b bVar, h.d dVar, List<h.b> list, boolean z, h.c cVar, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set) {
        this(context, str, bVar, dVar, list, z, cVar, executor, executor2, z2, z3, z4, set, null, null);
    }

    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.b bVar, h.d dVar, List<h.b> list, boolean z, h.c cVar, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set, String str2, File file) {
        this.sqliteOpenHelperFactory = bVar;
        this.context = context;
        this.name = str;
        this.migrationContainer = dVar;
        this.callbacks = list;
        this.allowMainThreadQueries = z;
        this.journalMode = cVar;
        this.queryExecutor = executor;
        this.transactionExecutor = executor2;
        this.multiInstanceInvalidation = z2;
        this.requireMigration = z3;
        this.allowDestructiveMigrationOnDowngrade = z4;
        this.mMigrationNotRequiredFrom = set;
        this.copyFromAssetPath = str2;
        this.copyFromFile = file;
    }

    @Deprecated
    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.b bVar, h.d dVar, List<h.b> list, boolean z, h.c cVar, Executor executor, boolean z2, Set<Integer> set) {
        this(context, str, bVar, dVar, list, z, cVar, executor, executor, false, z2, false, set, null, null);
    }

    public boolean isMigrationRequired(int i, int i2) {
        if (((i > i2) && this.allowDestructiveMigrationOnDowngrade) || !this.requireMigration) {
            return false;
        }
        Set<Integer> set = this.mMigrationNotRequiredFrom;
        return set == null || !set.contains(Integer.valueOf(i));
    }

    @Deprecated
    public boolean isMigrationRequiredFrom(int i) {
        return isMigrationRequired(i, i + 1);
    }
}

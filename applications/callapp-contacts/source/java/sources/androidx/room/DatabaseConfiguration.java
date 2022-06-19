package androidx.room;

import android.content.Context;
import androidx.room.AbstractC2748h;
import androidx.sqlite.p082db.SupportSQLiteOpenHelper;
import java.io.File;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/room/DatabaseConfiguration.class */
public class DatabaseConfiguration {
    public final boolean allowDestructiveMigrationOnDowngrade;
    public final boolean allowMainThreadQueries;
    public final List<AbstractC2748h.AbstractC2750b> callbacks;
    public final Context context;
    public final String copyFromAssetPath;
    public final File copyFromFile;
    public final AbstractC2748h.EnumC2751c journalMode;
    private final Set<Integer> mMigrationNotRequiredFrom;
    public final AbstractC2748h.C2752d migrationContainer;
    public final boolean multiInstanceInvalidation;
    public final String name;
    public final Executor queryExecutor;
    public final boolean requireMigration;
    public final SupportSQLiteOpenHelper.AbstractC2782b sqliteOpenHelperFactory;
    public final Executor transactionExecutor;

    @Deprecated
    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.AbstractC2782b abstractC2782b, AbstractC2748h.C2752d c2752d, List<AbstractC2748h.AbstractC2750b> list, boolean z, AbstractC2748h.EnumC2751c enumC2751c, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set) {
        this(context, str, abstractC2782b, c2752d, list, z, enumC2751c, executor, executor2, z2, z3, z4, set, null, null);
    }

    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.AbstractC2782b abstractC2782b, AbstractC2748h.C2752d c2752d, List<AbstractC2748h.AbstractC2750b> list, boolean z, AbstractC2748h.EnumC2751c enumC2751c, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set, String str2, File file) {
        this.sqliteOpenHelperFactory = abstractC2782b;
        this.context = context;
        this.name = str;
        this.migrationContainer = c2752d;
        this.callbacks = list;
        this.allowMainThreadQueries = z;
        this.journalMode = enumC2751c;
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
    public DatabaseConfiguration(Context context, String str, SupportSQLiteOpenHelper.AbstractC2782b abstractC2782b, AbstractC2748h.C2752d c2752d, List<AbstractC2748h.AbstractC2750b> list, boolean z, AbstractC2748h.EnumC2751c enumC2751c, Executor executor, boolean z2, Set<Integer> set) {
        this(context, str, abstractC2782b, c2752d, list, z, enumC2751c, executor, executor, false, z2, false, set, null, null);
    }

    public boolean isMigrationRequired(int i, int i2) {
        if ((!(i > i2) || !this.allowDestructiveMigrationOnDowngrade) && this.requireMigration) {
            Set<Integer> set = this.mMigrationNotRequiredFrom;
            return set == null || !set.contains(Integer.valueOf(i));
        }
        return false;
    }

    @Deprecated
    public boolean isMigrationRequiredFrom(int i) {
        return isMigrationRequired(i, i + 1);
    }
}

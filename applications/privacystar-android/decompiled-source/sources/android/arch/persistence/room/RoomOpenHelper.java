package android.arch.persistence.room;

import android.arch.persistence.p000db.SimpleSQLiteQuery;
import android.arch.persistence.p000db.SupportSQLiteDatabase;
import android.arch.persistence.p000db.SupportSQLiteOpenHelper;
import android.arch.persistence.room.migration.Migration;
import android.database.Cursor;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:android/arch/persistence/room/RoomOpenHelper.class */
public class RoomOpenHelper extends SupportSQLiteOpenHelper.Callback {
    @Nullable
    private DatabaseConfiguration mConfiguration;
    @NonNull
    private final Delegate mDelegate;
    @NonNull
    private final String mIdentityHash;
    @NonNull
    private final String mLegacyHash;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes-dex2jar.jar:android/arch/persistence/room/RoomOpenHelper$Delegate.class */
    public static abstract class Delegate {
        public final int version;

        public Delegate(int i) {
            this.version = i;
        }

        protected abstract void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase);

        protected abstract void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase);

        protected abstract void onCreate(SupportSQLiteDatabase supportSQLiteDatabase);

        protected abstract void onOpen(SupportSQLiteDatabase supportSQLiteDatabase);

        protected abstract void validateMigration(SupportSQLiteDatabase supportSQLiteDatabase);
    }

    public RoomOpenHelper(@NonNull DatabaseConfiguration databaseConfiguration, @NonNull Delegate delegate, @NonNull String str) {
        this(databaseConfiguration, delegate, "", str);
    }

    public RoomOpenHelper(@NonNull DatabaseConfiguration databaseConfiguration, @NonNull Delegate delegate, @NonNull String str, @NonNull String str2) {
        super(delegate.version);
        this.mConfiguration = databaseConfiguration;
        this.mDelegate = delegate;
        this.mIdentityHash = str;
        this.mLegacyHash = str2;
    }

    private void checkIdentity(SupportSQLiteDatabase supportSQLiteDatabase) {
        boolean hasRoomMasterTable = hasRoomMasterTable(supportSQLiteDatabase);
        String str = null;
        str = null;
        if (hasRoomMasterTable) {
            Cursor query = supportSQLiteDatabase.query(new SimpleSQLiteQuery(RoomMasterTable.READ_QUERY));
            try {
                if (query.moveToFirst()) {
                    str = query.getString(0);
                }
            } finally {
                query.close();
            }
        }
        if (!this.mIdentityHash.equals(str) && !this.mLegacyHash.equals(str)) {
            throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
        }
    }

    private void createMasterTableIfNotExists(SupportSQLiteDatabase supportSQLiteDatabase) {
        supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
    }

    private static boolean hasRoomMasterTable(SupportSQLiteDatabase supportSQLiteDatabase) {
        Cursor query = supportSQLiteDatabase.query("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            boolean z = false;
            if (query.moveToFirst()) {
                z = false;
                if (query.getInt(0) != 0) {
                    z = true;
                }
            }
            return z;
        } finally {
            query.close();
        }
    }

    private void updateIdentity(SupportSQLiteDatabase supportSQLiteDatabase) {
        createMasterTableIfNotExists(supportSQLiteDatabase);
        supportSQLiteDatabase.execSQL(RoomMasterTable.createInsertQuery(this.mIdentityHash));
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteOpenHelper.Callback
    public void onConfigure(SupportSQLiteDatabase supportSQLiteDatabase) {
        super.onConfigure(supportSQLiteDatabase);
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteOpenHelper.Callback
    public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
        updateIdentity(supportSQLiteDatabase);
        this.mDelegate.createAllTables(supportSQLiteDatabase);
        this.mDelegate.onCreate(supportSQLiteDatabase);
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteOpenHelper.Callback
    public void onDowngrade(SupportSQLiteDatabase supportSQLiteDatabase, int i, int i2) {
        onUpgrade(supportSQLiteDatabase, i, i2);
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteOpenHelper.Callback
    public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
        super.onOpen(supportSQLiteDatabase);
        checkIdentity(supportSQLiteDatabase);
        this.mDelegate.onOpen(supportSQLiteDatabase);
        this.mConfiguration = null;
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteOpenHelper.Callback
    public void onUpgrade(SupportSQLiteDatabase supportSQLiteDatabase, int i, int i2) {
        boolean z;
        List<Migration> findMigrationPath;
        if (this.mConfiguration == null || (findMigrationPath = this.mConfiguration.migrationContainer.findMigrationPath(i, i2)) == null) {
            z = false;
        } else {
            for (Migration migration : findMigrationPath) {
                migration.migrate(supportSQLiteDatabase);
            }
            this.mDelegate.validateMigration(supportSQLiteDatabase);
            updateIdentity(supportSQLiteDatabase);
            z = true;
        }
        if (z) {
            return;
        }
        if (this.mConfiguration == null || this.mConfiguration.isMigrationRequiredFrom(i)) {
            throw new IllegalStateException("A migration from " + i + " to " + i2 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
        }
        this.mDelegate.dropAllTables(supportSQLiteDatabase);
        this.mDelegate.createAllTables(supportSQLiteDatabase);
    }
}

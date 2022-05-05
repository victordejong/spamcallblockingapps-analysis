package gogolook.callgogolook2.vas.data.local;

import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenHelper;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.p008db.SupportSQLiteDatabase;
import androidx.sqlite.p008db.SupportSQLiteOpenHelper;
import gogolook.callgogolook2.realm.obj.vas.VasMessageRealm;
import java.util.HashMap;
import java.util.HashSet;
import p459j.p460a.p604y0.p605c.p606c.AbstractC14494e;
import p459j.p460a.p604y0.p605c.p606c.C14495f;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/vas/data/local/VasDatabase_Impl.class */
public final class VasDatabase_Impl extends VasDatabase {

    /* renamed from: e */
    public volatile AbstractC14494e f12985e;

    /* renamed from: gogolook.callgogolook2.vas.data.local.VasDatabase_Impl$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/vas/data/local/VasDatabase_Impl$a.class */
    public class C5261a extends RoomOpenHelper.Delegate {
        public C5261a(int i) {
            super(i);
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `vas_message` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `subscription_type` INTEGER NOT NULL, `promotion_type` INTEGER NOT NULL, `cancel_type` INTEGER NOT NULL, `e164` TEXT NOT NULL, `content` TEXT NOT NULL, `time` INTEGER NOT NULL, `name` TEXT NOT NULL, `price_type` INTEGER NOT NULL, `price` REAL NOT NULL, `period_type` INTEGER NOT NULL, `period` TEXT NOT NULL)");
            supportSQLiteDatabase.execSQL(RoomMasterTable.CREATE_QUERY);
            supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'b756beccde3eb704047afed6c6ba5c85')");
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `vas_message`");
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
            if (VasDatabase_Impl.this.mCallbacks != null) {
                int size = VasDatabase_Impl.this.mCallbacks.size();
                for (int i = 0; i < size; i++) {
                    ((RoomDatabase.Callback) VasDatabase_Impl.this.mCallbacks.get(i)).onCreate(supportSQLiteDatabase);
                }
            }
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
            VasDatabase_Impl.this.mDatabase = supportSQLiteDatabase;
            VasDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
            if (VasDatabase_Impl.this.mCallbacks != null) {
                int size = VasDatabase_Impl.this.mCallbacks.size();
                for (int i = 0; i < size; i++) {
                    ((RoomDatabase.Callback) VasDatabase_Impl.this.mCallbacks.get(i)).onOpen(supportSQLiteDatabase);
                }
            }
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        public void onPostMigrate(SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        public void onPreMigrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            DBUtil.dropFtsSyncTriggers(supportSQLiteDatabase);
        }

        @Override // androidx.room.RoomOpenHelper.Delegate
        public void validateMigration(SupportSQLiteDatabase supportSQLiteDatabase) {
            HashMap hashMap = new HashMap(12);
            hashMap.put("id", new TableInfo.Column("id", "INTEGER", true, 1));
            hashMap.put(VasMessageRealm.SUBSCRIPTION_TYPE, new TableInfo.Column(VasMessageRealm.SUBSCRIPTION_TYPE, "INTEGER", true, 0));
            hashMap.put(VasMessageRealm.PROMOTION_TYPE, new TableInfo.Column(VasMessageRealm.PROMOTION_TYPE, "INTEGER", true, 0));
            hashMap.put(VasMessageRealm.CANCEL_TYPE, new TableInfo.Column(VasMessageRealm.CANCEL_TYPE, "INTEGER", true, 0));
            hashMap.put("e164", new TableInfo.Column("e164", "TEXT", true, 0));
            hashMap.put("content", new TableInfo.Column("content", "TEXT", true, 0));
            hashMap.put("time", new TableInfo.Column("time", "INTEGER", true, 0));
            hashMap.put("name", new TableInfo.Column("name", "TEXT", true, 0));
            hashMap.put(VasMessageRealm.PRICE_TYPE, new TableInfo.Column(VasMessageRealm.PRICE_TYPE, "INTEGER", true, 0));
            hashMap.put("price", new TableInfo.Column("price", "REAL", true, 0));
            hashMap.put(VasMessageRealm.PERIOD_TYPE, new TableInfo.Column(VasMessageRealm.PERIOD_TYPE, "INTEGER", true, 0));
            hashMap.put("period", new TableInfo.Column("period", "TEXT", true, 0));
            TableInfo tableInfo = new TableInfo(VasMessageRealm.TABLE_NAME, hashMap, new HashSet(0), new HashSet(0));
            TableInfo read = TableInfo.read(supportSQLiteDatabase, VasMessageRealm.TABLE_NAME);
            if (!tableInfo.equals(read)) {
                throw new IllegalStateException("Migration didn't properly handle vas_message(gogolook.callgogolook2.vas.data.local.VasMessage).\n Expected:\n" + tableInfo + "\n Found:\n" + read);
            }
        }
    }

    @Override // gogolook.callgogolook2.vas.data.local.VasDatabase
    /* renamed from: a */
    public AbstractC14494e mo25980a() {
        AbstractC14494e eVar;
        if (this.f12985e != null) {
            return this.f12985e;
        }
        synchronized (this) {
            if (this.f12985e == null) {
                this.f12985e = new C14495f(this);
            }
            eVar = this.f12985e;
        }
        return eVar;
    }

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("DELETE FROM `vas_message`");
            super.setTransactionSuccessful();
            super.endTransaction();
            writableDatabase.query("PRAGMA wal_checkpoint(FULL)").close();
            if (!writableDatabase.inTransaction()) {
                writableDatabase.execSQL("VACUUM");
            }
        } catch (Throwable th) {
            super.endTransaction();
            writableDatabase.query("PRAGMA wal_checkpoint(FULL)").close();
            if (!writableDatabase.inTransaction()) {
                writableDatabase.execSQL("VACUUM");
            }
            throw th;
        }
    }

    @Override // androidx.room.RoomDatabase
    public InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), VasMessageRealm.TABLE_NAME);
    }

    @Override // androidx.room.RoomDatabase
    public SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new C5261a(2), "b756beccde3eb704047afed6c6ba5c85", "8e80037d2c1ca403d64b5d0013c5b4a5")).build());
    }
}

package com.apptentive.android.sdk.storage;

import android.database.sqlite.SQLiteDatabase;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.Encryption;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/DatabaseMigratorV1.class */
class DatabaseMigratorV1 extends DatabaseMigrator {
    public DatabaseMigratorV1(Encryption encryption, File file) {
        super(encryption, file);
    }

    @Override // com.apptentive.android.sdk.storage.DatabaseMigrator
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        ApptentiveLog.m15638v(ApptentiveLogTag.DATABASE, "\t1. Dropping legacy table...", new Object[0]);
        sQLiteDatabase.execSQL("DROP TABLE payload;");
        ApptentiveLog.m15638v(ApptentiveLogTag.DATABASE, "\t2. Creating new table...", new Object[0]);
        sQLiteDatabase.execSQL(ApptentiveDatabaseHelper.SQL_CREATE_PAYLOAD_TABLE);
    }
}

package com.apptentive.android.sdk.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.encryption.EncryptionKey;
import com.apptentive.android.sdk.storage.ApptentiveDatabaseHelper;
import com.apptentive.android.sdk.util.Util;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.File;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import org.spongycastle.cms.CMSAttributeTableGenerator;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/DatabaseMigratorV3.class */
class DatabaseMigratorV3 extends DatabaseMigrator {
    private static final String TABLE_NAME_PAYLOADS = "payload";
    private static final String TABLE_NAME_PAYLOADS_LEGACY = "legacy_payload";
    private static final String SQL_BACKUP_LEGACY_PAYLOAD_TABLE = String.format("ALTER TABLE %s RENAME TO %s;", "payload", TABLE_NAME_PAYLOADS_LEGACY);
    private static final String SQL_DELETE_LEGACY_PAYLOAD_TABLE = String.format("DROP TABLE %s;", TABLE_NAME_PAYLOADS_LEGACY);
    private static final String SQL_QUERY_SELECT_LEGACY_PAYLOADS = "SELECT * FROM legacy_payload ORDER BY " + PayloadEntryLegacy.COLUMN_PRIMARY_KEY + " ASC";

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy.class */
    private static final class PayloadEntryLegacy {
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_PRIMARY_KEY = new ApptentiveDatabaseHelper.DatabaseColumn(0, "_id");
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_PAYLOAD_TYPE = new ApptentiveDatabaseHelper.DatabaseColumn(1, "payloadType");
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_IDENTIFIER = new ApptentiveDatabaseHelper.DatabaseColumn(2, SettingsJsonConstants.APP_IDENTIFIER_KEY);
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_CONTENT_TYPE = new ApptentiveDatabaseHelper.DatabaseColumn(3, CMSAttributeTableGenerator.CONTENT_TYPE);
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_AUTH_TOKEN = new ApptentiveDatabaseHelper.DatabaseColumn(4, "authToken");
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_CONVERSATION_ID = new ApptentiveDatabaseHelper.DatabaseColumn(5, "conversationId");
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_REQUEST_METHOD = new ApptentiveDatabaseHelper.DatabaseColumn(6, "requestMethod");
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_PATH = new ApptentiveDatabaseHelper.DatabaseColumn(7, "path");
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_ENCRYPTED = new ApptentiveDatabaseHelper.DatabaseColumn(8, "encrypted");
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_LOCAL_CONVERSATION_ID = new ApptentiveDatabaseHelper.DatabaseColumn(9, "localConversationId");

        private PayloadEntryLegacy() {
        }
    }

    public DatabaseMigratorV3(EncryptionKey encryptionKey, File file) {
        super(encryptionKey, file);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.apptentive.android.sdk.storage.DatabaseMigrator
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws IOException, NoSuchPaddingException, InvalidAlgorithmParameterException, NoSuchAlgorithmException, IllegalBlockSizeException, BadPaddingException, InvalidKeyException {
        Cursor cursor;
        Throwable th;
        try {
            sQLiteDatabase.beginTransaction();
            int i3 = 0;
            ApptentiveLog.m403v(ApptentiveLogTag.DATABASE, "\t1. Backing up '%s' table to '%s'...", "payload", TABLE_NAME_PAYLOADS_LEGACY);
            sQLiteDatabase.execSQL(SQL_BACKUP_LEGACY_PAYLOAD_TABLE);
            ApptentiveLog.m403v(ApptentiveLogTag.DATABASE, "\t2. Creating new '%s' table...", "payload");
            sQLiteDatabase.execSQL(ApptentiveDatabaseHelper.SQL_CREATE_PAYLOAD_TABLE);
            cursor = sQLiteDatabase.rawQuery(SQL_QUERY_SELECT_LEGACY_PAYLOADS, null);
            try {
                ApptentiveLog.m403v(ApptentiveLogTag.DATABASE, "\t3. Migrating legacy payloads (%d)...", Integer.valueOf(cursor.getCount()));
                while (cursor.moveToNext()) {
                    String string = cursor.getString(PayloadEntryLegacy.COLUMN_IDENTIFIER.index);
                    String string2 = cursor.getString(PayloadEntryLegacy.COLUMN_CONVERSATION_ID.index);
                    String string3 = cursor.getString(PayloadEntryLegacy.COLUMN_LOCAL_CONVERSATION_ID.index);
                    String string4 = cursor.getString(PayloadEntryLegacy.COLUMN_AUTH_TOKEN.index);
                    String string5 = cursor.getString(PayloadEntryLegacy.COLUMN_PATH.index);
                    String string6 = cursor.getString(PayloadEntryLegacy.COLUMN_CONTENT_TYPE.index);
                    String string7 = cursor.getString(PayloadEntryLegacy.COLUMN_REQUEST_METHOD.index);
                    int i4 = cursor.getInt(PayloadEntryLegacy.COLUMN_ENCRYPTED.index);
                    String string8 = cursor.getString(PayloadEntryLegacy.COLUMN_PAYLOAD_TYPE.index);
                    if (!getPayloadBodyFile(string).exists()) {
                        ApptentiveLog.m399w(ApptentiveLogTag.PAYLOADS, "\t\tLegacy payload missing its data file. Skipping...", new Object[i3]);
                    } else {
                        File payloadBodyFile = getPayloadBodyFile(string);
                        boolean z = i3;
                        if (i4 == 0) {
                            z = true;
                        }
                        writeToFile(payloadBodyFile, Util.readBytes(payloadBodyFile), z);
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(ApptentiveDatabaseHelper.PayloadEntry.COLUMN_IDENTIFIER.name, string);
                        contentValues.put(ApptentiveDatabaseHelper.PayloadEntry.COLUMN_CONVERSATION_ID.name, string2);
                        contentValues.put(ApptentiveDatabaseHelper.PayloadEntry.COLUMN_LOCAL_CONVERSATION_ID.name, string3);
                        contentValues.put(ApptentiveDatabaseHelper.PayloadEntry.COLUMN_PAYLOAD_TYPE.name, string8);
                        contentValues.put(ApptentiveDatabaseHelper.PayloadEntry.COLUMN_CONTENT_TYPE.name, string6);
                        contentValues.put(ApptentiveDatabaseHelper.PayloadEntry.COLUMN_AUTH_TOKEN.name, encrypt(string4));
                        contentValues.put(ApptentiveDatabaseHelper.PayloadEntry.COLUMN_REQUEST_METHOD.name, string7);
                        contentValues.put(ApptentiveDatabaseHelper.PayloadEntry.COLUMN_PATH.name, string5);
                        contentValues.put(ApptentiveDatabaseHelper.PayloadEntry.COLUMN_AUTHENTICATED.name, Integer.valueOf(i4));
                        sQLiteDatabase.insert("payload", null, contentValues);
                        i3 = 0;
                    }
                    i3 = i3;
                }
                ApptentiveLog.m403v(ApptentiveLogTag.DATABASE, "\t6. Dropping temporary '%s' table...", TABLE_NAME_PAYLOADS_LEGACY);
                sQLiteDatabase.execSQL(SQL_DELETE_LEGACY_PAYLOAD_TABLE);
                sQLiteDatabase.setTransactionSuccessful();
                ensureClosed(cursor);
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.endTransaction();
                }
            } catch (Throwable th2) {
                th = th2;
                ensureClosed(cursor);
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.endTransaction();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }
}

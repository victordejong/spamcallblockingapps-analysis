package com.apptentive.android.sdk.storage;

import com.apptentive.android.sdk.Encryption;
import com.apptentive.android.sdk.storage.ApptentiveDatabaseHelper;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/DatabaseMigratorV3.class */
class DatabaseMigratorV3 extends DatabaseMigrator {
    private static final String SQL_BACKUP_LEGACY_PAYLOAD_TABLE = String.format("ALTER TABLE %s RENAME TO %s;", "payload", "legacy_payload");
    private static final String SQL_DELETE_LEGACY_PAYLOAD_TABLE = String.format("DROP TABLE %s;", "legacy_payload");
    private static final String SQL_QUERY_SELECT_LEGACY_PAYLOADS = "SELECT * FROM legacy_payload ORDER BY " + PayloadEntryLegacy.COLUMN_PRIMARY_KEY + " ASC";

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/DatabaseMigratorV3$PayloadEntryLegacy.class */
    private static final class PayloadEntryLegacy {
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_PRIMARY_KEY = new ApptentiveDatabaseHelper.DatabaseColumn(0, "_id");
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_PAYLOAD_TYPE = new ApptentiveDatabaseHelper.DatabaseColumn(1, "payloadType");
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_IDENTIFIER = new ApptentiveDatabaseHelper.DatabaseColumn(2, "identifier");
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_CONTENT_TYPE = new ApptentiveDatabaseHelper.DatabaseColumn(3, "contentType");
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_AUTH_TOKEN = new ApptentiveDatabaseHelper.DatabaseColumn(4, "authToken");
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_CONVERSATION_ID = new ApptentiveDatabaseHelper.DatabaseColumn(5, "conversationId");
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_REQUEST_METHOD = new ApptentiveDatabaseHelper.DatabaseColumn(6, "requestMethod");
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_PATH = new ApptentiveDatabaseHelper.DatabaseColumn(7, "path");
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_ENCRYPTED = new ApptentiveDatabaseHelper.DatabaseColumn(8, "encrypted");
        static final ApptentiveDatabaseHelper.DatabaseColumn COLUMN_LOCAL_CONVERSATION_ID = new ApptentiveDatabaseHelper.DatabaseColumn(9, "localConversationId");

        private PayloadEntryLegacy() {
        }
    }

    public DatabaseMigratorV3(Encryption encryption, File file) {
        super(encryption, file);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x024a  */
    @Override // com.apptentive.android.sdk.storage.DatabaseMigrator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onUpgrade(android.database.sqlite.SQLiteDatabase r8, int r9, int r10) throws java.io.IOException, com.apptentive.android.sdk.encryption.EncryptionException {
        /*
            Method dump skipped, instructions count: 593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.storage.DatabaseMigratorV3.onUpgrade(android.database.sqlite.SQLiteDatabase, int, int):void");
    }
}

package com.apptentive.android.sdk.storage;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.support.annotation.Nullable;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.encryption.EncryptionKey;
import com.apptentive.android.sdk.encryption.Encryptor;
import com.apptentive.android.sdk.model.PayloadData;
import com.apptentive.android.sdk.model.PayloadType;
import com.apptentive.android.sdk.network.HttpRequestMethod;
import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.StringUtils;
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
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/ApptentiveDatabaseHelper.class */
public class ApptentiveDatabaseHelper extends SQLiteOpenHelper {
    private static final String COMPOUND_FILESTORE_KEY_CREATION_TIME = "creation_time";
    private static final String COMPOUND_FILESTORE_KEY_DB_ID = "_id";
    private static final String COMPOUND_FILESTORE_KEY_LOCAL_CACHE_PATH = "local_path";
    private static final String COMPOUND_FILESTORE_KEY_LOCAL_ORIGINAL_URI = "local_uri";
    private static final String COMPOUND_FILESTORE_KEY_MESSAGE_NONCE = "nonce";
    private static final String COMPOUND_FILESTORE_KEY_MIME_TYPE = "mime_type";
    private static final String COMPOUND_FILESTORE_KEY_REMOTE_URL = "apptentive_url";
    public static final String DATABASE_NAME = "apptentive";
    private static final int DATABASE_VERSION = 4;
    private static final int FALSE = 0;
    private static final String FILESTORE_KEY_APPTENTIVE_URL = "apptentive_uri";
    private static final String FILESTORE_KEY_ID = "id";
    private static final String FILESTORE_KEY_LOCAL_URL = "local_uri";
    private static final String FILESTORE_KEY_MIME_TYPE = "mime_type";
    private static final String FILESTORE_KEY_ORIGINAL_URL = "original_uri";
    private static final String MESSAGE_KEY_CLIENT_CREATED_AT = "client_created_at";
    private static final String MESSAGE_KEY_DB_ID = "_id";
    private static final String MESSAGE_KEY_ID = "id";
    private static final String MESSAGE_KEY_JSON = "json";
    private static final String MESSAGE_KEY_NONCE = "nonce";
    private static final String MESSAGE_KEY_READ = "read";
    private static final String MESSAGE_KEY_STATE = "state";
    private static final String QUERY_MESSAGE_FILES_GET_BY_NONCE = "SELECT * FROM compound_message_file_store WHERE nonce = ?";
    static final String SQL_DELETE_PAYLOAD_TABLE = "DROP TABLE payload;";
    private static final String SQL_REMOVE_INCOMPLETE_PAYLOADS;
    private static final String SQL_SELECT_PAYLOADS_IN_SEND_ORDER;
    private static final String SQL_UPDATE_INCOMPLETE_PAYLOADS;
    private static final String TABLE_COMPOUND_MESSAGE_FILESTORE = "compound_message_file_store";
    private static final String TABLE_CREATE_COMPOUND_FILESTORE = "CREATE TABLE compound_message_file_store (_id INTEGER PRIMARY KEY, nonce TEXT, local_path TEXT, mime_type TEXT, local_uri TEXT, apptentive_url TEXT, creation_time LONG);";
    private static final String TABLE_CREATE_FILESTORE = "CREATE TABLE file_store (id TEXT PRIMARY KEY, mime_type TEXT, original_uri TEXT, local_uri TEXT, apptentive_uri TEXT);";
    private static final String TABLE_CREATE_MESSAGE = "CREATE TABLE message (_id INTEGER PRIMARY KEY, id TEXT, client_created_at DOUBLE, nonce TEXT, state TEXT, read INTEGER, json TEXT);";
    private static final String TABLE_FILESTORE = "file_store";
    private static final String TABLE_MESSAGE = "message";
    private static final int TRUE = 1;
    private final EncryptionKey encryptionKey;
    private final File fileDir;
    private final File payloadDataDir;
    static final String SQL_CREATE_PAYLOAD_TABLE = "CREATE TABLE payload (" + PayloadEntry.COLUMN_PRIMARY_KEY + " INTEGER PRIMARY KEY, " + PayloadEntry.COLUMN_PAYLOAD_TYPE + " TEXT, " + PayloadEntry.COLUMN_IDENTIFIER + " TEXT, " + PayloadEntry.COLUMN_CONTENT_TYPE + " TEXT," + PayloadEntry.COLUMN_AUTH_TOKEN + " BLOB," + PayloadEntry.COLUMN_CONVERSATION_ID + " TEXT," + PayloadEntry.COLUMN_REQUEST_METHOD + " TEXT," + PayloadEntry.COLUMN_PATH + " TEXT," + PayloadEntry.COLUMN_AUTHENTICATED + " INTEGER," + PayloadEntry.COLUMN_LOCAL_CONVERSATION_ID + " TEXT);";
    private static final String SQL_UPDATE_LEGACY_PAYLOADS = "UPDATE payload SET " + PayloadEntry.COLUMN_AUTH_TOKEN + " = ?, " + PayloadEntry.COLUMN_CONVERSATION_ID + " = ?, " + PayloadEntry.COLUMN_LOCAL_CONVERSATION_ID + " = ? WHERE " + PayloadEntry.COLUMN_AUTH_TOKEN + " IS NULL AND " + PayloadEntry.COLUMN_CONVERSATION_ID + " IS NULL";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$DatabaseColumn.class */
    public static final class DatabaseColumn {
        final int index;
        public final String name;

        /* JADX INFO: Access modifiers changed from: package-private */
        public DatabaseColumn(int i, String str) {
            this.index = i;
            this.name = str;
        }

        public String toString() {
            return this.name;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/ApptentiveDatabaseHelper$PayloadEntry.class */
    public static final class PayloadEntry {
        static final String TABLE_NAME = "payload";
        static final DatabaseColumn COLUMN_PRIMARY_KEY = new DatabaseColumn(0, "_id");
        static final DatabaseColumn COLUMN_PAYLOAD_TYPE = new DatabaseColumn(1, "payloadType");
        static final DatabaseColumn COLUMN_IDENTIFIER = new DatabaseColumn(2, SettingsJsonConstants.APP_IDENTIFIER_KEY);
        static final DatabaseColumn COLUMN_CONTENT_TYPE = new DatabaseColumn(3, CMSAttributeTableGenerator.CONTENT_TYPE);
        static final DatabaseColumn COLUMN_AUTH_TOKEN = new DatabaseColumn(4, "authToken");
        static final DatabaseColumn COLUMN_CONVERSATION_ID = new DatabaseColumn(5, "conversationId");
        static final DatabaseColumn COLUMN_REQUEST_METHOD = new DatabaseColumn(6, "requestMethod");
        static final DatabaseColumn COLUMN_PATH = new DatabaseColumn(7, "path");
        static final DatabaseColumn COLUMN_AUTHENTICATED = new DatabaseColumn(8, "authenticated");
        static final DatabaseColumn COLUMN_LOCAL_CONVERSATION_ID = new DatabaseColumn(9, "localConversationId");

        PayloadEntry() {
        }
    }

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT * FROM payload ORDER BY ");
        sb.append(PayloadEntry.COLUMN_PRIMARY_KEY);
        sb.append(" ASC");
        SQL_SELECT_PAYLOADS_IN_SEND_ORDER = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("UPDATE payload SET ");
        sb2.append(PayloadEntry.COLUMN_AUTH_TOKEN);
        sb2.append(" = ?, ");
        sb2.append(PayloadEntry.COLUMN_CONVERSATION_ID);
        sb2.append(" = ? WHERE ");
        sb2.append(PayloadEntry.COLUMN_LOCAL_CONVERSATION_ID);
        sb2.append(" = ? AND ");
        sb2.append(PayloadEntry.COLUMN_AUTH_TOKEN);
        sb2.append(" IS NULL AND ");
        sb2.append(PayloadEntry.COLUMN_CONVERSATION_ID);
        sb2.append(" IS NULL");
        SQL_UPDATE_INCOMPLETE_PAYLOADS = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("DELETE FROM payload WHERE ");
        sb3.append(PayloadEntry.COLUMN_AUTH_TOKEN);
        sb3.append(" IS NULL OR ");
        sb3.append(PayloadEntry.COLUMN_CONVERSATION_ID);
        sb3.append(" IS NULL");
        SQL_REMOVE_INCOMPLETE_PAYLOADS = sb3.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ApptentiveDatabaseHelper(Context context, EncryptionKey encryptionKey) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 4);
        if (encryptionKey == null) {
            throw new IllegalArgumentException("Encryption key is null");
        }
        this.fileDir = context.getFilesDir();
        this.payloadDataDir = new File(this.fileDir, Constants.PAYLOAD_DATA_DIR);
        this.encryptionKey = encryptionKey;
    }

    @Nullable
    private DatabaseMigrator createDatabaseMigrator(int i, int i2) {
        switch (i) {
            case 1:
                return new DatabaseMigratorV1(this.encryptionKey, this.payloadDataDir);
            case 2:
                return new DatabaseMigratorV2(this.encryptionKey, this.payloadDataDir);
            case 3:
                return new DatabaseMigratorV3(this.encryptionKey, this.payloadDataDir);
            default:
                Assert.assertFail("Missing database migrator version: %d", Integer.valueOf(i));
                return null;
        }
    }

    private String decryptString(byte[] bArr) throws NoSuchPaddingException, InvalidKeyException, NoSuchAlgorithmException, IllegalBlockSizeException, BadPaddingException, InvalidAlgorithmParameterException {
        return Encryptor.decryptString(this.encryptionKey, bArr);
    }

    private byte[] encrypt(@Nullable String str) throws NoSuchPaddingException, InvalidKeyException, NoSuchAlgorithmException, IllegalBlockSizeException, BadPaddingException, InvalidAlgorithmParameterException {
        return Encryptor.encrypt(this.encryptionKey, str);
    }

    private void ensureClosed(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Exception e) {
                ApptentiveLog.m399w(ApptentiveLogTag.DATABASE, "Error closing SQLite cursor.", e);
            }
        }
    }

    private File getPayloadBodyFile(String str) {
        File file = this.payloadDataDir;
        return new File(file, str + Constants.PAYLOAD_DATA_FILE_SUFFIX);
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [java.lang.Object[], java.lang.Object[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void printPayloadTable(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.storage.ApptentiveDatabaseHelper.printPayloadTable(java.lang.String):void");
    }

    private byte[] readFromFile(File file, boolean z) throws NoSuchPaddingException, InvalidAlgorithmParameterException, NoSuchAlgorithmException, IOException, BadPaddingException, IllegalBlockSizeException, InvalidKeyException {
        return z ? Encryptor.readFromEncryptedFile(this.encryptionKey, file) : Util.readBytes(file);
    }

    private void removeCorruptedPayloads() {
        Cursor cursor;
        Throwable th;
        Cursor cursor2;
        SQLException e;
        try {
            cursor2 = getWritableDatabase().rawQuery(SQL_REMOVE_INCOMPLETE_PAYLOADS, null);
            cursor = cursor2;
            try {
                try {
                    cursor2.moveToFirst();
                    ApptentiveLog.m403v(ApptentiveLogTag.DATABASE, "Removed incomplete payloads", new Object[0]);
                } catch (SQLException e2) {
                    e = e2;
                    cursor = cursor2;
                    ApptentiveLog.m408e(e, "Exception while removing incomplete payloads", new Object[0]);
                    ensureClosed(cursor2);
                }
            } catch (Throwable th2) {
                th = th2;
                ensureClosed(cursor);
                throw th;
            }
        } catch (SQLException e3) {
            e = e3;
            cursor2 = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
            ensureClosed(cursor);
            throw th;
        }
        ensureClosed(cursor2);
    }

    private String updatePayloadRequestPath(String str, String str2) {
        return str.replace("${conversationId}", str2);
    }

    private void writeToFile(File file, byte[] bArr, boolean z) throws NoSuchPaddingException, InvalidKeyException, NoSuchAlgorithmException, IOException, BadPaddingException, IllegalBlockSizeException, InvalidAlgorithmParameterException {
        if (z) {
            Encryptor.writeToEncryptedFile(this.encryptionKey, file, bArr);
        } else {
            Util.writeAtomically(file, bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00fc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean addCompoundMessageFiles(java.util.List<com.apptentive.android.sdk.model.StoredFile> r9) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.storage.ApptentiveDatabaseHelper.addCompoundMessageFiles(java.util.List):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:31:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addPayload(com.apptentive.android.sdk.model.Payload r8) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.storage.ApptentiveDatabaseHelper.addPayload(com.apptentive.android.sdk.model.Payload):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void deleteAllPayloads() {
        try {
            getWritableDatabase().delete("payload", "", null);
        } catch (SQLException e) {
            ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.DATABASE;
            ApptentiveLog.m411e(apptentiveLogTag, "deleteAllPayloads EXCEPTION: " + e.getMessage(), new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void deleteAssociatedFiles(String str) {
        try {
            ApptentiveLog.m415d(ApptentiveLogTag.DATABASE, "Deleted %d stored files.", Integer.valueOf(getWritableDatabase().delete(TABLE_COMPOUND_MESSAGE_FILESTORE, "nonce = ?", new String[]{str})));
        } catch (SQLException e) {
            ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.DATABASE;
            ApptentiveLog.m411e(apptentiveLogTag, "deleteAssociatedFiles EXCEPTION: " + e.getMessage(), new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void deletePayload(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Payload identifier is null");
        }
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.delete("payload", PayloadEntry.COLUMN_IDENTIFIER + " = ?", new String[]{str});
        } catch (SQLException e) {
            ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.DATABASE;
            ApptentiveLog.m411e(apptentiveLogTag, "deletePayload EXCEPTION: " + e.getMessage(), new Object[0]);
        }
        ApptentiveLog.m403v(ApptentiveLogTag.DATABASE, "Deleted payload \"%s\" data file successfully? %b", str, Boolean.valueOf(getPayloadBodyFile(str).delete()));
        if (ApptentiveLog.canLog(ApptentiveLog.Level.VERBOSE)) {
            printPayloadTable("Deleted payload");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:52:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0120  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.apptentive.android.sdk.model.StoredFile> getAssociatedFiles(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.storage.ApptentiveDatabaseHelper.getAssociatedFiles(java.lang.String):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PayloadData getOldestUnsentPayload() {
        Cursor cursor;
        Exception e;
        Cursor cursor2;
        if (ApptentiveLog.canLog(ApptentiveLog.Level.VERBOSE)) {
            printPayloadTable("getOldestUnsentPayload");
        }
        try {
            cursor2 = getWritableDatabase().rawQuery(SQL_SELECT_PAYLOADS_IN_SEND_ORDER, null);
            try {
                ApptentiveLog.m403v(ApptentiveLogTag.PAYLOADS, "Unsent payloads count: %d", Integer.valueOf(cursor2.getCount()));
                while (cursor2.moveToNext()) {
                    String string = cursor2.getString(PayloadEntry.COLUMN_CONVERSATION_ID.index);
                    if (string == null) {
                        ApptentiveLog.m415d(ApptentiveLogTag.PAYLOADS, "Oldest unsent payload is missing a conversation id", new Object[0]);
                        ensureClosed(cursor2);
                        return null;
                    }
                    String decryptString = decryptString(cursor2.getBlob(PayloadEntry.COLUMN_AUTH_TOKEN.index));
                    String str = (String) Assert.notNull(cursor2.getString(PayloadEntry.COLUMN_IDENTIFIER.index));
                    PayloadType parse = PayloadType.parse(cursor2.getString(PayloadEntry.COLUMN_PAYLOAD_TYPE.index));
                    Assert.assertFalse(PayloadType.unknown.equals(parse), "Oldest unsent payload has unknown type");
                    if (PayloadType.unknown.equals(parse)) {
                        deletePayload(str);
                    } else {
                        String updatePayloadRequestPath = updatePayloadRequestPath(cursor2.getString(PayloadEntry.COLUMN_PATH.index), string);
                        File payloadBodyFile = getPayloadBodyFile(str);
                        if (!payloadBodyFile.exists()) {
                            ApptentiveLog.m399w(ApptentiveLogTag.PAYLOADS, "Oldest unsent payload had no data file. Deleting.", new Object[0]);
                            deletePayload(str);
                        } else {
                            String str2 = (String) Assert.notNull(cursor2.getString(PayloadEntry.COLUMN_CONTENT_TYPE.index));
                            HttpRequestMethod valueOf = HttpRequestMethod.valueOf((String) Assert.notNull(cursor2.getString(PayloadEntry.COLUMN_REQUEST_METHOD.index)));
                            boolean z = cursor2.getInt(PayloadEntry.COLUMN_AUTHENTICATED.index) == 1;
                            PayloadData payloadData = new PayloadData(parse, str, string, readFromFile(payloadBodyFile, !z), decryptString, str2, updatePayloadRequestPath, valueOf, z);
                            ensureClosed(cursor2);
                            return payloadData;
                        }
                    }
                }
                ensureClosed(cursor2);
                return null;
            } catch (Exception e2) {
                e = e2;
                cursor = cursor2;
                try {
                    ApptentiveLog.m408e(e, "Error getting oldest unsent payload.", new Object[0]);
                    ensureClosed(cursor);
                    return null;
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    ensureClosed(cursor2);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                ensureClosed(cursor2);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor2 = null;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        ApptentiveLog.m415d(ApptentiveLogTag.DATABASE, "ApptentiveDatabase.onCreate(db)", new Object[0]);
        sQLiteDatabase.execSQL(SQL_CREATE_PAYLOAD_TABLE);
        sQLiteDatabase.execSQL(TABLE_CREATE_MESSAGE);
        sQLiteDatabase.execSQL(TABLE_CREATE_FILESTORE);
        sQLiteDatabase.execSQL(TABLE_CREATE_COMPOUND_FILESTORE);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        ApptentiveLog.m415d(ApptentiveLogTag.DATABASE, "Upgrade database from %d to %d", Integer.valueOf(i), Integer.valueOf(i2));
        try {
            DatabaseMigrator createDatabaseMigrator = createDatabaseMigrator(i, i2);
            if (createDatabaseMigrator != null) {
                createDatabaseMigrator.onUpgrade(sQLiteDatabase, i, i2);
            }
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.DATABASE, e, "Exception while trying to migrate database from %d to %d", Integer.valueOf(i), Integer.valueOf(i2));
            sQLiteDatabase.execSQL(SQL_DELETE_PAYLOAD_TABLE);
            onCreate(sQLiteDatabase);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reset(Context context) {
        context.deleteDatabase(DATABASE_NAME);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateIncompletePayloads(String str, String str2, String str3, boolean z) {
        if (ApptentiveLog.canLog(ApptentiveLog.Level.VERBOSE)) {
            printPayloadTable("updateIncompletePayloads BEFORE");
        }
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Conversation id is null or empty");
        } else if (StringUtils.isNullOrEmpty(str2)) {
            throw new IllegalArgumentException("Token is null or empty");
        } else {
            try {
                getWritableDatabase().execSQL(z ? SQL_UPDATE_LEGACY_PAYLOADS : SQL_UPDATE_INCOMPLETE_PAYLOADS, new Object[]{encrypt(str2), str, str3});
                ApptentiveLog.m403v(ApptentiveLogTag.DATABASE, "Updated missing conversation ids", new Object[0]);
            } catch (Exception e) {
                ApptentiveLog.m408e(e, "Exception while updating missing conversation ids", new Object[0]);
            }
            removeCorruptedPayloads();
            if (ApptentiveLog.canLog(ApptentiveLog.Level.VERBOSE)) {
                printPayloadTable("updateIncompletePayloads AFTER");
            }
        }
    }
}

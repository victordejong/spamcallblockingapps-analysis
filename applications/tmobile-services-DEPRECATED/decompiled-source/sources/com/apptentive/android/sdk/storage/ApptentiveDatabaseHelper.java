package com.apptentive.android.sdk.storage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.Encryption;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.encryption.EncryptionException;
import com.apptentive.android.sdk.encryption.EncryptionHelper;
import com.apptentive.android.sdk.model.Payload;
import com.apptentive.android.sdk.model.PayloadData;
import com.apptentive.android.sdk.model.PayloadType;
import com.apptentive.android.sdk.network.HttpRequestMethod;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import java.io.File;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/ApptentiveDatabaseHelper.class */
public class ApptentiveDatabaseHelper extends SQLiteOpenHelper {
    private static final String SQL_REMOVE_INCOMPLETE_PAYLOADS;
    private static final String SQL_SELECT_PAYLOADS_IN_SEND_ORDER;
    private static final String SQL_UPDATE_INCOMPLETE_PAYLOADS;
    private final Encryption encryption;
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
        static final DatabaseColumn COLUMN_PRIMARY_KEY = new DatabaseColumn(0, "_id");
        static final DatabaseColumn COLUMN_PAYLOAD_TYPE = new DatabaseColumn(1, "payloadType");
        static final DatabaseColumn COLUMN_IDENTIFIER = new DatabaseColumn(2, "identifier");
        static final DatabaseColumn COLUMN_CONTENT_TYPE = new DatabaseColumn(3, "contentType");
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
    public ApptentiveDatabaseHelper(Context context, Encryption encryption) {
        super(context, "apptentive", (SQLiteDatabase.CursorFactory) null, 4);
        if (encryption != null) {
            this.fileDir = context.getFilesDir();
            this.payloadDataDir = new File(this.fileDir, "payloads");
            this.encryption = encryption;
            return;
        }
        throw new IllegalArgumentException("Encryption key is null");
    }

    @Nullable
    private DatabaseMigrator createDatabaseMigrator(int i, int i2) {
        if (i == 1) {
            return new DatabaseMigratorV1(this.encryption, this.payloadDataDir);
        }
        if (i == 2) {
            return new DatabaseMigratorV2(this.encryption, this.payloadDataDir);
        }
        if (i == 3) {
            return new DatabaseMigratorV3(this.encryption, this.payloadDataDir);
        }
        Assert.assertFail("Missing database migrator version: %d", Integer.valueOf(i));
        return null;
    }

    @Nullable
    private String decryptString(@Nullable byte[] bArr) throws EncryptionException {
        return EncryptionHelper.decryptString(this.encryption, bArr);
    }

    @Nullable
    private byte[] encrypt(@Nullable String str) throws EncryptionException {
        return EncryptionHelper.encrypt(this.encryption, str);
    }

    private void ensureClosed(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Exception e) {
                ApptentiveLog.m15635w(ApptentiveLogTag.DATABASE, "Error closing SQLite cursor.", e);
                logException(e);
            }
        }
    }

    private File getPayloadBodyFile(String str) {
        File file = this.payloadDataDir;
        return new File(file, str + ".data");
    }

    private void logException(Exception exc) {
        ErrorMetrics.logException(exc);
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [java.lang.Object[], java.lang.Object[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void printPayloadTable(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 479
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.storage.ApptentiveDatabaseHelper.printPayloadTable(java.lang.String):void");
    }

    private byte[] readFromFile(File file, boolean z) throws IOException, EncryptionException {
        return z ? EncryptionHelper.readFromEncryptedFile(this.encryption, file) : Util.readBytes(file);
    }

    private void removeCorruptedPayloads() {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor rawQuery = getWritableDatabase().rawQuery(SQL_REMOVE_INCOMPLETE_PAYLOADS, null);
                rawQuery.moveToFirst();
                cursor2 = rawQuery;
                cursor = rawQuery;
                ApptentiveLog.m15638v(ApptentiveLogTag.DATABASE, "Removed incomplete payloads", new Object[0]);
                cursor = rawQuery;
            } catch (SQLException e) {
                ApptentiveLog.m15641e(e, "Exception while removing incomplete payloads", new Object[0]);
                cursor2 = cursor;
                logException(e);
            }
        } finally {
            ensureClosed(cursor2);
        }
    }

    @Nullable
    private String tryDecryptString(@Nullable byte[] bArr, String str) {
        return tryDecryptString(bArr, str, true);
    }

    @Nullable
    private String tryDecryptString(@Nullable byte[] bArr, String str, boolean z) {
        try {
            return decryptString(bArr);
        } catch (Exception e) {
            if (z) {
                ApptentiveLog.m15641e(e, "Failed to decrypt string", new Object[0]);
            }
            return str;
        }
    }

    @Nullable
    private byte[] tryReadFromFile(File file, boolean z) {
        try {
            return readFromFile(file, z);
        } catch (Exception e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.PAYLOADS, e, "Unable to read% file: %s", z ? " encrypted" : "", file);
            logException(e);
            return null;
        }
    }

    private String updatePayloadRequestPath(String str, String str2) {
        return str.replace("${conversationId}", str2);
    }

    private void writeToFile(File file, byte[] bArr, boolean z) throws IOException, EncryptionException {
        if (z) {
            EncryptionHelper.writeToEncryptedFile(this.encryption, file, bArr);
        } else {
            Util.writeAtomically(file, bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0101  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean addCompoundMessageFiles(java.util.List<com.apptentive.android.sdk.model.StoredFile> r9) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.storage.ApptentiveDatabaseHelper.addCompoundMessageFiles(java.util.List):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addPayload(Payload payload) throws Exception {
        Throwable th;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            try {
                writableDatabase.beginTransaction();
                ContentValues contentValues = new ContentValues();
                String str = PayloadEntry.COLUMN_IDENTIFIER.name;
                String nonce = payload.getNonce();
                Assert.notNull(nonce);
                contentValues.put(str, nonce);
                String str2 = PayloadEntry.COLUMN_PAYLOAD_TYPE.name;
                String name = payload.getPayloadType().name();
                Assert.notNull(name);
                contentValues.put(str2, name);
                String str3 = PayloadEntry.COLUMN_CONTENT_TYPE.name;
                String httpRequestContentType = payload.getHttpRequestContentType();
                Assert.notNull(httpRequestContentType);
                contentValues.put(str3, httpRequestContentType);
                if (!payload.isAuthenticated()) {
                    contentValues.put(PayloadEntry.COLUMN_AUTH_TOKEN.name, encrypt(payload.getConversationToken()));
                }
                contentValues.put(PayloadEntry.COLUMN_CONVERSATION_ID.name, payload.getConversationId());
                contentValues.put(PayloadEntry.COLUMN_REQUEST_METHOD.name, payload.getHttpRequestMethod().name());
                contentValues.put(PayloadEntry.COLUMN_PATH.name, payload.getHttpEndPoint(StringUtils.isNullOrEmpty(payload.getConversationId()) ? "${conversationId}" : payload.getConversationId()));
                File payloadBodyFile = getPayloadBodyFile(payload.getNonce());
                int i = 1;
                ApptentiveLog.m15638v(ApptentiveLogTag.DATABASE, "Saving payload body to: %s", payloadBodyFile);
                writeToFile(payloadBodyFile, payload.renderData(), !payload.isAuthenticated());
                String str4 = PayloadEntry.COLUMN_AUTHENTICATED.name;
                if (!payload.isAuthenticated()) {
                    i = 0;
                }
                contentValues.put(str4, Integer.valueOf(i));
                String str5 = PayloadEntry.COLUMN_LOCAL_CONVERSATION_ID.name;
                String localConversationIdentifier = payload.getLocalConversationIdentifier();
                Assert.notNull(localConversationIdentifier);
                contentValues.put(str5, localConversationIdentifier);
                writableDatabase.insert("payload", null, contentValues);
                writableDatabase.setTransactionSuccessful();
                if (writableDatabase != null) {
                    writableDatabase.endTransaction();
                }
                if (ApptentiveLog.canLog(ApptentiveLog.Level.VERBOSE)) {
                    printPayloadTable("Added payload");
                }
            } catch (Throwable th2) {
                th = th2;
                sQLiteDatabase = writableDatabase;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.endTransaction();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void deleteAllPayloads() {
        try {
            getWritableDatabase().delete("payload", "", null);
        } catch (SQLException e) {
            ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.DATABASE;
            ApptentiveLog.m15644e(apptentiveLogTag, "deleteAllPayloads EXCEPTION: " + e.getMessage(), new Object[0]);
            logException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void deleteAssociatedFiles(String str) {
        try {
            ApptentiveLog.m15646d(ApptentiveLogTag.DATABASE, "Deleted %d stored files.", Integer.valueOf(getWritableDatabase().delete("compound_message_file_store", "nonce = ?", new String[]{str})));
        } catch (SQLException e) {
            ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.DATABASE;
            ApptentiveLog.m15644e(apptentiveLogTag, "deleteAssociatedFiles EXCEPTION: " + e.getMessage(), new Object[0]);
            logException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void deletePayload(String str) {
        if (str != null) {
            try {
                SQLiteDatabase writableDatabase = getWritableDatabase();
                writableDatabase.delete("payload", PayloadEntry.COLUMN_IDENTIFIER + " = ?", new String[]{str});
            } catch (SQLException e) {
                ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.DATABASE;
                ApptentiveLog.m15644e(apptentiveLogTag, "deletePayload EXCEPTION: " + e.getMessage(), new Object[0]);
                logException(e);
            }
            ApptentiveLog.m15638v(ApptentiveLogTag.DATABASE, "Deleted payload \"%s\" data file successfully? %b", str, Boolean.valueOf(getPayloadBodyFile(str).delete()));
            if (ApptentiveLog.canLog(ApptentiveLog.Level.VERBOSE)) {
                printPayloadTable("Deleted payload");
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Payload identifier is null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:54:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0133  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.apptentive.android.sdk.model.StoredFile> getAssociatedFiles(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.storage.ApptentiveDatabaseHelper.getAssociatedFiles(java.lang.String):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PayloadData getOldestUnsentPayload() {
        Throwable th;
        Exception e;
        Cursor cursor;
        if (ApptentiveLog.canLog(ApptentiveLog.Level.VERBOSE)) {
            printPayloadTable("getOldestUnsentPayload");
        }
        try {
            try {
                cursor = getWritableDatabase().rawQuery(SQL_SELECT_PAYLOADS_IN_SEND_ORDER, null);
                try {
                    ApptentiveLog.m15638v(ApptentiveLogTag.PAYLOADS, "Unsent payloads count: %d", Integer.valueOf(cursor.getCount()));
                    while (cursor.moveToNext()) {
                        String string = cursor.getString(PayloadEntry.COLUMN_CONVERSATION_ID.index);
                        if (string == null) {
                            ApptentiveLog.m15646d(ApptentiveLogTag.PAYLOADS, "Oldest unsent payload is missing a conversation id", new Object[0]);
                            ensureClosed(cursor);
                            return null;
                        }
                        String string2 = cursor.getString(PayloadEntry.COLUMN_IDENTIFIER.index);
                        Assert.notNull(string2);
                        String str = string2;
                        String tryDecryptString = tryDecryptString(cursor.getBlob(PayloadEntry.COLUMN_AUTH_TOKEN.index), "");
                        if (tryDecryptString == null || tryDecryptString.length() != 0) {
                            PayloadType parse = PayloadType.parse(cursor.getString(PayloadEntry.COLUMN_PAYLOAD_TYPE.index));
                            Assert.assertFalse(PayloadType.unknown.equals(parse), "Oldest unsent payload has unknown type");
                            if (PayloadType.unknown.equals(parse)) {
                                ApptentiveLog.m15635w(ApptentiveLogTag.PAYLOADS, "Oldest unsent payload type is undefined. Deleting...", new Object[0]);
                                deletePayload(str);
                            } else {
                                String updatePayloadRequestPath = updatePayloadRequestPath(cursor.getString(PayloadEntry.COLUMN_PATH.index), string);
                                File payloadBodyFile = getPayloadBodyFile(str);
                                if (!payloadBodyFile.exists()) {
                                    ApptentiveLog.m15635w(ApptentiveLogTag.PAYLOADS, "Oldest unsent payload had no data file. Deleting...", new Object[0]);
                                    deletePayload(str);
                                } else {
                                    String string3 = cursor.getString(PayloadEntry.COLUMN_CONTENT_TYPE.index);
                                    Assert.notNull(string3);
                                    String str2 = string3;
                                    String string4 = cursor.getString(PayloadEntry.COLUMN_REQUEST_METHOD.index);
                                    Assert.notNull(string4);
                                    HttpRequestMethod valueOf = HttpRequestMethod.valueOf(string4);
                                    boolean z = cursor.getInt(PayloadEntry.COLUMN_AUTHENTICATED.index) == 1;
                                    byte[] tryReadFromFile = tryReadFromFile(payloadBodyFile, !z);
                                    if (tryReadFromFile == null) {
                                        ApptentiveLog.m15635w(ApptentiveLogTag.PAYLOADS, "Oldest unsent payload file can't be read. Deleting...", new Object[0]);
                                        deletePayload(str);
                                    } else {
                                        PayloadData payloadData = new PayloadData(parse, str, string, tryReadFromFile, tryDecryptString, str2, updatePayloadRequestPath, valueOf, z);
                                        ensureClosed(cursor);
                                        return payloadData;
                                    }
                                }
                            }
                        } else {
                            ApptentiveLog.m15635w(ApptentiveLogTag.PAYLOADS, "Oldest unsent payload auth token can't be decrypted. Deleting...", new Object[0]);
                            deletePayload(str);
                        }
                    }
                    ensureClosed(cursor);
                    return null;
                } catch (Exception e2) {
                    e = e2;
                    ApptentiveLog.m15641e(e, "Error getting oldest unsent payload.", new Object[0]);
                    logException(e);
                    ensureClosed(cursor);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                ensureClosed(null);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            ensureClosed(null);
            throw th;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        ApptentiveLog.m15646d(ApptentiveLogTag.DATABASE, "ApptentiveDatabase.onCreate(db)", new Object[0]);
        sQLiteDatabase.execSQL(SQL_CREATE_PAYLOAD_TABLE);
        sQLiteDatabase.execSQL("CREATE TABLE message (_id INTEGER PRIMARY KEY, id TEXT, client_created_at DOUBLE, nonce TEXT, state TEXT, read INTEGER, json TEXT);");
        sQLiteDatabase.execSQL("CREATE TABLE file_store (id TEXT PRIMARY KEY, mime_type TEXT, original_uri TEXT, local_uri TEXT, apptentive_uri TEXT);");
        sQLiteDatabase.execSQL("CREATE TABLE compound_message_file_store (_id INTEGER PRIMARY KEY, nonce TEXT, local_path TEXT, mime_type TEXT, local_uri TEXT, apptentive_url TEXT, creation_time LONG);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        ApptentiveLog.m15646d(ApptentiveLogTag.DATABASE, "Upgrade database from %d to %d", Integer.valueOf(i), Integer.valueOf(i2));
        try {
            DatabaseMigrator createDatabaseMigrator = createDatabaseMigrator(i, i2);
            if (createDatabaseMigrator != null) {
                createDatabaseMigrator.onUpgrade(sQLiteDatabase, i, i2);
            }
        } catch (Exception e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.DATABASE, e, "Exception while trying to migrate database from %d to %d", Integer.valueOf(i), Integer.valueOf(i2));
            logException(e);
            sQLiteDatabase.execSQL("DROP TABLE payload;");
            onCreate(sQLiteDatabase);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateIncompletePayloads(String str, String str2, String str3, boolean z) {
        if (ApptentiveLog.canLog(ApptentiveLog.Level.VERBOSE)) {
            printPayloadTable("updateIncompletePayloads BEFORE");
        }
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Conversation id is null or empty");
        } else if (!StringUtils.isNullOrEmpty(str2)) {
            try {
                getWritableDatabase().execSQL(z ? SQL_UPDATE_LEGACY_PAYLOADS : SQL_UPDATE_INCOMPLETE_PAYLOADS, new Object[]{encrypt(str2), str, str3});
                ApptentiveLog.m15638v(ApptentiveLogTag.DATABASE, "Updated missing conversation ids", new Object[0]);
            } catch (Exception e) {
                ApptentiveLog.m15641e(e, "Exception while updating missing conversation ids", new Object[0]);
                logException(e);
            }
            removeCorruptedPayloads();
            if (ApptentiveLog.canLog(ApptentiveLog.Level.VERBOSE)) {
                printPayloadTable("updateIncompletePayloads AFTER");
            }
        } else {
            throw new IllegalArgumentException("Token is null or empty");
        }
    }
}

package com.privacystar.core.data.sqlite.p008db.messages;

import android.content.Context;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelper;
import com.privacystar.core.data.sqlite.p008db.messages.MessagesContract;
import com.privacystar.core.data.sqlite.p008db.messages.MessagesModel;
import timber.log.Timber;
/* renamed from: com.privacystar.core.data.sqlite.db.messages.MessagesHelper */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/messages/MessagesHelper.class */
public class MessagesHelper {
    private static MessagesHelper sInstance;
    private Context mContext;

    private MessagesHelper(Context context) {
        this.mContext = context;
    }

    public static MessagesHelper getInstance() {
        MessagesHelper instance;
        synchronized (MessagesHelper.class) {
            try {
                instance = getInstance(PSApplication.context());
            } catch (Throwable th) {
                throw th;
            }
        }
        return instance;
    }

    public static MessagesHelper getInstance(Context context) {
        MessagesHelper messagesHelper;
        synchronized (MessagesHelper.class) {
            try {
                if (sInstance == null) {
                    sInstance = new MessagesHelper(context.getApplicationContext());
                }
                messagesHelper = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return messagesHelper;
    }

    public long addToOrUpdateMessage(MessagesModel.Message message) {
        return addToOrUpdateMessage(message, DatabaseHelper.getInstance(this.mContext).getWritableDatabase());
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long addToOrUpdateMessage(com.privacystar.core.data.sqlite.p008db.messages.MessagesModel.Message r10, android.database.sqlite.SQLiteDatabase r11) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.sqlite.p008db.messages.MessagesHelper.addToOrUpdateMessage(com.privacystar.core.data.sqlite.db.messages.MessagesModel$Message, android.database.sqlite.SQLiteDatabase):long");
    }

    public int clearMessages() {
        SQLiteDatabase writableDatabase = DatabaseHelper.getInstance(this.mContext).getWritableDatabase();
        Timber.m37d("Deleting all messages from message table using injection-safe API method.", new Object[0]);
        return writableDatabase.delete(MessagesContract.MessagesEntry.TABLE_NAME, "1", null);
    }

    public int countMessages() {
        return (int) DatabaseUtils.queryNumEntries(DatabaseHelper.getInstance(this.mContext).getReadableDatabase(), MessagesContract.MessagesEntry.TABLE_NAME);
    }

    public int countUnreadMessages() {
        return (int) DatabaseUtils.queryNumEntries(DatabaseHelper.getInstance(this.mContext).getReadableDatabase(), MessagesContract.MessagesEntry.TABLE_NAME, "markUnread = ?", new String[]{"1"});
    }

    public int deleteMessage(MessagesModel.Message message) {
        return deleteMessage(message.tranId);
    }

    public int deleteMessage(String str) {
        SQLiteDatabase writableDatabase = DatabaseHelper.getInstance(this.mContext).getWritableDatabase();
        Timber.m37d("Deleting message with transaction ID: %s from table using injection-safe API method.", str);
        return writableDatabase.delete(MessagesContract.MessagesEntry.TABLE_NAME, "tranId LIKE ?", new String[]{str});
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0084, code lost:
        if (r0.isClosed() == false) goto L_0x0060;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.privacystar.core.data.sqlite.p008db.messages.MessagesModel.Message> getAllMessages() {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r7 = r0
            java.lang.String r0 = "SELECT * FROM %s"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "messages"
            r2[r3] = r4
            java.lang.String r0 = java.lang.String.format(r0, r1)
            r8 = r0
            java.lang.String r0 = "Preparing to execute SQL: %s"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            r4 = r8
            r2[r3] = r4
            timber.log.Timber.m28v(r0, r1)
            r0 = r6
            android.content.Context r0 = r0.mContext
            com.privacystar.core.data.sqlite.db.DatabaseHelper r0 = com.privacystar.core.data.sqlite.p008db.DatabaseHelper.getInstance(r0)
            android.database.sqlite.SQLiteDatabase r0 = r0.getReadableDatabase()
            r1 = r8
            r2 = 0
            android.database.Cursor r0 = r0.rawQuery(r1, r2)
            r8 = r0
            r0 = r8
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0069, Exception -> 0x006d
            if (r0 == 0) goto L_0x0053
        L_0x003d:
            r0 = r7
            r1 = r8
            com.privacystar.core.data.sqlite.db.messages.MessagesModel$Message r1 = com.privacystar.core.data.sqlite.p008db.messages.MessagesContract.MessagesEntry.parseCursor(r1)     // Catch: all -> 0x0069, Exception -> 0x006d
            boolean r0 = r0.add(r1)     // Catch: all -> 0x0069, Exception -> 0x006d
            r0 = r8
            boolean r0 = r0.moveToNext()     // Catch: all -> 0x0069, Exception -> 0x006d
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x003d
        L_0x0053:
            r0 = r8
            if (r0 == 0) goto L_0x008a
            r0 = r8
            boolean r0 = r0.isClosed()
            if (r0 != 0) goto L_0x008a
        L_0x0060:
            r0 = r8
            r0.close()
            goto L_0x008a
        L_0x0069:
            r7 = move-exception
            goto L_0x008c
        L_0x006d:
            r10 = move-exception
            r0 = r10
            java.lang.String r1 = "trying to fetch all messages."
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: all -> 0x0069
            timber.log.Timber.m32e(r0, r1, r2)     // Catch: all -> 0x0069
            r0 = r8
            if (r0 == 0) goto L_0x008a
            r0 = r8
            boolean r0 = r0.isClosed()
            if (r0 != 0) goto L_0x008a
            goto L_0x0060
        L_0x008a:
            r0 = r7
            return r0
        L_0x008c:
            r0 = r8
            if (r0 == 0) goto L_0x009f
            r0 = r8
            boolean r0 = r0.isClosed()
            if (r0 != 0) goto L_0x009f
            r0 = r8
            r0.close()
        L_0x009f:
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.sqlite.p008db.messages.MessagesHelper.getAllMessages():java.util.List");
    }

    public void initializeDebugMessageData(SQLiteDatabase sQLiteDatabase) {
        MessagesModel.Message message = new MessagesModel.Message();
        message.tranId = "0001";
        message.markUnread = true;
        addToOrUpdateMessage(message, sQLiteDatabase);
        MessagesModel.Message message2 = new MessagesModel.Message();
        message2.tranId = "0002";
        message2.markUnread = true;
        addToOrUpdateMessage(message2, sQLiteDatabase);
        MessagesModel.Message message3 = new MessagesModel.Message();
        message3.tranId = "0003";
        message3.markUnread = true;
        addToOrUpdateMessage(message3, sQLiteDatabase);
        MessagesModel.Message message4 = new MessagesModel.Message();
        message4.tranId = "0004";
        message4.markUnread = true;
        addToOrUpdateMessage(message4, sQLiteDatabase);
        MessagesModel.Message message5 = new MessagesModel.Message();
        message5.tranId = "0005";
        message5.markUnread = true;
        addToOrUpdateMessage(message5, sQLiteDatabase);
    }

    public long markRead(MessagesModel.Message message) {
        message.markUnread = false;
        return addToOrUpdateMessage(message);
    }

    public long markUnread(MessagesModel.Message message) {
        message.markUnread = true;
        return addToOrUpdateMessage(message);
    }
}

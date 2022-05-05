package com.privacystar.core.data.sqlite.p008db.messages;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelper;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelperConstants;
import com.privacystar.core.data.sqlite.p008db.messages.MessagesModel;
/* renamed from: com.privacystar.core.data.sqlite.db.messages.MessagesContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/messages/MessagesContract.class */
public class MessagesContract {

    /* renamed from: com.privacystar.core.data.sqlite.db.messages.MessagesContract$MessagesEntry */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/messages/MessagesContract$MessagesEntry.class */
    public static abstract class MessagesEntry implements BaseColumns {
        public static final String COLUMN_BATCH_ID = "batchId";
        public static final String COLUMN_MESSAGE = "message";
        public static final String COLUMN_MESSAGE_TITLE = "messageTitle";
        public static final String COLUMN_TRAN_ID = "tranId";
        public static final String SQL_DROP_TABLE = "DROP TABLE IF EXISTS messages;";
        public static final String TABLE_NAME = "messages";
        public static final String COLUMN_NOTIFY_ID = "notifyId";
        public static final String COLUMN_KEY_FROM = "keyFrom";
        public static final String COLUMN_MESSAGE_TYPE = "messageType";
        public static final String COLUMN_PROCESSED = "processed";
        public static final String COLUMN_RECEIVED_DTS = "receivedDts";
        public static final String COLUMN_PROCESSED_DTS = "processedDts";
        public static final String COLUMN_MARK_UNREAD = "markUnread";
        public static final String COLUMN_EXPIRED_DATE = "expiredDate";
        public static final String SQL_CREATE_TABLE = "CREATE TABLE messages (_id INTEGER PRIMARY KEY AUTOINCREMENT,tranId" + DatabaseHelperConstants.VARCHAR(50) + ',' + COLUMN_NOTIFY_ID + DatabaseHelperConstants.VARCHAR(10) + ',' + COLUMN_KEY_FROM + DatabaseHelperConstants.VARCHAR(50) + ',' + COLUMN_MESSAGE_TYPE + DatabaseHelperConstants.TEXT_TYPE + ",messageTitle" + DatabaseHelperConstants.TEXT_TYPE + ",message" + DatabaseHelperConstants.TEXT_TYPE + ',' + COLUMN_PROCESSED + DatabaseHelperConstants.SMALL_INT_TYPE + DatabaseHelperConstants.DEFAULT + "0," + COLUMN_RECEIVED_DTS + DatabaseHelperConstants.DATETIME_TYPE + DatabaseHelperConstants.DEFAULT + DatabaseHelperConstants.CURRENT_TIMESTAMP + ',' + COLUMN_PROCESSED_DTS + DatabaseHelperConstants.DATETIME_TYPE + ",batchId" + DatabaseHelperConstants.VARCHAR(50) + DatabaseHelperConstants.DEFAULT + DatabaseHelperConstants.EMPTY_STRING + ',' + COLUMN_MARK_UNREAD + DatabaseHelperConstants.INT_TYPE + DatabaseHelperConstants.DEFAULT + " 1," + COLUMN_EXPIRED_DATE + DatabaseHelperConstants.VARCHAR(10) + DatabaseHelperConstants.DEFAULT + DatabaseHelperConstants.EMPTY_STRING + ");";

        public static MessagesModel.Message parseCursor(Cursor cursor) {
            MessagesModel.Message message = new MessagesModel.Message();
            message.tranId = cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_TRAN_ID));
            message.notifyId = cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_NOTIFY_ID));
            message.keyFrom = cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_KEY_FROM));
            message.messageType = cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_MESSAGE_TYPE));
            message.messageTitle = cursor.getString(cursor.getColumnIndexOrThrow("messageTitle"));
            message.message = cursor.getString(cursor.getColumnIndexOrThrow("message"));
            boolean z = false;
            message.processed = cursor.getInt(cursor.getColumnIndexOrThrow(COLUMN_PROCESSED)) != 0;
            message.receivedDts = DatabaseHelper.sqlDateStringToLong(cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_RECEIVED_DTS)));
            message.processedDts = DatabaseHelper.sqlDateStringToLong(cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_PROCESSED_DTS)));
            message.batchId = cursor.getString(cursor.getColumnIndexOrThrow("batchId"));
            if (cursor.getInt(cursor.getColumnIndexOrThrow(COLUMN_MARK_UNREAD)) != 0) {
                z = true;
            }
            message.markUnread = z;
            message.expiredDate = cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_EXPIRED_DATE));
            return message;
        }

        public static ContentValues toContentValues(MessagesModel.Message message) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(COLUMN_TRAN_ID, message.tranId);
            contentValues.put(COLUMN_NOTIFY_ID, message.notifyId);
            contentValues.put(COLUMN_KEY_FROM, message.keyFrom);
            contentValues.put(COLUMN_MESSAGE_TYPE, message.messageType);
            contentValues.put("messageTitle", message.messageTitle);
            contentValues.put("message", message.message);
            contentValues.put(COLUMN_PROCESSED, Integer.valueOf(message.processed ? 1 : 0));
            contentValues.put(COLUMN_RECEIVED_DTS, Long.valueOf(message.receivedDts));
            contentValues.put(COLUMN_PROCESSED_DTS, Long.valueOf(message.processedDts));
            contentValues.put("batchId", message.batchId);
            contentValues.put(COLUMN_MARK_UNREAD, Integer.valueOf(message.markUnread ? 1 : 0));
            contentValues.put(COLUMN_EXPIRED_DATE, message.expiredDate);
            return contentValues;
        }
    }
}

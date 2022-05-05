package com.privacystar.core.data.sqlite.p008db.caller_id;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import android.support.p004v7.widget.helper.ItemTouchHelper;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelper;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelperConstants;
import com.privacystar.core.data.sqlite.p008db.caller_id.CallerIdModel;
/* renamed from: com.privacystar.core.data.sqlite.db.caller_id.CallerIdContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/caller_id/CallerIdContract.class */
public class CallerIdContract {

    /* renamed from: com.privacystar.core.data.sqlite.db.caller_id.CallerIdContract$CallerIdEntry */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/caller_id/CallerIdContract$CallerIdEntry.class */
    public static abstract class CallerIdEntry implements BaseColumns {
        public static final String COLUMN_BIT_VALUE = "bitValue";
        public static final String COLUMN_CDM_NAME_ID = "cdmNameId";
        public static final String COLUMN_PHONE_NUMBER = "phoneNumber";
        public static final String SQL_DROP_TABLE = "DROP TABLE IF EXISTS callerIdCache;";
        public static final String TABLE_NAME = "callerIdCache";
        public static final String COLUMN_CALLER_NAME = "callerName";
        public static final String COLUMN_EXPIRES = "expires";
        public static final String COLUMN_CITY_STATE = "cityState";
        public static final String COLUMN_LINE_TYPE = "lineType";
        public static final String SQL_CREATE_TABLE = "CREATE TABLE callerIdCache (_id INTEGER PRIMARY KEY AUTOINCREMENT,phoneNumber" + DatabaseHelperConstants.VARCHAR(50) + DatabaseHelperConstants.CONSTRAINT + "phoneNumber" + DatabaseHelperConstants.UNIQUE + ',' + COLUMN_CALLER_NAME + DatabaseHelperConstants.VARCHAR(150) + ",cdmNameId" + DatabaseHelperConstants.INT_TYPE + ',' + COLUMN_EXPIRES + DatabaseHelperConstants.DATETIME_TYPE + ",bitValue" + DatabaseHelperConstants.INT_TYPE + ',' + COLUMN_CITY_STATE + DatabaseHelperConstants.VARCHAR(ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION) + DatabaseHelperConstants.DEFAULT + DatabaseHelperConstants.EMPTY_STRING + ',' + COLUMN_LINE_TYPE + DatabaseHelperConstants.VARCHAR(50) + DatabaseHelperConstants.DEFAULT + DatabaseHelperConstants.EMPTY_STRING + ");";

        public static CallerIdModel.CallerId parseCursor(Cursor cursor) {
            CallerIdModel.CallerId callerId = new CallerIdModel.CallerId();
            callerId.phoneNumber = cursor.getString(cursor.getColumnIndexOrThrow("phoneNumber"));
            callerId.callerName = cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_CALLER_NAME));
            callerId.cdmNameId = cursor.getInt(cursor.getColumnIndexOrThrow("cdmNameId"));
            callerId.expires = DatabaseHelper.sqlDateStringToLong(cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_EXPIRES)));
            callerId.bitValue = cursor.getInt(cursor.getColumnIndexOrThrow("bitValue"));
            callerId.cityState = cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_CITY_STATE));
            callerId.lineType = cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_LINE_TYPE));
            return callerId;
        }

        public static ContentValues toContentValues(CallerIdModel.CallerId callerId) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("phoneNumber", callerId.phoneNumber);
            contentValues.put(COLUMN_CALLER_NAME, callerId.callerName);
            contentValues.put("cdmNameId", Integer.valueOf(callerId.cdmNameId));
            contentValues.put(COLUMN_EXPIRES, Long.valueOf(callerId.expires));
            contentValues.put("bitValue", Integer.valueOf(callerId.bitValue));
            contentValues.put(COLUMN_CITY_STATE, callerId.cityState);
            contentValues.put(COLUMN_LINE_TYPE, callerId.lineType);
            return contentValues;
        }
    }
}

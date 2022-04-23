package com.privacystar.core.data.sqlite.p008db.offenders;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelperConstants;
import com.privacystar.core.data.sqlite.p008db.offenders.OffendersModel;
/* renamed from: com.privacystar.core.data.sqlite.db.offenders.OffendersContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/offenders/OffendersContract.class */
public class OffendersContract {

    /* renamed from: com.privacystar.core.data.sqlite.db.offenders.OffendersContract$OffendersEntry */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/offenders/OffendersContract$OffendersEntry.class */
    public static abstract class OffendersEntry implements BaseColumns {
        public static final String COLUMN_BIT_VALUE = "bitValue";
        public static final String COLUMN_PHONE_NUMBER = "phoneNumber";
        public static final String SQL_CREATE_TABLE = "CREATE TABLE offenders (_id INTEGER PRIMARY KEY AUTOINCREMENT,phoneNumber" + DatabaseHelperConstants.VARCHAR(50) + DatabaseHelperConstants.CONSTRAINT + "phoneNumber" + DatabaseHelperConstants.UNIQUE + ",bitValue" + DatabaseHelperConstants.INTEGER_TYPE + ");";
        public static final String SQL_DROP_TABLE = "DROP TABLE IF EXISTS offenders;";
        public static final String TABLE_NAME = "offenders";

        public static OffendersModel.Offender parseCursor(Cursor cursor) {
            OffendersModel.Offender offender = new OffendersModel.Offender();
            offender.phoneNumber = cursor.getString(cursor.getColumnIndexOrThrow("phoneNumber"));
            offender.bitValue = cursor.getInt(cursor.getColumnIndexOrThrow("bitValue"));
            return offender;
        }

        public static ContentValues toContentValues(OffendersModel.Offender offender) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("phoneNumber", offender.phoneNumber);
            contentValues.put("bitValue", Integer.valueOf(offender.bitValue));
            return contentValues;
        }
    }
}

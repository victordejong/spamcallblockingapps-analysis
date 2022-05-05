package com.privacystar.core.data.sqlite.p008db.exclusions;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelperConstants;
import com.privacystar.core.data.sqlite.p008db.exclusions.ExclusionsModel;
/* renamed from: com.privacystar.core.data.sqlite.db.exclusions.ExclusionsContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/exclusions/ExclusionsContract.class */
public class ExclusionsContract {

    /* renamed from: com.privacystar.core.data.sqlite.db.exclusions.ExclusionsContract$ExclusionsEntry */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/exclusions/ExclusionsContract$ExclusionsEntry.class */
    public static abstract class ExclusionsEntry implements BaseColumns {
        public static final String COLUMN_MAKE = "make";
        public static final String COLUMN_MODEL = "model";
        public static final String COLUMN_OS = "os";
        public static final String SQL_CREATE_TABLE = "CREATE TABLE ccMaxExclusions (_id INTEGER PRIMARY KEY AUTOINCREMENT,make" + DatabaseHelperConstants.VARCHAR(100) + DatabaseHelperConstants.COLLATE + DatabaseHelperConstants.NOCASE + ",model" + DatabaseHelperConstants.VARCHAR(100) + DatabaseHelperConstants.COLLATE + DatabaseHelperConstants.NOCASE + ",os" + DatabaseHelperConstants.VARCHAR(10) + DatabaseHelperConstants.COLLATE + DatabaseHelperConstants.NOCASE + ");";
        public static final String SQL_DROP_TABLE = "DROP TABLE IF EXISTS ccMaxExclusions;";
        public static final String TABLE_NAME = "ccMaxExclusions";

        public static ExclusionsModel.Exclusions parseCursor(Cursor cursor) {
            ExclusionsModel.Exclusions exclusions = new ExclusionsModel.Exclusions();
            exclusions.make = cursor.getString(cursor.getColumnIndexOrThrow("make"));
            exclusions.model = cursor.getString(cursor.getColumnIndexOrThrow("model"));
            exclusions.f274os = cursor.getString(cursor.getColumnIndexOrThrow("os"));
            return exclusions;
        }

        public static ContentValues toContentValues(ExclusionsModel.Exclusions exclusions) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("make", exclusions.make);
            contentValues.put("model", exclusions.model);
            contentValues.put("os", exclusions.f274os);
            return contentValues;
        }
    }
}

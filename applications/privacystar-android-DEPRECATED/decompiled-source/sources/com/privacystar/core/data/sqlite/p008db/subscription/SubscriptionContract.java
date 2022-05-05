package com.privacystar.core.data.sqlite.p008db.subscription;

import android.content.ContentValues;
import android.database.Cursor;
import android.provider.BaseColumns;
import com.privacystar.core.data.sqlite.p008db.subscription.SubscriptionModel;
/* renamed from: com.privacystar.core.data.sqlite.db.subscription.SubscriptionContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/subscription/SubscriptionContract.class */
public class SubscriptionContract {

    /* renamed from: com.privacystar.core.data.sqlite.db.subscription.SubscriptionContract$SubscriptionEntry */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/subscription/SubscriptionContract$SubscriptionEntry.class */
    public static abstract class SubscriptionEntry implements BaseColumns {
        public static final String COLUMN_EXPIRE_DATE = "expireDate";
        public static final String COLUMN_TRIAL = "trial";
        public static final String SQL_CREATE_TABLE = "CREATE TABLE subscription (_id INTEGER PRIMARY KEY AUTOINCREMENT,trial SMALLINT DEFAULT 1,expireDate INT);";
        public static final String SQL_DROP_TABLE = "DROP TABLE IF EXISTS subscription;";
        public static final String TABLE_NAME = "subscription";

        public static SubscriptionModel.Subscription parseCursor(Cursor cursor) {
            SubscriptionModel.Subscription subscription = new SubscriptionModel.Subscription();
            subscription.trial = cursor.getInt(cursor.getColumnIndexOrThrow(COLUMN_TRIAL)) != 0;
            subscription.expireDate = cursor.getLong(cursor.getColumnIndexOrThrow(COLUMN_EXPIRE_DATE));
            return subscription;
        }

        public static ContentValues toContentValues(SubscriptionModel.Subscription subscription) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(COLUMN_TRIAL, Boolean.valueOf(subscription.trial));
            contentValues.put(COLUMN_EXPIRE_DATE, Long.valueOf(subscription.expireDate));
            return contentValues;
        }
    }
}

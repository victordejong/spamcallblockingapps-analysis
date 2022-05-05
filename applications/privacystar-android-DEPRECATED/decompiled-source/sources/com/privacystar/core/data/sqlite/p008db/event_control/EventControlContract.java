package com.privacystar.core.data.sqlite.p008db.event_control;

import android.content.ContentValues;
import android.database.Cursor;
import com.privacystar.core.data.sqlite.p008db.event_control.EventControlModel;
/* renamed from: com.privacystar.core.data.sqlite.db.event_control.EventControlContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/event_control/EventControlContract.class */
public class EventControlContract {

    /* renamed from: com.privacystar.core.data.sqlite.db.event_control.EventControlContract$EventControlEntry */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/event_control/EventControlContract$EventControlEntry.class */
    public static abstract class EventControlEntry {
        public static final String COLUMN_ACTION_CODE = "ActionCode";
        public static final String COLUMN_EVENT_CODE = "EventCode";
        public static final String COLUMN_LABEL = "Label";
        public static final String COLUMN_MATCH_VALUE = "MatchValue";
        public static final String COLUMN_PRIORITY = "Priority";
        public static final String SQL_CREATE_TABLE = "CREATE TABLE EventControl (Priority INT,Label TEXT,MatchValue TEXT,EventCode INT,ActionCode INT, PRIMARY KEY(MatchValue,EventCode,ActionCode));";
        public static final String SQL_DROP_TABLE = "DROP TABLE IF EXISTS EventControl;";
        public static final String TABLE_NAME = "EventControl";

        public static EventControlModel.EventControl parseCursor(Cursor cursor) {
            EventControlModel.EventControl eventControl = new EventControlModel.EventControl();
            eventControl.priority = cursor.getInt(cursor.getColumnIndexOrThrow(COLUMN_PRIORITY));
            eventControl.label = cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_LABEL));
            eventControl.matchValue = cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_MATCH_VALUE));
            eventControl.eventCode = cursor.getInt(cursor.getColumnIndexOrThrow(COLUMN_EVENT_CODE));
            eventControl.actionCode = cursor.getInt(cursor.getColumnIndexOrThrow(COLUMN_ACTION_CODE));
            return eventControl;
        }

        public static ContentValues toContentValues(EventControlModel.EventControl eventControl) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(COLUMN_PRIORITY, Integer.valueOf(eventControl.priority));
            contentValues.put(COLUMN_LABEL, eventControl.label);
            contentValues.put(COLUMN_MATCH_VALUE, eventControl.matchValue);
            contentValues.put(COLUMN_EVENT_CODE, Integer.valueOf(eventControl.eventCode));
            contentValues.put(COLUMN_ACTION_CODE, Integer.valueOf(eventControl.actionCode));
            return contentValues;
        }
    }
}

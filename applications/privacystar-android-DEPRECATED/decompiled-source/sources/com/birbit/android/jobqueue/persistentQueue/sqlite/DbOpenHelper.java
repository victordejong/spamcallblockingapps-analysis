package com.birbit.android.jobqueue.persistentQueue.sqlite;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.birbit.android.jobqueue.persistentQueue.sqlite.SqlHelper;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.data.model.OperationFields;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/persistentQueue/sqlite/DbOpenHelper.class */
public class DbOpenHelper extends SQLiteOpenHelper {
    static final int COLUMN_COUNT = 12;
    private static final int DB_VERSION = 12;
    static final String JOB_TAGS_TABLE_NAME = "job_holder_tags";
    static final int TAGS_COLUMN_COUNT = 3;
    static final String TAG_INDEX_NAME = "TAG_NAME_INDEX";
    static final SqlHelper.Property INSERTION_ORDER_COLUMN = new SqlHelper.Property("insertionOrder", "integer", 0);
    static final SqlHelper.Property ID_COLUMN = new SqlHelper.Property("_id", "text", 1, null, true);
    static final SqlHelper.Property PRIORITY_COLUMN = new SqlHelper.Property(OperationFields.PRIORITY, "integer", 2);
    static final SqlHelper.Property GROUP_ID_COLUMN = new SqlHelper.Property(FirebaseAnalytics.Param.GROUP_ID, "text", 3);
    static final SqlHelper.Property RUN_COUNT_COLUMN = new SqlHelper.Property("run_count", "integer", 4);
    static final SqlHelper.Property CREATED_NS_COLUMN = new SqlHelper.Property("created_ns", "long", 5);
    static final SqlHelper.Property DELAY_UNTIL_NS_COLUMN = new SqlHelper.Property("delay_until_ns", "long", 6);
    static final SqlHelper.Property RUNNING_SESSION_ID_COLUMN = new SqlHelper.Property("running_session_id", "long", 7);
    static final SqlHelper.Property REQUIRED_NETWORK_TYPE_COLUMN = new SqlHelper.Property("network_type", "integer", 8);
    static final SqlHelper.Property DEADLINE_COLUMN = new SqlHelper.Property("deadline", "integer", 9);
    static final SqlHelper.Property CANCEL_ON_DEADLINE_COLUMN = new SqlHelper.Property("cancel_on_deadline", "integer", 10);
    static final SqlHelper.Property CANCELLED_COLUMN = new SqlHelper.Property("cancelled", "integer", 11);
    static final SqlHelper.Property TAGS_ID_COLUMN = new SqlHelper.Property("_id", "integer", 0);
    static final String JOB_HOLDER_TABLE_NAME = "job_holder";
    static final SqlHelper.Property TAGS_JOB_ID_COLUMN = new SqlHelper.Property("job_id", "text", 1, new SqlHelper.ForeignKey(JOB_HOLDER_TABLE_NAME, ID_COLUMN.columnName));
    static final SqlHelper.Property TAGS_NAME_COLUMN = new SqlHelper.Property("tag_name", "text", 2);

    public DbOpenHelper(Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 12);
    }

    private void addCancelColumn(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE job_holder ADD COLUMN " + CANCELLED_COLUMN.columnName + " " + CANCELLED_COLUMN.type);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(SqlHelper.create(JOB_HOLDER_TABLE_NAME, INSERTION_ORDER_COLUMN, ID_COLUMN, PRIORITY_COLUMN, GROUP_ID_COLUMN, RUN_COUNT_COLUMN, CREATED_NS_COLUMN, DELAY_UNTIL_NS_COLUMN, RUNNING_SESSION_ID_COLUMN, REQUIRED_NETWORK_TYPE_COLUMN, DEADLINE_COLUMN, CANCEL_ON_DEADLINE_COLUMN, CANCELLED_COLUMN));
        sQLiteDatabase.execSQL(SqlHelper.create(JOB_TAGS_TABLE_NAME, TAGS_ID_COLUMN, TAGS_JOB_ID_COLUMN, TAGS_NAME_COLUMN));
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS TAG_NAME_INDEX ON job_holder_tags(" + TAGS_NAME_COLUMN.columnName + ")");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        onUpgrade(sQLiteDatabase, i, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i == 11) {
            addCancelColumn(sQLiteDatabase);
            return;
        }
        sQLiteDatabase.execSQL(SqlHelper.drop(JOB_HOLDER_TABLE_NAME));
        sQLiteDatabase.execSQL(SqlHelper.drop(JOB_TAGS_TABLE_NAME));
        sQLiteDatabase.execSQL("DROP INDEX IF EXISTS TAG_NAME_INDEX");
        onCreate(sQLiteDatabase);
    }
}

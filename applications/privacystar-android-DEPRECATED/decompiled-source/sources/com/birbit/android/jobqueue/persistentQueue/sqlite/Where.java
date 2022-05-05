package com.birbit.android.jobqueue.persistentQueue.sqlite;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.birbit.android.jobqueue.persistentQueue.sqlite.SqlHelper;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/persistentQueue/sqlite/Where.class */
public class Where {
    public final String[] args;
    public final long cacheKey;
    private SQLiteStatement countReadyStmt;
    private String findJobsQuery;
    private SQLiteStatement nextJobDelayUntilStmt;
    private String nextJobQuery;
    public final String query;
    static final String NEVER = Long.toString(Long.MIN_VALUE);
    static final String FOREVER = Long.toString(Long.MAX_VALUE);

    public Where(long j, String str, String[] strArr) {
        this.cacheKey = j;
        this.query = str;
        this.args = strArr;
    }

    public SQLiteStatement countReady(SQLiteDatabase sQLiteDatabase, StringBuilder sb) {
        if (this.countReadyStmt == null) {
            sb.setLength(0);
            sb.append("SELECT SUM(case WHEN ");
            sb.append(DbOpenHelper.GROUP_ID_COLUMN.columnName);
            sb.append(" is null then group_cnt else 1 end) from (");
            sb.append("SELECT count(*) group_cnt, ");
            sb.append(DbOpenHelper.GROUP_ID_COLUMN.columnName);
            sb.append(" FROM ");
            sb.append("job_holder");
            sb.append(" WHERE ");
            sb.append(this.query);
            sb.append(" GROUP BY ");
            sb.append(DbOpenHelper.GROUP_ID_COLUMN.columnName);
            sb.append(")");
            this.countReadyStmt = sQLiteDatabase.compileStatement(sb.toString());
        } else {
            this.countReadyStmt.clearBindings();
        }
        for (int i = 1; i <= this.args.length; i++) {
            this.countReadyStmt.bindString(i, this.args[i - 1]);
        }
        return this.countReadyStmt;
    }

    public void destroy() {
        if (this.countReadyStmt != null) {
            this.countReadyStmt.close();
            this.countReadyStmt = null;
        }
        if (this.nextJobDelayUntilStmt != null) {
            this.nextJobDelayUntilStmt.close();
            this.nextJobDelayUntilStmt = null;
        }
    }

    public String findJobs(SqlHelper sqlHelper) {
        if (this.findJobsQuery == null) {
            this.findJobsQuery = sqlHelper.createSelect(this.query, null, new SqlHelper.Order[0]);
        }
        return this.findJobsQuery;
    }

    public String nextJob(SqlHelper sqlHelper) {
        if (this.nextJobQuery == null) {
            this.nextJobQuery = sqlHelper.createSelect(this.query, 1, new SqlHelper.Order(DbOpenHelper.PRIORITY_COLUMN, SqlHelper.Order.Type.DESC), new SqlHelper.Order(DbOpenHelper.CREATED_NS_COLUMN, SqlHelper.Order.Type.ASC), new SqlHelper.Order(DbOpenHelper.INSERTION_ORDER_COLUMN, SqlHelper.Order.Type.ASC));
        }
        return this.nextJobQuery;
    }

    public SQLiteStatement nextJobDelayUntil(SQLiteDatabase sQLiteDatabase, SqlHelper sqlHelper) {
        if (this.nextJobDelayUntilStmt == null) {
            String createSelectOneField = sqlHelper.createSelectOneField(DbOpenHelper.DEADLINE_COLUMN.columnName, this.query, null, new SqlHelper.Order[0]);
            String createSelectOneField2 = sqlHelper.createSelectOneField(DbOpenHelper.DELAY_UNTIL_NS_COLUMN.columnName, this.query, null, new SqlHelper.Order[0]);
            StringBuilder sb = sqlHelper.reusedStringBuilder;
            sb.setLength(0);
            sb.append("SELECT * FROM (");
            sb.append(createSelectOneField);
            sb.append(" ORDER BY 1 ASC LIMIT 1");
            sb.append(") UNION SELECT * FROM (");
            sb.append(createSelectOneField2);
            sb.append(" ORDER BY 1 ASC LIMIT 1");
            sb.append(") ORDER BY 1 ASC LIMIT 1");
            this.nextJobDelayUntilStmt = sQLiteDatabase.compileStatement(sb.toString());
        } else {
            this.nextJobDelayUntilStmt.clearBindings();
        }
        for (int i = 1; i <= this.args.length; i++) {
            int i2 = i - 1;
            this.nextJobDelayUntilStmt.bindString(i, this.args[i2]);
            this.nextJobDelayUntilStmt.bindString(this.args.length + i, this.args[i2]);
        }
        this.nextJobDelayUntilStmt.bindString(1, FOREVER);
        this.nextJobDelayUntilStmt.bindString(this.args.length + 1, NEVER);
        return this.nextJobDelayUntilStmt;
    }
}

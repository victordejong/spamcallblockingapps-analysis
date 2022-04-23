package com.birbit.android.jobqueue.persistentQueue.sqlite;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.birbit.android.jobqueue.log.JqLog;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelperConstants;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/persistentQueue/sqlite/SqlHelper.class */
public class SqlHelper {
    String FIND_BY_ID_QUERY;
    String FIND_BY_TAG_QUERY;
    String LOAD_ALL_IDS_QUERY;
    String RE_ENABLE_PENDING_CANCELLATIONS_QUERY;
    final int columnCount;
    private SQLiteStatement countStatement;

    /* renamed from: db */
    final SQLiteDatabase f89db;
    private SQLiteStatement deleteJobTagsStatement;
    private SQLiteStatement deleteStatement;
    private SQLiteStatement insertOrReplaceStatement;
    private SQLiteStatement insertStatement;
    private SQLiteStatement insertTagsStatement;
    private SQLiteStatement markAsCancelledStatement;
    private SQLiteStatement onJobFetchedForRunningStatement;
    final String primaryKeyColumnName;
    final long sessionId;
    final String tableName;
    final int tagsColumnCount;
    final String tagsTableName;
    final StringBuilder reusedStringBuilder = new StringBuilder();
    String LOAD_TAGS_QUERY = "SELECT " + DbOpenHelper.TAGS_NAME_COLUMN.columnName + " FROM job_holder_tags WHERE " + DbOpenHelper.TAGS_JOB_ID_COLUMN.columnName + " = ?";

    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/persistentQueue/sqlite/SqlHelper$ForeignKey.class */
    public static class ForeignKey {
        final String targetFieldName;
        final String targetTable;

        public ForeignKey(String str, String str2) {
            this.targetTable = str;
            this.targetFieldName = str2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order.class */
    public static class Order {
        final Property property;
        final Type type;

        /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type.class */
        public enum Type {
            ASC,
            DESC
        }

        public Order(Property property, Type type) {
            this.property = property;
            this.type = type;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/persistentQueue/sqlite/SqlHelper$Property.class */
    public static class Property {
        public final int columnIndex;
        final String columnName;
        public final ForeignKey foreignKey;
        final String type;
        public final boolean unique;

        public Property(String str, String str2, int i) {
            this(str, str2, i, null, false);
        }

        public Property(String str, String str2, int i, ForeignKey foreignKey) {
            this(str, str2, i, foreignKey, false);
        }

        public Property(String str, String str2, int i, ForeignKey foreignKey, boolean z) {
            this.columnName = str;
            this.type = str2;
            this.columnIndex = i;
            this.foreignKey = foreignKey;
            this.unique = z;
        }
    }

    public SqlHelper(SQLiteDatabase sQLiteDatabase, String str, String str2, int i, String str3, int i2, long j) {
        this.f89db = sQLiteDatabase;
        this.tableName = str;
        this.columnCount = i;
        this.primaryKeyColumnName = str2;
        this.sessionId = j;
        this.tagsColumnCount = i2;
        this.tagsTableName = str3;
        this.FIND_BY_ID_QUERY = "SELECT * FROM " + str + " WHERE " + DbOpenHelper.ID_COLUMN.columnName + " = ?";
        this.FIND_BY_TAG_QUERY = "SELECT * FROM " + str + " WHERE " + DbOpenHelper.ID_COLUMN.columnName + " IN ( SELECT " + DbOpenHelper.TAGS_JOB_ID_COLUMN.columnName + " FROM " + str3 + " WHERE " + DbOpenHelper.TAGS_NAME_COLUMN.columnName + " = ?)";
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT ");
        sb.append(DbOpenHelper.ID_COLUMN.columnName);
        sb.append(" FROM ");
        sb.append(str);
        this.LOAD_ALL_IDS_QUERY = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("UPDATE ");
        sb2.append(str);
        sb2.append(" SET ");
        sb2.append(DbOpenHelper.CANCELLED_COLUMN.columnName);
        sb2.append(" = 0");
        this.RE_ENABLE_PENDING_CANCELLATIONS_QUERY = sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void addPlaceholdersInto(StringBuilder sb, int i) {
        if (i == 0) {
            throw new IllegalArgumentException("cannot create placeholders for 0 items");
        }
        sb.append("?");
        for (int i2 = 1; i2 < i; i2++) {
            sb.append(",?");
        }
    }

    public static String create(String str, Property property, Property... propertyArr) {
        StringBuilder sb = new StringBuilder("CREATE TABLE IF NOT EXISTS ");
        sb.append(str);
        sb.append(" (");
        sb.append(property.columnName);
        sb.append(" ");
        sb.append(property.type);
        sb.append("  primary key ");
        for (Property property2 : propertyArr) {
            sb.append(", `");
            sb.append(property2.columnName);
            sb.append("` ");
            sb.append(property2.type);
            if (property2.unique) {
                sb.append(DatabaseHelperConstants.UNIQUE);
            }
        }
        for (Property property3 : propertyArr) {
            if (property3.foreignKey != null) {
                ForeignKey foreignKey = property3.foreignKey;
                sb.append(", FOREIGN KEY(`");
                sb.append(property3.columnName);
                sb.append("`) REFERENCES ");
                sb.append(foreignKey.targetTable);
                sb.append("(`");
                sb.append(foreignKey.targetFieldName);
                sb.append("`) ON DELETE CASCADE");
            }
        }
        sb.append(" );");
        JqLog.m392d(sb.toString(), new Object[0]);
        return sb.toString();
    }

    public static String drop(String str) {
        return DatabaseHelperConstants.DROP_TABLE_EXISTS + str;
    }

    public String createSelect(String str, Integer num, Order... orderArr) {
        this.reusedStringBuilder.setLength(0);
        this.reusedStringBuilder.append("SELECT * FROM ");
        this.reusedStringBuilder.append(this.tableName);
        if (str != null) {
            StringBuilder sb = this.reusedStringBuilder;
            sb.append(" WHERE ");
            sb.append(str);
        }
        int length = orderArr.length;
        int i = 0;
        boolean z = true;
        while (i < length) {
            Order order = orderArr[i];
            if (z) {
                this.reusedStringBuilder.append(" ORDER BY ");
            } else {
                this.reusedStringBuilder.append(",");
            }
            StringBuilder sb2 = this.reusedStringBuilder;
            sb2.append(order.property.columnName);
            sb2.append(" ");
            sb2.append(order.type);
            i++;
            z = false;
        }
        if (num != null) {
            StringBuilder sb3 = this.reusedStringBuilder;
            sb3.append(" LIMIT ");
            sb3.append(num);
        }
        return this.reusedStringBuilder.toString();
    }

    public String createSelectOneField(String str, String str2, Integer num, Order... orderArr) {
        this.reusedStringBuilder.setLength(0);
        StringBuilder sb = this.reusedStringBuilder;
        sb.append("SELECT ");
        sb.append(str);
        sb.append(" FROM ");
        sb.append(this.tableName);
        if (str2 != null) {
            StringBuilder sb2 = this.reusedStringBuilder;
            sb2.append(" WHERE ");
            sb2.append(str2);
        }
        int length = orderArr.length;
        int i = 0;
        boolean z = true;
        while (i < length) {
            Order order = orderArr[i];
            if (z) {
                this.reusedStringBuilder.append(" ORDER BY ");
            } else {
                this.reusedStringBuilder.append(",");
            }
            StringBuilder sb3 = this.reusedStringBuilder;
            sb3.append(order.property.columnName);
            sb3.append(" ");
            sb3.append(order.type);
            i++;
            z = false;
        }
        if (num != null) {
            StringBuilder sb4 = this.reusedStringBuilder;
            sb4.append(" LIMIT ");
            sb4.append(num);
        }
        return this.reusedStringBuilder.toString();
    }

    public SQLiteStatement getCountStatement() {
        if (this.countStatement == null) {
            SQLiteDatabase sQLiteDatabase = this.f89db;
            this.countStatement = sQLiteDatabase.compileStatement("SELECT COUNT(*) FROM " + this.tableName + " WHERE " + DbOpenHelper.RUNNING_SESSION_ID_COLUMN.columnName + " != ?");
        }
        return this.countStatement;
    }

    public SQLiteStatement getDeleteJobTagsStatement() {
        if (this.deleteJobTagsStatement == null) {
            SQLiteDatabase sQLiteDatabase = this.f89db;
            this.deleteJobTagsStatement = sQLiteDatabase.compileStatement("DELETE FROM " + this.tagsTableName + " WHERE " + DbOpenHelper.TAGS_JOB_ID_COLUMN.columnName + "= ?");
        }
        return this.deleteJobTagsStatement;
    }

    public SQLiteStatement getDeleteStatement() {
        if (this.deleteStatement == null) {
            SQLiteDatabase sQLiteDatabase = this.f89db;
            this.deleteStatement = sQLiteDatabase.compileStatement("DELETE FROM " + this.tableName + " WHERE " + this.primaryKeyColumnName + " = ?");
        }
        return this.deleteStatement;
    }

    public SQLiteStatement getInsertOrReplaceStatement() {
        if (this.insertOrReplaceStatement == null) {
            this.reusedStringBuilder.setLength(0);
            StringBuilder sb = this.reusedStringBuilder;
            sb.append("INSERT OR REPLACE INTO ");
            sb.append(this.tableName);
            this.reusedStringBuilder.append(" VALUES (");
            for (int i = 0; i < this.columnCount; i++) {
                if (i != 0) {
                    this.reusedStringBuilder.append(",");
                }
                this.reusedStringBuilder.append("?");
            }
            this.reusedStringBuilder.append(")");
            this.insertOrReplaceStatement = this.f89db.compileStatement(this.reusedStringBuilder.toString());
        }
        return this.insertOrReplaceStatement;
    }

    public SQLiteStatement getInsertStatement() {
        if (this.insertStatement == null) {
            this.reusedStringBuilder.setLength(0);
            StringBuilder sb = this.reusedStringBuilder;
            sb.append("INSERT INTO ");
            sb.append(this.tableName);
            this.reusedStringBuilder.append(" VALUES (");
            for (int i = 0; i < this.columnCount; i++) {
                if (i != 0) {
                    this.reusedStringBuilder.append(",");
                }
                this.reusedStringBuilder.append("?");
            }
            this.reusedStringBuilder.append(")");
            this.insertStatement = this.f89db.compileStatement(this.reusedStringBuilder.toString());
        }
        return this.insertStatement;
    }

    public SQLiteStatement getInsertTagsStatement() {
        if (this.insertTagsStatement == null) {
            this.reusedStringBuilder.setLength(0);
            StringBuilder sb = this.reusedStringBuilder;
            sb.append("INSERT INTO ");
            sb.append("job_holder_tags");
            this.reusedStringBuilder.append(" VALUES (");
            for (int i = 0; i < this.tagsColumnCount; i++) {
                if (i != 0) {
                    this.reusedStringBuilder.append(",");
                }
                this.reusedStringBuilder.append("?");
            }
            this.reusedStringBuilder.append(")");
            this.insertTagsStatement = this.f89db.compileStatement(this.reusedStringBuilder.toString());
        }
        return this.insertTagsStatement;
    }

    public SQLiteStatement getMarkAsCancelledStatement() {
        if (this.markAsCancelledStatement == null) {
            this.markAsCancelledStatement = this.f89db.compileStatement("UPDATE " + this.tableName + " SET " + DbOpenHelper.CANCELLED_COLUMN.columnName + " = 1  WHERE " + this.primaryKeyColumnName + " = ? ");
        }
        return this.markAsCancelledStatement;
    }

    public SQLiteStatement getOnJobFetchedForRunningStatement() {
        if (this.onJobFetchedForRunningStatement == null) {
            this.onJobFetchedForRunningStatement = this.f89db.compileStatement("UPDATE " + this.tableName + " SET " + DbOpenHelper.RUN_COUNT_COLUMN.columnName + " = ? , " + DbOpenHelper.RUNNING_SESSION_ID_COLUMN.columnName + " = ?  WHERE " + this.primaryKeyColumnName + " = ? ");
        }
        return this.onJobFetchedForRunningStatement;
    }

    public void resetDelayTimesTo(long j) {
        SQLiteDatabase sQLiteDatabase = this.f89db;
        sQLiteDatabase.execSQL("UPDATE job_holder SET " + DbOpenHelper.DELAY_UNTIL_NS_COLUMN.columnName + "=?", new Object[]{Long.valueOf(j)});
    }

    public void truncate() {
        this.f89db.execSQL("DELETE FROM job_holder");
        this.f89db.execSQL("DELETE FROM job_holder_tags");
        vacuum();
    }

    public void vacuum() {
        this.f89db.execSQL("VACUUM");
    }
}

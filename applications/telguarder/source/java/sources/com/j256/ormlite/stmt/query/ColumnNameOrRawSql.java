package com.j256.ormlite.stmt.query;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/query/ColumnNameOrRawSql.class */
public class ColumnNameOrRawSql {
    private final String columnName;
    private final String rawSql;

    private ColumnNameOrRawSql(String str, String str2) {
        this.columnName = str;
        this.rawSql = str2;
    }

    public static ColumnNameOrRawSql withColumnName(String str) {
        return new ColumnNameOrRawSql(str, null);
    }

    public static ColumnNameOrRawSql withRawSql(String str) {
        return new ColumnNameOrRawSql(null, str);
    }

    public String getColumnName() {
        return this.columnName;
    }

    public String getRawSql() {
        return this.rawSql;
    }

    public String toString() {
        String str = this.rawSql;
        String str2 = str;
        if (str == null) {
            str2 = this.columnName;
        }
        return str2;
    }
}

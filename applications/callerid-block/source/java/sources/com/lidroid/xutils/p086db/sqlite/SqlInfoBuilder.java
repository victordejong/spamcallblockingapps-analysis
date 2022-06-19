package com.lidroid.xutils.p086db.sqlite;

import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.exception.DbException;
import com.lidroid.xutils.p086db.table.C2728Id;
import com.lidroid.xutils.p086db.table.Column;
import com.lidroid.xutils.p086db.table.ColumnUtils;
import com.lidroid.xutils.p086db.table.Finder;
import com.lidroid.xutils.p086db.table.KeyValue;
import com.lidroid.xutils.p086db.table.Table;
import com.lidroid.xutils.p086db.table.TableUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
/* renamed from: com.lidroid.xutils.db.sqlite.SqlInfoBuilder */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/sqlite/SqlInfoBuilder.class */
public class SqlInfoBuilder {
    private SqlInfoBuilder() {
    }

    public static SqlInfo buildCreateTableSqlInfo(DbUtils dbUtils, Class<?> cls) {
        String str;
        Table table = Table.get(dbUtils, cls);
        C2728Id c2728Id = table.f11340id;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("CREATE TABLE IF NOT EXISTS ");
        stringBuffer.append(table.tableName);
        stringBuffer.append(" ( ");
        boolean isAutoIncrement = c2728Id.isAutoIncrement();
        stringBuffer.append("\"");
        if (isAutoIncrement) {
            stringBuffer.append(c2728Id.getColumnName());
            stringBuffer.append("\"  ");
            str = "INTEGER PRIMARY KEY AUTOINCREMENT,";
        } else {
            stringBuffer.append(c2728Id.getColumnName());
            stringBuffer.append("\"  ");
            stringBuffer.append(c2728Id.getColumnDbType());
            str = " PRIMARY KEY,";
        }
        stringBuffer.append(str);
        for (Column column : table.columnMap.values()) {
            if (!(column instanceof Finder)) {
                stringBuffer.append("\"");
                stringBuffer.append(column.getColumnName());
                stringBuffer.append("\"  ");
                stringBuffer.append(column.getColumnDbType());
                if (ColumnUtils.isUnique(column.getColumnField())) {
                    stringBuffer.append(" UNIQUE");
                }
                if (ColumnUtils.isNotNull(column.getColumnField())) {
                    stringBuffer.append(" NOT NULL");
                }
                String check = ColumnUtils.getCheck(column.getColumnField());
                if (check != null) {
                    stringBuffer.append(" CHECK(");
                    stringBuffer.append(check);
                    stringBuffer.append(")");
                }
                stringBuffer.append(",");
            }
        }
        stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        stringBuffer.append(" )");
        return new SqlInfo(stringBuffer.toString());
    }

    private static String buildDeleteSqlByTableName(String str) {
        return "DELETE FROM " + str;
    }

    public static SqlInfo buildDeleteSqlInfo(DbUtils dbUtils, Class<?> cls, WhereBuilder whereBuilder) {
        StringBuilder sb = new StringBuilder(buildDeleteSqlByTableName(Table.get(dbUtils, cls).tableName));
        if (whereBuilder != null && whereBuilder.getWhereItemSize() > 0) {
            sb.append(" WHERE ");
            sb.append(whereBuilder.toString());
        }
        return new SqlInfo(sb.toString());
    }

    public static SqlInfo buildDeleteSqlInfo(DbUtils dbUtils, Class<?> cls, Object obj) {
        SqlInfo sqlInfo = new SqlInfo();
        Table table = Table.get(dbUtils, cls);
        C2728Id c2728Id = table.f11340id;
        if (obj != null) {
            sqlInfo.setSql(buildDeleteSqlByTableName(table.tableName) + " WHERE " + WhereBuilder.m2013b(c2728Id.getColumnName(), "=", obj));
            return sqlInfo;
        }
        throw new DbException("this entity[" + cls + "]'s id value is null");
    }

    public static SqlInfo buildDeleteSqlInfo(DbUtils dbUtils, Object obj) {
        SqlInfo sqlInfo = new SqlInfo();
        Table table = Table.get(dbUtils, obj.getClass());
        C2728Id c2728Id = table.f11340id;
        Object columnValue = c2728Id.getColumnValue(obj);
        if (columnValue != null) {
            sqlInfo.setSql(buildDeleteSqlByTableName(table.tableName) + " WHERE " + WhereBuilder.m2013b(c2728Id.getColumnName(), "=", columnValue));
            return sqlInfo;
        }
        throw new DbException("this entity[" + obj.getClass() + "]'s id value is null");
    }

    public static SqlInfo buildInsertSqlInfo(DbUtils dbUtils, Object obj) {
        List<KeyValue> entity2KeyValueList = entity2KeyValueList(dbUtils, obj);
        if (entity2KeyValueList.size() == 0) {
            return null;
        }
        SqlInfo sqlInfo = new SqlInfo();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("INSERT INTO ");
        stringBuffer.append(TableUtils.getTableName(obj.getClass()));
        stringBuffer.append(" (");
        for (KeyValue keyValue : entity2KeyValueList) {
            stringBuffer.append(keyValue.key);
            stringBuffer.append(",");
            sqlInfo.addBindArgWithoutConverter(keyValue.value);
        }
        stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        stringBuffer.append(") VALUES (");
        int size = entity2KeyValueList.size();
        for (int i = 0; i < size; i++) {
            stringBuffer.append("?,");
        }
        stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        stringBuffer.append(")");
        sqlInfo.setSql(stringBuffer.toString());
        return sqlInfo;
    }

    public static SqlInfo buildReplaceSqlInfo(DbUtils dbUtils, Object obj) {
        List<KeyValue> entity2KeyValueList = entity2KeyValueList(dbUtils, obj);
        if (entity2KeyValueList.size() == 0) {
            return null;
        }
        SqlInfo sqlInfo = new SqlInfo();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("REPLACE INTO ");
        stringBuffer.append(TableUtils.getTableName(obj.getClass()));
        stringBuffer.append(" (");
        for (KeyValue keyValue : entity2KeyValueList) {
            stringBuffer.append(keyValue.key);
            stringBuffer.append(",");
            sqlInfo.addBindArgWithoutConverter(keyValue.value);
        }
        stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        stringBuffer.append(") VALUES (");
        int size = entity2KeyValueList.size();
        for (int i = 0; i < size; i++) {
            stringBuffer.append("?,");
        }
        stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        stringBuffer.append(")");
        sqlInfo.setSql(stringBuffer.toString());
        return sqlInfo;
    }

    public static SqlInfo buildUpdateSqlInfo(DbUtils dbUtils, Object obj, WhereBuilder whereBuilder, String... strArr) {
        List<KeyValue> entity2KeyValueList = entity2KeyValueList(dbUtils, obj);
        if (entity2KeyValueList.size() == 0) {
            return null;
        }
        HashSet hashSet = null;
        if (strArr != null) {
            hashSet = null;
            if (strArr.length > 0) {
                hashSet = new HashSet(strArr.length);
                Collections.addAll(hashSet, strArr);
            }
        }
        String tableName = TableUtils.getTableName(obj.getClass());
        SqlInfo sqlInfo = new SqlInfo();
        StringBuffer stringBuffer = new StringBuffer("UPDATE ");
        stringBuffer.append(tableName);
        stringBuffer.append(" SET ");
        for (KeyValue keyValue : entity2KeyValueList) {
            if (hashSet == null || hashSet.contains(keyValue.key)) {
                stringBuffer.append(keyValue.key);
                stringBuffer.append("=?,");
                sqlInfo.addBindArgWithoutConverter(keyValue.value);
            }
        }
        stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        if (whereBuilder != null && whereBuilder.getWhereItemSize() > 0) {
            stringBuffer.append(" WHERE ");
            stringBuffer.append(whereBuilder.toString());
        }
        sqlInfo.setSql(stringBuffer.toString());
        return sqlInfo;
    }

    public static SqlInfo buildUpdateSqlInfo(DbUtils dbUtils, Object obj, String... strArr) {
        List<KeyValue> entity2KeyValueList = entity2KeyValueList(dbUtils, obj);
        if (entity2KeyValueList.size() == 0) {
            return null;
        }
        HashSet hashSet = null;
        if (strArr != null) {
            hashSet = null;
            if (strArr.length > 0) {
                hashSet = new HashSet(strArr.length);
                Collections.addAll(hashSet, strArr);
            }
        }
        Table table = Table.get(dbUtils, obj.getClass());
        C2728Id c2728Id = table.f11340id;
        Object columnValue = c2728Id.getColumnValue(obj);
        if (columnValue == null) {
            throw new DbException("this entity[" + obj.getClass() + "]'s id value is null");
        }
        SqlInfo sqlInfo = new SqlInfo();
        StringBuffer stringBuffer = new StringBuffer("UPDATE ");
        stringBuffer.append(table.tableName);
        stringBuffer.append(" SET ");
        for (KeyValue keyValue : entity2KeyValueList) {
            if (hashSet == null || hashSet.contains(keyValue.key)) {
                stringBuffer.append(keyValue.key);
                stringBuffer.append("=?,");
                sqlInfo.addBindArgWithoutConverter(keyValue.value);
            }
        }
        stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        stringBuffer.append(" WHERE ");
        stringBuffer.append(WhereBuilder.m2013b(c2728Id.getColumnName(), "=", columnValue));
        sqlInfo.setSql(stringBuffer.toString());
        return sqlInfo;
    }

    private static KeyValue column2KeyValue(Object obj, Column column) {
        KeyValue keyValue;
        String columnName = column.getColumnName();
        if (columnName != null) {
            Object columnValue = column.getColumnValue(obj);
            Object obj2 = columnValue;
            if (columnValue == null) {
                obj2 = column.getDefaultValue();
            }
            keyValue = new KeyValue(columnName, obj2);
        } else {
            keyValue = null;
        }
        return keyValue;
    }

    public static List<KeyValue> entity2KeyValueList(DbUtils dbUtils, Object obj) {
        KeyValue column2KeyValue;
        ArrayList arrayList = new ArrayList();
        Table table = Table.get(dbUtils, obj.getClass());
        C2728Id c2728Id = table.f11340id;
        if (!c2728Id.isAutoIncrement()) {
            arrayList.add(new KeyValue(c2728Id.getColumnName(), c2728Id.getColumnValue(obj)));
        }
        for (Column column : table.columnMap.values()) {
            if (!(column instanceof Finder) && (column2KeyValue = column2KeyValue(obj, column)) != null) {
                arrayList.add(column2KeyValue);
            }
        }
        return arrayList;
    }
}

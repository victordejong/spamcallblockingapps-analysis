package org.xutils.p343db.sqlite;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.xutils.common.util.KeyValue;
import org.xutils.p343db.table.ColumnEntity;
import org.xutils.p343db.table.TableEntity;
import org.xutils.p344ex.DbException;
/* renamed from: org.xutils.db.sqlite.SqlInfoBuilder */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/sqlite/SqlInfoBuilder.class */
public final class SqlInfoBuilder {

    /* renamed from: a */
    private static final ConcurrentHashMap<TableEntity<?>, String> f40636a = new ConcurrentHashMap<>();

    /* renamed from: b */
    private static final ConcurrentHashMap<TableEntity<?>, String> f40637b = new ConcurrentHashMap<>();

    private SqlInfoBuilder() {
    }

    /* renamed from: a */
    private static KeyValue m231a(Object obj, ColumnEntity columnEntity) {
        if (columnEntity.isAutoId()) {
            return null;
        }
        return new KeyValue(columnEntity.getName(), columnEntity.getFieldValue(obj));
    }

    public static SqlInfo buildCreateTableSqlInfo(TableEntity<?> tableEntity) {
        ColumnEntity id = tableEntity.getId();
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE TABLE IF NOT EXISTS ");
        sb.append("\"");
        sb.append(tableEntity.getName());
        sb.append("\"");
        sb.append(" ( ");
        if (id.isAutoId()) {
            sb.append("\"");
            sb.append(id.getName());
            sb.append("\"");
            sb.append(" INTEGER PRIMARY KEY AUTOINCREMENT, ");
        } else {
            sb.append("\"");
            sb.append(id.getName());
            sb.append("\"");
            sb.append(id.getColumnDbType());
            sb.append(" PRIMARY KEY, ");
        }
        for (ColumnEntity columnEntity : tableEntity.getColumnMap().values()) {
            if (!columnEntity.isId()) {
                sb.append("\"");
                sb.append(columnEntity.getName());
                sb.append("\"");
                sb.append(' ');
                sb.append(columnEntity.getColumnDbType());
                sb.append(' ');
                sb.append(columnEntity.getProperty());
                sb.append(',');
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        sb.append(" )");
        return new SqlInfo(sb.toString());
    }

    public static SqlInfo buildDeleteSqlInfo(TableEntity<?> tableEntity, Object obj) {
        SqlInfo sqlInfo = new SqlInfo();
        ColumnEntity id = tableEntity.getId();
        Object columnValue = id.getColumnValue(obj);
        if (columnValue == null) {
            throw new DbException("this entity[" + tableEntity.getEntityType() + "]'s id value is null");
        }
        sqlInfo.setSql("DELETE FROM \"" + tableEntity.getName() + "\" WHERE " + WhereBuilder.m228b(id.getName(), "=", columnValue));
        return sqlInfo;
    }

    public static SqlInfo buildDeleteSqlInfo(TableEntity<?> tableEntity, WhereBuilder whereBuilder) {
        StringBuilder sb = new StringBuilder("DELETE FROM ");
        sb.append("\"");
        sb.append(tableEntity.getName());
        sb.append("\"");
        if (whereBuilder != null && whereBuilder.getWhereItemSize() > 0) {
            sb.append(" WHERE ");
            sb.append(whereBuilder.toString());
        }
        return new SqlInfo(sb.toString());
    }

    public static SqlInfo buildDeleteSqlInfoById(TableEntity<?> tableEntity, Object obj) {
        SqlInfo sqlInfo = new SqlInfo();
        ColumnEntity id = tableEntity.getId();
        if (obj == null) {
            throw new DbException("this entity[" + tableEntity.getEntityType() + "]'s id value is null");
        }
        sqlInfo.setSql("DELETE FROM \"" + tableEntity.getName() + "\" WHERE " + WhereBuilder.m228b(id.getName(), "=", obj));
        return sqlInfo;
    }

    public static SqlInfo buildInsertSqlInfo(TableEntity<?> tableEntity, Object obj) {
        List<KeyValue> entity2KeyValueList = entity2KeyValueList(tableEntity, obj);
        if (entity2KeyValueList.size() == 0) {
            return null;
        }
        SqlInfo sqlInfo = new SqlInfo();
        String str = f40636a.get(tableEntity);
        if (str == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("INSERT INTO ");
            sb.append("\"");
            sb.append(tableEntity.getName());
            sb.append("\"");
            sb.append(" (");
            for (KeyValue keyValue : entity2KeyValueList) {
                sb.append("\"");
                sb.append(keyValue.key);
                sb.append("\"");
                sb.append(',');
            }
            sb.deleteCharAt(sb.length() - 1);
            sb.append(") VALUES (");
            int size = entity2KeyValueList.size();
            for (int i = 0; i < size; i++) {
                sb.append("?,");
            }
            sb.deleteCharAt(sb.length() - 1);
            sb.append(")");
            String sb2 = sb.toString();
            sqlInfo.setSql(sb2);
            sqlInfo.addBindArgs(entity2KeyValueList);
            f40636a.put(tableEntity, sb2);
        } else {
            sqlInfo.setSql(str);
            sqlInfo.addBindArgs(entity2KeyValueList);
        }
        return sqlInfo;
    }

    public static SqlInfo buildReplaceSqlInfo(TableEntity<?> tableEntity, Object obj) {
        List<KeyValue> entity2KeyValueList = entity2KeyValueList(tableEntity, obj);
        if (entity2KeyValueList.size() == 0) {
            return null;
        }
        SqlInfo sqlInfo = new SqlInfo();
        String str = f40637b.get(tableEntity);
        if (str == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("REPLACE INTO ");
            sb.append("\"");
            sb.append(tableEntity.getName());
            sb.append("\"");
            sb.append(" (");
            for (KeyValue keyValue : entity2KeyValueList) {
                sb.append("\"");
                sb.append(keyValue.key);
                sb.append("\"");
                sb.append(',');
            }
            sb.deleteCharAt(sb.length() - 1);
            sb.append(") VALUES (");
            int size = entity2KeyValueList.size();
            for (int i = 0; i < size; i++) {
                sb.append("?,");
            }
            sb.deleteCharAt(sb.length() - 1);
            sb.append(")");
            String sb2 = sb.toString();
            sqlInfo.setSql(sb2);
            sqlInfo.addBindArgs(entity2KeyValueList);
            f40637b.put(tableEntity, sb2);
        } else {
            sqlInfo.setSql(str);
            sqlInfo.addBindArgs(entity2KeyValueList);
        }
        return sqlInfo;
    }

    public static SqlInfo buildUpdateSqlInfo(TableEntity<?> tableEntity, Object obj, String... strArr) {
        List<KeyValue> entity2KeyValueList = entity2KeyValueList(tableEntity, obj);
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
        ColumnEntity id = tableEntity.getId();
        Object columnValue = id.getColumnValue(obj);
        if (columnValue == null) {
            throw new DbException("this entity[" + tableEntity.getEntityType() + "]'s id value is null");
        }
        SqlInfo sqlInfo = new SqlInfo();
        StringBuilder sb = new StringBuilder("UPDATE ");
        sb.append("\"");
        sb.append(tableEntity.getName());
        sb.append("\"");
        sb.append(" SET ");
        for (KeyValue keyValue : entity2KeyValueList) {
            if (hashSet == null || hashSet.contains(keyValue.key)) {
                sb.append("\"");
                sb.append(keyValue.key);
                sb.append("\"");
                sb.append("=?,");
                sqlInfo.addBindArg(keyValue);
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        sb.append(" WHERE ");
        sb.append(WhereBuilder.m228b(id.getName(), "=", columnValue));
        sqlInfo.setSql(sb.toString());
        return sqlInfo;
    }

    public static SqlInfo buildUpdateSqlInfo(TableEntity<?> tableEntity, WhereBuilder whereBuilder, KeyValue... keyValueArr) {
        if (keyValueArr == null || keyValueArr.length == 0) {
            return null;
        }
        SqlInfo sqlInfo = new SqlInfo();
        StringBuilder sb = new StringBuilder("UPDATE ");
        sb.append("\"");
        sb.append(tableEntity.getName());
        sb.append("\"");
        sb.append(" SET ");
        for (KeyValue keyValue : keyValueArr) {
            sb.append("\"");
            sb.append(keyValue.key);
            sb.append("\"");
            sb.append("=?,");
            sqlInfo.addBindArg(keyValue);
        }
        sb.deleteCharAt(sb.length() - 1);
        if (whereBuilder != null && whereBuilder.getWhereItemSize() > 0) {
            sb.append(" WHERE ");
            sb.append(whereBuilder.toString());
        }
        sqlInfo.setSql(sb.toString());
        return sqlInfo;
    }

    public static List<KeyValue> entity2KeyValueList(TableEntity<?> tableEntity, Object obj) {
        Collection<ColumnEntity> values = tableEntity.getColumnMap().values();
        ArrayList arrayList = new ArrayList(values.size());
        for (ColumnEntity columnEntity : values) {
            KeyValue m231a = m231a(obj, columnEntity);
            if (m231a != null) {
                arrayList.add(m231a);
            }
        }
        return arrayList;
    }
}

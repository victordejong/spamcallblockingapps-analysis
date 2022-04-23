package com.lidroid.xutils.p086db.table;

import android.text.TextUtils;
import com.lidroid.xutils.DbUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.lidroid.xutils.db.table.Table */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/table/Table.class */
public class Table {
    private static final HashMap<String, Table> tableMap = new HashMap<>();
    private boolean checkedDatabase;
    public final HashMap<String, Column> columnMap;

    /* renamed from: db */
    public final DbUtils f11339db;
    public final HashMap<String, Finder> finderMap = new HashMap<>();

    /* renamed from: id */
    public final C2728Id f11340id;
    public final String tableName;

    private Table(DbUtils dbUtils, Class<?> cls) {
        this.f11339db = dbUtils;
        this.tableName = TableUtils.getTableName(cls);
        this.f11340id = TableUtils.getId(cls);
        HashMap<String, Column> columnMap = TableUtils.getColumnMap(cls);
        this.columnMap = columnMap;
        for (Column column : columnMap.values()) {
            column.setTable(this);
            if (column instanceof Finder) {
                this.finderMap.put(column.getColumnName(), (Finder) column);
            }
        }
    }

    public static Table get(DbUtils dbUtils, Class<?> cls) {
        Table table;
        synchronized (Table.class) {
            try {
                String str = dbUtils.getDaoConfig().getDbName() + "#" + cls.getName();
                HashMap<String, Table> hashMap = tableMap;
                Table table2 = hashMap.get(str);
                table = table2;
                if (table2 == null) {
                    table = new Table(dbUtils, cls);
                    hashMap.put(str, table);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return table;
    }

    public static void remove(DbUtils dbUtils, Class<?> cls) {
        synchronized (Table.class) {
            try {
                tableMap.remove(dbUtils.getDaoConfig().getDbName() + "#" + cls.getName());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void remove(DbUtils dbUtils, String str) {
        String str2;
        synchronized (Table.class) {
            try {
                HashMap<String, Table> hashMap = tableMap;
                if (hashMap.size() > 0) {
                    String str3 = null;
                    Iterator<Map.Entry<String, Table>> it = hashMap.entrySet().iterator();
                    while (true) {
                        str2 = str3;
                        if (!it.hasNext()) {
                            break;
                        }
                        Map.Entry<String, Table> next = it.next();
                        Table value = next.getValue();
                        if (value != null && value.tableName.equals(str)) {
                            str2 = next.getKey();
                            str3 = str2;
                            if (str2.startsWith(dbUtils.getDaoConfig().getDbName() + "#")) {
                                break;
                            }
                        }
                    }
                    if (TextUtils.isEmpty(str2)) {
                        tableMap.remove(str2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isCheckedDatabase() {
        return this.checkedDatabase;
    }

    public void setCheckedDatabase(boolean z) {
        this.checkedDatabase = z;
    }
}

package com.lidroid.xutils.p086db.sqlite;

import com.lidroid.xutils.p086db.table.ColumnUtils;
import java.util.LinkedList;
/* renamed from: com.lidroid.xutils.db.sqlite.SqlInfo */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/sqlite/SqlInfo.class */
public class SqlInfo {
    private LinkedList<Object> bindArgs;
    private String sql;

    public SqlInfo() {
    }

    public SqlInfo(String str) {
        this.sql = str;
    }

    public SqlInfo(String str, Object... objArr) {
        this.sql = str;
        addBindArgs(objArr);
    }

    public void addBindArg(Object obj) {
        if (this.bindArgs == null) {
            this.bindArgs = new LinkedList<>();
        }
        this.bindArgs.add(ColumnUtils.convert2DbColumnValueIfNeeded(obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addBindArgWithoutConverter(Object obj) {
        if (this.bindArgs == null) {
            this.bindArgs = new LinkedList<>();
        }
        this.bindArgs.add(obj);
    }

    public void addBindArgs(Object... objArr) {
        if (objArr != null) {
            for (Object obj : objArr) {
                addBindArg(obj);
            }
        }
    }

    public LinkedList<Object> getBindArgs() {
        return this.bindArgs;
    }

    public Object[] getBindArgsAsArray() {
        LinkedList<Object> linkedList = this.bindArgs;
        if (linkedList != null) {
            return linkedList.toArray();
        }
        return null;
    }

    public String[] getBindArgsAsStrArray() {
        LinkedList<Object> linkedList = this.bindArgs;
        if (linkedList == null) {
            return null;
        }
        String[] strArr = new String[linkedList.size()];
        for (int i = 0; i < this.bindArgs.size(); i++) {
            Object obj = this.bindArgs.get(i);
            strArr[i] = obj == null ? null : obj.toString();
        }
        return strArr;
    }

    public String getSql() {
        return this.sql;
    }

    public void setSql(String str) {
        this.sql = str;
    }
}

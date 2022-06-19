package com.j256.ormlite.stmt.query;

import com.j256.ormlite.stmt.ArgumentHolder;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/query/OrderBy.class */
public class OrderBy {
    private final boolean ascending;
    private final String columnName;
    private final boolean nullsFirst;
    private final boolean nullsLast;
    private final ArgumentHolder[] orderByArgs;
    private final String rawSql;

    public OrderBy(String str, boolean z) {
        this(str, z, null, null, false, false);
    }

    private OrderBy(String str, boolean z, String str2, ArgumentHolder[] argumentHolderArr, boolean z2, boolean z3) {
        this.columnName = str;
        this.ascending = z;
        this.rawSql = str2;
        this.orderByArgs = argumentHolderArr;
        this.nullsFirst = z2;
        this.nullsLast = z3;
    }

    public OrderBy(String str, boolean z, boolean z2) {
        this(str, z, null, null, z2, !z2);
    }

    public OrderBy(String str, ArgumentHolder[] argumentHolderArr) {
        this(null, true, str, argumentHolderArr, false, false);
    }

    public String getColumnName() {
        return this.columnName;
    }

    public ArgumentHolder[] getOrderByArgs() {
        return this.orderByArgs;
    }

    public String getRawSql() {
        return this.rawSql;
    }

    public boolean isAscending() {
        return this.ascending;
    }

    public boolean isNullsFirst() {
        return this.nullsFirst;
    }

    public boolean isNullsLast() {
        return this.nullsLast;
    }
}

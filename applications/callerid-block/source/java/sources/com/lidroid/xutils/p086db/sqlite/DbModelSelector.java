package com.lidroid.xutils.p086db.sqlite;

import android.text.TextUtils;
/* renamed from: com.lidroid.xutils.db.sqlite.DbModelSelector */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/sqlite/DbModelSelector.class */
public class DbModelSelector {
    private String[] columnExpressions;
    private String groupByColumnName;
    private WhereBuilder having;
    private Selector selector;

    public DbModelSelector(Selector selector, String str) {
        this.selector = selector;
        this.groupByColumnName = str;
    }

    public DbModelSelector(Selector selector, String[] strArr) {
        this.selector = selector;
        this.columnExpressions = strArr;
    }

    private DbModelSelector(Class<?> cls) {
        this.selector = Selector.from(cls);
    }

    public static DbModelSelector from(Class<?> cls) {
        return new DbModelSelector(cls);
    }

    public DbModelSelector and(WhereBuilder whereBuilder) {
        this.selector.and(whereBuilder);
        return this;
    }

    public DbModelSelector and(String str, String str2, Object obj) {
        this.selector.and(str, str2, obj);
        return this;
    }

    public DbModelSelector expr(String str) {
        this.selector.expr(str);
        return this;
    }

    public DbModelSelector expr(String str, String str2, Object obj) {
        this.selector.expr(str, str2, obj);
        return this;
    }

    public Class<?> getEntityType() {
        return this.selector.getEntityType();
    }

    public DbModelSelector groupBy(String str) {
        this.groupByColumnName = str;
        return this;
    }

    public DbModelSelector having(WhereBuilder whereBuilder) {
        this.having = whereBuilder;
        return this;
    }

    public DbModelSelector limit(int i) {
        this.selector.limit(i);
        return this;
    }

    public DbModelSelector offset(int i) {
        this.selector.offset(i);
        return this;
    }

    /* renamed from: or */
    public DbModelSelector m2018or(WhereBuilder whereBuilder) {
        this.selector.m2016or(whereBuilder);
        return this;
    }

    /* renamed from: or */
    public DbModelSelector m2017or(String str, String str2, Object obj) {
        this.selector.m2015or(str, str2, obj);
        return this;
    }

    public DbModelSelector orderBy(String str) {
        this.selector.orderBy(str);
        return this;
    }

    public DbModelSelector orderBy(String str, boolean z) {
        this.selector.orderBy(str, z);
        return this;
    }

    public DbModelSelector select(String... strArr) {
        this.columnExpressions = strArr;
        return this;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("SELECT ");
        String[] strArr = this.columnExpressions;
        if (strArr == null || strArr.length <= 0) {
            stringBuffer.append(!TextUtils.isEmpty(this.groupByColumnName) ? this.groupByColumnName : "*");
        } else {
            int i = 0;
            while (true) {
                String[] strArr2 = this.columnExpressions;
                if (i >= strArr2.length) {
                    break;
                }
                stringBuffer.append(strArr2[i]);
                stringBuffer.append(",");
                i++;
            }
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        stringBuffer.append(" FROM ");
        stringBuffer.append(this.selector.tableName);
        WhereBuilder whereBuilder = this.selector.whereBuilder;
        if (whereBuilder != null && whereBuilder.getWhereItemSize() > 0) {
            stringBuffer.append(" WHERE ");
            stringBuffer.append(this.selector.whereBuilder.toString());
        }
        if (!TextUtils.isEmpty(this.groupByColumnName)) {
            stringBuffer.append(" GROUP BY ");
            stringBuffer.append(this.groupByColumnName);
            WhereBuilder whereBuilder2 = this.having;
            if (whereBuilder2 != null && whereBuilder2.getWhereItemSize() > 0) {
                stringBuffer.append(" HAVING ");
                stringBuffer.append(this.having.toString());
            }
        }
        if (this.selector.orderByList != null) {
            for (int i2 = 0; i2 < this.selector.orderByList.size(); i2++) {
                stringBuffer.append(" ORDER BY ");
                stringBuffer.append(this.selector.orderByList.get(i2).toString());
            }
        }
        if (this.selector.limit > 0) {
            stringBuffer.append(" LIMIT ");
            stringBuffer.append(this.selector.limit);
            stringBuffer.append(" OFFSET ");
            stringBuffer.append(this.selector.offset);
        }
        return stringBuffer.toString();
    }

    public DbModelSelector where(WhereBuilder whereBuilder) {
        this.selector.where(whereBuilder);
        return this;
    }

    public DbModelSelector where(String str, String str2, Object obj) {
        this.selector.where(str, str2, obj);
        return this;
    }
}

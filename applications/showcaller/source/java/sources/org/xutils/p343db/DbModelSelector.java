package org.xutils.p343db;

import android.database.Cursor;
import android.text.TextUtils;
import com.yanzhenjie.nohttp.p320db.BasicSQLHelper;
import java.util.ArrayList;
import java.util.List;
import org.xutils.common.util.IOUtil;
import org.xutils.p343db.Selector;
import org.xutils.p343db.sqlite.WhereBuilder;
import org.xutils.p343db.table.DbModel;
import org.xutils.p343db.table.TableEntity;
import org.xutils.p344ex.DbException;
/* renamed from: org.xutils.db.DbModelSelector */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/DbModelSelector.class */
public final class DbModelSelector {

    /* renamed from: a */
    private String[] f40620a;

    /* renamed from: b */
    private String f40621b;

    /* renamed from: c */
    private WhereBuilder f40622c;

    /* renamed from: d */
    private Selector<?> f40623d;

    public DbModelSelector(Selector<?> selector, String str) {
        this.f40623d = selector;
        this.f40621b = str;
    }

    public DbModelSelector(Selector<?> selector, String[] strArr) {
        this.f40623d = selector;
        this.f40620a = strArr;
    }

    public DbModelSelector and(String str, String str2, Object obj) {
        this.f40623d.and(str, str2, obj);
        return this;
    }

    public DbModelSelector and(WhereBuilder whereBuilder) {
        this.f40623d.and(whereBuilder);
        return this;
    }

    public DbModelSelector expr(String str) {
        this.f40623d.expr(str);
        return this;
    }

    public List<DbModel> findAll() {
        TableEntity<?> table = this.f40623d.getTable();
        ArrayList arrayList = null;
        if (!table.tableIsExists()) {
            return null;
        }
        Cursor execQuery = table.getDb().execQuery(toString());
        if (execQuery != null) {
            try {
                arrayList = new ArrayList();
                while (execQuery.moveToNext()) {
                    arrayList.add(C9641a.m233a(execQuery));
                }
            } finally {
                try {
                    throw new DbException(th);
                } finally {
                }
            }
        }
        return arrayList;
    }

    public DbModel findFirst() {
        TableEntity<?> table = this.f40623d.getTable();
        if (!table.tableIsExists()) {
            return null;
        }
        limit(1);
        Cursor execQuery = table.getDb().execQuery(toString());
        if (execQuery == null) {
            return null;
        }
        try {
            if (!execQuery.moveToNext()) {
                return null;
            }
            return C9641a.m233a(execQuery);
        } catch (Throwable th) {
            try {
                throw new DbException(th);
            } finally {
                IOUtil.closeQuietly(execQuery);
            }
        }
    }

    public TableEntity<?> getTable() {
        return this.f40623d.getTable();
    }

    public DbModelSelector groupBy(String str) {
        this.f40621b = str;
        return this;
    }

    public DbModelSelector having(WhereBuilder whereBuilder) {
        this.f40622c = whereBuilder;
        return this;
    }

    public DbModelSelector limit(int i) {
        this.f40623d.limit(i);
        return this;
    }

    public DbModelSelector offset(int i) {
        this.f40623d.offset(i);
        return this;
    }

    /* renamed from: or */
    public DbModelSelector m238or(String str, String str2, Object obj) {
        this.f40623d.m235or(str, str2, obj);
        return this;
    }

    /* renamed from: or */
    public DbModelSelector m237or(WhereBuilder whereBuilder) {
        this.f40623d.m234or(whereBuilder);
        return this;
    }

    public DbModelSelector orderBy(String str) {
        this.f40623d.orderBy(str);
        return this;
    }

    public DbModelSelector orderBy(String str, boolean z) {
        this.f40623d.orderBy(str, z);
        return this;
    }

    public DbModelSelector select(String... strArr) {
        this.f40620a = strArr;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT ");
        String[] strArr = this.f40620a;
        if (strArr != null && strArr.length > 0) {
            for (String str : strArr) {
                sb.append(str);
                sb.append(",");
            }
            sb.deleteCharAt(sb.length() - 1);
        } else if (!TextUtils.isEmpty(this.f40621b)) {
            sb.append(this.f40621b);
        } else {
            sb.append(BasicSQLHelper.ALL);
        }
        sb.append(" FROM ");
        sb.append("\"");
        sb.append(this.f40623d.getTable().getName());
        sb.append("\"");
        WhereBuilder whereBuilder = this.f40623d.getWhereBuilder();
        if (whereBuilder != null && whereBuilder.getWhereItemSize() > 0) {
            sb.append(" WHERE ");
            sb.append(whereBuilder.toString());
        }
        if (!TextUtils.isEmpty(this.f40621b)) {
            sb.append(" GROUP BY ");
            sb.append("\"");
            sb.append(this.f40621b);
            sb.append("\"");
            WhereBuilder whereBuilder2 = this.f40622c;
            if (whereBuilder2 != null && whereBuilder2.getWhereItemSize() > 0) {
                sb.append(" HAVING ");
                sb.append(this.f40622c.toString());
            }
        }
        List<Selector.OrderBy> orderByList = this.f40623d.getOrderByList();
        if (orderByList != null && orderByList.size() > 0) {
            sb.append(" ORDER BY ");
            for (Selector.OrderBy orderBy : orderByList) {
                sb.append(orderBy.toString());
                sb.append(',');
            }
            sb.deleteCharAt(sb.length() - 1);
        }
        if (this.f40623d.getLimit() > 0) {
            sb.append(" LIMIT ");
            sb.append(this.f40623d.getLimit());
            sb.append(" OFFSET ");
            sb.append(this.f40623d.getOffset());
        }
        return sb.toString();
    }

    public DbModelSelector where(String str, String str2, Object obj) {
        this.f40623d.where(str, str2, obj);
        return this;
    }

    public DbModelSelector where(WhereBuilder whereBuilder) {
        this.f40623d.where(whereBuilder);
        return this;
    }
}

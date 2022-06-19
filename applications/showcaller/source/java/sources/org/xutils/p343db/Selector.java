package org.xutils.p343db;

import android.database.Cursor;
import com.yanzhenjie.nohttp.p320db.BasicSQLHelper;
import java.util.ArrayList;
import java.util.List;
import org.xutils.common.util.IOUtil;
import org.xutils.p343db.sqlite.WhereBuilder;
import org.xutils.p343db.table.DbModel;
import org.xutils.p343db.table.TableEntity;
import org.xutils.p344ex.DbException;
/* renamed from: org.xutils.db.Selector */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/Selector.class */
public final class Selector<T> {

    /* renamed from: a */
    private final TableEntity<T> f40624a;

    /* renamed from: b */
    private WhereBuilder f40625b;

    /* renamed from: c */
    private List<OrderBy> f40626c;

    /* renamed from: d */
    private int f40627d = 0;

    /* renamed from: e */
    private int f40628e = 0;

    /* renamed from: org.xutils.db.Selector$OrderBy */
    /* loaded from: classes2-dex2jar.jar:org/xutils/db/Selector$OrderBy.class */
    public static class OrderBy {

        /* renamed from: a */
        private String f40629a;

        /* renamed from: b */
        private boolean f40630b;

        public OrderBy(String str) {
            this.f40629a = str;
        }

        public OrderBy(String str, boolean z) {
            this.f40629a = str;
            this.f40630b = z;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("\"");
            sb.append(this.f40629a);
            sb.append("\"");
            sb.append(this.f40630b ? " DESC" : " ASC");
            return sb.toString();
        }
    }

    private Selector(TableEntity<T> tableEntity) {
        this.f40624a = tableEntity;
    }

    /* renamed from: a */
    public static <T> Selector<T> m236a(TableEntity<T> tableEntity) {
        return new Selector<>(tableEntity);
    }

    public Selector<T> and(String str, String str2, Object obj) {
        this.f40625b.and(str, str2, obj);
        return this;
    }

    public Selector<T> and(WhereBuilder whereBuilder) {
        this.f40625b.and(whereBuilder);
        return this;
    }

    public long count() {
        if (!this.f40624a.tableIsExists()) {
            return 0L;
        }
        DbModel findFirst = select("count(\"" + this.f40624a.getId().getName() + "\") as count").findFirst();
        if (findFirst == null) {
            return 0L;
        }
        return findFirst.getLong("count", 0L);
    }

    public Selector<T> expr(String str) {
        if (this.f40625b == null) {
            this.f40625b = WhereBuilder.m229b();
        }
        this.f40625b.expr(str);
        return this;
    }

    public List<T> findAll() {
        ArrayList arrayList = null;
        if (!this.f40624a.tableIsExists()) {
            return null;
        }
        Cursor execQuery = this.f40624a.getDb().execQuery(toString());
        if (execQuery != null) {
            try {
                arrayList = new ArrayList();
                while (execQuery.moveToNext()) {
                    arrayList.add(C9641a.m232b(this.f40624a, execQuery));
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

    public T findFirst() {
        if (!this.f40624a.tableIsExists()) {
            return null;
        }
        limit(1);
        Cursor execQuery = this.f40624a.getDb().execQuery(toString());
        if (execQuery == null) {
            return null;
        }
        try {
            if (!execQuery.moveToNext()) {
                return null;
            }
            return (T) C9641a.m232b(this.f40624a, execQuery);
        } catch (Throwable th) {
            try {
                throw new DbException(th);
            } finally {
                IOUtil.closeQuietly(execQuery);
            }
        }
    }

    public int getLimit() {
        return this.f40627d;
    }

    public int getOffset() {
        return this.f40628e;
    }

    public List<OrderBy> getOrderByList() {
        return this.f40626c;
    }

    public TableEntity<T> getTable() {
        return this.f40624a;
    }

    public WhereBuilder getWhereBuilder() {
        return this.f40625b;
    }

    public DbModelSelector groupBy(String str) {
        return new DbModelSelector((Selector<?>) this, str);
    }

    public Selector<T> limit(int i) {
        this.f40627d = i;
        return this;
    }

    public Selector<T> offset(int i) {
        this.f40628e = i;
        return this;
    }

    /* renamed from: or */
    public Selector<T> m235or(String str, String str2, Object obj) {
        this.f40625b.m227or(str, str2, obj);
        return this;
    }

    /* renamed from: or */
    public Selector<T> m234or(WhereBuilder whereBuilder) {
        this.f40625b.m226or(whereBuilder);
        return this;
    }

    public Selector<T> orderBy(String str) {
        if (this.f40626c == null) {
            this.f40626c = new ArrayList(5);
        }
        this.f40626c.add(new OrderBy(str));
        return this;
    }

    public Selector<T> orderBy(String str, boolean z) {
        if (this.f40626c == null) {
            this.f40626c = new ArrayList(5);
        }
        this.f40626c.add(new OrderBy(str, z));
        return this;
    }

    public DbModelSelector select(String... strArr) {
        return new DbModelSelector((Selector<?>) this, strArr);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT ");
        sb.append(BasicSQLHelper.ALL);
        sb.append(" FROM ");
        sb.append("\"");
        sb.append(this.f40624a.getName());
        sb.append("\"");
        WhereBuilder whereBuilder = this.f40625b;
        if (whereBuilder != null && whereBuilder.getWhereItemSize() > 0) {
            sb.append(" WHERE ");
            sb.append(this.f40625b.toString());
        }
        List<OrderBy> list = this.f40626c;
        if (list != null && list.size() > 0) {
            sb.append(" ORDER BY ");
            for (OrderBy orderBy : this.f40626c) {
                sb.append(orderBy.toString());
                sb.append(',');
            }
            sb.deleteCharAt(sb.length() - 1);
        }
        if (this.f40627d > 0) {
            sb.append(" LIMIT ");
            sb.append(this.f40627d);
            sb.append(" OFFSET ");
            sb.append(this.f40628e);
        }
        return sb.toString();
    }

    public Selector<T> where(String str, String str2, Object obj) {
        this.f40625b = WhereBuilder.m228b(str, str2, obj);
        return this;
    }

    public Selector<T> where(WhereBuilder whereBuilder) {
        this.f40625b = whereBuilder;
        return this;
    }
}

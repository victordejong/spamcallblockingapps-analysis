package io.realm.internal;

import io.realm.RealmModel;
import io.realm.exceptions.RealmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.Nonnull;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/ColumnIndices.class */
public final class ColumnIndices {

    /* renamed from: a */
    private final Map<Class<? extends RealmModel>, ColumnInfo> f20082a = new ConcurrentHashMap();

    /* renamed from: b */
    private final Map<String, ColumnInfo> f20083b = new HashMap();

    /* renamed from: c */
    private final RealmProxyMediator f20084c;

    /* renamed from: d */
    private final OsSchemaInfo f20085d;

    public ColumnIndices(RealmProxyMediator realmProxyMediator, OsSchemaInfo osSchemaInfo) {
        this.f20084c = realmProxyMediator;
        this.f20085d = osSchemaInfo;
    }

    @Nonnull
    /* renamed from: a */
    public ColumnInfo m2836a(Class<? extends RealmModel> cls) {
        ColumnInfo columnInfo = this.f20082a.get(cls);
        ColumnInfo columnInfo2 = columnInfo;
        if (columnInfo == null) {
            columnInfo2 = this.f20084c.mo2563c(cls, this.f20085d);
            this.f20082a.put(cls, columnInfo2);
        }
        return columnInfo2;
    }

    @Nonnull
    /* renamed from: b */
    public ColumnInfo m2835b(String str) {
        ColumnInfo columnInfo = this.f20083b.get(str);
        ColumnInfo columnInfo2 = columnInfo;
        if (columnInfo == null) {
            Iterator<Class<? extends RealmModel>> it = this.f20084c.mo2561f().iterator();
            while (true) {
                columnInfo2 = columnInfo;
                if (!it.hasNext()) {
                    break;
                }
                Class<? extends RealmModel> next = it.next();
                if (this.f20084c.m2682g(next).equals(str)) {
                    columnInfo2 = m2836a(next);
                    this.f20083b.put(str, columnInfo2);
                    break;
                }
            }
        }
        if (columnInfo2 != null) {
            return columnInfo2;
        }
        throw new RealmException(String.format(Locale.US, "'%s' doesn't exist in current schema.", str));
    }

    /* renamed from: c */
    public void m2834c() {
        for (Map.Entry<Class<? extends RealmModel>, ColumnInfo> entry : this.f20082a.entrySet()) {
            entry.getValue().mo2832c(this.f20084c.mo2563c(entry.getKey(), this.f20085d));
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ColumnIndices[");
        boolean z = false;
        for (Map.Entry<Class<? extends RealmModel>, ColumnInfo> entry : this.f20082a.entrySet()) {
            if (z) {
                sb.append(",");
            }
            sb.append(entry.getKey().getSimpleName());
            sb.append("->");
            sb.append(entry.getValue());
            z = true;
        }
        sb.append("]");
        return sb.toString();
    }
}

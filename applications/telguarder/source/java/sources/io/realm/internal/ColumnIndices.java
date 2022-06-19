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
    private final RealmProxyMediator mediator;
    private final OsSchemaInfo osSchemaInfo;
    private final Map<Class<? extends RealmModel>, ColumnInfo> classToColumnInfoMap = new ConcurrentHashMap();
    private final Map<String, ColumnInfo> simpleClassNameToColumnInfoMap = new HashMap();

    public ColumnIndices(RealmProxyMediator realmProxyMediator, OsSchemaInfo osSchemaInfo) {
        this.mediator = realmProxyMediator;
        this.osSchemaInfo = osSchemaInfo;
    }

    @Nonnull
    public ColumnInfo getColumnInfo(Class<? extends RealmModel> cls) {
        ColumnInfo columnInfo = this.classToColumnInfoMap.get(cls);
        ColumnInfo columnInfo2 = columnInfo;
        if (columnInfo == null) {
            columnInfo2 = this.mediator.createColumnInfo(cls, this.osSchemaInfo);
            this.classToColumnInfoMap.put(cls, columnInfo2);
        }
        return columnInfo2;
    }

    @Nonnull
    public ColumnInfo getColumnInfo(String str) {
        ColumnInfo columnInfo = this.simpleClassNameToColumnInfoMap.get(str);
        ColumnInfo columnInfo2 = columnInfo;
        if (columnInfo == null) {
            Iterator<Class<? extends RealmModel>> it = this.mediator.getModelClasses().iterator();
            while (true) {
                columnInfo2 = columnInfo;
                if (!it.hasNext()) {
                    break;
                }
                Class<? extends RealmModel> next = it.next();
                if (this.mediator.getSimpleClassName(next).equals(str)) {
                    columnInfo2 = getColumnInfo(next);
                    this.simpleClassNameToColumnInfoMap.put(str, columnInfo2);
                    break;
                }
            }
        }
        if (columnInfo2 != null) {
            return columnInfo2;
        }
        throw new RealmException(String.format(Locale.US, "'%s' doesn't exist in current schema.", str));
    }

    public void refresh() {
        for (Map.Entry<Class<? extends RealmModel>, ColumnInfo> entry : this.classToColumnInfoMap.entrySet()) {
            entry.getValue().copyFrom(this.mediator.createColumnInfo(entry.getKey(), this.osSchemaInfo));
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ColumnIndices[");
        Iterator<Map.Entry<Class<? extends RealmModel>, ColumnInfo>> it = this.classToColumnInfoMap.entrySet().iterator();
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (!it.hasNext()) {
                sb.append("]");
                return sb.toString();
            }
            Map.Entry<Class<? extends RealmModel>, ColumnInfo> next = it.next();
            if (z2) {
                sb.append(",");
            }
            sb.append(next.getKey().getSimpleName());
            sb.append("->");
            sb.append(next.getValue());
            z = true;
        }
    }
}

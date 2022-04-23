package io.realm.internal;

import io.realm.RealmModel;
import io.realm.exceptions.RealmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import javax.annotation.Nonnull;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/ColumnIndices.class */
public final class ColumnIndices {
    public final RealmProxyMediator mediator;
    public final OsSchemaInfo osSchemaInfo;
    public final Map<Class<? extends RealmModel>, ColumnInfo> classToColumnInfoMap = new HashMap();
    public final Map<String, ColumnInfo> simpleClassNameToColumnInfoMap = new HashMap();

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
        boolean z = false;
        for (Map.Entry<Class<? extends RealmModel>, ColumnInfo> entry : this.classToColumnInfoMap.entrySet()) {
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

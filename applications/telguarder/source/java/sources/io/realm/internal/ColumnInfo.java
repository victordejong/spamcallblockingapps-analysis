package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/ColumnInfo.class */
public abstract class ColumnInfo {
    private final Map<String, ColumnDetails> columnKeysFromColumnNames;
    private final Map<String, ColumnDetails> columnkeysFromJavaFieldNames;
    private final Map<String, String> javaFieldNameToInternalNames;
    private final boolean mutable;

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/ColumnInfo$ColumnDetails.class */
    public static final class ColumnDetails {
        public final long columnKey;
        public final RealmFieldType columnType;
        public final String linkedClassName;

        private ColumnDetails(long j, RealmFieldType realmFieldType, @Nullable String str) {
            this.columnKey = j;
            this.columnType = realmFieldType;
            this.linkedClassName = str;
        }

        ColumnDetails(Property property) {
            this(property.getColumnKey(), property.getType(), property.getLinkedObjectName());
        }

        public String toString() {
            return "ColumnDetails[" + this.columnKey + ", " + this.columnType + ", " + this.linkedClassName + "]";
        }
    }

    public ColumnInfo(int i) {
        this(i, true);
    }

    private ColumnInfo(int i, boolean z) {
        this.columnkeysFromJavaFieldNames = new HashMap(i);
        this.columnKeysFromColumnNames = new HashMap(i);
        this.javaFieldNameToInternalNames = new HashMap(i);
        this.mutable = z;
    }

    public ColumnInfo(@Nullable ColumnInfo columnInfo, boolean z) {
        this(columnInfo == null ? 0 : columnInfo.columnkeysFromJavaFieldNames.size(), z);
        if (columnInfo != null) {
            this.columnkeysFromJavaFieldNames.putAll(columnInfo.columnkeysFromJavaFieldNames);
        }
    }

    protected final void addBacklinkDetails(OsSchemaInfo osSchemaInfo, String str, String str2, String str3) {
        this.columnkeysFromJavaFieldNames.put(str, new ColumnDetails(osSchemaInfo.getObjectSchemaInfo(str2).getProperty(str3).getColumnKey(), RealmFieldType.LINKING_OBJECTS, str2));
    }

    public final long addColumnDetails(String str, String str2, OsObjectSchemaInfo osObjectSchemaInfo) {
        Property property = osObjectSchemaInfo.getProperty(str2);
        ColumnDetails columnDetails = new ColumnDetails(property);
        this.columnkeysFromJavaFieldNames.put(str, columnDetails);
        this.columnKeysFromColumnNames.put(str2, columnDetails);
        this.javaFieldNameToInternalNames.put(str, str2);
        return property.getColumnKey();
    }

    protected abstract ColumnInfo copy(boolean z);

    protected abstract void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2);

    public void copyFrom(ColumnInfo columnInfo) {
        if (this.mutable) {
            Objects.requireNonNull(columnInfo, "Attempt to copy null ColumnInfo");
            this.columnkeysFromJavaFieldNames.clear();
            this.columnkeysFromJavaFieldNames.putAll(columnInfo.columnkeysFromJavaFieldNames);
            this.columnKeysFromColumnNames.clear();
            this.columnKeysFromColumnNames.putAll(columnInfo.columnKeysFromColumnNames);
            this.javaFieldNameToInternalNames.clear();
            this.javaFieldNameToInternalNames.putAll(columnInfo.javaFieldNameToInternalNames);
            copy(columnInfo, this);
            return;
        }
        throw new UnsupportedOperationException("Attempt to modify an immutable ColumnInfo");
    }

    @Nullable
    public ColumnDetails getColumnDetails(String str) {
        return this.columnkeysFromJavaFieldNames.get(str);
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    public long getColumnKey(String str) {
        ColumnDetails columnDetails = this.columnkeysFromJavaFieldNames.get(str);
        return columnDetails == null ? (char) 65535 : columnDetails.columnKey;
    }

    public Map<String, ColumnDetails> getColumnKeysMap() {
        return this.columnkeysFromJavaFieldNames;
    }

    @Nullable
    public String getInternalFieldName(String str) {
        return this.javaFieldNameToInternalNames.get(str);
    }

    public final boolean isMutable() {
        return this.mutable;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ColumnInfo[");
        sb.append("mutable=" + this.mutable);
        sb.append(",");
        if (this.columnkeysFromJavaFieldNames != null) {
            sb.append("JavaFieldNames=[");
            Iterator<Map.Entry<String, ColumnDetails>> it = this.columnkeysFromJavaFieldNames.entrySet().iterator();
            boolean z = false;
            while (true) {
                boolean z2 = z;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, ColumnDetails> next = it.next();
                if (z2) {
                    sb.append(",");
                }
                sb.append(next.getKey());
                sb.append("->");
                sb.append(next.getValue());
                z = true;
            }
            sb.append("]");
        }
        if (this.columnKeysFromColumnNames != null) {
            sb.append(", InternalFieldNames=[");
            Iterator<Map.Entry<String, ColumnDetails>> it2 = this.columnKeysFromColumnNames.entrySet().iterator();
            boolean z3 = false;
            while (true) {
                boolean z4 = z3;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<String, ColumnDetails> next2 = it2.next();
                if (z4) {
                    sb.append(",");
                }
                sb.append(next2.getKey());
                sb.append("->");
                sb.append(next2.getValue());
                z3 = true;
            }
            sb.append("]");
        }
        sb.append("]");
        return sb.toString();
    }
}

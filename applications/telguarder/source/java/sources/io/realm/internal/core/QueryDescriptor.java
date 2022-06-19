package io.realm.internal.core;

import io.realm.RealmFieldType;
import io.realm.Sort;
import io.realm.internal.Table;
import io.realm.internal.fields.FieldDescriptor;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/core/QueryDescriptor.class */
public class QueryDescriptor {
    private final boolean[] ascendings;
    private final long[][] columnKeys;
    private final Table table;
    public static final Set<RealmFieldType> SORT_VALID_FIELD_TYPES = Collections.unmodifiableSet(new HashSet(Arrays.asList(RealmFieldType.BOOLEAN, RealmFieldType.INTEGER, RealmFieldType.FLOAT, RealmFieldType.DOUBLE, RealmFieldType.STRING, RealmFieldType.DATE, RealmFieldType.DECIMAL128, RealmFieldType.OBJECT_ID)));
    public static final Set<RealmFieldType> DISTINCT_VALID_FIELD_TYPES = Collections.unmodifiableSet(new HashSet(Arrays.asList(RealmFieldType.BOOLEAN, RealmFieldType.INTEGER, RealmFieldType.STRING, RealmFieldType.BINARY, RealmFieldType.DATE, RealmFieldType.FLOAT, RealmFieldType.DOUBLE, RealmFieldType.DECIMAL128, RealmFieldType.OBJECT_ID, RealmFieldType.OBJECT, RealmFieldType.LINKING_OBJECTS)));
    public static final Set<RealmFieldType> DISTINCT_VALID_LINK_FIELD_TYPES = Collections.unmodifiableSet(new HashSet(Arrays.asList(RealmFieldType.OBJECT, RealmFieldType.LINKING_OBJECTS)));

    private QueryDescriptor(Table table, long[][] jArr, @Nullable Sort[] sortArr) {
        this.table = table;
        this.columnKeys = jArr;
        if (sortArr == null) {
            this.ascendings = null;
            return;
        }
        this.ascendings = new boolean[sortArr.length];
        for (int i = 0; i < sortArr.length; i++) {
            this.ascendings[i] = sortArr[i].getValue();
        }
    }

    private static void checkFieldType(FieldDescriptor fieldDescriptor, Set<RealmFieldType> set, String str, String str2) {
        if (set.contains(fieldDescriptor.getFinalColumnType())) {
            return;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s on '%s' field '%s' in '%s'.", str, fieldDescriptor.getFinalColumnType(), fieldDescriptor.getFinalColumnName(), str2));
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long[], long[][]] */
    private static QueryDescriptor getInstance(FieldDescriptor.SchemaProxy schemaProxy, Table table, String[] strArr, @Nullable Sort[] sortArr, Set<RealmFieldType> set, Set<RealmFieldType> set2, String str) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("You must provide at least one field name.");
        }
        ?? r0 = new long[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            FieldDescriptor createFieldDescriptor = FieldDescriptor.createFieldDescriptor(schemaProxy, table, strArr[i], set, null);
            checkFieldType(createFieldDescriptor, set2, str, strArr[i]);
            r0[i] = createFieldDescriptor.getColumnKeys();
        }
        return new QueryDescriptor(table, r0, sortArr);
    }

    public static QueryDescriptor getInstanceForDistinct(FieldDescriptor.SchemaProxy schemaProxy, Table table, String str) {
        return getInstanceForDistinct(schemaProxy, table, new String[]{str});
    }

    public static QueryDescriptor getInstanceForDistinct(FieldDescriptor.SchemaProxy schemaProxy, Table table, String[] strArr) {
        return getInstance(schemaProxy, table, strArr, null, DISTINCT_VALID_LINK_FIELD_TYPES, DISTINCT_VALID_FIELD_TYPES, "Distinct is not supported");
    }

    public static QueryDescriptor getInstanceForSort(FieldDescriptor.SchemaProxy schemaProxy, Table table, String str, Sort sort) {
        return getInstanceForSort(schemaProxy, table, new String[]{str}, new Sort[]{sort});
    }

    public static QueryDescriptor getInstanceForSort(FieldDescriptor.SchemaProxy schemaProxy, Table table, String[] strArr, Sort[] sortArr) {
        if (sortArr == null || sortArr.length == 0) {
            throw new IllegalArgumentException("You must provide at least one sort order.");
        }
        if (strArr.length != sortArr.length) {
            throw new IllegalArgumentException("Number of fields and sort orders do not match.");
        }
        return getInstance(schemaProxy, table, strArr, sortArr, FieldDescriptor.OBJECT_LINK_FIELD_TYPE, SORT_VALID_FIELD_TYPES, "Sort is not supported");
    }

    private long getTablePtr() {
        return this.table.getNativePtr();
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [long[], long[][]] */
    public static QueryDescriptor getTestInstance(Table table, long[] jArr) {
        return new QueryDescriptor(table, new long[]{jArr}, null);
    }

    public boolean[] getAscendings() {
        return this.ascendings;
    }

    public long[][] getColumnKeys() {
        return this.columnKeys;
    }
}

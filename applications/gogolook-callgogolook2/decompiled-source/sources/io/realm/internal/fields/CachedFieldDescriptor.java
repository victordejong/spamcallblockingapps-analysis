package io.realm.internal.fields;

import io.realm.RealmFieldType;
import io.realm.internal.ColumnInfo;
import io.realm.internal.fields.FieldDescriptor;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/fields/CachedFieldDescriptor.class */
public class CachedFieldDescriptor extends FieldDescriptor {
    public final String className;
    public final FieldDescriptor.SchemaProxy schema;

    public CachedFieldDescriptor(FieldDescriptor.SchemaProxy schemaProxy, String str, String str2, Set<RealmFieldType> set, Set<RealmFieldType> set2) {
        super(str2, set, set2);
        this.className = str;
        this.schema = schemaProxy;
    }

    @Override // io.realm.internal.fields.FieldDescriptor
    public void compileFieldDescription(List<String> list) {
        int size = list.size();
        long[] jArr = new long[size];
        long[] jArr2 = new long[size];
        String str = this.className;
        String str2 = null;
        RealmFieldType realmFieldType = null;
        int i = 0;
        while (i < size) {
            String str3 = list.get(i);
            if (str3 == null || str3.length() <= 0) {
                throw new IllegalArgumentException("Invalid query: Field descriptor contains an empty field.  A field description may not begin with or contain adjacent periods ('.').");
            }
            ColumnInfo columnInfo = this.schema.getColumnInfo(str);
            if (columnInfo != null) {
                ColumnInfo.ColumnDetails columnDetails = columnInfo.getColumnDetails(str3);
                if (columnDetails != null) {
                    realmFieldType = columnDetails.columnType;
                    str = str;
                    if (i < size - 1) {
                        verifyInternalColumnType(str, str3, realmFieldType);
                        str = columnDetails.linkedClassName;
                    }
                    jArr[i] = columnDetails.columnIndex;
                    jArr2[i] = realmFieldType != RealmFieldType.LINKING_OBJECTS ? 0L : this.schema.getNativeTablePtr(columnDetails.linkedClassName);
                    i++;
                    str2 = str3;
                } else {
                    throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: field '%s' not found in class '%s'.", str3, str));
                }
            } else {
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: class '%s' not found in this schema.", str));
            }
        }
        setCompilationResults(str, str2, realmFieldType, jArr, jArr2);
    }
}

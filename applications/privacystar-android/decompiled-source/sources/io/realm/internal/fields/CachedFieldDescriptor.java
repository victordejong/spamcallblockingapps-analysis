package io.realm.internal.fields;

import io.realm.RealmFieldType;
import io.realm.internal.ColumnInfo;
import io.realm.internal.fields.FieldDescriptor;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/internal/fields/CachedFieldDescriptor.class */
public class CachedFieldDescriptor extends FieldDescriptor {
    private final String className;
    private final FieldDescriptor.SchemaProxy schema;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CachedFieldDescriptor(FieldDescriptor.SchemaProxy schemaProxy, String str, String str2, Set<RealmFieldType> set, Set<RealmFieldType> set2) {
        super(str2, set, set2);
        this.className = str;
        this.schema = schemaProxy;
    }

    @Override // io.realm.internal.fields.FieldDescriptor
    protected void compileFieldDescription(List<String> list) {
        int size = list.size();
        long[] jArr = new long[size];
        long[] jArr2 = new long[size];
        String str = this.className;
        RealmFieldType realmFieldType = null;
        int i = 0;
        String str2 = null;
        while (i < size) {
            str2 = list.get(i);
            if (str2 == null || str2.length() <= 0) {
                throw new IllegalArgumentException("Invalid query: Field descriptor contains an empty field.  A field description may not begin with or contain adjacent periods ('.').");
            }
            ColumnInfo columnInfo = this.schema.getColumnInfo(str);
            if (columnInfo == null) {
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: class '%s' not found in this schema.", str));
            }
            ColumnInfo.ColumnDetails columnDetails = columnInfo.getColumnDetails(str2);
            if (columnDetails == null) {
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: field '%s' not found in class '%s'.", str2, str));
            }
            RealmFieldType realmFieldType2 = columnDetails.columnType;
            str = str;
            if (i < size - 1) {
                verifyInternalColumnType(str, str2, realmFieldType2);
                str = columnDetails.linkedClassName;
            }
            jArr[i] = columnDetails.columnIndex;
            jArr2[i] = realmFieldType2 != RealmFieldType.LINKING_OBJECTS ? 0L : this.schema.getNativeTablePtr(columnDetails.linkedClassName);
            i++;
            realmFieldType = realmFieldType2;
        }
        setCompilationResults(str, str2, realmFieldType, jArr, jArr2);
    }
}

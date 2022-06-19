package io.realm.internal.fields;

import io.realm.RealmFieldType;
import io.realm.internal.ColumnInfo;
import io.realm.internal.fields.FieldDescriptor;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/fields/CachedFieldDescriptor.class */
public class CachedFieldDescriptor extends FieldDescriptor {
    private final String className;
    private final FieldDescriptor.SchemaProxy schema;

    public CachedFieldDescriptor(FieldDescriptor.SchemaProxy schemaProxy, String str, String str2, Set<RealmFieldType> set, Set<RealmFieldType> set2) {
        super(str2, set, set2);
        this.className = str;
        this.schema = schemaProxy;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42 */
    /* JADX WARN: Type inference failed for: r20v0 */
    @Override // io.realm.internal.fields.FieldDescriptor
    protected void compileFieldDescription(List<String> list) {
        int size = list.size();
        long[] jArr = new long[size];
        long[] jArr2 = new long[size];
        String str = this.className;
        RealmFieldType realmFieldType = null;
        int i = 0;
        String str2 = null;
        while (true) {
            String str3 = str;
            if (i >= size) {
                setCompilationResults(str3, str2, realmFieldType, jArr, jArr2);
                return;
            }
            str2 = list.get(i);
            if (str2 == null || str2.length() <= 0) {
                break;
            }
            ColumnInfo columnInfo = this.schema.getColumnInfo(str3);
            if (columnInfo == null) {
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: class '%s' not found in this schema.", str3));
            }
            ColumnInfo.ColumnDetails columnDetails = columnInfo.getColumnDetails(str2);
            if (columnDetails == null) {
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: field '%s' not found in class '%s'.", str2, str3));
            }
            realmFieldType = columnDetails.columnType;
            str = str3;
            if (i < size - 1) {
                verifyInternalColumnType(str3, str2, realmFieldType);
                str = columnDetails.linkedClassName;
            }
            jArr[i] = columnDetails.columnKey;
            jArr2[i] = (realmFieldType != RealmFieldType.LINKING_OBJECTS ? 0 : this.schema.getNativeTablePtr(columnDetails.linkedClassName)) == true ? 1 : 0;
            i++;
        }
        throw new IllegalArgumentException("Invalid query: Field descriptor contains an empty field.  A field description may not begin with or contain adjacent periods ('.').");
    }
}

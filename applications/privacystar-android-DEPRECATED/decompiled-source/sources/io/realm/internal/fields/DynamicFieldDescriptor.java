package io.realm.internal.fields;

import io.realm.RealmFieldType;
import io.realm.internal.Table;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/internal/fields/DynamicFieldDescriptor.class */
public class DynamicFieldDescriptor extends FieldDescriptor {
    private final Table table;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DynamicFieldDescriptor(Table table, String str, Set<RealmFieldType> set, Set<RealmFieldType> set2) {
        super(str, set, set2);
        this.table = table;
    }

    @Override // io.realm.internal.fields.FieldDescriptor
    protected void compileFieldDescription(List<String> list) {
        int size = list.size();
        long[] jArr = new long[size];
        Table table = this.table;
        String str = null;
        String str2 = null;
        RealmFieldType realmFieldType = null;
        for (int i = 0; i < size; i++) {
            str2 = list.get(i);
            if (str2 == null || str2.length() <= 0) {
                throw new IllegalArgumentException("Invalid query: Field descriptor contains an empty field.  A field description may not begin with or contain adjacent periods ('.').");
            }
            str = table.getClassName();
            long columnIndex = table.getColumnIndex(str2);
            if (columnIndex < 0) {
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: field '%s' not found in table '%s'.", str2, str));
            }
            realmFieldType = table.getColumnType(columnIndex);
            table = table;
            if (i < size - 1) {
                verifyInternalColumnType(str, str2, realmFieldType);
                table = table.getLinkTarget(columnIndex);
            }
            jArr[i] = columnIndex;
        }
        setCompilationResults(str, str2, realmFieldType, jArr, new long[size]);
    }
}

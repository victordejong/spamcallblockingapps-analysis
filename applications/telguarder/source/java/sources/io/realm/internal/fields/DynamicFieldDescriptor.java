package io.realm.internal.fields;

import io.realm.RealmFieldType;
import io.realm.internal.Table;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/fields/DynamicFieldDescriptor.class */
public class DynamicFieldDescriptor extends FieldDescriptor {
    private final Table table;

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
        int i = 0;
        while (i < size) {
            str2 = list.get(i);
            if (str2 == null || str2.length() <= 0) {
                throw new IllegalArgumentException("Invalid query: Field descriptor contains an empty field.  A field description may not begin with or contain adjacent periods ('.').");
            }
            String className = table.getClassName();
            long columnKey = table.getColumnKey(str2);
            if (columnKey < 0) {
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: field '%s' not found in table '%s'.", str2, className));
            }
            realmFieldType = table.getColumnType(columnKey);
            Table table2 = table;
            if (i < size - 1) {
                verifyInternalColumnType(className, str2, realmFieldType);
                table2 = table.getLinkTarget(columnKey);
            }
            jArr[i] = columnKey;
            i++;
            table = table2;
            str = className;
        }
        setCompilationResults(str, str2, realmFieldType, jArr, new long[size]);
    }
}

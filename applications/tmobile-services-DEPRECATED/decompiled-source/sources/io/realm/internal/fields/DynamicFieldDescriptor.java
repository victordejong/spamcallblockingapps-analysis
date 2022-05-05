package io.realm.internal.fields;

import io.realm.RealmFieldType;
import io.realm.internal.Table;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/fields/DynamicFieldDescriptor.class */
class DynamicFieldDescriptor extends FieldDescriptor {

    /* renamed from: m */
    private final Table f20221m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DynamicFieldDescriptor(Table table, String str, Set<RealmFieldType> set, Set<RealmFieldType> set2) {
        super(str, set, set2);
        this.f20221m = table;
    }

    @Override // io.realm.internal.fields.FieldDescriptor
    /* renamed from: a */
    protected void mo2581a(List<String> list) {
        int size = list.size();
        long[] jArr = new long[size];
        Table table = this.f20221m;
        String str = null;
        String str2 = null;
        RealmFieldType realmFieldType = null;
        int i = 0;
        while (i < size) {
            String str3 = list.get(i);
            if (str3 == null || str3.length() <= 0) {
                throw new IllegalArgumentException("Invalid query: Field descriptor contains an empty field.  A field description may not begin with or contain adjacent periods ('.').");
            }
            str = table.m2641l();
            long o = table.m2638o(str3);
            if (o >= 0) {
                realmFieldType = table.m2635r(o);
                table = table;
                if (i < size - 1) {
                    m2569m(str, str3, realmFieldType);
                    table = table.m2634s(o);
                }
                jArr[i] = o;
                i++;
                str2 = str3;
            } else {
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: field '%s' not found in table '%s'.", str3, str));
            }
        }
        m2571k(str, str2, realmFieldType, jArr, new long[size]);
    }
}

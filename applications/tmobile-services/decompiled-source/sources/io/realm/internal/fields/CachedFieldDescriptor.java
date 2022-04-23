package io.realm.internal.fields;

import io.realm.RealmFieldType;
import io.realm.internal.ColumnInfo;
import io.realm.internal.fields.FieldDescriptor;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/fields/CachedFieldDescriptor.class */
class CachedFieldDescriptor extends FieldDescriptor {

    /* renamed from: m */
    private final FieldDescriptor.SchemaProxy f20219m;

    /* renamed from: n */
    private final String f20220n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CachedFieldDescriptor(FieldDescriptor.SchemaProxy schemaProxy, String str, String str2, Set<RealmFieldType> set, Set<RealmFieldType> set2) {
        super(str2, set, set2);
        this.f20220n = str;
        this.f20219m = schemaProxy;
    }

    @Override // io.realm.internal.fields.FieldDescriptor
    /* renamed from: a */
    protected void mo2581a(List<String> list) {
        int size = list.size();
        long[] jArr = new long[size];
        long[] jArr2 = new long[size];
        String str = this.f20220n;
        String str2 = null;
        RealmFieldType realmFieldType = null;
        int i = 0;
        while (i < size) {
            String str3 = list.get(i);
            if (str3 == null || str3.length() <= 0) {
                throw new IllegalArgumentException("Invalid query: Field descriptor contains an empty field.  A field description may not begin with or contain adjacent periods ('.').");
            }
            ColumnInfo a = this.f20219m.mo2568a(str);
            if (a != null) {
                ColumnInfo.ColumnDetails d = a.mo2831d(str3);
                if (d != null) {
                    realmFieldType = d.f20091b;
                    str = str;
                    if (i < size - 1) {
                        m2569m(str, str3, realmFieldType);
                        str = d.f20092c;
                    }
                    jArr[i] = d.f20090a;
                    jArr2[i] = realmFieldType != RealmFieldType.LINKING_OBJECTS ? 0L : this.f20219m.mo2566c(d.f20092c);
                    i++;
                    str2 = str3;
                } else {
                    throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: field '%s' not found in class '%s'.", str3, str));
                }
            } else {
                throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: class '%s' not found in this schema.", str));
            }
        }
        m2571k(str, str2, realmFieldType, jArr, jArr2);
    }
}

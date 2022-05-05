package io.realm;

import io.realm.internal.Table;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:io/realm/MutableRealmSchema.class */
class MutableRealmSchema extends RealmSchema {
    /* JADX INFO: Access modifiers changed from: package-private */
    public MutableRealmSchema(BaseRealm baseRealm) {
        super(baseRealm, null);
    }

    @Override // io.realm.RealmSchema
    /* renamed from: d */
    public RealmObjectSchema mo2857d(String str) {
        m2859b(str, "Null or empty class names are not allowed");
        String v = Table.m2631v(str);
        if (str.length() <= Table.f20187j) {
            BaseRealm baseRealm = this.f19973e;
            return new MutableRealmObjectSchema(baseRealm, this, baseRealm.m3162N().createTable(v));
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Class name is too long. Limit is %1$d characters: %2$s", Integer.valueOf(Table.f20187j), Integer.valueOf(str.length())));
    }

    @Override // io.realm.RealmSchema
    /* renamed from: e */
    public RealmObjectSchema mo2856e(String str) {
        m2859b(str, "Null or empty class names are not allowed");
        String v = Table.m2631v(str);
        if (!this.f19973e.m3162N().hasTable(v)) {
            return null;
        }
        return new MutableRealmObjectSchema(this.f19973e, this, this.f19973e.m3162N().getTable(v));
    }

    @Override // io.realm.RealmSchema
    /* renamed from: f */
    public Set<RealmObjectSchema> mo2855f() {
        String[] tablesNames = this.f19973e.m3162N().getTablesNames();
        LinkedHashSet linkedHashSet = new LinkedHashSet(tablesNames.length);
        for (String str : tablesNames) {
            RealmObjectSchema e = mo2856e(Table.m2640m(str));
            if (e != null) {
                linkedHashSet.add(e);
            }
        }
        return linkedHashSet;
    }
}

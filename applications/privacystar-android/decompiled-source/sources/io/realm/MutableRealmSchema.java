package io.realm;

import io.realm.RealmObjectSchema;
import io.realm.internal.OsObjectStore;
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

    private String checkAndGetTableNameFromClassName(String str) {
        if (str.length() <= Table.CLASS_NAME_MAX_LENGTH) {
            return Table.getTableNameForClass(str);
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Class name is too long. Limit is %1$d characters: %2$s", Integer.valueOf(Table.CLASS_NAME_MAX_LENGTH), Integer.valueOf(str.length())));
    }

    @Override // io.realm.RealmSchema
    public RealmObjectSchema create(String str) {
        checkNotEmpty(str, "Null or empty class names are not allowed");
        String tableNameForClass = Table.getTableNameForClass(str);
        if (str.length() <= Table.CLASS_NAME_MAX_LENGTH) {
            return new MutableRealmObjectSchema(this.realm, this, this.realm.getSharedRealm().createTable(tableNameForClass));
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Class name is too long. Limit is %1$d characters: %2$s", Integer.valueOf(Table.CLASS_NAME_MAX_LENGTH), Integer.valueOf(str.length())));
    }

    @Override // io.realm.RealmSchema
    public RealmObjectSchema createWithPrimaryKeyField(String str, String str2, Class<?> cls, FieldAttribute... fieldAttributeArr) {
        checkNotEmpty(str, "Null or empty class names are not allowed");
        RealmObjectSchema.checkLegalName(str2);
        String checkAndGetTableNameFromClassName = checkAndGetTableNameFromClassName(str);
        RealmObjectSchema.FieldMetaData fieldMetaData = RealmObjectSchema.getSupportedSimpleFields().get(cls);
        boolean z = true;
        if (fieldMetaData == null || !(fieldMetaData.fieldType == RealmFieldType.STRING || fieldMetaData.fieldType == RealmFieldType.INTEGER)) {
            throw new IllegalArgumentException(String.format("Realm doesn't support primary key field type '%s'.", cls));
        }
        if (fieldMetaData.fieldType != RealmFieldType.STRING) {
            z = false;
        }
        boolean z2 = fieldMetaData.defaultNullable;
        if (MutableRealmObjectSchema.containsAttribute(fieldAttributeArr, FieldAttribute.REQUIRED)) {
            z2 = false;
        }
        return new MutableRealmObjectSchema(this.realm, this, this.realm.getSharedRealm().createTableWithPrimaryKey(checkAndGetTableNameFromClassName, str2, z, z2));
    }

    @Override // io.realm.RealmSchema
    public RealmObjectSchema get(String str) {
        checkNotEmpty(str, "Null or empty class names are not allowed");
        String tableNameForClass = Table.getTableNameForClass(str);
        if (!this.realm.getSharedRealm().hasTable(tableNameForClass)) {
            return null;
        }
        return new MutableRealmObjectSchema(this.realm, this, this.realm.getSharedRealm().getTable(tableNameForClass));
    }

    @Override // io.realm.RealmSchema
    public Set<RealmObjectSchema> getAll() {
        int size = (int) this.realm.getSharedRealm().size();
        LinkedHashSet linkedHashSet = new LinkedHashSet(size);
        for (int i = 0; i < size; i++) {
            RealmObjectSchema realmObjectSchema = get(Table.getClassNameForTable(this.realm.getSharedRealm().getTableName(i)));
            if (realmObjectSchema != null) {
                linkedHashSet.add(realmObjectSchema);
            }
        }
        return linkedHashSet;
    }

    @Override // io.realm.RealmSchema
    public void remove(String str) {
        this.realm.checkNotInSync();
        checkNotEmpty(str, "Null or empty class names are not allowed");
        String tableNameForClass = Table.getTableNameForClass(str);
        if (!OsObjectStore.deleteTableForObject(this.realm.getSharedRealm(), str)) {
            throw new IllegalArgumentException("Cannot remove class because it is not in this Realm: " + str);
        }
        removeFromClassNameToSchemaMap(tableNameForClass);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00e1, code lost:
        if (r0.getClassName().equals(r8) == false) goto L_0x00e4;
     */
    @Override // io.realm.RealmSchema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.realm.RealmObjectSchema rename(java.lang.String r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.MutableRealmSchema.rename(java.lang.String, java.lang.String):io.realm.RealmObjectSchema");
    }
}

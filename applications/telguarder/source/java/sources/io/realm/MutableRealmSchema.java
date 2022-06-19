package io.realm;

import io.realm.RealmObjectSchema;
import io.realm.internal.OsObjectStore;
import io.realm.internal.Table;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:io/realm/MutableRealmSchema.class */
public class MutableRealmSchema extends RealmSchema {
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
        boolean z = false;
        if (fieldMetaData == null || !(fieldMetaData.fieldType == RealmFieldType.STRING || fieldMetaData.fieldType == RealmFieldType.INTEGER || fieldMetaData.fieldType == RealmFieldType.OBJECT_ID)) {
            throw new IllegalArgumentException(String.format("Realm doesn't support primary key field type '%s'.", cls));
        }
        boolean z2 = fieldMetaData.defaultNullable;
        if (!MutableRealmObjectSchema.containsAttribute(fieldAttributeArr, FieldAttribute.REQUIRED)) {
            z = z2;
        }
        return new MutableRealmObjectSchema(this.realm, this, this.realm.getSharedRealm().createTableWithPrimaryKey(checkAndGetTableNameFromClassName, str2, fieldMetaData.fieldType, z));
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
        String[] tablesNames = this.realm.getSharedRealm().getTablesNames();
        LinkedHashSet linkedHashSet = new LinkedHashSet(tablesNames.length);
        for (String str : tablesNames) {
            RealmObjectSchema realmObjectSchema = get(Table.getClassNameForTable(str));
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
        if (OsObjectStore.deleteTableForObject(this.realm.getSharedRealm(), str)) {
            removeFromClassNameToSchemaMap(tableNameForClass);
            return;
        }
        throw new IllegalArgumentException("Cannot remove class because it is not in this Realm: " + str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x008a, code lost:
        if (r0.getClassName().equals(r8) == false) goto L10;
     */
    @Override // io.realm.RealmSchema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.realm.RealmObjectSchema rename(java.lang.String r7, java.lang.String r8) {
        /*
            r6 = this;
            r0 = r6
            io.realm.BaseRealm r0 = r0.realm
            r0.checkNotInSync()
            r0 = r6
            r1 = r7
            java.lang.String r2 = "Class names cannot be empty or null"
            r0.checkNotEmpty(r1, r2)
            r0 = r6
            r1 = r8
            java.lang.String r2 = "Class names cannot be empty or null"
            r0.checkNotEmpty(r1, r2)
            r0 = r7
            java.lang.String r0 = io.realm.internal.Table.getTableNameForClass(r0)
            r9 = r0
            r0 = r8
            java.lang.String r0 = io.realm.internal.Table.getTableNameForClass(r0)
            r10 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            java.lang.String r1 = "Cannot rename class because it doesn't exist in this Realm: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r7
            r2 = r11
            java.lang.String r2 = r2.toString()
            r0.checkHasTable(r1, r2)
            r0 = r6
            io.realm.BaseRealm r0 = r0.realm
            io.realm.internal.OsSharedRealm r0 = r0.getSharedRealm()
            r1 = r10
            boolean r0 = r0.hasTable(r1)
            if (r0 != 0) goto La5
            r0 = r6
            io.realm.BaseRealm r0 = r0.realm
            io.realm.internal.OsSharedRealm r0 = r0.getSharedRealm()
            r1 = r9
            r2 = r10
            r0.renameTable(r1, r2)
            r0 = r6
            io.realm.BaseRealm r0 = r0.realm
            io.realm.internal.OsSharedRealm r0 = r0.getSharedRealm()
            r1 = r10
            io.realm.internal.Table r0 = r0.getTable(r1)
            r11 = r0
            r0 = r6
            r1 = r9
            io.realm.RealmObjectSchema r0 = r0.removeFromClassNameToSchemaMap(r1)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L8d
            r0 = r9
            io.realm.internal.Table r0 = r0.getTable()
            boolean r0 = r0.isValid()
            if (r0 == 0) goto L8d
            r0 = r9
            r7 = r0
            r0 = r9
            java.lang.String r0 = r0.getClassName()
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L9c
        L8d:
            io.realm.MutableRealmObjectSchema r0 = new io.realm.MutableRealmObjectSchema
            r1 = r0
            r2 = r6
            io.realm.BaseRealm r2 = r2.realm
            r3 = r6
            r4 = r11
            r1.<init>(r2, r3, r4)
            r7 = r0
        L9c:
            r0 = r6
            r1 = r10
            r2 = r7
            r0.putToClassNameToSchemaMap(r1, r2)
            r0 = r7
            return r0
        La5:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r9
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            java.lang.String r1 = " cannot be renamed because the new class already exists: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r9
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.MutableRealmSchema.rename(java.lang.String, java.lang.String):io.realm.RealmObjectSchema");
    }
}

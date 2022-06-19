package io.realm;

import io.realm.internal.ColumnIndices;
import io.realm.internal.ColumnInfo;
import io.realm.internal.Table;
import io.realm.internal.Util;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmSchema.class */
public abstract class RealmSchema {
    static final String EMPTY_STRING_MSG = "Null or empty class names are not allowed";
    private final ColumnIndices columnIndices;
    final BaseRealm realm;
    private final Map<String, Table> dynamicClassToTable = new HashMap();
    private final Map<Class<? extends RealmModel>, Table> classToTable = new HashMap();
    private final Map<Class<? extends RealmModel>, RealmObjectSchema> classToSchema = new HashMap();
    private final Map<String, RealmObjectSchema> dynamicClassToSchema = new HashMap();

    public RealmSchema(BaseRealm baseRealm, @Nullable ColumnIndices columnIndices) {
        this.realm = baseRealm;
        this.columnIndices = columnIndices;
    }

    private void checkColumnKeys() {
        if (haveColumnInfo()) {
            return;
        }
        throw new IllegalStateException("Attempt to use column key before set.");
    }

    private boolean isProxyClass(Class<? extends RealmModel> cls, Class<? extends RealmModel> cls2) {
        return cls.equals(cls2);
    }

    public void checkHasTable(String str, String str2) {
        if (this.realm.getSharedRealm().hasTable(Table.getTableNameForClass(str))) {
            return;
        }
        throw new IllegalArgumentException(str2);
    }

    public void checkNotEmpty(String str, String str2) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException(str2);
        }
    }

    public boolean contains(String str) {
        return this.realm.getSharedRealm().hasTable(Table.getTableNameForClass(str));
    }

    public abstract RealmObjectSchema create(String str);

    public abstract RealmObjectSchema createWithPrimaryKeyField(String str, String str2, Class<?> cls, FieldAttribute... fieldAttributeArr);

    @Nullable
    public abstract RealmObjectSchema get(String str);

    public abstract Set<RealmObjectSchema> getAll();

    public final ColumnInfo getColumnInfo(Class<? extends RealmModel> cls) {
        checkColumnKeys();
        return this.columnIndices.getColumnInfo(cls);
    }

    public final ColumnInfo getColumnInfo(String str) {
        checkColumnKeys();
        return this.columnIndices.getColumnInfo(str);
    }

    public RealmObjectSchema getSchemaForClass(Class<? extends RealmModel> cls) {
        RealmObjectSchema realmObjectSchema = this.classToSchema.get(cls);
        if (realmObjectSchema != null) {
            return realmObjectSchema;
        }
        Class<? extends RealmModel> originalModelClass = Util.getOriginalModelClass(cls);
        if (isProxyClass(originalModelClass, cls)) {
            realmObjectSchema = this.classToSchema.get(originalModelClass);
        }
        ImmutableRealmObjectSchema immutableRealmObjectSchema = realmObjectSchema;
        if (realmObjectSchema == null) {
            immutableRealmObjectSchema = new ImmutableRealmObjectSchema(this.realm, this, getTable(cls), getColumnInfo(originalModelClass));
            this.classToSchema.put(originalModelClass, immutableRealmObjectSchema);
        }
        if (isProxyClass(originalModelClass, cls)) {
            this.classToSchema.put(cls, immutableRealmObjectSchema);
        }
        return immutableRealmObjectSchema;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x002c, code lost:
        if (r0.getClassName().equals(r8) == false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.realm.RealmObjectSchema getSchemaForClass(java.lang.String r8) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r0 = io.realm.internal.Table.getTableNameForClass(r0)
            r9 = r0
            r0 = r7
            java.util.Map<java.lang.String, io.realm.RealmObjectSchema> r0 = r0.dynamicClassToSchema
            r1 = r9
            java.lang.Object r0 = r0.get(r1)
            io.realm.RealmObjectSchema r0 = (io.realm.RealmObjectSchema) r0
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L2f
            r0 = r10
            io.realm.internal.Table r0 = r0.getTable()
            boolean r0 = r0.isValid()
            if (r0 == 0) goto L2f
            r0 = r10
            r11 = r0
            r0 = r10
            java.lang.String r0 = r0.getClassName()
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L62
        L2f:
            r0 = r7
            io.realm.BaseRealm r0 = r0.realm
            io.realm.internal.OsSharedRealm r0 = r0.getSharedRealm()
            r1 = r9
            boolean r0 = r0.hasTable(r1)
            if (r0 == 0) goto L65
            r0 = r7
            io.realm.BaseRealm r0 = r0.realm
            r8 = r0
            io.realm.ImmutableRealmObjectSchema r0 = new io.realm.ImmutableRealmObjectSchema
            r1 = r0
            r2 = r8
            r3 = r7
            r4 = r8
            io.realm.internal.OsSharedRealm r4 = r4.getSharedRealm()
            r5 = r9
            io.realm.internal.Table r4 = r4.getTable(r5)
            r1.<init>(r2, r3, r4)
            r11 = r0
            r0 = r7
            java.util.Map<java.lang.String, io.realm.RealmObjectSchema> r0 = r0.dynamicClassToSchema
            r1 = r9
            r2 = r11
            java.lang.Object r0 = r0.put(r1, r2)
        L62:
            r0 = r11
            return r0
        L65:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            java.lang.String r1 = "The class "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            java.lang.String r1 = " doesn't exist in this Realm."
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r11
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmSchema.getSchemaForClass(java.lang.String):io.realm.RealmObjectSchema");
    }

    public Table getTable(Class<? extends RealmModel> cls) {
        Table table = this.classToTable.get(cls);
        if (table != null) {
            return table;
        }
        Class<? extends RealmModel> originalModelClass = Util.getOriginalModelClass(cls);
        if (isProxyClass(originalModelClass, cls)) {
            table = this.classToTable.get(originalModelClass);
        }
        Table table2 = table;
        if (table == null) {
            table2 = this.realm.getSharedRealm().getTable(Table.getTableNameForClass(this.realm.getConfiguration().getSchemaMediator().getSimpleClassName(originalModelClass)));
            this.classToTable.put(originalModelClass, table2);
        }
        if (isProxyClass(originalModelClass, cls)) {
            this.classToTable.put(cls, table2);
        }
        return table2;
    }

    public Table getTable(String str) {
        String tableNameForClass = Table.getTableNameForClass(str);
        Table table = this.dynamicClassToTable.get(tableNameForClass);
        if (table != null) {
            return table;
        }
        Table table2 = this.realm.getSharedRealm().getTable(tableNameForClass);
        this.dynamicClassToTable.put(tableNameForClass, table2);
        return table2;
    }

    public final boolean haveColumnInfo() {
        return this.columnIndices != null;
    }

    public final void putToClassNameToSchemaMap(String str, RealmObjectSchema realmObjectSchema) {
        this.dynamicClassToSchema.put(str, realmObjectSchema);
    }

    public void refresh() {
        ColumnIndices columnIndices = this.columnIndices;
        if (columnIndices != null) {
            columnIndices.refresh();
        }
        this.dynamicClassToTable.clear();
        this.classToTable.clear();
        this.classToSchema.clear();
        this.dynamicClassToSchema.clear();
    }

    public abstract void remove(String str);

    public final RealmObjectSchema removeFromClassNameToSchemaMap(String str) {
        return this.dynamicClassToSchema.remove(str);
    }

    public abstract RealmObjectSchema rename(String str, String str2);
}

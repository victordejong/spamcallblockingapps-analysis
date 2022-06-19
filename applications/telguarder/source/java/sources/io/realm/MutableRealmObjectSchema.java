package io.realm;

import io.realm.RealmObjectSchema;
import io.realm.internal.CheckedRow;
import io.realm.internal.OsObjectStore;
import io.realm.internal.OsResults;
import io.realm.internal.Table;
import io.realm.internal.Util;
import io.realm.internal.core.DescriptorOrdering;
import io.realm.internal.fields.FieldDescriptor;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:io/realm/MutableRealmObjectSchema.class */
public class MutableRealmObjectSchema extends RealmObjectSchema {
    public MutableRealmObjectSchema(BaseRealm baseRealm, RealmSchema realmSchema, Table table) {
        super(baseRealm, realmSchema, table, new RealmObjectSchema.DynamicColumnIndices(table));
    }

    private void addModifiers(String str, FieldAttribute[] fieldAttributeArr) {
        if (fieldAttributeArr != null) {
            boolean z = false;
            boolean z2 = false;
            try {
                if (fieldAttributeArr.length <= 0) {
                    return;
                }
                if (containsAttribute(fieldAttributeArr, FieldAttribute.INDEXED)) {
                    addIndex(str);
                    z = true;
                }
                if (!containsAttribute(fieldAttributeArr, FieldAttribute.PRIMARY_KEY)) {
                    return;
                }
                z2 = z;
                addPrimaryKey(str);
            } catch (Exception e) {
                long columnKey = getColumnKey(str);
                if (z2) {
                    this.table.removeSearchIndex(columnKey);
                }
                throw ((RuntimeException) e);
            }
        }
    }

    private void checkAddPrimaryKeyForSync() {
        if (!this.realm.configuration.isSyncConfiguration()) {
            return;
        }
        throw new UnsupportedOperationException("'addPrimaryKey' is not supported by synced Realms.");
    }

    private void checkEmpty(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Null or empty class names are not allowed");
        }
    }

    private void checkFieldNameIsAvailable(String str) {
        if (this.table.getColumnKey(str) == -1) {
            return;
        }
        throw new IllegalArgumentException("Field already exists in '" + getClassName() + "': " + str);
    }

    private void checkNewFieldName(String str) {
        checkLegalName(str);
        checkFieldNameIsAvailable(str);
    }

    public static boolean containsAttribute(FieldAttribute[] fieldAttributeArr, FieldAttribute fieldAttribute) {
        if (fieldAttributeArr == null || fieldAttributeArr.length == 0) {
            return false;
        }
        for (FieldAttribute fieldAttribute2 : fieldAttributeArr) {
            if (fieldAttribute2 == fieldAttribute) {
                return true;
            }
        }
        return false;
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema addField(String str, Class<?> cls, FieldAttribute... fieldAttributeArr) {
        RealmObjectSchema.FieldMetaData fieldMetaData = SUPPORTED_SIMPLE_FIELDS.get(cls);
        if (fieldMetaData == null) {
            if (!SUPPORTED_LINKED_FIELDS.containsKey(cls)) {
                if (!RealmModel.class.isAssignableFrom(cls)) {
                    throw new IllegalArgumentException(String.format(Locale.US, "Realm doesn't support this field type: %s(%s)", str, cls));
                }
                throw new IllegalArgumentException(String.format(Locale.US, "Use 'addRealmObjectField()' instead to add fields that link to other RealmObjects: %s(%s)", str, cls));
            }
            throw new IllegalArgumentException("Use addRealmObjectField() instead to add fields that link to other RealmObjects: " + str);
        }
        if (containsAttribute(fieldAttributeArr, FieldAttribute.PRIMARY_KEY)) {
            checkAddPrimaryKeyForSync();
        }
        checkNewFieldName(str);
        boolean z = fieldMetaData.defaultNullable;
        if (containsAttribute(fieldAttributeArr, FieldAttribute.REQUIRED)) {
            z = false;
        }
        long addColumn = this.table.addColumn(fieldMetaData.fieldType, str, z);
        try {
            addModifiers(str, fieldAttributeArr);
            return this;
        } catch (Exception e) {
            this.table.removeColumn(addColumn);
            throw e;
        }
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema addIndex(String str) {
        checkLegalName(str);
        checkFieldExists(str);
        long columnKey = getColumnKey(str);
        if (!this.table.hasSearchIndex(columnKey)) {
            this.table.addSearchIndex(columnKey);
            return this;
        }
        throw new IllegalStateException(str + " already has an index.");
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema addPrimaryKey(String str) {
        checkAddPrimaryKeyForSync();
        checkLegalName(str);
        checkFieldExists(str);
        String primaryKeyForObject = OsObjectStore.getPrimaryKeyForObject(this.realm.sharedRealm, getClassName());
        if (primaryKeyForObject == null) {
            long columnKey = getColumnKey(str);
            if (getFieldType(str) != RealmFieldType.STRING && !this.table.hasSearchIndex(columnKey)) {
                this.table.addSearchIndex(columnKey);
            }
            OsObjectStore.setPrimaryKeyForObject(this.realm.sharedRealm, getClassName(), str);
            return this;
        }
        throw new IllegalStateException(String.format(Locale.ENGLISH, "Field '%s' has been already defined as primary key.", primaryKeyForObject));
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema addRealmListField(String str, RealmObjectSchema realmObjectSchema) {
        checkLegalName(str);
        checkFieldNameIsAvailable(str);
        this.table.addColumnLink(RealmFieldType.LIST, str, this.realm.sharedRealm.getTable(Table.getTableNameForClass(realmObjectSchema.getClassName())));
        return this;
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema addRealmListField(String str, Class<?> cls) {
        checkLegalName(str);
        checkFieldNameIsAvailable(str);
        RealmObjectSchema.FieldMetaData fieldMetaData = SUPPORTED_SIMPLE_FIELDS.get(cls);
        if (fieldMetaData != null) {
            this.table.addColumn(fieldMetaData.listType, str, fieldMetaData.defaultNullable);
            return this;
        } else if (!cls.equals(RealmObjectSchema.class) && !RealmModel.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException(String.format(Locale.US, "RealmList does not support lists with this type: %s(%s)", str, cls));
        } else {
            throw new IllegalArgumentException("Use 'addRealmListField(String name, RealmObjectSchema schema)' instead to add lists that link to other RealmObjects: " + str);
        }
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema addRealmObjectField(String str, RealmObjectSchema realmObjectSchema) {
        checkLegalName(str);
        checkFieldNameIsAvailable(str);
        this.table.addColumnLink(RealmFieldType.OBJECT, str, this.realm.sharedRealm.getTable(Table.getTableNameForClass(realmObjectSchema.getClassName())));
        return this;
    }

    @Override // io.realm.RealmObjectSchema
    public FieldDescriptor getFieldDescriptors(String str, RealmFieldType... realmFieldTypeArr) {
        return FieldDescriptor.createStandardFieldDescriptor(getSchemaConnector(), getTable(), str, realmFieldTypeArr);
    }

    @Override // io.realm.RealmObjectSchema
    public String getPropertyClassName(String str) {
        String className = this.table.getLinkTarget(getColumnKey(str)).getClassName();
        if (!Util.isEmptyString(className)) {
            return className;
        }
        throw new IllegalArgumentException(String.format("Property '%s' not found.", str));
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema removeField(String str) {
        this.realm.checkNotInSync();
        checkLegalName(str);
        if (!hasField(str)) {
            throw new IllegalStateException(str + " does not exist.");
        }
        long columnKey = getColumnKey(str);
        String className = getClassName();
        if (str.equals(OsObjectStore.getPrimaryKeyForObject(this.realm.sharedRealm, className))) {
            OsObjectStore.setPrimaryKeyForObject(this.realm.sharedRealm, className, str);
        }
        this.table.removeColumn(columnKey);
        return this;
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema removeIndex(String str) {
        this.realm.checkNotInSync();
        checkLegalName(str);
        checkFieldExists(str);
        long columnKey = getColumnKey(str);
        if (this.table.hasSearchIndex(columnKey)) {
            this.table.removeSearchIndex(columnKey);
            return this;
        }
        throw new IllegalStateException("Field is not indexed: " + str);
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema removePrimaryKey() {
        this.realm.checkNotInSync();
        String primaryKeyForObject = OsObjectStore.getPrimaryKeyForObject(this.realm.sharedRealm, getClassName());
        if (primaryKeyForObject == null) {
            throw new IllegalStateException(getClassName() + " doesn't have a primary key.");
        }
        long columnKey = this.table.getColumnKey(primaryKeyForObject);
        if (this.table.hasSearchIndex(columnKey)) {
            this.table.removeSearchIndex(columnKey);
        }
        OsObjectStore.setPrimaryKeyForObject(this.realm.sharedRealm, getClassName(), null);
        return this;
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema renameField(String str, String str2) {
        this.realm.checkNotInSync();
        checkLegalName(str);
        checkFieldExists(str);
        checkLegalName(str2);
        checkFieldNameIsAvailable(str2);
        this.table.renameColumn(getColumnKey(str), str2);
        return this;
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema setClassName(String str) {
        this.realm.checkNotInSync();
        checkEmpty(str);
        String tableNameForClass = Table.getTableNameForClass(str);
        if (str.length() <= Table.CLASS_NAME_MAX_LENGTH) {
            if (this.realm.sharedRealm.hasTable(tableNameForClass)) {
                throw new IllegalArgumentException("Class already exists: " + str);
            }
            String name = this.table.getName();
            String className = this.table.getClassName();
            String primaryKeyForObject = OsObjectStore.getPrimaryKeyForObject(this.realm.sharedRealm, className);
            if (primaryKeyForObject != null) {
                OsObjectStore.setPrimaryKeyForObject(this.realm.sharedRealm, className, null);
            }
            this.realm.sharedRealm.renameTable(name, tableNameForClass);
            if (primaryKeyForObject != null) {
                try {
                    OsObjectStore.setPrimaryKeyForObject(this.realm.sharedRealm, str, primaryKeyForObject);
                } catch (Exception e) {
                    this.realm.sharedRealm.renameTable(this.table.getName(), name);
                    throw e;
                }
            }
            return this;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Class name is too long. Limit is %1$d characters: '%2$s' (%3$d)", Integer.valueOf(Table.CLASS_NAME_MAX_LENGTH), str, Integer.valueOf(str.length())));
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema setNullable(String str, boolean z) {
        setRequired(str, !z);
        return this;
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema setRequired(String str, boolean z) {
        long columnKey = this.table.getColumnKey(str);
        boolean isRequired = isRequired(str);
        RealmFieldType columnType = this.table.getColumnType(columnKey);
        if (columnType == RealmFieldType.OBJECT) {
            throw new IllegalArgumentException("Cannot modify the required state for RealmObject references: " + str);
        } else if (columnType == RealmFieldType.LIST) {
            throw new IllegalArgumentException("Cannot modify the required state for RealmList references: " + str);
        } else if (z && isRequired) {
            throw new IllegalStateException("Field is already required: " + str);
        } else if (!z && !isRequired) {
            throw new IllegalStateException("Field is already nullable: " + str);
        } else {
            if (z) {
                try {
                    this.table.convertColumnToNotNullable(columnKey);
                } catch (IllegalArgumentException e) {
                    if (!e.getMessage().contains("Attempted to insert null into non-nullable column")) {
                        throw e;
                    }
                    throw new IllegalStateException(String.format("The primary key field '%s' has 'null' values stored.", str));
                }
            } else {
                this.table.convertColumnToNullable(columnKey);
            }
            return this;
        }
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema transform(RealmObjectSchema.Function function) {
        if (function != null) {
            OsResults createSnapshot = OsResults.createFromQuery(this.realm.sharedRealm, this.table.where(), new DescriptorOrdering()).createSnapshot();
            long size = createSnapshot.size();
            if (size > 2147483647L) {
                throw new UnsupportedOperationException("Too many results to iterate: " + size);
            }
            int size2 = (int) createSnapshot.size();
            for (int i = 0; i < size2; i++) {
                DynamicRealmObject dynamicRealmObject = new DynamicRealmObject(this.realm, new CheckedRow(createSnapshot.getUncheckedRow(i)));
                if (dynamicRealmObject.isValid()) {
                    function.apply(dynamicRealmObject);
                }
            }
        }
        return this;
    }
}

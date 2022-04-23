package io.realm;

import io.realm.internal.ColumnInfo;
import io.realm.internal.fields.FieldDescriptor;
/* loaded from: classes3-dex2jar.jar:io/realm/SchemaConnector.class */
public class SchemaConnector implements FieldDescriptor.SchemaProxy {
    public final RealmSchema schema;

    public SchemaConnector(RealmSchema realmSchema) {
        this.schema = realmSchema;
    }

    @Override // io.realm.internal.fields.FieldDescriptor.SchemaProxy
    public ColumnInfo getColumnInfo(String str) {
        return this.schema.getColumnInfo(str);
    }

    @Override // io.realm.internal.fields.FieldDescriptor.SchemaProxy
    public long getNativeTablePtr(String str) {
        return this.schema.getTable(str).getNativePtr();
    }

    @Override // io.realm.internal.fields.FieldDescriptor.SchemaProxy
    public boolean hasCache() {
        return this.schema.haveColumnInfo();
    }
}

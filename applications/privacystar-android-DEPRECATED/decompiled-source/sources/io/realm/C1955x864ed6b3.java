package io.realm;

import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
/* renamed from: io.realm.io_realm_sync_permissions_RealmPermissionsRealmProxy$RealmPermissionsColumnInfo */
/* loaded from: classes2-dex2jar.jar:io/realm/io_realm_sync_permissions_RealmPermissionsRealmProxy$RealmPermissionsColumnInfo.class */
final class C1955x864ed6b3 extends ColumnInfo {
    long idIndex;
    long maxColumnIndexValue;
    long permissionsIndex;

    C1955x864ed6b3(ColumnInfo columnInfo, boolean z) {
        super(columnInfo, z);
        copy(columnInfo, this);
    }

    C1955x864ed6b3(OsSchemaInfo osSchemaInfo) {
        super(2);
        OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(C1954xa165cb7.INTERNAL_CLASS_NAME);
        this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
        this.permissionsIndex = addColumnDetails("permissions", "permissions", objectSchemaInfo);
        this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
    }

    @Override // io.realm.internal.ColumnInfo
    protected final ColumnInfo copy(boolean z) {
        return new C1955x864ed6b3(this, z);
    }

    @Override // io.realm.internal.ColumnInfo
    protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
        C1955x864ed6b3 io_realm_sync_permissions_realmpermissionsrealmproxy_realmpermissionscolumninfo = (C1955x864ed6b3) columnInfo;
        C1955x864ed6b3 io_realm_sync_permissions_realmpermissionsrealmproxy_realmpermissionscolumninfo2 = (C1955x864ed6b3) columnInfo2;
        io_realm_sync_permissions_realmpermissionsrealmproxy_realmpermissionscolumninfo2.idIndex = io_realm_sync_permissions_realmpermissionsrealmproxy_realmpermissionscolumninfo.idIndex;
        io_realm_sync_permissions_realmpermissionsrealmproxy_realmpermissionscolumninfo2.permissionsIndex = io_realm_sync_permissions_realmpermissionsrealmproxy_realmpermissionscolumninfo.permissionsIndex;
        io_realm_sync_permissions_realmpermissionsrealmproxy_realmpermissionscolumninfo2.maxColumnIndexValue = io_realm_sync_permissions_realmpermissionsrealmproxy_realmpermissionscolumninfo.maxColumnIndexValue;
    }
}

package io.realm;

import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
/* renamed from: io.realm.io_realm_sync_permissions_RealmPermissionsRealmProxy$RealmPermissionsColumnInfo */
/* loaded from: classes3-dex2jar.jar:io/realm/io_realm_sync_permissions_RealmPermissionsRealmProxy$RealmPermissionsColumnInfo.class */
public final class C10990x864ed6b3 extends ColumnInfo {
    public long idIndex;
    public long maxColumnIndexValue;
    public long permissionsIndex;

    public C10990x864ed6b3(ColumnInfo columnInfo, boolean z) {
        super(columnInfo, z);
        copy(columnInfo, this);
    }

    public C10990x864ed6b3(OsSchemaInfo osSchemaInfo) {
        super(2);
        OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(C10989xa165cb7.INTERNAL_CLASS_NAME);
        this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
        this.permissionsIndex = addColumnDetails("permissions", "permissions", objectSchemaInfo);
        this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
    }

    @Override // io.realm.internal.ColumnInfo
    public final ColumnInfo copy(boolean z) {
        return new C10990x864ed6b3(this, z);
    }

    @Override // io.realm.internal.ColumnInfo
    public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
        C10990x864ed6b3 io_realm_sync_permissions_realmpermissionsrealmproxy_realmpermissionscolumninfo = (C10990x864ed6b3) columnInfo;
        C10990x864ed6b3 io_realm_sync_permissions_realmpermissionsrealmproxy_realmpermissionscolumninfo2 = (C10990x864ed6b3) columnInfo2;
        io_realm_sync_permissions_realmpermissionsrealmproxy_realmpermissionscolumninfo2.idIndex = io_realm_sync_permissions_realmpermissionsrealmproxy_realmpermissionscolumninfo.idIndex;
        io_realm_sync_permissions_realmpermissionsrealmproxy_realmpermissionscolumninfo2.permissionsIndex = io_realm_sync_permissions_realmpermissionsrealmproxy_realmpermissionscolumninfo.permissionsIndex;
        io_realm_sync_permissions_realmpermissionsrealmproxy_realmpermissionscolumninfo2.maxColumnIndexValue = io_realm_sync_permissions_realmpermissionsrealmproxy_realmpermissionscolumninfo.maxColumnIndexValue;
    }
}

package io.realm;

import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
/* renamed from: io.realm.io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo */
/* loaded from: classes3-dex2jar.jar:io/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo.class */
public final class C10985xc9bb9c53 extends ColumnInfo {
    public long maxColumnIndexValue;
    public long nameIndex;
    public long permissionsIndex;

    public C10985xc9bb9c53(ColumnInfo columnInfo, boolean z) {
        super(columnInfo, z);
        copy(columnInfo, this);
    }

    public C10985xc9bb9c53(OsSchemaInfo osSchemaInfo) {
        super(2);
        OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(C10984x3a7fdb6e.INTERNAL_CLASS_NAME);
        this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
        this.permissionsIndex = addColumnDetails("permissions", "permissions", objectSchemaInfo);
        this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
    }

    @Override // io.realm.internal.ColumnInfo
    public final ColumnInfo copy(boolean z) {
        return new C10985xc9bb9c53(this, z);
    }

    @Override // io.realm.internal.ColumnInfo
    public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
        C10985xc9bb9c53 io_realm_sync_permissions_classpermissionsrealmproxy_classpermissionscolumninfo = (C10985xc9bb9c53) columnInfo;
        C10985xc9bb9c53 io_realm_sync_permissions_classpermissionsrealmproxy_classpermissionscolumninfo2 = (C10985xc9bb9c53) columnInfo2;
        io_realm_sync_permissions_classpermissionsrealmproxy_classpermissionscolumninfo2.nameIndex = io_realm_sync_permissions_classpermissionsrealmproxy_classpermissionscolumninfo.nameIndex;
        io_realm_sync_permissions_classpermissionsrealmproxy_classpermissionscolumninfo2.permissionsIndex = io_realm_sync_permissions_classpermissionsrealmproxy_classpermissionscolumninfo.permissionsIndex;
        io_realm_sync_permissions_classpermissionsrealmproxy_classpermissionscolumninfo2.maxColumnIndexValue = io_realm_sync_permissions_classpermissionsrealmproxy_classpermissionscolumninfo.maxColumnIndexValue;
    }
}

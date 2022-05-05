package io.realm;

import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
/* renamed from: io.realm.io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo */
/* loaded from: classes2-dex2jar.jar:io/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo.class */
final class C1953xf217bf53 extends ColumnInfo {
    long idIndex;
    long maxColumnIndexValue;
    long roleIndex;

    C1953xf217bf53(ColumnInfo columnInfo, boolean z) {
        super(columnInfo, z);
        copy(columnInfo, this);
    }

    C1953xf217bf53(OsSchemaInfo osSchemaInfo) {
        super(2);
        OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(C1952xa102e1bc.INTERNAL_CLASS_NAME);
        this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
        this.roleIndex = addColumnDetails("role", "role", objectSchemaInfo);
        addBacklinkDetails(osSchemaInfo, "roles", io_realm_sync_permissions_RoleRealmProxy$ClassNameHelper.INTERNAL_CLASS_NAME, "members");
        this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
    }

    @Override // io.realm.internal.ColumnInfo
    protected final ColumnInfo copy(boolean z) {
        return new C1953xf217bf53(this, z);
    }

    @Override // io.realm.internal.ColumnInfo
    protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
        C1953xf217bf53 io_realm_sync_permissions_permissionuserrealmproxy_permissionusercolumninfo = (C1953xf217bf53) columnInfo;
        C1953xf217bf53 io_realm_sync_permissions_permissionuserrealmproxy_permissionusercolumninfo2 = (C1953xf217bf53) columnInfo2;
        io_realm_sync_permissions_permissionuserrealmproxy_permissionusercolumninfo2.idIndex = io_realm_sync_permissions_permissionuserrealmproxy_permissionusercolumninfo.idIndex;
        io_realm_sync_permissions_permissionuserrealmproxy_permissionusercolumninfo2.roleIndex = io_realm_sync_permissions_permissionuserrealmproxy_permissionusercolumninfo.roleIndex;
        io_realm_sync_permissions_permissionuserrealmproxy_permissionusercolumninfo2.maxColumnIndexValue = io_realm_sync_permissions_permissionuserrealmproxy_permissionusercolumninfo.maxColumnIndexValue;
    }
}

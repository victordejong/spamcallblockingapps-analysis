package io.realm;

import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
/* loaded from: classes3-dex2jar.jar:io/realm/io_realm_sync_permissions_RoleRealmProxy$RoleColumnInfo.class */
public final class io_realm_sync_permissions_RoleRealmProxy$RoleColumnInfo extends ColumnInfo {
    public long maxColumnIndexValue;
    public long membersIndex;
    public long nameIndex;

    public io_realm_sync_permissions_RoleRealmProxy$RoleColumnInfo(ColumnInfo columnInfo, boolean z) {
        super(columnInfo, z);
        copy(columnInfo, this);
    }

    public io_realm_sync_permissions_RoleRealmProxy$RoleColumnInfo(OsSchemaInfo osSchemaInfo) {
        super(2);
        OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(io_realm_sync_permissions_RoleRealmProxy$ClassNameHelper.INTERNAL_CLASS_NAME);
        this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
        this.membersIndex = addColumnDetails("members", "members", objectSchemaInfo);
        this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
    }

    @Override // io.realm.internal.ColumnInfo
    public final ColumnInfo copy(boolean z) {
        return new io_realm_sync_permissions_RoleRealmProxy$RoleColumnInfo(this, z);
    }

    @Override // io.realm.internal.ColumnInfo
    public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
        io_realm_sync_permissions_RoleRealmProxy$RoleColumnInfo io_realm_sync_permissions_rolerealmproxy_rolecolumninfo = (io_realm_sync_permissions_RoleRealmProxy$RoleColumnInfo) columnInfo;
        io_realm_sync_permissions_RoleRealmProxy$RoleColumnInfo io_realm_sync_permissions_rolerealmproxy_rolecolumninfo2 = (io_realm_sync_permissions_RoleRealmProxy$RoleColumnInfo) columnInfo2;
        io_realm_sync_permissions_rolerealmproxy_rolecolumninfo2.nameIndex = io_realm_sync_permissions_rolerealmproxy_rolecolumninfo.nameIndex;
        io_realm_sync_permissions_rolerealmproxy_rolecolumninfo2.membersIndex = io_realm_sync_permissions_rolerealmproxy_rolecolumninfo.membersIndex;
        io_realm_sync_permissions_rolerealmproxy_rolecolumninfo2.maxColumnIndexValue = io_realm_sync_permissions_rolerealmproxy_rolecolumninfo.maxColumnIndexValue;
    }
}

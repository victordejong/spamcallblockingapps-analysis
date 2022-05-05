package io.realm;

import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
/* loaded from: classes3-dex2jar.jar:io/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo.class */
public final class io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo extends ColumnInfo {
    public long createdAtIndex;
    public long errorMessageIndex;
    public long expiresAtIndex;
    public long matchesPropertyIndex;
    public long maxColumnIndexValue;
    public long nameIndex;
    public long queryIndex;
    public long queryParseCounterIndex;
    public long statusIndex;
    public long timeToLiveIndex;
    public long updatedAtIndex;

    public io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo(ColumnInfo columnInfo, boolean z) {
        super(columnInfo, z);
        copy(columnInfo, this);
    }

    public io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo(OsSchemaInfo osSchemaInfo) {
        super(10);
        OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(io_realm_sync_SubscriptionRealmProxy$ClassNameHelper.INTERNAL_CLASS_NAME);
        this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
        this.statusIndex = addColumnDetails("status", "status", objectSchemaInfo);
        this.errorMessageIndex = addColumnDetails("errorMessage", "error_message", objectSchemaInfo);
        this.matchesPropertyIndex = addColumnDetails("matchesProperty", "matches_property", objectSchemaInfo);
        this.queryIndex = addColumnDetails("query", "query", objectSchemaInfo);
        this.queryParseCounterIndex = addColumnDetails("queryParseCounter", "query_parse_counter", objectSchemaInfo);
        this.createdAtIndex = addColumnDetails("createdAt", "created_at", objectSchemaInfo);
        this.updatedAtIndex = addColumnDetails("updatedAt", "updated_at", objectSchemaInfo);
        this.expiresAtIndex = addColumnDetails("expiresAt", "expires_at", objectSchemaInfo);
        this.timeToLiveIndex = addColumnDetails("timeToLive", "time_to_live", objectSchemaInfo);
        this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
    }

    @Override // io.realm.internal.ColumnInfo
    public final ColumnInfo copy(boolean z) {
        return new io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo(this, z);
    }

    @Override // io.realm.internal.ColumnInfo
    public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
        io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo = (io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo) columnInfo;
        io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2 = (io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo) columnInfo2;
        io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2.nameIndex = io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo.nameIndex;
        io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2.statusIndex = io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo.statusIndex;
        io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2.errorMessageIndex = io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo.errorMessageIndex;
        io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2.matchesPropertyIndex = io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo.matchesPropertyIndex;
        io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2.queryIndex = io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo.queryIndex;
        io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2.queryParseCounterIndex = io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo.queryParseCounterIndex;
        io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2.createdAtIndex = io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo.createdAtIndex;
        io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2.updatedAtIndex = io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo.updatedAtIndex;
        io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2.expiresAtIndex = io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo.expiresAtIndex;
        io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2.timeToLiveIndex = io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo.timeToLiveIndex;
        io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2.maxColumnIndexValue = io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo.maxColumnIndexValue;
    }
}

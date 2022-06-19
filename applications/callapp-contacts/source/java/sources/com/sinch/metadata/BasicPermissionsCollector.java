package com.sinch.metadata;

import android.content.Context;
import com.sinch.metadata.collector.MetadataCollector;
import com.sinch.metadata.model.PermissionsMetadata;
import com.sinch.verification.utils.permission.Permission;
import com.sinch.verification.utils.permission.PermissionUtilsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\f\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\b"}, m4298d2 = {"Lcom/sinch/metadata/BasicPermissionsCollector;", "Lcom/sinch/metadata/collector/MetadataCollector;", "Lcom/sinch/metadata/model/PermissionsMetadata;", "Lcom/sinch/metadata/collector/PermissionsCollector;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "collect", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/BasicPermissionsCollector.class */
public final class BasicPermissionsCollector implements MetadataCollector<PermissionsMetadata> {
    private final Context context;

    public BasicPermissionsCollector(Context context) {
        C18524p.m3841c(context, "context");
        this.context = context;
    }

    @Override // com.sinch.metadata.collector.MetadataCollector
    public final PermissionsMetadata collect() {
        return new PermissionsMetadata(PermissionUtilsKt.isPermissionGranted(this.context, Permission.READ_PHONE_STATE), PermissionUtilsKt.isPermissionGranted(this.context, Permission.READ_CALL_LOG), PermissionUtilsKt.isPermissionGranted(this.context, Permission.CALL_PHONE), PermissionUtilsKt.isPermissionGranted(this.context, Permission.READ_SMS), PermissionUtilsKt.isPermissionGranted(this.context, Permission.RECEIVE_SMS), PermissionUtilsKt.isPermissionGranted(this.context, Permission.ACCESS_NETWORK_STATE), PermissionUtilsKt.isPermissionGranted(this.context, Permission.ACCESS_COARSE_LOCATION) || PermissionUtilsKt.isPermissionGranted(this.context, Permission.ACCESS_FINE_LOCATION));
    }
}

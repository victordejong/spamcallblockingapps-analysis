package com.sinch.metadata.collector;

import android.content.Context;
import com.sinch.logging.LogKt;
import com.sinch.logging.Logger;
import com.sinch.verification.utils.permission.Permission;
import com.sinch.verification.utils.permission.PermissionUtils;
import com.sinch.verification.utils.permission.PermissionUtilsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\b&\u0018��*\u0004\b��\u0010\u00012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\r\u0010\u0012\u001a\u0004\u0018\u00018��¢\u0006\u0002\u0010\u0013J\u000f\u0010\u0014\u001a\u0004\u0018\u00018��H&¢\u0006\u0002\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u0004X\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u000bX\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0015"}, d2 = {"Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;", "Metadata", "Lcom/sinch/metadata/collector/MetadataCollector;", "context", "Landroid/content/Context;", "permission", "Lcom/sinch/verification/utils/permission/Permission;", "(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;)V", "getContext", "()Landroid/content/Context;", "logger", "Lcom/sinch/logging/Logger;", "getLogger", "()Lcom/sinch/logging/Logger;", "metadataDescriptiveName", "", "getMetadataDescriptiveName", "()Ljava/lang/String;", "collect", "()Ljava/lang/Object;", "collectWithPermissionsGranted", "metadata-collector_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/collector/PermissionProtectedMetadataCollector.class */
public abstract class PermissionProtectedMetadataCollector<Metadata> implements MetadataCollector<Metadata> {
    private final Context context;
    private final Logger logger = LogKt.logger(this);
    private final Permission permission;

    public PermissionProtectedMetadataCollector(Context context, Permission permission) {
        p.c(context, "context");
        p.c(permission, "permission");
        this.context = context;
        this.permission = permission;
    }

    @Override // com.sinch.metadata.collector.MetadataCollector
    public final Metadata collect() {
        if (!PermissionUtilsKt.isPermissionGranted(this.context, this.permission)) {
            Logger.DefaultImpls.warn$default(this.logger, PermissionUtils.INSTANCE.permissionMetadataWarning(this.permission, getMetadataDescriptiveName()), null, 2, null);
        }
        return (Metadata) PermissionUtilsKt.runIfPermissionGranted$default(this.context, this.permission, new PermissionProtectedMetadataCollector$collect$1(this), null, 4, null);
    }

    public abstract Metadata collectWithPermissionsGranted();

    protected final Context getContext() {
        return this.context;
    }

    protected final Logger getLogger() {
        return this.logger;
    }

    public abstract String getMetadataDescriptiveName();
}

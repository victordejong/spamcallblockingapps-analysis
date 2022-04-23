package com.sinch.verification.utils.permission;

import android.content.Context;
import androidx.core.content.c;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\n¨\u0006\r"}, d2 = {"Lcom/sinch/verification/utils/permission/PermissionUtils;", "", "()V", "isPermissionGranted", "", "context", "Landroid/content/Context;", "permission", "Lcom/sinch/verification/utils/permission/Permission;", "permissionMetadataWarning", "", "missingPermission", "metadataName", "utils_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/utils/permission/PermissionUtils.class */
public final class PermissionUtils {
    public static final PermissionUtils INSTANCE = new PermissionUtils();

    private PermissionUtils() {
    }

    public final boolean isPermissionGranted(Context context, Permission permission) {
        p.c(context, "context");
        p.c(permission, "permission");
        return c.a(context, permission.getAndroidValue()) == 0;
    }

    public final String permissionMetadataWarning(Permission missingPermission, String metadataName) {
        p.c(missingPermission, "missingPermission");
        p.c(metadataName, "metadataName");
        return "Missing " + missingPermission + " to collect metadata: " + metadataName;
    }
}

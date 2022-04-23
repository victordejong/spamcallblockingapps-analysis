package com.sinch.verification.utils.permission;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\u0012\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u001a?\u0010\u0007\u001a\u0004\u0018\u0001H\b\"\u0004\b��\u0010\b*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\b0\n2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\u0010\r\"\u000e\u0010��\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n��¨\u0006\u000e"}, d2 = {"PermissionsUtilsMockkName", "", "isPermissionGranted", "", "Landroid/content/Context;", "permission", "Lcom/sinch/verification/utils/permission/Permission;", "runIfPermissionGranted", "T", "grantedBlock", "Lkotlin/Function0;", "notGrantedBlock", "", "(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "utils_productionRelease"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/utils/permission/PermissionUtilsKt.class */
public final class PermissionUtilsKt {
    public static final String PermissionsUtilsMockkName = "com.sinch.verification.utils.permission.PermissionUtilsKt";

    public static final boolean isPermissionGranted(Context isPermissionGranted, Permission permission) {
        p.c(isPermissionGranted, "$this$isPermissionGranted");
        p.c(permission, "permission");
        return PermissionUtils.INSTANCE.isPermissionGranted(isPermissionGranted, permission);
    }

    public static final <T> T runIfPermissionGranted(Context runIfPermissionGranted, Permission permission, Function0<? extends T> grantedBlock, Function0<v> notGrantedBlock) {
        p.c(runIfPermissionGranted, "$this$runIfPermissionGranted");
        p.c(permission, "permission");
        p.c(grantedBlock, "grantedBlock");
        p.c(notGrantedBlock, "notGrantedBlock");
        if (isPermissionGranted(runIfPermissionGranted, permission)) {
            return (T) grantedBlock.invoke();
        }
        notGrantedBlock.invoke();
        return null;
    }

    public static /* synthetic */ Object runIfPermissionGranted$default(Context context, Permission permission, Function0 function0, Function0 function02, int i, Object obj) {
        if ((i & 4) != 0) {
            function02 = PermissionUtilsKt$runIfPermissionGranted$1.INSTANCE;
        }
        return runIfPermissionGranted(context, permission, function0, function02);
    }
}

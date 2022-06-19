.class public final Lcom/sinch/verification/utils/permission/PermissionUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\u0012\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u001a?\u0010\u0007\u001a\u0004\u0018\u0001H\u0008\"\u0004\u0008\u0000\u0010\u0008*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00080\n2\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\n\u00a2\u0006\u0002\u0010\r\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "PermissionsUtilsMockkName",
        "",
        "isPermissionGranted",
        "",
        "Landroid/content/Context;",
        "permission",
        "Lcom/sinch/verification/utils/permission/Permission;",
        "runIfPermissionGranted",
        "T",
        "grantedBlock",
        "Lkotlin/Function0;",
        "notGrantedBlock",
        "",
        "(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "utils_productionRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final PermissionsUtilsMockkName:Ljava/lang/String; = "com.sinch.verification.utils.permission.PermissionUtilsKt"


# direct methods
.method public static final isPermissionGranted(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;)Z
    .locals 1

    const-string v0, "$this$isPermissionGranted"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/sinch/verification/utils/permission/PermissionUtils;->INSTANCE:Lcom/sinch/verification/utils/permission/PermissionUtils;

    invoke-virtual {v0, p0, p1}, Lcom/sinch/verification/utils/permission/PermissionUtils;->isPermissionGranted(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;)Z

    move-result p0

    return p0
.end method

.method public static final runIfPermissionGranted(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/sinch/verification/utils/permission/Permission;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/v;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "$this$runIfPermissionGranted"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantedBlock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notGrantedBlock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {p0, p1}, Lcom/sinch/verification/utils/permission/PermissionUtilsKt;->isPermissionGranted(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 67
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic runIfPermissionGranted$default(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 64
    sget-object p3, Lcom/sinch/verification/utils/permission/PermissionUtilsKt$runIfPermissionGranted$1;->INSTANCE:Lcom/sinch/verification/utils/permission/PermissionUtilsKt$runIfPermissionGranted$1;

    check-cast p3, Lkotlin/jvm/functions/Function0;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/sinch/verification/utils/permission/PermissionUtilsKt;->runIfPermissionGranted(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

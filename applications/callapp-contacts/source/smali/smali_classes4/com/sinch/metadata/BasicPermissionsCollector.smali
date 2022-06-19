.class public final Lcom/sinch/metadata/BasicPermissionsCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/metadata/collector/MetadataCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sinch/metadata/collector/MetadataCollector<",
        "Lcom/sinch/metadata/model/PermissionsMetadata;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sinch/metadata/BasicPermissionsCollector;",
        "Lcom/sinch/metadata/collector/MetadataCollector;",
        "Lcom/sinch/metadata/model/PermissionsMetadata;",
        "Lcom/sinch/metadata/collector/PermissionsCollector;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "collect",
        "metadata-collector_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/metadata/BasicPermissionsCollector;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final collect()Lcom/sinch/metadata/model/PermissionsMetadata;
    .locals 9

    .line 16
    new-instance v8, Lcom/sinch/metadata/model/PermissionsMetadata;

    .line 17
    iget-object v0, p0, Lcom/sinch/metadata/BasicPermissionsCollector;->context:Landroid/content/Context;

    sget-object v1, Lcom/sinch/verification/utils/permission/Permission;->READ_PHONE_STATE:Lcom/sinch/verification/utils/permission/Permission;

    invoke-static {v0, v1}, Lcom/sinch/verification/utils/permission/PermissionUtilsKt;->isPermissionGranted(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;)Z

    move-result v1

    .line 18
    iget-object v0, p0, Lcom/sinch/metadata/BasicPermissionsCollector;->context:Landroid/content/Context;

    sget-object v2, Lcom/sinch/verification/utils/permission/Permission;->READ_CALL_LOG:Lcom/sinch/verification/utils/permission/Permission;

    invoke-static {v0, v2}, Lcom/sinch/verification/utils/permission/PermissionUtilsKt;->isPermissionGranted(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;)Z

    move-result v2

    .line 19
    iget-object v0, p0, Lcom/sinch/metadata/BasicPermissionsCollector;->context:Landroid/content/Context;

    sget-object v3, Lcom/sinch/verification/utils/permission/Permission;->CALL_PHONE:Lcom/sinch/verification/utils/permission/Permission;

    invoke-static {v0, v3}, Lcom/sinch/verification/utils/permission/PermissionUtilsKt;->isPermissionGranted(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;)Z

    move-result v3

    .line 20
    iget-object v0, p0, Lcom/sinch/metadata/BasicPermissionsCollector;->context:Landroid/content/Context;

    sget-object v4, Lcom/sinch/verification/utils/permission/Permission;->READ_SMS:Lcom/sinch/verification/utils/permission/Permission;

    invoke-static {v0, v4}, Lcom/sinch/verification/utils/permission/PermissionUtilsKt;->isPermissionGranted(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;)Z

    move-result v4

    .line 21
    iget-object v0, p0, Lcom/sinch/metadata/BasicPermissionsCollector;->context:Landroid/content/Context;

    sget-object v5, Lcom/sinch/verification/utils/permission/Permission;->RECEIVE_SMS:Lcom/sinch/verification/utils/permission/Permission;

    invoke-static {v0, v5}, Lcom/sinch/verification/utils/permission/PermissionUtilsKt;->isPermissionGranted(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;)Z

    move-result v5

    .line 22
    iget-object v0, p0, Lcom/sinch/metadata/BasicPermissionsCollector;->context:Landroid/content/Context;

    sget-object v6, Lcom/sinch/verification/utils/permission/Permission;->ACCESS_NETWORK_STATE:Lcom/sinch/verification/utils/permission/Permission;

    invoke-static {v0, v6}, Lcom/sinch/verification/utils/permission/PermissionUtilsKt;->isPermissionGranted(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;)Z

    move-result v6

    .line 23
    iget-object v0, p0, Lcom/sinch/metadata/BasicPermissionsCollector;->context:Landroid/content/Context;

    sget-object v7, Lcom/sinch/verification/utils/permission/Permission;->ACCESS_COARSE_LOCATION:Lcom/sinch/verification/utils/permission/Permission;

    invoke-static {v0, v7}, Lcom/sinch/verification/utils/permission/PermissionUtilsKt;->isPermissionGranted(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sinch/metadata/BasicPermissionsCollector;->context:Landroid/content/Context;

    .line 24
    sget-object v7, Lcom/sinch/verification/utils/permission/Permission;->ACCESS_FINE_LOCATION:Lcom/sinch/verification/utils/permission/Permission;

    .line 23
    invoke-static {v0, v7}, Lcom/sinch/verification/utils/permission/PermissionUtilsKt;->isPermissionGranted(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v7, 0x1

    :goto_1
    move-object v0, v8

    .line 16
    invoke-direct/range {v0 .. v7}, Lcom/sinch/metadata/model/PermissionsMetadata;-><init>(ZZZZZZZ)V

    return-object v8
.end method

.method public final bridge synthetic collect()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/sinch/metadata/BasicPermissionsCollector;->collect()Lcom/sinch/metadata/model/PermissionsMetadata;

    move-result-object v0

    return-object v0
.end method

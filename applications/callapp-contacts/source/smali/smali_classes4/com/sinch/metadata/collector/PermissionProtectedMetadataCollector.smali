.class public abstract Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/metadata/collector/MetadataCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Metadata:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sinch/metadata/collector/MetadataCollector<",
        "TMetadata;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\r\u0010\u0012\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\u0013J\u000f\u0010\u0014\u001a\u0004\u0018\u00018\u0000H&\u00a2\u0006\u0002\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u0004X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000bX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;",
        "Metadata",
        "Lcom/sinch/metadata/collector/MetadataCollector;",
        "context",
        "Landroid/content/Context;",
        "permission",
        "Lcom/sinch/verification/utils/permission/Permission;",
        "(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;)V",
        "getContext",
        "()Landroid/content/Context;",
        "logger",
        "Lcom/sinch/logging/Logger;",
        "getLogger",
        "()Lcom/sinch/logging/Logger;",
        "metadataDescriptiveName",
        "",
        "getMetadataDescriptiveName",
        "()Ljava/lang/String;",
        "collect",
        "()Ljava/lang/Object;",
        "collectWithPermissionsGranted",
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

.field private final logger:Lcom/sinch/logging/Logger;

.field private final permission:Lcom/sinch/verification/utils/permission/Permission;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;->permission:Lcom/sinch/verification/utils/permission/Permission;

    .line 23
    invoke-static {p0}, Lcom/sinch/logging/LogKt;->logger(Ljava/lang/Object;)Lcom/sinch/logging/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;->logger:Lcom/sinch/logging/Logger;

    return-void
.end method


# virtual methods
.method public final collect()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMetadata;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;->permission:Lcom/sinch/verification/utils/permission/Permission;

    invoke-static {v0, v1}, Lcom/sinch/verification/utils/permission/PermissionUtilsKt;->isPermissionGranted(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;->logger:Lcom/sinch/logging/Logger;

    .line 33
    sget-object v1, Lcom/sinch/verification/utils/permission/PermissionUtils;->INSTANCE:Lcom/sinch/verification/utils/permission/PermissionUtils;

    .line 34
    iget-object v2, p0, Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;->permission:Lcom/sinch/verification/utils/permission/Permission;

    .line 35
    invoke-virtual {p0}, Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;->getMetadataDescriptiveName()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {v1, v2, v3}, Lcom/sinch/verification/utils/permission/PermissionUtils;->permissionMetadataWarning(Lcom/sinch/verification/utils/permission/Permission;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 32
    invoke-static {v0, v1, v3, v2, v3}, Lcom/sinch/logging/Logger$DefaultImpls;->warn$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 39
    :cond_0
    iget-object v4, p0, Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;->permission:Lcom/sinch/verification/utils/permission/Permission;

    new-instance v0, Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector$collect$1;

    move-object v1, p0

    check-cast v1, Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;

    invoke-direct {v0, v1}, Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector$collect$1;-><init>(Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/sinch/verification/utils/permission/PermissionUtilsKt;->runIfPermissionGranted$default(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract collectWithPermissionsGranted()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMetadata;"
        }
    .end annotation
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected final getLogger()Lcom/sinch/logging/Logger;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;->logger:Lcom/sinch/logging/Logger;

    return-object v0
.end method

.method public abstract getMetadataDescriptiveName()Ljava/lang/String;
.end method

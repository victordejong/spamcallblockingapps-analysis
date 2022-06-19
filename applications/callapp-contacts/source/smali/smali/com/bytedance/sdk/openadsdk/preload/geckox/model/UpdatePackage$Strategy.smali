.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Strategy"
.end annotation


# instance fields
.field private deleteIfFail:Z
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "del_if_download_failed"
    .end annotation
.end field

.field private deleteOldPackageBeforeDownload:Z
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "del_old_pkg_before_download"
    .end annotation
.end field

.field private needUnzip:Z
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "need_unzip"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 322
    :goto_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;->deleteIfFail:Z

    return-void
.end method


# virtual methods
.method public isDeleteIfFail()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;->deleteIfFail:Z

    return v0
.end method

.method public isDeleteOldPackageBeforeDownload()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;->deleteOldPackageBeforeDownload:Z

    return v0
.end method

.method public isNeedUnzip()Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;->needUnzip:Z

    return v0
.end method

.method public setDeleteIfFail(Z)V
    .locals 0

    .line 330
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;->deleteIfFail:Z

    return-void
.end method

.method public setDeleteOldPackageBeforeDownload(Z)V
    .locals 0

    .line 338
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;->deleteOldPackageBeforeDownload:Z

    return-void
.end method

.method public setNeedUnzip(Z)V
    .locals 0

    .line 346
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;->needUnzip:Z

    return-void
.end method

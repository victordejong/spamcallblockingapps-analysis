.class public Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onWindowVisibilityChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 26
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

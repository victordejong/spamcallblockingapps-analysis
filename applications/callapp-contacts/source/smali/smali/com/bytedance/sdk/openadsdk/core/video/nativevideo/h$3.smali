.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;Landroid/content/Context;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 0

    return-void
.end method

.method private b()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 266
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 267
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->b()V

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .line 252
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 253
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->a()V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .line 272
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 274
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$3;->b()V

    return-void
.end method

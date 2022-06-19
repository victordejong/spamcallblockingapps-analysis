.class final Lcom/pubmatic/sdk/openwrap/core/POBRenderer$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/banner/ui/POBBannerRenderer$RendererBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/openwrap/core/POBRenderer;->getBannerRenderer(Landroid/content/Context;I)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/core/POBRenderer$a;->a:Landroid/content/Context;

    iput p2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRenderer$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;I)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;
    .locals 2

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBAdDescriptor;->isVideo()Z

    move-result v0

    const-string v1, "inline"

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/pubmatic/sdk/openwrap/core/POBRenderer$a;->a:Landroid/content/Context;

    iget v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRenderer$a;->b:I

    invoke-static {p2, p1, v1, v0}, Lcom/pubmatic/sdk/openwrap/core/POBRenderer;->a(Landroid/content/Context;Lcom/pubmatic/sdk/common/base/POBAdDescriptor;Ljava/lang/String;I)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBAdDescriptor;->getRefreshInterval()I

    move-result p1

    const/16 v0, 0xf

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRenderer$a;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2}, Lcom/pubmatic/sdk/openwrap/core/POBRenderer;->a(Landroid/content/Context;Ljava/lang/String;II)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    move-result-object p1

    return-object p1
.end method

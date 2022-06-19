.class Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c$a;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c$a;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;

    iget-object v0, v0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->g(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c$a;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;

    iget-object v0, v0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->g(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;

    move-result-object v0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/ui/POBBannerRendering;->prepareToDetach()V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c$a;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;

    iget-object v0, v0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$c;->a:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->h(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V

    return-void
.end method

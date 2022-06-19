.class Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->a(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer$a;->b:Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;

    iput-object p2, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer$a;->a:Landroid/view/View;

    instance-of v1, v0, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->setBaseContext(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer$a;->a:Landroid/view/View;

    instance-of v1, v0, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    iget-object v1, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer$a;->b:Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;

    invoke-static {v1}, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->a(Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->setBaseContext(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer$a;->b:Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/interstitial/ui/POBInterstitialRenderer;->onAdInteractionStopped()V

    return-void
.end method

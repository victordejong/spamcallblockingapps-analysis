.class Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/interstitialvastadapter/VASTActivity;

.field final synthetic b:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

.field final synthetic c:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;


# direct methods
.method constructor <init>(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;Lcom/verizon/ads/interstitialvastadapter/VASTActivity;Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;->c:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    iput-object p2, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;->a:Lcom/verizon/ads/interstitialvastadapter/VASTActivity;

    iput-object p3, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;->b:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;->c:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    invoke-static {v0}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->a(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;)Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    move-result-object v0

    sget-object v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->SHOWING:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;->c:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    invoke-static {v0}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->a(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;)Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    move-result-object v0

    sget-object v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;->SHOWN:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    .line 331
    invoke-static {}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->e()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "adapter not in shown or showing state; aborting show."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;->c:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    invoke-virtual {v0}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->b()V

    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;->c:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    invoke-static {v0}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;->b(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;)Lcom/verizon/ads/vastcontroller/VASTController;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;->a:Lcom/verizon/ads/interstitialvastadapter/VASTActivity;

    invoke-virtual {v1}, Lcom/verizon/ads/interstitialvastadapter/VASTActivity;->a()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2$1;

    invoke-direct {v2, p0}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2$1;-><init>(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/verizon/ads/vastcontroller/VASTController;->attach(Landroid/view/ViewGroup;Lcom/verizon/ads/vastcontroller/VASTController$AttachListener;)V

    return-void
.end method

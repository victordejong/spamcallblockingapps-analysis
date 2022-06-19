.class Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic d:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

.field final synthetic e:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;


# direct methods
.method constructor <init>(Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$3;->e:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    iput-object p2, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$3;->a:Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;

    iput-object p3, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$3;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$3;->c:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object p5, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$3;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 446
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$3;->e:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    invoke-static {v0}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->a(Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;)Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    move-result-object v0

    sget-object v1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->SHOWING:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$3;->e:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    invoke-static {v0}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->a(Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;)Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    move-result-object v0

    sget-object v1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->SHOWN:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    .line 447
    invoke-static {}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->d()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "adapter not in shown or showing state; aborting show."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$3;->a:Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;

    invoke-virtual {v0}, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->finish()V

    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$3;->a:Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;

    invoke-virtual {v0}, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$3;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$3;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/support/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$3;->e:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    sget-object v1, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;->SHOWN:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    invoke-static {v0, v1}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;->a(Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;)Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$AdapterState;

    .line 456
    iget-object v0, p0, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter$3;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    if-eqz v0, :cond_1

    .line 457
    invoke-interface {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;->onShown()V

    :cond_1
    return-void
.end method

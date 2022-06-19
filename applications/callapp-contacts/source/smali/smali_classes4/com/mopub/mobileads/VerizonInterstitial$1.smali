.class final Lcom/mopub/mobileads/VerizonInterstitial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VerizonInterstitial;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/VerizonInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VerizonInterstitial;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$1;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/mopub/mobileads/VerizonInterstitial$1;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VerizonInterstitial;->a(Lcom/mopub/mobileads/VerizonInterstitial;)Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/mopub/mobileads/VerizonInterstitial$1;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/VerizonInterstitial;->a(Lcom/mopub/mobileads/VerizonInterstitial;)Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VerizonInterstitial$1;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    invoke-static {v1}, Lcom/mopub/mobileads/VerizonInterstitial;->b(Lcom/mopub/mobileads/VerizonInterstitial;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->show(Landroid/content/Context;)V

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VerizonInterstitial$1;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/mobileads/VerizonInterstitial;->a(Lcom/mopub/mobileads/VerizonInterstitial;Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;Lcom/mopub/mobileads/MoPubErrorCode;Z)V

    return-void
.end method

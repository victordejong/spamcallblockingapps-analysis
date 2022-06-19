.class final Lcom/mopub/mobileads/VerizonInterstitial$b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VerizonInterstitial$b;->onClicked(Lcom/verizon/ads/interstitialplacement/InterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/VerizonInterstitial$b;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VerizonInterstitial$b;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$b$4;->a:Lcom/mopub/mobileads/VerizonInterstitial$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/mopub/mobileads/VerizonInterstitial$b$4;->a:Lcom/mopub/mobileads/VerizonInterstitial$b;

    iget-object v0, v0, Lcom/mopub/mobileads/VerizonInterstitial$b;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/VerizonInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/mopub/mobileads/VerizonInterstitial$b$4;->a:Lcom/mopub/mobileads/VerizonInterstitial$b;

    iget-object v0, v0, Lcom/mopub/mobileads/VerizonInterstitial$b;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/VerizonInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.class final Lcom/mopub/mobileads/VerizonInterstitial$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VerizonInterstitial$a;->onError(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;Lcom/verizon/ads/ErrorInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/ErrorInfo;

.field final synthetic b:Lcom/mopub/mobileads/VerizonInterstitial$a;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VerizonInterstitial$a;Lcom/verizon/ads/ErrorInfo;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/mopub/mobileads/VerizonInterstitial$a$2;->b:Lcom/mopub/mobileads/VerizonInterstitial$a;

    iput-object p2, p0, Lcom/mopub/mobileads/VerizonInterstitial$a$2;->a:Lcom/verizon/ads/ErrorInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/mopub/mobileads/VerizonInterstitial$a$2;->b:Lcom/mopub/mobileads/VerizonInterstitial$a;

    iget-object v0, v0, Lcom/mopub/mobileads/VerizonInterstitial$a;->a:Lcom/mopub/mobileads/VerizonInterstitial;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    iget-object v2, p0, Lcom/mopub/mobileads/VerizonInterstitial$a$2;->a:Lcom/verizon/ads/ErrorInfo;

    invoke-static {v2}, Lcom/mopub/mobileads/VerizonUtils;->convertErrorInfoToMoPub(Lcom/verizon/ads/ErrorInfo;)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/mobileads/VerizonInterstitial;->a(Lcom/mopub/mobileads/VerizonInterstitial;Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;Lcom/mopub/mobileads/MoPubErrorCode;Z)V

    return-void
.end method

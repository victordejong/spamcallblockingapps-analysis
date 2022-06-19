.class final Lcom/mopub/mobileads/FacebookInterstitial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/FacebookInterstitial;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/FacebookInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/FacebookInterstitial;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/mopub/mobileads/FacebookInterstitial$1;->a:Lcom/mopub/mobileads/FacebookInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 83
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial$1;->a:Lcom/mopub/mobileads/FacebookInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/FacebookInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial$1;->a:Lcom/mopub/mobileads/FacebookInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/FacebookInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/FacebookInterstitial;->c()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Expiring unused Facebook Interstitial ad due to Facebook\'s 60-minute expiration policy."

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial$1;->a:Lcom/mopub/mobileads/FacebookInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/FacebookInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->FULLSCREEN_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 87
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial$1;->a:Lcom/mopub/mobileads/FacebookInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/FacebookInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/FacebookInterstitial;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 88
    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v4, v3, v2

    .line 87
    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial$1;->a:Lcom/mopub/mobileads/FacebookInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/FacebookInterstitial;->onInvalidate()V

    :cond_0
    return-void
.end method

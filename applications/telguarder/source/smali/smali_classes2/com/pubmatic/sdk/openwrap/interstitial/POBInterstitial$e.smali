.class Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/ui/POBVideoAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$e;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$e;-><init>(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    return-void
.end method


# virtual methods
.method public onVideoAdEvent(Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interstitial Video Ad event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "POBInterstitial"

    invoke-static {v2, v0, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$e;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->q(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->COMPLETE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$e;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-static {p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;->q(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBVideoListener;

    move-result-object p1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$e;->a:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBVideoListener;->onVideoPlaybackCompleted(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitial;)V

    :cond_0
    return-void
.end method

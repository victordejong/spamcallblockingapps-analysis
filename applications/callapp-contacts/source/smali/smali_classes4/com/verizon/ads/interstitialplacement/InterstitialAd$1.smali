.class Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/interstitialplacement/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/interstitialplacement/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/verizon/ads/interstitialplacement/InterstitialAd;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLeftApplication()V
    .locals 2

    .line 138
    invoke-static {}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$5;

    invoke-direct {v1, p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$5;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClicked()V
    .locals 5

    const/4 v0, 0x3

    .line 117
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->c()Lcom/verizon/ads/Logger;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    invoke-static {v4}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->a(Lcom/verizon/ads/interstitialplacement/InterstitialAd;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Clicked on ad for placement Id \'%s\'"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 121
    :cond_0
    invoke-static {}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$4;

    invoke-direct {v2, p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$4;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    .line 1583
    iget-boolean v2, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->c:Z

    if-nez v2, :cond_1

    .line 1587
    iput-boolean v1, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->c:Z

    .line 1590
    invoke-virtual {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->a()V

    .line 1592
    new-instance v1, Lcom/verizon/ads/support/ClickEvent;

    iget-object v0, v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b:Lcom/verizon/ads/AdSession;

    invoke-direct {v1, v0}, Lcom/verizon/ads/support/ClickEvent;-><init>(Lcom/verizon/ads/AdSession;)V

    const-string v0, "com.verizon.ads.click"

    invoke-static {v0, v1}, Lcom/verizon/ads/events/Events;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onClosed()V
    .locals 2

    .line 100
    invoke-static {}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$3;

    invoke-direct {v1, p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$3;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Lcom/verizon/ads/ErrorInfo;)V
    .locals 2

    .line 64
    invoke-static {}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$1;

    invoke-direct {v1, p0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$1;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;Lcom/verizon/ads/ErrorInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 153
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->c()Lcom/verizon/ads/Logger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "Received event from: \'%s\' with id: \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 157
    :cond_0
    invoke-static {}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$6;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShown()V
    .locals 4

    const/4 v0, 0x3

    .line 79
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->c()Lcom/verizon/ads/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    invoke-static {v3}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->a(Lcom/verizon/ads/interstitialplacement/InterstitialAd;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Ad shown for placement Id \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 83
    :cond_0
    invoke-static {}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$2;

    invoke-direct {v1, p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1$2;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    invoke-virtual {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->a()V

    return-void
.end method

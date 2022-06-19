.class Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTEndCardViewabilityListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/vastcontroller/VASTVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VASTEndCardViewabilityListener"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verizon/ads/vastcontroller/VASTVideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V
    .locals 1

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTEndCardViewabilityListener;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onViewableChanged(Z)V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTEndCardViewabilityListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 412
    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d(Lcom/verizon/ads/vastcontroller/VASTVideoView;)Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    move-result-object p1

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->trackingEvents:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 413
    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d(Lcom/verizon/ads/vastcontroller/VASTVideoView;)Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    move-result-object p1

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->trackingEvents:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 416
    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d(Lcom/verizon/ads/vastcontroller/VASTVideoView;)Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    move-result-object p1

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->creativeView:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 418
    invoke-static {v0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTVideoView;Ljava/util/List;)V

    :cond_1
    return-void
.end method

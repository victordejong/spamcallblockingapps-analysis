.class Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTVideoViewabilityListener;
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
    name = "VASTVideoViewabilityListener"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verizon/ads/vastcontroller/VASTVideoView;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verizon/ads/VideoPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;Lcom/verizon/ads/VideoPlayer;)V
    .locals 1

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTVideoViewabilityListener;->a:Z

    .line 348
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTVideoViewabilityListener;->b:Ljava/lang/ref/WeakReference;

    .line 349
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTVideoViewabilityListener;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onViewableChanged(Z)V
    .locals 4

    .line 356
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTVideoViewabilityListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/VideoPlayer;

    .line 357
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTVideoViewabilityListener;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/vastcontroller/VASTVideoView;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 363
    sget-object v2, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->creativeView:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    .line 364
    invoke-static {v1, v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTVideoView;Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v2

    .line 366
    invoke-static {v1, v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTVideoView;Ljava/util/List;)V

    .line 368
    invoke-static {v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b(Lcom/verizon/ads/vastcontroller/VASTVideoView;)Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 370
    invoke-static {v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b(Lcom/verizon/ads/vastcontroller/VASTVideoView;)Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    move-result-object v2

    iget-object v2, v2, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object v2, v2, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v3, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->creativeView:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    .line 371
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 373
    invoke-static {v1, v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTVideoView;Ljava/util/List;)V

    :cond_1
    if-nez p1, :cond_2

    .line 377
    invoke-interface {v0}, Lcom/verizon/ads/VideoPlayer;->getState()I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    const/4 p1, 0x1

    .line 378
    iput-boolean p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTVideoViewabilityListener;->a:Z

    .line 379
    invoke-interface {v0}, Lcom/verizon/ads/VideoPlayer;->pause()V

    return-void

    .line 381
    :cond_2
    iget-boolean p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTVideoViewabilityListener;->a:Z

    if-eqz p1, :cond_3

    .line 383
    invoke-static {v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->c(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    const/4 p1, 0x0

    .line 386
    iput-boolean p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTVideoViewabilityListener;->a:Z

    :cond_3
    :goto_0
    return-void
.end method

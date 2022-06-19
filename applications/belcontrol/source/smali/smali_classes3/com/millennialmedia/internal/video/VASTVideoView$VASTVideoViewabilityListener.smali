.class public Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VASTVideoViewabilityListener"
.end annotation


# instance fields
.field public didPause:Z

.field public mmVideoViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/millennialmedia/internal/video/MMVideoView;",
            ">;"
        }
    .end annotation
.end field

.field public vastVideoViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/millennialmedia/internal/video/VASTVideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;->didPause:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;->vastVideoViewRef:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;->mmVideoViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onViewableChanged(Z)V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;->mmVideoViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;->vastVideoViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/video/VASTVideoView;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    sget-object v3, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->creativeView:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-static {v1, v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1300(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1400(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;I)V

    invoke-static {v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1500(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$Creative;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1500(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$Creative;

    move-result-object v4

    iget-object v4, v4, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v4, v4, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v1, v3, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1400(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;I)V

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;->didPause:Z

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->pause()V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;->didPause:Z

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;->didPause:Z

    :cond_3
    :goto_0
    return-void
.end method

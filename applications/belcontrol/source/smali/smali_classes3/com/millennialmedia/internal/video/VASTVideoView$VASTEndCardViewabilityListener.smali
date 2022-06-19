.class public Lcom/millennialmedia/internal/video/VASTVideoView$VASTEndCardViewabilityListener;
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
    name = "VASTEndCardViewabilityListener"
.end annotation


# instance fields
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
.method public constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTEndCardViewabilityListener;->vastVideoViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onViewableChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTEndCardViewabilityListener;->vastVideoViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1600(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    move-result-object p1

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->trackingEvents:Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1600(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    move-result-object p1

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->trackingEvents:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1600(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    move-result-object p1

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->creativeView:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1400(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;I)V

    :cond_1
    return-void
.end method

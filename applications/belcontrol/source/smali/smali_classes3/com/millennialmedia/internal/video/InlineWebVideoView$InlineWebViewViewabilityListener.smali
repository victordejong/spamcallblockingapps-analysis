.class public Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebViewViewabilityListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InlineWebViewViewabilityListener"
.end annotation


# instance fields
.field private didPause:Z

.field public inlineWebVideoViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/millennialmedia/internal/video/InlineWebVideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebViewViewabilityListener;->inlineWebVideoViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onViewableChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebViewViewabilityListener;->inlineWebVideoViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebViewViewabilityListener;->didPause:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebViewViewabilityListener;->didPause:Z

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$500(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->start()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$600(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$600(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebViewViewabilityListener;->didPause:Z

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$500(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->pause()V

    :cond_2
    :goto_0
    return-void
.end method

.class public Lcom/millennialmedia/internal/video/LightboxView$MMVideoViewViewabilityListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/LightboxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MMVideoViewViewabilityListener"
.end annotation


# instance fields
.field public lightBoxViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/millennialmedia/internal/video/LightboxView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$MMVideoViewViewabilityListener;->lightBoxViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onViewableChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$MMVideoViewViewabilityListener;->lightBoxViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/LightboxView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$000(Lcom/millennialmedia/internal/video/LightboxView;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->pause()V

    :cond_2
    :goto_0
    return-void
.end method

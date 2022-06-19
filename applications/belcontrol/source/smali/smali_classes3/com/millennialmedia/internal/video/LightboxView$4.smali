.class public Lcom/millennialmedia/internal/video/LightboxView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->releaseVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/LightboxView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$4;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$4;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$4;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->release()V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$4;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->access$102(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$4;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$700(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$4;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$700(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->release()V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$4;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->access$702(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/MMWebView;)Lcom/millennialmedia/internal/MMWebView;

    :cond_1
    return-void
.end method

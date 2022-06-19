.class public Lcom/millennialmedia/internal/video/VASTVideoView$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->onComplete(Lcom/millennialmedia/internal/video/MMVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$15;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$15;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$2900(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$15;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setKeepScreenOn(Z)V

    return-void
.end method

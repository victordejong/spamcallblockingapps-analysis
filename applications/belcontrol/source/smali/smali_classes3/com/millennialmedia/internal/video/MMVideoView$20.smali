.class public Lcom/millennialmedia/internal/video/MMVideoView$20;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/MMVideoView;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/MMVideoView;

.field public final synthetic val$percent:I


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$20;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    iput p2, p0, Lcom/millennialmedia/internal/video/MMVideoView$20;->val$percent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$20;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$600(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$20;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    iget v2, p0, Lcom/millennialmedia/internal/video/MMVideoView$20;->val$percent:I

    invoke-interface {v0, v1, v2}, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;->onBufferingUpdate(Lcom/millennialmedia/internal/video/MMVideoView;I)V

    return-void
.end method

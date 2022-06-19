.class public Lcom/millennialmedia/internal/video/InlineWebVideoView$10$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$10;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$10;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$10$1;->this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$10$1;->this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$10;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/InlineWebVideoView$10;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$500(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

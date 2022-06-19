.class public Lcom/millennialmedia/internal/video/InlineWebVideoView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView;-><init>(Landroid/content/Context;ZZZZILjava/lang/String;Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

.field public final synthetic val$showExpandControls:Z

.field public final synthetic val$showMediaControls:Z


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    iput-boolean p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->val$showMediaControls:Z

    iput-boolean p3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->val$showExpandControls:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$000(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    iget-boolean p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->val$showMediaControls:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$500(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$500(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-boolean p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->val$showExpandControls:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$700(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setAlpha(F)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$700(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_1
    iget-boolean p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->val$showMediaControls:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->val$showExpandControls:Z

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$800(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    :cond_3
    return-void
.end method

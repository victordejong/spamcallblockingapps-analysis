.class public Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;Landroid/content/Context;Lcom/millennialmedia/internal/video/MMVideoView;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

.field public final synthetic val$mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

.field public final synthetic val$this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;Lcom/millennialmedia/internal/video/InlineWebVideoView;Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$3;->this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$3;->val$this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    iput-object p3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$3;->val$mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$3;->val$mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->pause()V

    :cond_1
    :goto_0
    return-void
.end method

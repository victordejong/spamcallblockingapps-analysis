.class public Lcom/millennialmedia/internal/video/InlineWebVideoView$5$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->onDestroy(Lcom/millennialmedia/internal/MMActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$5;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$5;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5$2;->this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5$2;->this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$5;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1300(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    :cond_0
    return-void
.end method

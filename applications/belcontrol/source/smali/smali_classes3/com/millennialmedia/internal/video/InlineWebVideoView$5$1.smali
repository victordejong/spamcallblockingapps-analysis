.class public Lcom/millennialmedia/internal/video/InlineWebVideoView$5$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->onCreate(Lcom/millennialmedia/internal/MMActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$5;

.field public final synthetic val$mmActivity:Lcom/millennialmedia/internal/MMActivity;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$5;Lcom/millennialmedia/internal/MMActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5$1;->this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$5;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5$1;->val$mmActivity:Lcom/millennialmedia/internal/MMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5$1;->val$mmActivity:Lcom/millennialmedia/internal/MMActivity;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/MMActivity;->finish()V

    :cond_0
    return-void
.end method

.class public Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;
.super Landroid/widget/ImageView;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageButton"
.end annotation


# instance fields
.field public button:Lcom/millennialmedia/internal/video/VASTParser$Button;

.field public offset:Ljava/lang/Integer;

.field public final synthetic this$0:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;Lcom/millennialmedia/internal/video/VASTParser$Button;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->offset:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->button:Lcom/millennialmedia/internal/video/VASTParser$Button;

    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->button:Lcom/millennialmedia/internal/video/VASTParser$Button;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->getOffset()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->loadStaticResource()V

    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private loadStaticResource()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$2;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getOffset()I
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->offset:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->button:Lcom/millennialmedia/internal/video/VASTParser$Button;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Button;->offset:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$000(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->offset:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->offset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$100(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->button:Lcom/millennialmedia/internal/video/VASTParser$Button;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$Button;->buttonClicks:Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;->clickThrough:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$200(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    iget-object v0, p1, Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;->clickThrough:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->startActivityFromUrl(Ljava/lang/String;)Z

    :cond_0
    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;->clickTrackingUrls:Ljava/util/List;

    const-string v0, "click tracking"

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/utils/TrackingEvent;->fireUrls(Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateVisibility(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->getOffset()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance p1, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$1;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

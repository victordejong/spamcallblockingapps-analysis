.class public Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;
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
    name = "AdChoicesButton"
.end annotation


# instance fields
.field private volatile buttonState:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

.field private displayDuration:I

.field private volatile firedTracking:Z

.field public icon:Lcom/millennialmedia/internal/video/VASTParser$Icon;

.field private volatile lastProgressTime:I

.field private volatile loadRequested:Z

.field private volatile loaded:Z

.field public startOffset:I

.field public final synthetic this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

.field private volatile totalTimeDisplayed:I


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->firedTracking:Z

    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->loaded:Z

    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->loadRequested:Z

    sget-object p2, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;->READY:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->buttonState:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

    iput p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->totalTimeDisplayed:I

    iput p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->lastProgressTime:I

    const-string p1, "mmVastVideoView_adChoicesButton"

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic access$3100(Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->hideIcon()V

    return-void
.end method

.method public static synthetic access$500(Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->onIconLoaded()V

    return-void
.end method

.method private fireIconClickTracking()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->icon:Lcom/millennialmedia/internal/video/VASTParser$Icon;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Icon;->iconClicks:Lcom/millennialmedia/internal/video/VASTParser$IconClicks;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$IconClicks;->clickTrackingUrls:Ljava/util/List;

    const-string v1, "icon click tracker"

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/utils/TrackingEvent;->fireUrls(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private fireIconViewTracking()V
    .locals 2

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->firedTracking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->firedTracking:Z

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->icon:Lcom/millennialmedia/internal/video/VASTParser$Icon;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Icon;->iconViewTrackingUrls:Ljava/util/List;

    const-string v1, "icon view tracker"

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/utils/TrackingEvent;->fireUrls(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private hideIcon()V
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;->COMPLETE:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->buttonState:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$2;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadStaticResource()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onIconLoaded()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->loaded:Z

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->buttonState:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

    sget-object v1, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;->SHOWING:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;->SHOWN:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->buttonState:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->fireIconViewTracking()V

    :cond_0
    return-void
.end method

.method private showIcon()V
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;->SHOWING:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->buttonState:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->loadRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->loadRequested:Z

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->loadStaticResource()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->loaded:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->onIconLoaded()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    const-string v1, "adchoices"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->getIconWithProgram(Ljava/lang/String;)Lcom/millennialmedia/internal/video/VASTParser$Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->icon:Lcom/millennialmedia/internal/video/VASTParser$Icon;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Icon;->offset:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$000(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->startOffset:I

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->icon:Lcom/millennialmedia/internal/video/VASTParser$Icon;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Icon;->duration:Ljava/lang/String;

    const v2, 0x36ee80

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$000(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->displayDuration:I

    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$100(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->icon:Lcom/millennialmedia/internal/video/VASTParser$Icon;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$Icon;->iconClicks:Lcom/millennialmedia/internal/video/VASTParser$IconClicks;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$IconClicks;->clickThrough:Ljava/lang/String;

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$200(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->icon:Lcom/millennialmedia/internal/video/VASTParser$Icon;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$Icon;->iconClicks:Lcom/millennialmedia/internal/video/VASTParser$IconClicks;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$IconClicks;->clickThrough:Ljava/lang/String;

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/Utils;->startActivityFromUrl(Ljava/lang/String;)Z

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->fireIconClickTracking()V

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->hideIcon()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->lastProgressTime:I

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->totalTimeDisplayed:I

    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;->READY:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->buttonState:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

    return-void
.end method

.method public updateVisibility(II)V
    .locals 1

    iget-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->icon:Lcom/millennialmedia/internal/video/VASTParser$Icon;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->buttonState:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;->SHOWN:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->lastProgressTime:I

    if-le p1, p2, :cond_1

    iget p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->lastProgressTime:I

    sub-int p2, p1, p2

    const/16 v0, 0x3e8

    if-gt p2, v0, :cond_1

    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->totalTimeDisplayed:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->totalTimeDisplayed:I

    :cond_1
    iput p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->lastProgressTime:I

    iget-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->buttonState:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;->COMPLETE:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

    if-eq p2, v0, :cond_3

    iget p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->totalTimeDisplayed:I

    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->displayDuration:I

    if-ge p2, v0, :cond_2

    iget-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {p2}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$300(Lcom/millennialmedia/internal/video/VASTVideoView;)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->hideIcon()V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->buttonState:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;->READY:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;

    if-ne p2, v0, :cond_4

    iget p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->startOffset:I

    if-lt p1, p2, :cond_4

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->showIcon()V

    :cond_4
    :goto_0
    return-void
.end method

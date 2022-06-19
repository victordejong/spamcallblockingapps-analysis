.class public Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/SizableStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandStateManager"
.end annotation


# static fields
.field private static final CLOSE_BUTTON_APPEARANCE_DELAY:J = 0x44cL


# instance fields
.field private closeButtonShowRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private closeControl:Landroid/widget/ImageView;

.field private closeIndicatorShowing:Z

.field private loadingSpinner:Landroid/widget/ProgressBar;

.field private mmExpandActivity:Lcom/millennialmedia/internal/MMActivity;

.field public final synthetic this$0:Lcom/millennialmedia/internal/SizableStateManager;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/SizableStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->this$0:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeButtonShowRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-void
.end method

.method public static synthetic access$602(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeButtonShowRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->showCloseIndicator()V

    return-void
.end method

.method public static synthetic access$800(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)Lcom/millennialmedia/internal/MMActivity;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->mmExpandActivity:Lcom/millennialmedia/internal/MMActivity;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;Lcom/millennialmedia/internal/MMActivity;)Lcom/millennialmedia/internal/MMActivity;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->mmExpandActivity:Lcom/millennialmedia/internal/MMActivity;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeIndicatorShowing:Z

    return p0
.end method

.method private showCloseIndicator()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeButtonShowRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeControl:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/millennialmedia/R$drawable;->mmadsdk_close:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeControl:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeIndicatorShowing:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public attachCloseControl()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeControl:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->mmExpandActivity:Lcom/millennialmedia/internal/MMActivity;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/MMActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeControl:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/millennialmedia/internal/SizableStateManager;->closeAreaSize:I

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeControl:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeControl:Landroid/widget/ImageView;

    new-instance v1, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$2;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$2;-><init>(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->mmExpandActivity:Lcom/millennialmedia/internal/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeControl:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeControl:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    return-void
.end method

.method public close()V
    .locals 2

    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/SizableStateManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "close must be called on the UI thread"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->mmExpandActivity:Lcom/millennialmedia/internal/MMActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMActivity;->finish()V

    :cond_1
    return-void
.end method

.method public expand(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z
    .locals 2

    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/SizableStateManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "expand must be called on the UI thread"

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$3;-><init>(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Landroid/view/View;)V

    invoke-static {v0, p3, v1}, Lcom/millennialmedia/internal/MMActivity;->launch(Landroid/content/Context;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;Lcom/millennialmedia/internal/MMActivity$MMActivityListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public hideCloseIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeButtonShowRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    iput-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeButtonShowRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeControl:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeIndicatorShowing:Z

    :cond_1
    return-void
.end method

.method public hideLoadingSpinner()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->loadingSpinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->loadingSpinner:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->loadingSpinner:Landroid/widget/ProgressBar;

    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->mmExpandActivity:Lcom/millennialmedia/internal/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/MMActivity;->setOrientation(I)V

    return-void
.end method

.method public showCloseIndicatorDelay()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeButtonShowRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager$1;-><init>(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)V

    const-wide/16 v1, 0x44c

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->closeButtonShowRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_0
    return-void
.end method

.method public showLoadingSpinner()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->mmExpandActivity:Lcom/millennialmedia/internal/MMActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->loadingSpinner:Landroid/widget/ProgressBar;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->mmExpandActivity:Lcom/millennialmedia/internal/MMActivity;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/MMActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->loadingSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->loadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->mmExpandActivity:Lcom/millennialmedia/internal/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->loadingSpinner:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->loadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    return-void
.end method

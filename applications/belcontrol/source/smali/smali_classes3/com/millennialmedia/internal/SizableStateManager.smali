.class public Lcom/millennialmedia/internal/SizableStateManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;,
        Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;,
        Lcom/millennialmedia/internal/SizableStateManager$SizableState;,
        Lcom/millennialmedia/internal/SizableStateManager$RestoreState;,
        Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;,
        Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;,
        Lcom/millennialmedia/internal/SizableStateManager$SizableListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SizableStateManager"

.field public static final closeAreaSize:I


# instance fields
.field private expandStateManager:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

.field private resizeContainer:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

.field private restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

.field private sizableListener:Lcom/millennialmedia/internal/SizableStateManager$SizableListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/millennialmedia/R$dimen;->mmadsdk_mraid_resize_close_area_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/millennialmedia/internal/SizableStateManager;->closeAreaSize:I

    return-void
.end method

.method public constructor <init>(Lcom/millennialmedia/internal/SizableStateManager$SizableListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager;->sizableListener:Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/SizableStateManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$RestoreState;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager$SizableListener;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/SizableStateManager;->sizableListener:Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/millennialmedia/internal/SizableStateManager;Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$SizableState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/SizableStateManager;->notifyStateWhenReady(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$SizableState;)V

    return-void
.end method

.method private notifyStateWhenReady(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$SizableState;)V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/millennialmedia/internal/SizableStateManager$2;-><init>(Lcom/millennialmedia/internal/SizableStateManager;Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$SizableState;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->expandStateManager:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->resizeContainer:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->close()V

    :cond_1
    :goto_0
    return-void
.end method

.method public expand(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;-><init>(Lcom/millennialmedia/internal/SizableStateManager;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->expandStateManager:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->expand(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager;->expandStateManager:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    const/4 p1, 0x0

    return p1
.end method

.method public expand(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->expandStateManager:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/SizableStateManager;->TAG:Ljava/lang/String;

    const-string p2, "Cannot expand while expanded"

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/SizableStateManager;->saveDefaultState(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/millennialmedia/internal/SizableStateManager;->restoreDefaultState(Z)V

    :goto_0
    new-instance p3, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-direct {p3}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;-><init>()V

    iget-boolean v0, p2, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->immersive:Z

    invoke-virtual {p3, v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->setImmersive(Z)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    move-result-object p3

    iget v0, p2, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->orientation:I

    invoke-virtual {p3, v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->setOrientation(I)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    move-result-object p3

    iget-boolean v0, p2, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->transparent:Z

    invoke-virtual {p3, v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->setTransparent(Z)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    move-result-object p3

    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;-><init>(Lcom/millennialmedia/internal/SizableStateManager;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->expandStateManager:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->expand(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager;->expandStateManager:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    return v1
.end method

.method public hideLoadingSpinner(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->showLoadingSpinner:Z

    iget-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager;->expandStateManager:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->hideLoadingSpinner()V

    :cond_0
    return-void
.end method

.method public isExpanded()Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->expandStateManager:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResized()Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->resizeContainer:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resize(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->expandStateManager:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/SizableStateManager;->TAG:Ljava/lang/String;

    const-string p2, "Cannot resize while expanded"

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->resizeContainer:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    new-instance v3, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;-><init>(Lcom/millennialmedia/internal/SizableStateManager;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/millennialmedia/internal/SizableStateManager;->resizeContainer:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    :cond_2
    iget-object v3, p0, Lcom/millennialmedia/internal/SizableStateManager;->resizeContainer:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    invoke-virtual {v3, p1, p2}, Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;->resize(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    if-eqz v0, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager;->resizeContainer:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    :cond_4
    return v1
.end method

.method public restoreDefaultState(Z)V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$400(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager;->expandStateManager:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager;->sizableListener:Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onCollapsing()V

    iget-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {p1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$1100(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/view/View;

    move-result-object p1

    sget-object v2, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_COLLAPSED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager;->sizableListener:Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v2}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$1300(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v3}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$1300(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-interface {p1, v2, v3}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onUnresizing(II)V

    iget-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {p1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$1100(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/view/View;

    move-result-object p1

    sget-object v2, Lcom/millennialmedia/internal/SizableStateManager$SizableState;->STATE_UNRESIZED:Lcom/millennialmedia/internal/SizableStateManager$SizableState;

    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/millennialmedia/internal/SizableStateManager;->notifyStateWhenReady(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$SizableState;)V

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {p1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$1200(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/millennialmedia/internal/SizableStateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No layout params found for view being restored, creating new layout params based on original size: x<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v3}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$1300(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ">, y<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v3}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$1300(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v3}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$1300(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v4}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$1300(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-static {p1, v2}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$1202(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    :cond_3
    iget-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {p1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$1100(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/view/View;

    move-result-object p1

    iget-object v2, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v2}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$1200(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {p1, v1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$1102(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;Landroid/view/View;)Landroid/view/View;

    iput-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager;->sizableListener:Lcom/millennialmedia/internal/SizableStateManager$SizableListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/SizableStateManager$SizableListener;->onCollapsing()V

    new-instance p1, Lcom/millennialmedia/internal/SizableStateManager$1;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/SizableStateManager$1;-><init>(Lcom/millennialmedia/internal/SizableStateManager;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    :goto_1
    iput-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager;->resizeContainer:Lcom/millennialmedia/internal/SizableStateManager$ResizeContainer;

    iput-object v1, p0, Lcom/millennialmedia/internal/SizableStateManager;->expandStateManager:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    return-void
.end method

.method public saveDefaultState(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;-><init>(Lcom/millennialmedia/internal/SizableStateManager;Lcom/millennialmedia/internal/SizableStateManager$1;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {v0, p1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$1102(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->getViewPositionOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$202(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$1202(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$1302(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;Landroid/graphics/Point;)Landroid/graphics/Point;

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->getParentContainer(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->restoreState:Lcom/millennialmedia/internal/SizableStateManager$RestoreState;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/SizableStateManager$RestoreState;->access$402(Lcom/millennialmedia/internal/SizableStateManager$RestoreState;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->expandStateManager:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public showCloseIndicator(Z)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/SizableStateManager;->expandStateManager:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->access$700(Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->hideCloseIndicator()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showLoadingSpinner(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->showLoadingSpinner:Z

    iget-object p1, p0, Lcom/millennialmedia/internal/SizableStateManager;->expandStateManager:Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/millennialmedia/internal/SizableStateManager$ExpandStateManager;->showLoadingSpinner()V

    :cond_0
    return-void
.end method

.class public Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/utils/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewabilityWatcher"
.end annotation


# instance fields
.field public volatile activityListener:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

.field public clipRect:Landroid/graphics/Rect;

.field public volatile lifecycleState:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

.field public volatile listener:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;

.field public volatile listeningToActivity:Z

.field public minViewabilityPercent:I

.field public volatile observingViewTree:Z

.field public volatile viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public volatile viewable:Z

.field public volatile watching:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->minViewabilityPercent:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->clipRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->watching:Z

    iput-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listeningToActivity:Z

    iput-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->observingViewTree:Z

    iput-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating viewability watcher <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> for view <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listener:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;

    new-instance p1, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$1;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$1;-><init>(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;)V

    iput-object p1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->activityListener:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    return-void
.end method

.method public static synthetic access$100(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->checkViewable()V

    return-void
.end method

.method public static synthetic access$200(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->addObserver(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listenToActivity(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$400(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->removeObserver(Landroid/view/View;)V

    return-void
.end method

.method private addObserver(Landroid/view/View;)V
    .locals 4

    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->observingViewTree:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Trying to set view tree observer when already set"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding ViewTreeObserver.\n\tViewability watcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n\tViewTreeObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n\tView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->observingViewTree:Z

    :cond_3
    return-void
.end method

.method private checkViewable()V
    .locals 0

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isViewViewable(Landroid/view/View;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->minViewabilityPercent:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->lifecycleState:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    sget-object v3, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->RESUMED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    float-to-double v3, v1

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v3, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int v1, v1, v3

    int-to-long v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    mul-int v1, v1, p1

    int-to-long v5, v1

    const-wide/16 v7, 0x0

    cmp-long p1, v3, v7

    if-lez p1, :cond_3

    iget p1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->minViewabilityPercent:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    return v2

    :cond_2
    cmp-long v1, v5, v7

    if-lez v1, :cond_3

    const-wide/16 v7, 0x64

    mul-long v3, v3, v7

    div-long/2addr v3, v5

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-ltz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private listenToActivity(Landroid/view/View;Z)V
    .locals 2

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listeningToActivity:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->activityListener:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager;->registerListener(ILcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Lcom/millennialmedia/internal/ActivityListenerManager;->getLifecycleState(I)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->lifecycleState:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listeningToActivity:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->activityListener:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/ActivityListenerManager;->unregisterListener(ILcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    :cond_2
    :goto_0
    iput-boolean p2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listeningToActivity:Z

    return-void
.end method

.method private removeObserver(Landroid/view/View;)V
    .locals 4

    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->observingViewTree:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Trying to remove view tree observer when not set"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing ViewTreeObserver.\n\tViewability watcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n\tViewTreeObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n\tView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->observingViewTree:Z

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-boolean p1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->watching:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->checkViewable()V

    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->watching:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->checkViewable()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewAttachedToWindow called.\n\tViewability watcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->watching:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->addObserver(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listenToActivity(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->checkViewable()V

    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewDetachedFromWindow called.\n\tViewability watcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->watching:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->removeObserver(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listenToActivity(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->checkViewable()V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->isViewViewable(Landroid/view/View;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    if-eq v2, v1, :cond_1

    iput-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    iget-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->watching:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listener:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying listener of viewability change.\n\tViewability watcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n\tView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n\tViewable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listener:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;

    iget-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;->onViewableChanged(Z)V

    :cond_1
    return-void
.end method

.method public setMinViewabilityPercent(I)V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting the viewability percentage.\n\tViewability watcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tPercentage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput p1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->minViewabilityPercent:I

    return-void
.end method

.method public startWatching()V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting watcher.\n\tViewability watcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$2;-><init>(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopWatching()V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping watcher.\n\tViewability watcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$3;-><init>(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

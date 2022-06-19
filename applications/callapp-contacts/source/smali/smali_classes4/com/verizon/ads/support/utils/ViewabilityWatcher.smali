.class public Lcom/verizon/ads/support/utils/ViewabilityWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;
    }
.end annotation


# static fields
.field public static final AT_LEAST_ONE_PIXEL_VIEWABLE:I = -0x1

.field private static final j:Lcom/verizon/ads/Logger;


# instance fields
.field a:I

.field b:Landroid/graphics/Rect;

.field volatile c:Z

.field volatile d:Lcom/verizon/ads/ActivityStateManager$ActivityState;

.field volatile e:Z

.field public exposedPercentage:F

.field volatile f:Z

.field volatile g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field volatile h:Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;

.field volatile i:Lcom/verizon/ads/ActivityStateManager$ActivityObserver;

.field public mbr:Landroid/graphics/Rect;

.field public volatile viewable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->j:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;)V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->a:I

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->b:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->c:Z

    .line 39
    iput-boolean v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->e:Z

    .line 40
    iput-boolean v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->f:Z

    .line 54
    iput-boolean v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->viewable:Z

    const/4 v0, 0x3

    .line 93
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->j:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating viewability watcher <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> for view <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->g:Ljava/lang/ref/WeakReference;

    .line 98
    iput-object p2, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->h:Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;

    .line 102
    new-instance p1, Lcom/verizon/ads/support/utils/ViewabilityWatcher$1;

    invoke-direct {p1, p0}, Lcom/verizon/ads/support/utils/ViewabilityWatcher$1;-><init>(Lcom/verizon/ads/support/utils/ViewabilityWatcher;)V

    iput-object p1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->i:Lcom/verizon/ads/ActivityStateManager$ActivityObserver;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 272
    iget-boolean v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->f:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 273
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    sget-object p1, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->j:Lcom/verizon/ads/Logger;

    const-string v0, "Trying to set view tree observer when already set"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 282
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 284
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    sget-object v1, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->j:Lcom/verizon/ads/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding ViewTreeObserver.\n\tViewability watcher: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n\tViewTreeObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n\tView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 290
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 p1, 0x1

    .line 291
    iput-boolean p1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->f:Z

    :cond_3
    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 2

    .line 325
    invoke-static {p1}, Lcom/verizon/ads/support/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 330
    iget-boolean v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->e:Z

    if-nez v0, :cond_1

    .line 331
    invoke-static {}, Lcom/verizon/ads/VASAds;->getActivityStateManager()Lcom/verizon/ads/ActivityStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->i:Lcom/verizon/ads/ActivityStateManager$ActivityObserver;

    invoke-virtual {v0, p1, v1}, Lcom/verizon/ads/ActivityStateManager;->registerActivityObserver(Landroid/app/Activity;Lcom/verizon/ads/ActivityStateManager$ActivityObserver;)V

    .line 333
    invoke-static {}, Lcom/verizon/ads/VASAds;->getActivityStateManager()Lcom/verizon/ads/ActivityStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/verizon/ads/ActivityStateManager;->getState(Landroid/app/Activity;)Lcom/verizon/ads/ActivityStateManager$ActivityState;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->d:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 335
    iget-boolean v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->e:Z

    if-eqz v0, :cond_2

    .line 336
    invoke-static {}, Lcom/verizon/ads/VASAds;->getActivityStateManager()Lcom/verizon/ads/ActivityStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->i:Lcom/verizon/ads/ActivityStateManager$ActivityObserver;

    invoke-virtual {v0, p1, v1}, Lcom/verizon/ads/ActivityStateManager;->unregisterActivityObserver(Landroid/app/Activity;Lcom/verizon/ads/ActivityStateManager$ActivityObserver;)V

    .line 339
    :cond_2
    :goto_0
    iput-boolean p2, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/support/utils/ViewabilityWatcher;Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/support/utils/ViewabilityWatcher;Landroid/view/View;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 4

    .line 298
    iget-boolean v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->f:Z

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 299
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 300
    sget-object p1, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->j:Lcom/verizon/ads/Logger;

    const-string v0, "Trying to remove view tree observer when not set"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 308
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 310
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    sget-object v1, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->j:Lcom/verizon/ads/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing ViewTreeObserver.\n\tViewability watcher: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n\tViewTreeObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n\tView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 316
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_3
    const/4 p1, 0x0

    .line 319
    iput-boolean p1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->f:Z

    return-void
.end method

.method static synthetic b(Lcom/verizon/ads/support/utils/ViewabilityWatcher;Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getMinViewabilityPercent()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->a:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 358
    iget-boolean p1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->c:Z

    if-eqz p1, :cond_0

    .line 6454
    invoke-static {p0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .line 346
    iget-boolean v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->c:Z

    if-eqz v0, :cond_0

    .line 5454
    invoke-static {p0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x3

    .line 241
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->j:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onViewAttachedToWindow called.\n\tViewability watcher: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->c:Z

    if-eqz v0, :cond_1

    .line 247
    invoke-direct {p0, p1}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->a(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 248
    invoke-direct {p0, p1, v0}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->a(Landroid/view/View;Z)V

    .line 3454
    invoke-static {p0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x3

    .line 257
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->j:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onViewDetachedFromWindow called.\n\tViewability watcher: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 262
    :cond_0
    iget-boolean v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->c:Z

    if-eqz v0, :cond_1

    .line 263
    invoke-direct {p0, p1}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->b(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 264
    invoke-direct {p0, p1, v0}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->a(Landroid/view/View;Z)V

    .line 4454
    invoke-static {p0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 11

    .line 433
    iget-object v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 7382
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 7387
    iget v3, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->a:I

    if-nez v3, :cond_0

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 7393
    :cond_0
    iget-object v3, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->d:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    sget-object v4, Lcom/verizon/ads/ActivityStateManager$ActivityState;->RESUMED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v3

    float-to-double v3, v3

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_2

    iget-object v3, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->b:Landroid/graphics/Rect;

    .line 7394
    invoke-virtual {v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7396
    iget-object v3, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->b:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int v3, v3, v4

    int-to-long v3, v3

    .line 7397
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    mul-int v5, v5, v6

    int-to-long v5, v5

    const/high16 v7, 0x42c80000    # 100.0f

    long-to-float v8, v3

    long-to-float v9, v5

    div-float/2addr v8, v9

    mul-float v8, v8, v7

    .line 7399
    iput v8, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->exposedPercentage:F

    .line 7400
    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->b:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v7, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->mbr:Landroid/graphics/Rect;

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-lez v9, :cond_3

    .line 7406
    iget v9, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->a:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    goto :goto_0

    :cond_1
    cmp-long v10, v5, v7

    if-lez v10, :cond_3

    const-wide/16 v7, 0x64

    mul-long v3, v3, v7

    .line 7411
    div-long/2addr v3, v5

    int-to-long v5, v9

    cmp-long v7, v3, v5

    if-ltz v7, :cond_3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 7417
    iput v2, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->exposedPercentage:F

    const/4 v2, 0x0

    .line 7418
    iput-object v2, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->mbr:Landroid/graphics/Rect;

    .line 437
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->viewable:Z

    if-eq v2, v1, :cond_5

    .line 438
    iput-boolean v1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->viewable:Z

    .line 440
    iget-boolean v1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->c:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->h:Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    .line 441
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 442
    sget-object v1, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->j:Lcom/verizon/ads/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Notifying listener of viewability change.\n\tViewability watcher: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n\tView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n\tViewable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->viewable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 446
    :cond_4
    iget-object v0, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->h:Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;

    iget-boolean v1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->viewable:Z

    invoke-interface {v0, v1}, Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;->onViewableChanged(Z)V

    :cond_5
    return-void
.end method

.method public setMinViewabilityPercent(I)V
    .locals 3

    const/4 v0, 0x3

    .line 130
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->j:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting the viewability percentage.\n\tViewability watcher: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tPercentage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 135
    :cond_0
    iput p1, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->a:I

    return-void
.end method

.method public startWatching()V
    .locals 3

    const/4 v0, 0x3

    .line 169
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->j:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting watcher.\n\tViewability watcher: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->g:Ljava/lang/ref/WeakReference;

    .line 171
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 174
    :cond_0
    new-instance v0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$2;

    invoke-direct {v0, p0}, Lcom/verizon/ads/support/utils/ViewabilityWatcher$2;-><init>(Lcom/verizon/ads/support/utils/ViewabilityWatcher;)V

    .line 1454
    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopWatching()V
    .locals 3

    const/4 v0, 0x3

    .line 213
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->j:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stopping watcher.\n\tViewability watcher: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 217
    :cond_0
    new-instance v0, Lcom/verizon/ads/support/utils/ViewabilityWatcher$3;

    invoke-direct {v0, p0}, Lcom/verizon/ads/support/utils/ViewabilityWatcher$3;-><init>(Lcom/verizon/ads/support/utils/ViewabilityWatcher;)V

    .line 2454
    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

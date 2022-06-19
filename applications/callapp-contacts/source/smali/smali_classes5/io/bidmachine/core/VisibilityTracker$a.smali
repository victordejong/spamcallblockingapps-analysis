.class final Lio/bidmachine/core/VisibilityTracker$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/VisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final AFD_MAX_COUNT_OVERLAPPED_VIEWS:I = 0x3

.field private static final CHECK_DELAY:I = 0x64


# instance fields
.field private final callback:Lio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;

.field private final checkRunnable:Ljava/lang/Runnable;

.field private final finishRunnable:Ljava/lang/Runnable;

.field private final ignoreCheckWindowFocus:Z

.field private isCheckerScheduled:Z

.field private isFinishedRequested:Z

.field private isFinishedTracked:Z

.field private isShownTracked:Z

.field private lastShownTimeMs:J

.field private preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final requiredOnScreenTime:J

.field private final viewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final visibilityPercent:F


# direct methods
.method constructor <init>(Landroid/view/View;JFZLio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Lio/bidmachine/core/VisibilityTracker$a$2;

    invoke-direct {v0, p0}, Lio/bidmachine/core/VisibilityTracker$a$2;-><init>(Lio/bidmachine/core/VisibilityTracker$a;)V

    iput-object v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->checkRunnable:Ljava/lang/Runnable;

    .line 270
    new-instance v0, Lio/bidmachine/core/VisibilityTracker$a$3;

    invoke-direct {v0, p0}, Lio/bidmachine/core/VisibilityTracker$a$3;-><init>(Lio/bidmachine/core/VisibilityTracker$a;)V

    iput-object v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->finishRunnable:Ljava/lang/Runnable;

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->viewReference:Ljava/lang/ref/WeakReference;

    .line 44
    iput-wide p2, p0, Lio/bidmachine/core/VisibilityTracker$a;->requiredOnScreenTime:J

    .line 45
    iput p4, p0, Lio/bidmachine/core/VisibilityTracker$a;->visibilityPercent:F

    .line 46
    iput-boolean p5, p0, Lio/bidmachine/core/VisibilityTracker$a;->ignoreCheckWindowFocus:Z

    .line 47
    iput-object p6, p0, Lio/bidmachine/core/VisibilityTracker$a;->callback:Lio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/core/VisibilityTracker$a;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lio/bidmachine/core/VisibilityTracker$a;->scheduleChecker()V

    return-void
.end method

.method static synthetic access$200(Lio/bidmachine/core/VisibilityTracker$a;)Z
    .locals 0

    .line 19
    invoke-direct {p0}, Lio/bidmachine/core/VisibilityTracker$a;->check()Z

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lio/bidmachine/core/VisibilityTracker$a;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lio/bidmachine/core/VisibilityTracker$a;->isCheckerScheduled:Z

    return p1
.end method

.method static synthetic access$400(Lio/bidmachine/core/VisibilityTracker$a;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lio/bidmachine/core/VisibilityTracker$a;->release()V

    return-void
.end method

.method static synthetic access$500(Lio/bidmachine/core/VisibilityTracker$a;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 19
    iget-object p0, p0, Lio/bidmachine/core/VisibilityTracker$a;->viewReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private check()Z
    .locals 5

    .line 80
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->viewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lio/bidmachine/core/VisibilityTracker$a;->release()V

    return v1

    .line 85
    :cond_0
    iget-boolean v2, p0, Lio/bidmachine/core/VisibilityTracker$a;->isShownTracked:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lio/bidmachine/core/VisibilityTracker$a;->isFinishedTracked:Z

    if-eqz v2, :cond_1

    .line 86
    invoke-direct {p0}, Lio/bidmachine/core/VisibilityTracker$a;->release()V

    return v1

    .line 89
    :cond_1
    iget v2, p0, Lio/bidmachine/core/VisibilityTracker$a;->visibilityPercent:F

    iget-boolean v3, p0, Lio/bidmachine/core/VisibilityTracker$a;->ignoreCheckWindowFocus:Z

    invoke-virtual {p0, v0, v2, v3}, Lio/bidmachine/core/VisibilityTracker$a;->isOnTop(Landroid/view/View;FZ)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 90
    iget-boolean v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->isShownTracked:Z

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->callback:Lio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;

    invoke-interface {v0}, Lio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;->onViewShown()V

    .line 92
    iput-boolean v1, p0, Lio/bidmachine/core/VisibilityTracker$a;->isShownTracked:Z

    .line 94
    :cond_2
    iget-boolean v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->isFinishedRequested:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->isFinishedTracked:Z

    if-nez v0, :cond_4

    .line 95
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->finishRunnable:Ljava/lang/Runnable;

    iget-wide v3, p0, Lio/bidmachine/core/VisibilityTracker$a;->requiredOnScreenTime:J

    invoke-static {v0, v3, v4}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;J)V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/core/VisibilityTracker$a;->lastShownTimeMs:J

    .line 97
    iput-boolean v1, p0, Lio/bidmachine/core/VisibilityTracker$a;->isFinishedRequested:Z

    goto :goto_0

    .line 100
    :cond_3
    iget-boolean v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->isFinishedTracked:Z

    if-nez v0, :cond_4

    .line 101
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->finishRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/bidmachine/core/Utils;->cancelUiThreadTask(Ljava/lang/Runnable;)V

    .line 102
    iput-boolean v2, p0, Lio/bidmachine/core/VisibilityTracker$a;->isFinishedRequested:Z

    const-wide/16 v0, 0x0

    .line 103
    iput-wide v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->lastShownTimeMs:J

    :cond_4
    :goto_0
    return v2
.end method

.method private release()V
    .locals 6

    .line 110
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->viewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stop tracking - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 114
    iget-boolean v1, p0, Lio/bidmachine/core/VisibilityTracker$a;->isShownTracked:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lio/bidmachine/core/VisibilityTracker$a;->isFinishedTracked:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Lio/bidmachine/core/VisibilityTracker$a;->requiredOnScreenTime:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-wide v1, p0, Lio/bidmachine/core/VisibilityTracker$a;->lastShownTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lio/bidmachine/core/VisibilityTracker$a;->lastShownTimeMs:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lio/bidmachine/core/VisibilityTracker$a;->requiredOnScreenTime:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const/4 v1, 0x1

    .line 119
    iput-boolean v1, p0, Lio/bidmachine/core/VisibilityTracker$a;->isFinishedTracked:Z

    .line 120
    iget-object v1, p0, Lio/bidmachine/core/VisibilityTracker$a;->callback:Lio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;

    invoke-interface {v1}, Lio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;->onViewTrackingFinished()V

    .line 122
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/core/VisibilityTracker$a;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 124
    :cond_1
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/bidmachine/core/Utils;->cancelUiThreadTask(Ljava/lang/Runnable;)V

    .line 125
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->finishRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/bidmachine/core/Utils;->cancelUiThreadTask(Ljava/lang/Runnable;)V

    .line 126
    invoke-static {}, Lio/bidmachine/core/VisibilityTracker;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 127
    :try_start_0
    invoke-static {}, Lio/bidmachine/core/VisibilityTracker;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 128
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scheduleChecker()V
    .locals 3

    .line 71
    iget-boolean v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->isCheckerScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->isCheckerScheduled:Z

    .line 76
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static viewNotOverlappedAreaPercent(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 5

    .line 246
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int v0, v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 250
    :cond_0
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 251
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 252
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 253
    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr v1, v2

    const/4 p1, 0x0

    .line 254
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v3, p0

    .line 255
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int v1, v1, p0

    sub-int p0, v0, v1

    int-to-float p0, p0

    int-to-float p1, v0

    div-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final isOnTop(Landroid/view/View;FZ)Z
    .locals 15

    const/4 v1, 0x1

    .line 135
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v2, p1

    .line 136
    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v0, "Show wasn\'t tracked: global visibility verification failed - %s"

    new-array v3, v1, [Ljava/lang/Object;

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 137
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v4

    .line 142
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "Show wasn\'t tracked: view visibility verification failed - %s"

    new-array v3, v1, [Ljava/lang/Object;

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 143
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v4

    .line 148
    :cond_1
    invoke-static/range {p1 .. p1}, Lio/bidmachine/core/Utils;->isViewTransparent(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "Show wasn\'t tracked: view transparent verification failed - %s"

    new-array v3, v1, [Ljava/lang/Object;

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 149
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v4

    :cond_2
    if-nez p3, :cond_3

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v0, "Show wasn\'t tracked: window focus verification failed - %s"

    new-array v3, v1, [Ljava/lang/Object;

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 155
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v4

    .line 160
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int v3, v3, v5

    int-to-float v3, v3

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-nez v5, :cond_4

    const-string v0, "Show wasn\'t tracked: view size verification failed - %s"

    new-array v3, v1, [Ljava/lang/Object;

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 162
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v4

    .line 168
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int v5, v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    const/4 v3, 0x2

    const/4 v6, 0x3

    cmpg-float v7, v5, p2

    if-gez v7, :cond_5

    const-string v0, "Show wasn\'t tracked: ad view not completely visible (%s / %s) - %s"

    new-array v6, v6, [Ljava/lang/Object;

    .line 173
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v6, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    .line 171
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v4

    .line 177
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    :goto_0
    if-eqz v5, :cond_6

    .line 178
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x1020002

    if-eq v7, v8, :cond_6

    .line 179
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    goto :goto_0

    :cond_6
    if-nez v5, :cond_7

    const-string v0, "Show wasn\'t tracked: activity content layout not found - %s"

    new-array v3, v1, [Ljava/lang/Object;

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 182
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v4

    .line 187
    :cond_7
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 188
    invoke-virtual {v5, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 189
    invoke-static {v0, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v0, "Show wasn\'t tracked: ad view is out of current window - %s"

    new-array v3, v1, [Ljava/lang/Object;

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 190
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v4

    .line 196
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 198
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const/4 v8, 0x0

    :goto_1
    if-eqz v7, :cond_d

    .line 200
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    add-int/2addr v9, v1

    .line 201
    :goto_2
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_b

    .line 202
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 203
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_a

    new-array v11, v3, [I

    .line 205
    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 206
    invoke-static {v10}, Lio/bidmachine/core/Utils;->getViewRectangle(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v11

    .line 207
    invoke-static {v0, v11}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 208
    invoke-static {v0, v11}, Lio/bidmachine/core/VisibilityTracker$a;->viewNotOverlappedAreaPercent(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v11

    const-string v12, "Show wasn\'t tracked: ad view is overlapped by another visible view (%s), visible percent: %s / %s"

    new-array v13, v6, [Ljava/lang/Object;

    .line 212
    invoke-virtual {v10}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v13, v4

    .line 213
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v13, v1

    .line 214
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v13, v3

    .line 210
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    cmpg-float v10, v11, p2

    if-gez v10, :cond_9

    const-string v0, "Show wasn\'t tracked: ad view is covered by another view - %s"

    new-array v3, v1, [Ljava/lang/Object;

    .line 218
    invoke-virtual {v2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 216
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v4

    :cond_9
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v6, :cond_a

    const-string v0, "Show wasn\'t tracked: ad view is covered by too many views - %s"

    new-array v3, v1, [Ljava/lang/Object;

    .line 225
    invoke-virtual {v2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 223
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v4

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_b
    if-eq v7, v5, :cond_c

    .line 234
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v7

    move-object v7, v2

    move-object v2, v14

    goto/16 :goto_1

    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    :cond_d
    return v1
.end method

.method public final start()V
    .locals 4

    .line 51
    iget-object v0, p0, Lio/bidmachine/core/VisibilityTracker$a;->viewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lio/bidmachine/core/VisibilityTracker$a;->release()V

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Start tracking - %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lio/bidmachine/core/VisibilityTracker$a;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v1, :cond_1

    .line 59
    new-instance v1, Lio/bidmachine/core/VisibilityTracker$a$1;

    invoke-direct {v1, p0}, Lio/bidmachine/core/VisibilityTracker$a$1;-><init>(Lio/bidmachine/core/VisibilityTracker$a;)V

    iput-object v1, p0, Lio/bidmachine/core/VisibilityTracker$a;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 67
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/core/VisibilityTracker$a;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

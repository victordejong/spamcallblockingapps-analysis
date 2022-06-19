.class public final Lcom/google/android/gms/internal/ads/dtn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final a:J


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Landroid/app/Application;

.field private final d:Landroid/view/WindowManager;

.field private final e:Landroid/os/PowerManager;

.field private final f:Landroid/app/KeyguardManager;

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/android/gms/internal/ads/dtv;

.field private k:Lcom/google/android/gms/internal/ads/xh;

.field private l:Z

.field private m:I

.field private final n:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/ads/dtr;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Landroid/util/DisplayMetrics;

.field private final p:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->aC:Lcom/google/android/gms/internal/ads/ect;

    .line 223
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/ads/dtn;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/xh;

    sget-wide v2, Lcom/google/android/gms/internal/ads/dtn;->a:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/xh;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->k:Lcom/google/android/gms/internal/ads/xh;

    .line 3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dtn;->l:Z

    .line 4
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dtn;->m:I

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->n:Ljava/util/HashSet;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->b:Landroid/content/Context;

    .line 7
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->d:Landroid/view/WindowManager;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->b:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->e:Landroid/os/PowerManager;

    .line 9
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->f:Landroid/app/KeyguardManager;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->c:Landroid/app/Application;

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/dtv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/ads/dtv;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dtn;->j:Lcom/google/android/gms/internal/ads/dtv;

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->o:Landroid/util/DisplayMetrics;

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->p:Landroid/graphics/Rect;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->p:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtn;->d:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->p:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtn;->d:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 21
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtn;->c(Landroid/view/View;)V

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->i:Ljava/lang/ref/WeakReference;

    .line 23
    if-eqz p2, :cond_3

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/vj;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/dtn;->b(Landroid/view/View;)V

    .line 26
    :cond_2
    invoke-virtual {p2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 27
    :cond_3
    return-void

    .line 18
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 140
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 141
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dtn;->b(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 142
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dtn;->b(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 143
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dtn;->b(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 144
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/dtn;->b(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 145
    return-object v0
.end method

.method private final a(Landroid/view/View;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 150
    :goto_0
    instance-of v1, v2, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 151
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 152
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 154
    invoke-virtual {v1}, Landroid/view/View;->isScrollContainer()Z

    move-result v5

    .line 155
    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/dtn;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 161
    :goto_1
    return-object v1

    .line 159
    :catch_0
    move-exception v1

    .line 160
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v2

    const-string/jumbo v3, "PositionWatcher.getParentScrollViewRects"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method private final a(I)V
    .locals 19

    .prologue
    .line 84
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dtn;->n:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dtn;->i:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dtn;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 89
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    const/4 v3, 0x1

    move v5, v3

    .line 90
    :goto_1
    if-nez v2, :cond_7

    const/4 v3, 0x1

    move v4, v3

    .line 91
    :goto_2
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 92
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 93
    const/4 v12, 0x0

    .line 94
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 95
    const/4 v14, 0x0

    .line 96
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 97
    const/4 v3, 0x2

    new-array v6, v3, [I

    .line 98
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 99
    if-eqz v2, :cond_2

    .line 100
    invoke-virtual {v2, v11}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v12

    .line 101
    invoke-virtual {v2, v13}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v14

    .line 102
    invoke-virtual {v2, v15}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 103
    :try_start_0
    invoke-virtual {v2, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 104
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_3
    const/4 v3, 0x0

    aget v3, v6, v3

    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 109
    const/4 v3, 0x1

    aget v3, v6, v3

    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 110
    iget v3, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    iput v3, v10, Landroid/graphics/Rect;->right:I

    .line 111
    iget v3, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v3, v6

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    .line 112
    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/ads/edi;->aF:Lcom/google/android/gms/internal/ads/ect;

    .line 113
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v3

    .line 114
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    .line 115
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dtn;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v18

    .line 117
    :goto_4
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v3

    .line 118
    :goto_5
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/dtn;->m:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dtn;->m:I

    .line 119
    :cond_3
    if-nez v4, :cond_a

    .line 120
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dtn;->e:Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dtn;->f:Landroid/app/KeyguardManager;

    invoke-virtual {v4, v2, v6, v7}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v12, :cond_a

    if-eqz v14, :cond_a

    if-nez v3, :cond_a

    const/16 v17, 0x1

    .line 121
    :goto_6
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dtn;->k:Lcom/google/android/gms/internal/ads/xh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/xh;->a()Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/dtn;->l:Z

    move/from16 v0, v17

    if-eq v0, v3, :cond_0

    .line 123
    :cond_4
    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/dtn;->l:Z

    if-nez v3, :cond_5

    const/4 v3, 0x1

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    .line 125
    :cond_5
    new-instance v3, Lcom/google/android/gms/internal/ads/dtt;

    .line 126
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dtn;->e:Landroid/os/PowerManager;

    .line 127
    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v2, :cond_b

    .line 128
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/vj;->a(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    .line 129
    :goto_7
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v8

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dtn;->p:Landroid/graphics/Rect;

    .line 130
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dtn;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    .line 131
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/dtn;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    .line 132
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/dtn;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v11

    .line 133
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/dtn;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v13

    .line 134
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/dtn;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dtn;->o:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/internal/ads/dtt;-><init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZLandroid/graphics/Rect;FZLjava/util/List;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dtn;->n:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/dtr;

    .line 136
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/dtr;->a(Lcom/google/android/gms/internal/ads/dtt;)V

    goto :goto_9

    .line 89
    :cond_6
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_1

    .line 90
    :cond_7
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_2

    .line 106
    :catch_0
    move-exception v3

    .line 107
    const-string/jumbo v7, "Failure getting view location."

    invoke-static {v7, v3}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 116
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    goto/16 :goto_4

    .line 117
    :cond_9
    const/16 v3, 0x8

    goto/16 :goto_5

    .line 120
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 128
    :cond_b
    const/4 v7, 0x0

    goto :goto_7

    .line 129
    :cond_c
    const/16 v8, 0x8

    goto :goto_8

    .line 138
    :cond_d
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/dtn;->l:Z

    goto/16 :goto_0
.end method

.method private final a(Landroid/app/Activity;I)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 51
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 52
    iput p2, p0, Lcom/google/android/gms/internal/ads/dtn;->m:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dtn;I)V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtn;->a(I)V

    return-void
.end method

.method private final b(I)I
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->o:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 147
    int-to-float v1, p1

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method

.method private final b(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dtn;->h:Ljava/lang/ref/WeakReference;

    .line 165
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 166
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->g:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    new-instance v1, Lcom/google/android/gms/internal/ads/dtp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/dtp;-><init>(Lcom/google/android/gms/internal/ads/dtn;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dtn;->g:Landroid/content/BroadcastReceiver;

    .line 174
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->x()Lcom/google/android/gms/internal/ads/xn;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dtn;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dtn;->g:Landroid/content/BroadcastReceiver;

    .line 175
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/xn;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->c:Landroid/app/Application;

    if-eqz v0, :cond_2

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->c:Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtn;->j:Lcom/google/android/gms/internal/ads/dtv;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_2
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    const-string/jumbo v1, "Error registering activity lifecycle callbacks."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private final c()V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/dtq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/dtq;-><init>(Lcom/google/android/gms/internal/ads/dtn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 34
    return-void
.end method

.method private final c(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    .line 184
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 186
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 187
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->h:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 194
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 200
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->x()Lcom/google/android/gms/internal/ads/xn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtn;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dtn;->g:Landroid/content/BroadcastReceiver;

    .line 201
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/xn;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 209
    :goto_2
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dtn;->g:Landroid/content/BroadcastReceiver;

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->c:Landroid/app/Application;

    if-eqz v0, :cond_4

    .line 211
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->c:Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtn;->j:Lcom/google/android/gms/internal/ads/dtv;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 215
    :cond_4
    :goto_3
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string/jumbo v1, "Error while unregistering listeners from the last ViewTreeObserver."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    .line 197
    const-string/jumbo v1, "Error while unregistering listeners from the ViewTreeObserver."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 203
    :catch_2
    move-exception v0

    .line 204
    const-string/jumbo v1, "Failed trying to unregister the receiver"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 206
    :catch_3
    move-exception v0

    .line 207
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    const-string/jumbo v2, "ActiveViewUnit.stopScreenStatusMonitoring"

    .line 208
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    .line 213
    :catch_4
    move-exception v0

    .line 214
    const-string/jumbo v1, "Error registering activity lifecycle callbacks."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->k:Lcom/google/android/gms/internal/ads/xh;

    sget-wide v2, Lcom/google/android/gms/internal/ads/dtn;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/xh;->a(J)V

    .line 219
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->k:Lcom/google/android/gms/internal/ads/xh;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/xh;->a(J)V

    .line 217
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dtr;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->n:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtn;->a(I)V

    .line 30
    return-void
.end method

.method final synthetic b()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtn;->a(I)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/dtr;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtn;->n:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dtn;->a(Landroid/app/Activity;I)V

    .line 55
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtn;->a(I)V

    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dtn;->c()V

    .line 57
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtn;->a(I)V

    .line 77
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dtn;->c()V

    .line 78
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dtn;->a(Landroid/app/Activity;I)V

    .line 67
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtn;->a(I)V

    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dtn;->c()V

    .line 69
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dtn;->a(Landroid/app/Activity;I)V

    .line 63
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtn;->a(I)V

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dtn;->c()V

    .line 65
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtn;->a(I)V

    .line 74
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dtn;->c()V

    .line 75
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dtn;->a(Landroid/app/Activity;I)V

    .line 59
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtn;->a(I)V

    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dtn;->c()V

    .line 61
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtn;->a(I)V

    .line 71
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dtn;->c()V

    .line 72
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtn;->a(I)V

    .line 80
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dtn;->c()V

    .line 81
    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtn;->a(I)V

    .line 83
    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dtn;->m:I

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dtn;->b(Landroid/view/View;)V

    .line 37
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtn;->a(I)V

    .line 38
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dtn;->m:I

    .line 40
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dtn;->a(I)V

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dtn;->c()V

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dtn;->c(Landroid/view/View;)V

    .line 43
    return-void
.end method

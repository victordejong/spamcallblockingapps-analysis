.class public final Lcom/google/android/gms/internal/ads/diu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# static fields
.field private static final a:Landroid/os/Handler;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Landroid/app/Application;

.field private final d:Landroid/os/PowerManager;

.field private final e:Landroid/app/KeyguardManager;

.field private f:Landroid/content/BroadcastReceiver;

.field private final g:Lcom/google/android/gms/internal/ads/dil;

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

.field private j:Lcom/google/android/gms/internal/ads/dar;

.field private k:B

.field private l:I

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/diu;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dil;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/diu;->k:B

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/diu;->l:I

    .line 4
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/diu;->m:J

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->b:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/diu;->g:Lcom/google/android/gms/internal/ads/dil;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->b:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->d:Landroid/os/PowerManager;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->b:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->e:Landroid/app/KeyguardManager;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->c:Landroid/app/Application;

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/dar;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/ads/dar;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/diu;->j:Lcom/google/android/gms/internal/ads/dar;

    .line 13
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/diu;->a(Landroid/view/View;)V

    .line 14
    return-void
.end method

.method private final a(Landroid/app/Activity;I)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/diu;->b()Landroid/view/View;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 49
    iput p2, p0, Lcom/google/android/gms/internal/ads/diu;->l:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/diu;)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/diu;->d()V

    return-void
.end method

.method private final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/diu;->h:Ljava/lang/ref/WeakReference;

    .line 129
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 130
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->f:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    new-instance v1, Lcom/google/android/gms/internal/ads/diw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/diw;-><init>(Lcom/google/android/gms/internal/ads/diu;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/diu;->f:Landroid/content/BroadcastReceiver;

    .line 138
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/diu;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/diu;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->c:Landroid/app/Application;

    if-eqz v0, :cond_2

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->c:Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/diu;->j:Lcom/google/android/gms/internal/ads/dar;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final c()V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/diu;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/dix;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/dix;-><init>(Lcom/google/android/gms/internal/ads/diu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    return-void
.end method

.method private final c(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    .line 146
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 148
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 149
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->h:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 152
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 155
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 159
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 160
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/diu;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 163
    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/diu;->f:Landroid/content/BroadcastReceiver;

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->c:Landroid/app/Application;

    if-eqz v0, :cond_4

    .line 165
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->c:Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/diu;->j:Lcom/google/android/gms/internal/ads/dar;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 168
    :cond_4
    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private final d()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x3

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/diu;->b()Landroid/view/View;

    move-result-object v4

    .line 81
    if-nez v4, :cond_2

    .line 82
    iput-wide v8, p0, Lcom/google/android/gms/internal/ads/diu;->m:J

    .line 83
    iput-byte v6, p0, Lcom/google/android/gms/internal/ads/diu;->k:B

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 87
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_3

    .line 88
    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 89
    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/diu;->d:Landroid/os/PowerManager;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/diu;->d:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_4

    .line 90
    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 91
    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/diu;->g:Lcom/google/android/gms/internal/ads/dil;

    .line 92
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dil;->a()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/diu;->e:Landroid/app/KeyguardManager;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/diu;->e:Landroid/app/KeyguardManager;

    .line 93
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 95
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/dis;->a(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    .line 96
    if-eqz v3, :cond_d

    .line 98
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 99
    if-nez v3, :cond_c

    .line 100
    const/4 v3, 0x0

    .line 103
    :goto_2
    if-eqz v3, :cond_d

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x80000

    and-int/2addr v3, v5

    if-eqz v3, :cond_d

    move v3, v1

    .line 104
    :goto_3
    if-eqz v3, :cond_6

    :cond_5
    move v2, v1

    .line 105
    :cond_6
    if-nez v2, :cond_7

    .line 106
    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 107
    :cond_7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 108
    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    .line 109
    :cond_8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 110
    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 111
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    .line 112
    iget v2, p0, Lcom/google/android/gms/internal/ads/diu;->l:I

    if-eq v2, v6, :cond_a

    .line 113
    iget v1, p0, Lcom/google/android/gms/internal/ads/diu;->l:I

    .line 115
    :cond_a
    if-eqz v1, :cond_b

    .line 116
    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    .line 117
    :cond_b
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/diu;->k:B

    if-eq v1, v0, :cond_0

    .line 118
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/diu;->k:B

    .line 120
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/diu;->k:B

    if-nez v0, :cond_e

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 124
    :goto_4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/diu;->m:J

    goto/16 :goto_0

    .line 101
    :cond_c
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    goto :goto_2

    :cond_d
    move v3, v2

    .line 103
    goto :goto_3

    .line 123
    :cond_e
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/diu;->k:B

    int-to-long v0, v0

    sub-long v0, v8, v0

    goto :goto_4

    :cond_f
    move v0, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/diu;->m:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/diu;->b()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/diu;->m:J

    .line 76
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/diu;->m:J

    return-wide v0
.end method

.method final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/diu;->b()Landroid/view/View;

    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 18
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/diu;->c(Landroid/view/View;)V

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/diu;->i:Ljava/lang/ref/WeakReference;

    .line 20
    if-eqz p1, :cond_4

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 23
    :goto_0
    if-eqz v0, :cond_2

    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/diu;->b(Landroid/view/View;)V

    .line 25
    :cond_2
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 26
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/diu;->m:J

    .line 28
    :goto_1
    return-void

    .line 22
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 27
    :cond_4
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/diu;->m:J

    goto :goto_1
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/diu;->a(Landroid/app/Activity;I)V

    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/diu;->d()V

    .line 53
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/diu;->d()V

    .line 69
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/diu;->a(Landroid/app/Activity;I)V

    .line 62
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/diu;->d()V

    .line 63
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/diu;->a(Landroid/app/Activity;I)V

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/diu;->d()V

    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/diu;->c()V

    .line 60
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/diu;->d()V

    .line 67
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/diu;->a(Landroid/app/Activity;I)V

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/diu;->d()V

    .line 56
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/diu;->d()V

    .line 65
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/diu;->d()V

    .line 71
    return-void
.end method

.method public final onScrollChanged()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/diu;->d()V

    .line 73
    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/diu;->l:I

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/diu;->b(Landroid/view/View;)V

    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/diu;->d()V

    .line 35
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/diu;->l:I

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/diu;->d()V

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/diu;->c()V

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/diu;->c(Landroid/view/View;)V

    .line 40
    return-void
.end method

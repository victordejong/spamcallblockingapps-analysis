.class public final Lcom/google/android/gms/ads/internal/h;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cjd;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/ads/cjd;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/ads/cjd;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private e:Landroid/content/Context;

.field private f:Lcom/google/android/gms/internal/ads/yd;

.field private g:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/h;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/h;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/h;->g:Ljava/util/concurrent/CountDownLatch;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/h;->e:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/h;->f:Lcom/google/android/gms/internal/ads/yd;

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->aS:Lcom/google/android/gms/internal/ads/ect;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 16
    sget v0, Lcom/google/android/gms/internal/ads/blk;->a:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/h;->d:I

    .line 18
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bj:Lcom/google/android/gms/internal/ads/ect;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    .line 25
    :goto_1
    return-void

    .line 12
    :pswitch_0
    sget v0, Lcom/google/android/gms/internal/ads/blk;->c:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/h;->d:I

    goto :goto_0

    .line 14
    :pswitch_1
    sget v0, Lcom/google/android/gms/internal/ads/blk;->b:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/h;->d:I

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/xr;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/h;->run()V

    goto :goto_1

    .line 11
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a()Z
    .locals 2

    .prologue
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string/jumbo v1, "Interrupted during GADSignals creation."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method private final b()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/h;->c()Lcom/google/android/gms/internal/ads/cjd;

    move-result-object v2

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v2, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 35
    array-length v1, v0

    if-ne v1, v7, :cond_3

    .line 36
    aget-object v0, v0, v6

    check-cast v0, Landroid/view/MotionEvent;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/cjd;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 37
    :cond_3
    array-length v1, v0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 38
    aget-object v1, v0, v6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v1, v0, v7

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x2

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v4, v1, v0}, Lcom/google/android/gms/internal/ads/cjd;->a(III)V

    goto :goto_1

    .line 40
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private final c()Lcom/google/android/gms/internal/ads/cjd;
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/google/android/gms/ads/internal/h;->d:I

    sget v1, Lcom/google/android/gms/internal/ads/blk;->b:I

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cjd;

    .line 116
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cjd;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/h;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget v0, p0, Lcom/google/android/gms/ads/internal/h;->d:I

    sget v1, Lcom/google/android/gms/internal/ads/blk;->b:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/ads/internal/h;->d:I

    sget v1, Lcom/google/android/gms/internal/ads/blk;->c:I

    if-ne v0, v1, :cond_1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cjd;

    .line 51
    :goto_0
    if-eqz v0, :cond_2

    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/h;->b()V

    .line 53
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/h;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cjd;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_1
    return-object v0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cjd;

    goto :goto_0

    .line 54
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/h;->c()Lcom/google/android/gms/internal/ads/cjd;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/cjd;->a(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/h;->c()Lcom/google/android/gms/internal/ads/cjd;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/h;->b()V

    .line 66
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/h;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 67
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/cjd;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final a(III)V
    .locals 4

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/h;->c()Lcom/google/android/gms/internal/ads/cjd;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/h;->b()V

    .line 82
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/cjd;->a(III)V

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->a:Ljava/util/List;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/h;->c()Lcom/google/android/gms/internal/ads/cjd;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/h;->b()V

    .line 76
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cjd;->a(Landroid/view/MotionEvent;)V

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->a:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/h;->c()Lcom/google/android/gms/internal/ads/cjd;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cjd;->a(Landroid/view/View;)V

    .line 72
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 85
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->f:Lcom/google/android/gms/internal/ads/yd;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/yd;->d:Z

    if-eqz v0, :cond_3

    move v3, v1

    .line 89
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->as:Lcom/google/android/gms/internal/ads/ect;

    .line 90
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    move v0, v1

    .line 93
    :goto_1
    iget v1, p0, Lcom/google/android/gms/ads/internal/h;->d:I

    sget v2, Lcom/google/android/gms/internal/ads/blk;->b:I

    if-eq v1, v2, :cond_0

    .line 94
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/h;->f:Lcom/google/android/gms/internal/ads/yd;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/h;->e:Landroid/content/Context;

    .line 95
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/h;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/h;->d:I

    .line 97
    invoke-static {v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/cum;->b(Ljava/lang/String;Landroid/content/Context;ZI)Lcom/google/android/gms/internal/ads/cum;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 100
    :cond_0
    iget v1, p0, Lcom/google/android/gms/ads/internal/h;->d:I

    sget v2, Lcom/google/android/gms/internal/ads/blk;->a:I

    if-eq v1, v2, :cond_1

    .line 101
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/h;->f:Lcom/google/android/gms/internal/ads/yd;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/h;->e:Landroid/content/Context;

    .line 102
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/h;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 103
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/cfb;->a(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/cfb;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/h;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/h;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 107
    iput-object v5, p0, Lcom/google/android/gms/ads/internal/h;->e:Landroid/content/Context;

    .line 108
    iput-object v5, p0, Lcom/google/android/gms/ads/internal/h;->f:Lcom/google/android/gms/internal/ads/yd;

    .line 109
    return-void

    .line 110
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/h;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 111
    iput-object v5, p0, Lcom/google/android/gms/ads/internal/h;->e:Landroid/content/Context;

    .line 112
    iput-object v5, p0, Lcom/google/android/gms/ads/internal/h;->f:Lcom/google/android/gms/internal/ads/yd;

    .line 113
    throw v0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_0
.end method

.class public final Lcom/google/android/gms/internal/ads/yq2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cq2;


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/yq2;

.field private static final b:Landroid/os/Handler;

.field private static c:Landroid/os/Handler;

.field private static final d:Ljava/lang/Runnable;

.field private static final e:Ljava/lang/Runnable;


# instance fields
.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/xq2;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private final h:Lcom/google/android/gms/internal/ads/fq2;

.field private final i:Lcom/google/android/gms/internal/ads/rq2;

.field private final j:Lcom/google/android/gms/internal/ads/sq2;

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/yq2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yq2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/yq2;->a:Lcom/google/android/gms/internal/ads/yq2;

    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/yq2;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/yq2;->c:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/uq2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/uq2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/yq2;->d:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/gms/internal/ads/vq2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vq2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/yq2;->e:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yq2;->f:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/ads/rq2;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/rq2;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yq2;->i:Lcom/google/android/gms/internal/ads/rq2;

    new-instance v0, Lcom/google/android/gms/internal/ads/fq2;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/fq2;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yq2;->h:Lcom/google/android/gms/internal/ads/fq2;

    new-instance v0, Lcom/google/android/gms/internal/ads/sq2;

    new-instance v1, Lcom/google/android/gms/internal/ads/br2;

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/br2;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/sq2;-><init>(Lcom/google/android/gms/internal/ads/br2;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yq2;->j:Lcom/google/android/gms/internal/ads/sq2;

    return-void
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/yq2;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/yq2;)Lcom/google/android/gms/internal/ads/sq2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/yq2;->j:Lcom/google/android/gms/internal/ads/sq2;

    return-object p0
.end method

.method static synthetic d()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/yq2;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/yq2;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static f()Lcom/google/android/gms/internal/ads/yq2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/yq2;->a:Lcom/google/android/gms/internal/ads/yq2;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/ads/yq2;)V
    .locals 10

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/yq2;->g:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/yq2;->k:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yq2;->i:Lcom/google/android/gms/internal/ads/rq2;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/rq2;->d()V

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yq2;->h:Lcom/google/android/gms/internal/ads/fq2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/fq2;->a()Lcom/google/android/gms/internal/ads/eq2;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yq2;->i:Lcom/google/android/gms/internal/ads/rq2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/rq2;->b()Ljava/util/HashSet;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yq2;->i:Lcom/google/android/gms/internal/ads/rq2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/rq2;->b()Ljava/util/HashSet;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6
    invoke-static {v0, v0, v0, v0}, Lcom/google/android/gms/internal/ads/mq2;->b(IIII)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/yq2;->i:Lcom/google/android/gms/internal/ads/rq2;

    .line 7
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/rq2;->h(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/yq2;->h:Lcom/google/android/gms/internal/ads/fq2;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/fq2;->b()Lcom/google/android/gms/internal/ads/eq2;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/yq2;->i:Lcom/google/android/gms/internal/ads/rq2;

    .line 8
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/rq2;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 9
    invoke-interface {v8, v7}, Lcom/google/android/gms/internal/ads/eq2;->d(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v7

    .line 10
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/ads/mq2;->d(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 11
    invoke-static {v7, v9}, Lcom/google/android/gms/internal/ads/mq2;->e(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 12
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/mq2;->g(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 13
    :cond_0
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/mq2;->h(Lorg/json/JSONObject;)V

    new-instance v7, Ljava/util/HashSet;

    .line 14
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 15
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/yq2;->j:Lcom/google/android/gms/internal/ads/sq2;

    .line 16
    invoke-virtual {v5, v6, v7, v1, v2}, Lcom/google/android/gms/internal/ads/sq2;->b(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yq2;->i:Lcom/google/android/gms/internal/ads/rq2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/rq2;->a()Ljava/util/HashSet;

    move-result-object v4

    .line 17
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 18
    invoke-static {v0, v0, v0, v0}, Lcom/google/android/gms/internal/ads/mq2;->b(IIII)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v4, v3, v0, v5}, Lcom/google/android/gms/internal/ads/yq2;->k(Landroid/view/View;Lcom/google/android/gms/internal/ads/eq2;Lorg/json/JSONObject;I)V

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/mq2;->h(Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yq2;->j:Lcom/google/android/gms/internal/ads/sq2;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yq2;->i:Lcom/google/android/gms/internal/ads/rq2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/rq2;->a()Ljava/util/HashSet;

    move-result-object v4

    .line 20
    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/sq2;->a(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_1

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yq2;->j:Lcom/google/android/gms/internal/ads/sq2;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sq2;->c()V

    .line 23
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yq2;->i:Lcom/google/android/gms/internal/ads/rq2;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rq2;->e()V

    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/yq2;->k:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yq2;->f:Ljava/util/List;

    .line 26
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/yq2;->f:Ljava/util/List;

    .line 27
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/xq2;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/xq2;->b()V

    .line 29
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/wq2;

    if-eqz v3, :cond_3

    .line 30
    check-cast v2, Lcom/google/android/gms/internal/ads/wq2;

    .line 31
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/wq2;->zza()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private final k(Landroid/view/View;Lcom/google/android/gms/internal/ads/eq2;Lorg/json/JSONObject;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p2, p1, p3, p0, v0}, Lcom/google/android/gms/internal/ads/eq2;->a(Landroid/view/View;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/cq2;Z)V

    return-void
.end method

.method private static final l()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/yq2;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/yq2;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/yq2;->c:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/google/android/gms/internal/ads/eq2;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/pq2;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yq2;->i:Lcom/google/android/gms/internal/ads/rq2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/rq2;->j(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/eq2;->d(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    .line 4
    invoke-static {p3, v1}, Lcom/google/android/gms/internal/ads/mq2;->g(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/yq2;->i:Lcom/google/android/gms/internal/ads/rq2;

    .line 5
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/rq2;->g(Landroid/view/View;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 6
    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/mq2;->d(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yq2;->i:Lcom/google/android/gms/internal/ads/rq2;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rq2;->f()V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/yq2;->i:Lcom/google/android/gms/internal/ads/rq2;

    .line 8
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/rq2;->i(Landroid/view/View;)Lcom/google/android/gms/internal/ads/qq2;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 9
    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/mq2;->f(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/qq2;)V

    .line 10
    :cond_2
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/yq2;->k(Landroid/view/View;Lcom/google/android/gms/internal/ads/eq2;Lorg/json/JSONObject;I)V

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/yq2;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/yq2;->g:I

    :cond_3
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/yq2;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/yq2;->c:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/gms/internal/ads/yq2;->d:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/google/android/gms/internal/ads/yq2;->c:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/gms/internal/ads/yq2;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/yq2;->l()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yq2;->f:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/ads/yq2;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/tq2;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/tq2;-><init>(Lcom/google/android/gms/internal/ads/yq2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/yq2;->l()V

    return-void
.end method

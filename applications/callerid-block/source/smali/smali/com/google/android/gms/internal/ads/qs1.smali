.class public final Lcom/google/android/gms/internal/ads/qs1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/ur1;


# static fields
.field private static final g:Lcom/google/android/gms/internal/ads/qs1;

.field private static final h:Landroid/os/Handler;

.field private static i:Landroid/os/Handler;

.field private static final j:Ljava/lang/Runnable;

.field private static final k:Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/ps1;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private final c:Lcom/google/android/gms/internal/ads/wr1;

.field private final d:Lcom/google/android/gms/internal/ads/is1;

.field private final e:Lcom/google/android/gms/internal/ads/ks1;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/qs1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/qs1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/qs1;->g:Lcom/google/android/gms/internal/ads/qs1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/qs1;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/qs1;->i:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/ms1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ms1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/qs1;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/gms/internal/ads/ns1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ns1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/qs1;->k:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qs1;->a:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/ads/is1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/is1;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qs1;->d:Lcom/google/android/gms/internal/ads/is1;

    new-instance v0, Lcom/google/android/gms/internal/ads/wr1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/wr1;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qs1;->c:Lcom/google/android/gms/internal/ads/wr1;

    new-instance v0, Lcom/google/android/gms/internal/ads/ks1;

    new-instance v1, Lcom/google/android/gms/internal/ads/ts1;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ts1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ks1;-><init>(Lcom/google/android/gms/internal/ads/ts1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qs1;->e:Lcom/google/android/gms/internal/ads/ks1;

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/ads/qs1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/qs1;->g:Lcom/google/android/gms/internal/ads/qs1;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/qs1;)Lcom/google/android/gms/internal/ads/ks1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/qs1;->e:Lcom/google/android/gms/internal/ads/ks1;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/qs1;)V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/qs1;->b:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/qs1;->f:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qs1;->d:Lcom/google/android/gms/internal/ads/is1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/is1;->d()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qs1;->c:Lcom/google/android/gms/internal/ads/wr1;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wr1;->a()Lcom/google/android/gms/internal/ads/vr1;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/qs1;->d:Lcom/google/android/gms/internal/ads/is1;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/is1;->b()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/qs1;->d:Lcom/google/android/gms/internal/ads/is1;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/is1;->b()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v0, v0, v0, v0}, Lcom/google/android/gms/internal/ads/ds1;->b(IIII)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/qs1;->d:Lcom/google/android/gms/internal/ads/is1;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/is1;->h(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/qs1;->c:Lcom/google/android/gms/internal/ads/wr1;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/wr1;->b()Lcom/google/android/gms/internal/ads/vr1;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/qs1;->d:Lcom/google/android/gms/internal/ads/is1;

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/is1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v8, v7}, Lcom/google/android/gms/internal/ads/vr1;->d(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/google/android/gms/internal/ads/ds1;->d(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v7, v9}, Lcom/google/android/gms/internal/ads/ds1;->e(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/ds1;->g(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_0
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/ds1;->h(Lorg/json/JSONObject;)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/qs1;->e:Lcom/google/android/gms/internal/ads/ks1;

    invoke-virtual {v5, v6, v7, v1, v2}, Lcom/google/android/gms/internal/ads/ks1;->b(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/qs1;->d:Lcom/google/android/gms/internal/ads/is1;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/is1;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-static {v0, v0, v0, v0}, Lcom/google/android/gms/internal/ads/ds1;->b(IIII)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v4, v3, v0, v5}, Lcom/google/android/gms/internal/ads/qs1;->k(Landroid/view/View;Lcom/google/android/gms/internal/ads/vr1;Lorg/json/JSONObject;I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ds1;->h(Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qs1;->e:Lcom/google/android/gms/internal/ads/ks1;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/qs1;->d:Lcom/google/android/gms/internal/ads/is1;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/is1;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/ks1;->a(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qs1;->e:Lcom/google/android/gms/internal/ads/ks1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ks1;->c()V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qs1;->d:Lcom/google/android/gms/internal/ads/is1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/is1;->e()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/qs1;->f:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qs1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qs1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/ps1;

    iget v4, p0, Lcom/google/android/gms/internal/ads/qs1;->b:I

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/ps1;->b()V

    instance-of v4, v3, Lcom/google/android/gms/internal/ads/os1;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/google/android/gms/internal/ads/os1;

    iget v4, p0, Lcom/google/android/gms/internal/ads/qs1;->b:I

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/os1;->zza()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method static synthetic h()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/qs1;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/qs1;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/qs1;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method private final k(Landroid/view/View;Lcom/google/android/gms/internal/ads/vr1;Lorg/json/JSONObject;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2, p1, p3, p0, v0}, Lcom/google/android/gms/internal/ads/vr1;->a(Landroid/view/View;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ur1;Z)V

    return-void
.end method

.method private static final l()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/qs1;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/qs1;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/qs1;->i:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/google/android/gms/internal/ads/vr1;Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gs1;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qs1;->d:Lcom/google/android/gms/internal/ads/is1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/is1;->j(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/vr1;->d(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/google/android/gms/internal/ads/ds1;->g(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/qs1;->d:Lcom/google/android/gms/internal/ads/is1;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/is1;->g(Landroid/view/View;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/ds1;->d(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qs1;->d:Lcom/google/android/gms/internal/ads/is1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/is1;->f()V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/qs1;->d:Lcom/google/android/gms/internal/ads/is1;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/is1;->i(Landroid/view/View;)Lcom/google/android/gms/internal/ads/hs1;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/ds1;->f(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/hs1;)V

    :cond_2
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/qs1;->k(Landroid/view/View;Lcom/google/android/gms/internal/ads/vr1;Lorg/json/JSONObject;I)V

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/qs1;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/qs1;->b:I

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/qs1;->i:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/qs1;->i:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/gms/internal/ads/qs1;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/google/android/gms/internal/ads/qs1;->i:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/gms/internal/ads/qs1;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/qs1;->l()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qs1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/ads/qs1;->h:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/ls1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ls1;-><init>(Lcom/google/android/gms/internal/ads/qs1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/qs1;->l()V

    return-void
.end method

.class public final Lcom/google/android/gms/internal/ads/ebl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field private static a:Lcom/google/android/gms/internal/ads/ebl;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:Lcom/google/android/gms/internal/ads/eae;

.field private d:Lcom/google/android/gms/ads/reward/c;

.field private e:Lcom/google/android/gms/ads/n;

.field private f:Lcom/google/android/gms/ads/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ebl;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/ads/n$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/n$a;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/n$a;->a()Lcom/google/android/gms/ads/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->e:Lcom/google/android/gms/ads/n;

    .line 4
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ebl;Ljava/util/List;)Lcom/google/android/gms/ads/e/b;
    .locals 1

    .prologue
    .line 140
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebl;->a(Ljava/util/List;)Lcom/google/android/gms/ads/e/b;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;)Lcom/google/android/gms/ads/e/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/gb;",
            ">;)",
            "Lcom/google/android/gms/ads/e/b;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 117
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/gb;

    .line 118
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/gb;->a:Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/ads/gj;

    .line 119
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/gb;->b:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/ads/e/a$a;->b:Lcom/google/android/gms/ads/e/a$a;

    :goto_1
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/gb;->d:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/internal/ads/gb;->c:I

    invoke-direct {v5, v1, v6, v0}, Lcom/google/android/gms/internal/ads/gj;-><init>(Lcom/google/android/gms/ads/e/a$a;Ljava/lang/String;I)V

    .line 120
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_0
    sget-object v1, Lcom/google/android/gms/ads/e/a$a;->a:Lcom/google/android/gms/ads/e/a$a;

    goto :goto_1

    .line 122
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/gm;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/gm;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static a()Lcom/google/android/gms/internal/ads/ebl;
    .locals 2

    .prologue
    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/ebl;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ebl;->a:Lcom/google/android/gms/internal/ads/ebl;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/ebl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ebl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ebl;->a:Lcom/google/android/gms/internal/ads/ebl;

    .line 8
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ebl;->a:Lcom/google/android/gms/internal/ads/ebl;

    monitor-exit v1

    return-object v0

    .line 9
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final a(Lcom/google/android/gms/ads/n;)V
    .locals 2

    .prologue
    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->c:Lcom/google/android/gms/internal/ads/eae;

    new-instance v1, Lcom/google/android/gms/internal/ads/ech;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/ech;-><init>(Lcom/google/android/gms/ads/n;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/eae;->a(Lcom/google/android/gms/internal/ads/ech;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    const-string/jumbo v1, "Unable to set request configuration parcel."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/c;
    .locals 4

    .prologue
    .line 50
    sget-object v1, Lcom/google/android/gms/internal/ads/ebl;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->d:Lcom/google/android/gms/ads/reward/c;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->d:Lcom/google/android/gms/ads/reward/c;

    monitor-exit v1

    .line 61
    :goto_0
    return-object v0

    .line 53
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/kl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/kl;-><init>()V

    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->b()Lcom/google/android/gms/internal/ads/dyl;

    move-result-object v2

    .line 55
    new-instance v3, Lcom/google/android/gms/internal/ads/dyv;

    invoke-direct {v3, v2, p1, v0}, Lcom/google/android/gms/internal/ads/dyv;-><init>(Lcom/google/android/gms/internal/ads/dyl;Landroid/content/Context;Lcom/google/android/gms/internal/ads/ko;)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0}, Lcom/google/android/gms/internal/ads/dyu;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    .line 58
    check-cast v0, Lcom/google/android/gms/internal/ads/qy;

    .line 60
    new-instance v2, Lcom/google/android/gms/internal/ads/rj;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/internal/ads/rj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/qy;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/ebl;->d:Lcom/google/android/gms/ads/reward/c;

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->d:Lcom/google/android/gms/ads/reward/c;

    monitor-exit v1

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/e/c;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/ads/ebl;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->c:Lcom/google/android/gms/internal/ads/eae;

    if-eqz v0, :cond_0

    .line 12
    monitor-exit v1

    .line 49
    :goto_0
    return-void

    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Context cannot be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 15
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/kg;->a()Lcom/google/android/gms/internal/ads/kg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/kg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->b()Lcom/google/android/gms/internal/ads/dyl;

    move-result-object v0

    .line 18
    new-instance v2, Lcom/google/android/gms/internal/ads/dys;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/ads/dys;-><init>(Lcom/google/android/gms/internal/ads/dyl;Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/ads/dyu;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/ads/eae;

    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->c:Lcom/google/android/gms/internal/ads/eae;

    .line 23
    if-eqz p3, :cond_2

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->c:Lcom/google/android/gms/internal/ads/eae;

    new-instance v2, Lcom/google/android/gms/internal/ads/ebt;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p3, v3}, Lcom/google/android/gms/internal/ads/ebt;-><init>(Lcom/google/android/gms/internal/ads/ebl;Lcom/google/android/gms/ads/e/c;Lcom/google/android/gms/internal/ads/ebq;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/eae;->a(Lcom/google/android/gms/internal/ads/gi;)V

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->c:Lcom/google/android/gms/internal/ads/eae;

    new-instance v2, Lcom/google/android/gms/internal/ads/kl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/kl;-><init>()V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/eae;->a(Lcom/google/android/gms/internal/ads/ko;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->c:Lcom/google/android/gms/internal/ads/eae;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eae;->a()V

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->c:Lcom/google/android/gms/internal/ads/eae;

    new-instance v2, Lcom/google/android/gms/internal/ads/ebo;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/ebo;-><init>(Lcom/google/android/gms/internal/ads/ebl;Landroid/content/Context;)V

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    .line 29
    invoke-interface {v0, p2, v2}, Lcom/google/android/gms/internal/ads/eae;->a(Ljava/lang/String;Lcom/google/android/gms/dynamic/a;)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->e:Lcom/google/android/gms/ads/n;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/n;->a()I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->e:Lcom/google/android/gms/ads/n;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/ads/n;->b()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->e:Lcom/google/android/gms/ads/n;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ebl;->a(Lcom/google/android/gms/ads/n;)V

    .line 33
    :cond_4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/edi;->a(Landroid/content/Context;)V

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cq:Lcom/google/android/gms/internal/ads/ect;

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 37
    if-nez v0, :cond_5

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ebl;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 39
    if-nez v0, :cond_5

    .line 40
    const-string/jumbo v0, "Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/ads/ebr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ebr;-><init>(Lcom/google/android/gms/internal/ads/ebl;)V

    .line 43
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->f:Lcom/google/android/gms/ads/e/b;

    .line 44
    if-eqz p3, :cond_5

    .line 45
    sget-object v0, Lcom/google/android/gms/internal/ads/xr;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/ebn;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/internal/ads/ebn;-><init>(Lcom/google/android/gms/internal/ads/ebl;Lcom/google/android/gms/ads/e/c;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :cond_5
    :goto_1
    :try_start_2
    monitor-exit v1

    goto/16 :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string/jumbo v2, "MobileAdsSettingManager initialization failed"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/yb;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method final synthetic a(Lcom/google/android/gms/ads/e/c;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->f:Lcom/google/android/gms/ads/e/b;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/e/c;->a(Lcom/google/android/gms/ads/e/b;)V

    .line 139
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->c:Lcom/google/android/gms/internal/ads/eae;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "MobileAds.initialize() must be called prior to getting version string."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/s;->a(ZLjava/lang/Object;)V

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->c:Lcom/google/android/gms/internal/ads/eae;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eae;->d()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cos;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    :goto_1
    return-object v0

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string/jumbo v1, "Unable to get version string."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public final c()Lcom/google/android/gms/ads/n;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebl;->e:Lcom/google/android/gms/ads/n;

    return-object v0
.end method

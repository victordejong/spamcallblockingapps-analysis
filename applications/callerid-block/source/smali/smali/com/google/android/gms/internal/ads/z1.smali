.class public final Lcom/google/android/gms/internal/ads/z1;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static h:Lcom/google/android/gms/internal/ads/z1;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "InternalMobileAds.class"
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/ads/initialization/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;

.field private c:Lcom/google/android/gms/internal/ads/o0;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Lcom/google/android/gms/ads/p;

.field private g:Lcom/google/android/gms/ads/initialization/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/z1;->d:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/z1;->e:Z

    new-instance v0, Lcom/google/android/gms/ads/p$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/p$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/p$a;->a()Lcom/google/android/gms/ads/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->f:Lcom/google/android/gms/ads/p;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/z1;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/ads/z1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/z1;->h:Lcom/google/android/gms/internal/ads/z1;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/z1;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/z1;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/ads/z1;->h:Lcom/google/android/gms/internal/ads/z1;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/z1;->h:Lcom/google/android/gms/internal/ads/z1;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/z1;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/z1;->d:Z

    return p1
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/z1;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/z1;->e:Z

    return p1
.end method

.method static synthetic i(Lcom/google/android/gms/internal/ads/z1;Ljava/util/List;)Lcom/google/android/gms/ads/initialization/a;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/z1;->m(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/ads/z1;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z1;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final k(Lcom/google/android/gms/ads/p;)V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->c:Lcom/google/android/gms/internal/ads/o0;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzads;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzads;-><init>(Lcom/google/android/gms/ads/p;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/o0;->e5(Lcom/google/android/gms/internal/ads/zzads;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Unable to set request configuration parcel."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final l(Landroid/content/Context;)V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->c:Lcom/google/android/gms/internal/ads/o0;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/m03;->b()Lcom/google/android/gms/internal/ads/k03;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/h03;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/h03;-><init>(Lcom/google/android/gms/internal/ads/k03;Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/l03;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/o0;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z1;->c:Lcom/google/android/gms/internal/ads/o0;

    :cond_0
    return-void
.end method

.method private static final m(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzamj;",
            ">;)",
            "Lcom/google/android/gms/ads/initialization/a;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzamj;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzamj;->b:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/xa;

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzamj;->c:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->c:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->b:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    :goto_1
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzamj;->e:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzamj;->d:I

    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/xa;-><init>(Lcom/google/android/gms/ads/initialization/AdapterStatus$State;Ljava/lang/String;I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/ya;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ya;-><init>(Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/initialization/b;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/ads/initialization/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/z1;->b:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/z1;->d:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/z1;->a()Lcom/google/android/gms/internal/ads/z1;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/z1;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p2

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/z1;->e:Z

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/z1;->d()Lcom/google/android/gms/ads/initialization/a;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/android/gms/ads/initialization/b;->a(Lcom/google/android/gms/ads/initialization/a;)V

    :cond_2
    monitor-exit p2

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/z1;->d:Z

    if-eqz p3, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/ads/z1;->a()Lcom/google/android/gms/internal/ads/z1;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/z1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz p1, :cond_9

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zd;->a()Lcom/google/android/gms/internal/ads/zd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zd;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/z1;->l(Landroid/content/Context;)V

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->c:Lcom/google/android/gms/internal/ads/o0;

    new-instance v2, Lcom/google/android/gms/internal/ads/y1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/y1;-><init>(Lcom/google/android/gms/internal/ads/z1;Lcom/google/android/gms/internal/ads/x1;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/o0;->s2(Lcom/google/android/gms/internal/ads/wa;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->c:Lcom/google/android/gms/internal/ads/o0;

    new-instance v2, Lcom/google/android/gms/internal/ads/de;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/de;-><init>()V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/o0;->Y1(Lcom/google/android/gms/internal/ads/he;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->c:Lcom/google/android/gms/internal/ads/o0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/o0;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->c:Lcom/google/android/gms/internal/ads/o0;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/o0;->H3(Ljava/lang/String;Lcom/google/android/gms/dynamic/a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->f:Lcom/google/android/gms/ads/p;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/p;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->f:Lcom/google/android/gms/ads/p;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/p;->c()I

    move-result v0

    if-eq v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->f:Lcom/google/android/gms/ads/p;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/z1;->k(Lcom/google/android/gms/ads/p;)V

    :cond_7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/m3;->a(Landroid/content/Context;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/m3;->c3:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/z1;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/w1;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/w1;-><init>(Lcom/google/android/gms/internal/ads/z1;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z1;->g:Lcom/google/android/gms/ads/initialization/a;

    if-eqz p3, :cond_8

    sget-object p1, Lcom/google/android/gms/internal/ads/io;->b:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/v1;

    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/ads/v1;-><init>(Lcom/google/android/gms/internal/ads/z1;Lcom/google/android/gms/ads/initialization/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p3, "MobileAdsSettingManager initialization failed"

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/po;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_0
    monitor-exit p2

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Context cannot be null."

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z1;->c:Lcom/google/android/gms/internal/ads/o0;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to getting version string."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/h;->l(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z1;->c:Lcom/google/android/gms/internal/ads/o0;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/o0;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/tw1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "Unable to get version string."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, ""

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final d()Lcom/google/android/gms/ads/initialization/a;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z1;->c:Lcom/google/android/gms/internal/ads/o0;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to getting initialization status."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/h;->l(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z1;->g:Lcom/google/android/gms/ads/initialization/a;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z1;->c:Lcom/google/android/gms/internal/ads/o0;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/o0;->l()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/z1;->m(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/a;

    move-result-object v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object v1

    :catch_0
    const-string v1, "Unable to get Initialization status."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/w1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/w1;-><init>(Lcom/google/android/gms/internal/ads/z1;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public final e()Lcom/google/android/gms/ads/p;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->f:Lcom/google/android/gms/ads/p;

    return-object v0
.end method

.method final synthetic f(Lcom/google/android/gms/ads/initialization/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->g:Lcom/google/android/gms/ads/initialization/a;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/initialization/b;->a(Lcom/google/android/gms/ads/initialization/a;)V

    return-void
.end method

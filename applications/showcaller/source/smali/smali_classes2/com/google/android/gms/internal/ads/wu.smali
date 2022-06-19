.class public final Lcom/google/android/gms/internal/ads/wu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# static fields
.field private static a:Lcom/google/android/gms/internal/ads/wu;


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/ads/initialization/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field private d:Lcom/google/android/gms/internal/ads/lt;

.field private e:Z

.field private f:Z

.field private g:Lcom/google/android/gms/ads/m;

.field private h:Lcom/google/android/gms/ads/q;

.field private i:Lcom/google/android/gms/ads/initialization/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wu;->e:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wu;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->g:Lcom/google/android/gms/ads/m;

    new-instance v0, Lcom/google/android/gms/ads/q$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/q$a;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/q$a;->a()Lcom/google/android/gms/ads/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->h:Lcom/google/android/gms/ads/q;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->b:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/wu;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/wu;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/wu;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/wu;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/wu;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/wu;->f:Z

    return p1
.end method

.method public static d()Lcom/google/android/gms/internal/ads/wu;
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/wu;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/wu;->a:Lcom/google/android/gms/internal/ads/wu;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/wu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/wu;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/ads/wu;->a:Lcom/google/android/gms/internal/ads/wu;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/wu;->a:Lcom/google/android/gms/internal/ads/wu;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/wu;Ljava/util/List;)Lcom/google/android/gms/ads/initialization/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbrl;",
            ">;)",
            "Lcom/google/android/gms/ads/initialization/a;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wu;->m(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/a;

    move-result-object p0

    return-object p0
.end method

.method private final k(Lcom/google/android/gms/ads/q;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->d:Lcom/google/android/gms/internal/ads/lt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbim;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbim;-><init>(Lcom/google/android/gms/ads/q;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/lt;->p2(Lcom/google/android/gms/internal/ads/zzbim;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Unable to set request configuration parcel."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final l(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->d:Lcom/google/android/gms/internal/ads/lt;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->b()Lcom/google/android/gms/internal/ads/ur;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/qr;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/qr;-><init>(Lcom/google/android/gms/internal/ads/ur;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/vr;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/lt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wu;->d:Lcom/google/android/gms/internal/ads/lt;

    :cond_0
    return-void
.end method

.method private static final m(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbrl;",
            ">;)",
            "Lcom/google/android/gms/ads/initialization/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbrl;

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbrl;->d:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/e40;

    .line 4
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzbrl;->e:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->e:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->d:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    :goto_1
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbrl;->g:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbrl;->f:I

    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/e40;-><init>(Lcom/google/android/gms/ads/initialization/AdapterStatus$State;Ljava/lang/String;I)V

    .line 5
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/f40;

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/f40;-><init>(Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method public final e(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/initialization/b;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/wu;->c:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/wu;->e:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/wu;->d()Lcom/google/android/gms/internal/ads/wu;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/wu;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    :cond_0
    monitor-exit p2

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/wu;->f:Z

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/wu;->g()Lcom/google/android/gms/ads/initialization/a;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/android/gms/ads/initialization/b;->a(Lcom/google/android/gms/ads/initialization/a;)V

    .line 4
    :cond_2
    monitor-exit p2

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wu;->e:Z

    if-eqz p3, :cond_4

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/wu;->d()Lcom/google/android/gms/internal/ads/wu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wu;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz p1, :cond_9

    .line 6
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/k70;->a()Lcom/google/android/gms/internal/ads/k70;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/k70;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/wu;->l(Landroid/content/Context;)V

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->d:Lcom/google/android/gms/internal/ads/lt;

    new-instance v2, Lcom/google/android/gms/internal/ads/vu;

    .line 8
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/vu;-><init>(Lcom/google/android/gms/internal/ads/wu;Lcom/google/android/gms/internal/ads/uu;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/lt;->Q0(Lcom/google/android/gms/internal/ads/d40;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->d:Lcom/google/android/gms/internal/ads/lt;

    new-instance v2, Lcom/google/android/gms/internal/ads/p70;

    .line 9
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/p70;-><init>()V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/lt;->k1(Lcom/google/android/gms/internal/ads/s70;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->d:Lcom/google/android/gms/internal/ads/lt;

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/lt;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->d:Lcom/google/android/gms/internal/ads/lt;

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    .line 12
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/lt;->X1(Ljava/lang/String;Lcom/google/android/gms/dynamic/a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->h:Lcom/google/android/gms/ads/q;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/ads/q;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->h:Lcom/google/android/gms/ads/q;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/ads/q;->c()I

    move-result v0

    if-eq v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->h:Lcom/google/android/gms/ads/q;

    .line 15
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/wu;->k(Lcom/google/android/gms/ads/q;)V

    .line 16
    :cond_7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kw;->a(Landroid/content/Context;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->I3:Lcom/google/android/gms/internal/ads/cw;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/wu;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time."

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/tu;

    .line 21
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/tu;-><init>(Lcom/google/android/gms/internal/ads/wu;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wu;->i:Lcom/google/android/gms/ads/initialization/a;

    if-eqz p3, :cond_8

    .line 22
    sget-object p1, Lcom/google/android/gms/internal/ads/xh0;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/su;

    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/ads/su;-><init>(Lcom/google/android/gms/internal/ads/wu;Lcom/google/android/gms/ads/initialization/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p3, "MobileAdsSettingManager initialization failed"

    .line 23
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    :cond_8
    :goto_0
    monitor-exit p2

    return-void

    .line 25
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Context cannot be null."

    .line 26
    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 27
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wu;->d:Lcom/google/android/gms/internal/ads/lt;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to getting version string."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->n(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wu;->d:Lcom/google/android/gms/internal/ads/lt;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/lt;->j()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/iv2;->a(Ljava/lang/String;)Ljava/lang/String;

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

    .line 4
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, ""

    .line 5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final g()Lcom/google/android/gms/ads/initialization/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wu;->d:Lcom/google/android/gms/internal/ads/lt;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to getting initialization status."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->n(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wu;->i:Lcom/google/android/gms/ads/initialization/a;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wu;->d:Lcom/google/android/gms/internal/ads/lt;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/lt;->k()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/wu;->m(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/a;

    move-result-object v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object v1

    :catch_0
    const-string v1, "Unable to get Initialization status."

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/tu;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/tu;-><init>(Lcom/google/android/gms/internal/ads/wu;)V

    .line 6
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public final i()Lcom/google/android/gms/ads/q;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->h:Lcom/google/android/gms/ads/q;

    return-object v0
.end method

.method final synthetic j(Lcom/google/android/gms/ads/initialization/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wu;->i:Lcom/google/android/gms/ads/initialization/a;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/initialization/b;->a(Lcom/google/android/gms/ads/initialization/a;)V

    return-void
.end method

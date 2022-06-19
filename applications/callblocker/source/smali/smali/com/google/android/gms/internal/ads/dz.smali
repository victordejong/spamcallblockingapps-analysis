.class public final Lcom/google/android/gms/internal/ads/dz;
.super Lcom/google/android/gms/ads/b/k;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/du;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/b/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/bz;

.field private final d:Lcom/google/android/gms/ads/p;

.field private final e:Lcom/google/android/gms/ads/b/c$a;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/du;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/b/k;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dz;->b:Ljava/util/List;

    .line 3
    new-instance v1, Lcom/google/android/gms/ads/p;

    invoke-direct {v1}, Lcom/google/android/gms/ads/p;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dz;->d:Lcom/google/android/gms/ads/p;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dz;->f:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dz;->a:Lcom/google/android/gms/internal/ads/du;

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dz;->a:Lcom/google/android/gms/internal/ads/du;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/du;->b()Ljava/util/List;

    move-result-object v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 10
    instance-of v2, v1, Landroid/os/IBinder;

    if-eqz v2, :cond_6

    .line 11
    check-cast v1, Landroid/os/IBinder;

    .line 12
    if-eqz v1, :cond_6

    .line 13
    const-string/jumbo v2, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 14
    instance-of v5, v2, Lcom/google/android/gms/internal/ads/bu;

    if-eqz v5, :cond_5

    .line 15
    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/ads/bu;

    move-object v1, v0

    .line 20
    :goto_1
    if-eqz v1, :cond_0

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dz;->b:Ljava/util/List;

    new-instance v5, Lcom/google/android/gms/internal/ads/bz;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/bz;-><init>(Lcom/google/android/gms/internal/ads/bu;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    const-string/jumbo v2, ""

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dz;->a:Lcom/google/android/gms/internal/ads/du;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/du;->r()Ljava/util/List;

    move-result-object v1

    .line 27
    if-eqz v1, :cond_3

    .line 28
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 30
    instance-of v4, v1, Landroid/os/IBinder;

    if-eqz v4, :cond_7

    .line 31
    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ean;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/eal;

    move-result-object v1

    .line 34
    :goto_3
    if-eqz v1, :cond_2

    .line 35
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dz;->f:Ljava/util/List;

    new-instance v5, Lcom/google/android/gms/internal/ads/eaq;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/eaq;-><init>(Lcom/google/android/gms/internal/ads/eal;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 38
    :catch_1
    move-exception v1

    .line 39
    const-string/jumbo v2, ""

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dz;->a:Lcom/google/android/gms/internal/ads/du;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/du;->d()Lcom/google/android/gms/internal/ads/bu;

    move-result-object v2

    .line 42
    if-eqz v2, :cond_8

    .line 43
    new-instance v1, Lcom/google/android/gms/internal/ads/bz;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/bz;-><init>(Lcom/google/android/gms/internal/ads/bu;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 49
    :goto_4
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dz;->c:Lcom/google/android/gms/internal/ads/bz;

    .line 51
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dz;->a:Lcom/google/android/gms/internal/ads/du;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/du;->m()Lcom/google/android/gms/internal/ads/bn;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 52
    new-instance v1, Lcom/google/android/gms/internal/ads/br;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dz;->a:Lcom/google/android/gms/internal/ads/du;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/du;->m()Lcom/google/android/gms/internal/ads/bn;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/br;-><init>(Lcom/google/android/gms/internal/ads/bn;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, v1

    .line 56
    :cond_4
    :goto_5
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dz;->e:Lcom/google/android/gms/ads/b/c$a;

    .line 57
    return-void

    .line 16
    :cond_5
    :try_start_4
    new-instance v2, Lcom/google/android/gms/internal/ads/bw;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/bw;-><init>(Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v1, v2

    .line 17
    goto :goto_1

    :cond_6
    move-object v1, v3

    .line 18
    goto :goto_1

    :cond_7
    move-object v1, v3

    .line 32
    goto :goto_3

    :cond_8
    move-object v1, v3

    .line 44
    goto :goto_4

    .line 47
    :catch_2
    move-exception v1

    .line 48
    const-string/jumbo v2, ""

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    goto :goto_4

    .line 54
    :catch_3
    move-exception v1

    .line 55
    const-string/jumbo v2, ""

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private final m()Lcom/google/android/gms/dynamic/a;
    .locals 2

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->a:Lcom/google/android/gms/internal/ads/du;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/du;->n()Lcom/google/android/gms/dynamic/a;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->a:Lcom/google/android/gms/internal/ads/du;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/du;->a()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/b/c$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->b:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->a:Lcom/google/android/gms/internal/ads/du;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/du;->c()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Lcom/google/android/gms/ads/b/c$b;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->c:Lcom/google/android/gms/internal/ads/bz;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->a:Lcom/google/android/gms/internal/ads/du;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/du;->e()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->a:Lcom/google/android/gms/internal/ads/du;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/du;->f()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/Double;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dz;->a:Lcom/google/android/gms/internal/ads/du;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/du;->g()D

    move-result-wide v2

    .line 98
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 101
    :goto_0
    return-object v0

    .line 98
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    const-string/jumbo v2, ""

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->a:Lcom/google/android/gms/internal/ads/du;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/du;->h()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->a:Lcom/google/android/gms/internal/ads/du;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/du;->i()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Lcom/google/android/gms/ads/p;
    .locals 2

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->a:Lcom/google/android/gms/internal/ads/du;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/du;->j()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->d:Lcom/google/android/gms/ads/p;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dz;->a:Lcom/google/android/gms/internal/ads/du;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/du;->j()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/p;->a(Lcom/google/android/gms/internal/ads/eba;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->d:Lcom/google/android/gms/ads/p;

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-string/jumbo v1, "Exception occurred while getting video controller"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final synthetic k()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dz;->m()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dz;->a:Lcom/google/android/gms/internal/ads/du;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/du;->o()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

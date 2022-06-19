.class public final Lcom/google/android/gms/internal/ads/cs;
.super Lcom/google/android/gms/ads/b/h;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cn;

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


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cn;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/b/h;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cs;->b:Ljava/util/List;

    .line 3
    new-instance v1, Lcom/google/android/gms/ads/p;

    invoke-direct {v1}, Lcom/google/android/gms/ads/p;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cs;->d:Lcom/google/android/gms/ads/p;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cs;->a:Lcom/google/android/gms/internal/ads/cn;

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cs;->a:Lcom/google/android/gms/internal/ads/cn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/cn;->c()Ljava/util/List;

    move-result-object v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    instance-of v2, v1, Landroid/os/IBinder;

    if-eqz v2, :cond_4

    .line 10
    check-cast v1, Landroid/os/IBinder;

    .line 11
    if-eqz v1, :cond_4

    .line 12
    const-string/jumbo v2, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 13
    instance-of v5, v2, Lcom/google/android/gms/internal/ads/bu;

    if-eqz v5, :cond_3

    .line 14
    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/ads/bu;

    move-object v1, v0

    .line 19
    :goto_1
    if-eqz v1, :cond_0

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cs;->b:Ljava/util/List;

    new-instance v5, Lcom/google/android/gms/internal/ads/bz;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/bz;-><init>(Lcom/google/android/gms/internal/ads/bu;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    const-string/jumbo v2, ""

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cs;->a:Lcom/google/android/gms/internal/ads/cn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/cn;->e()Lcom/google/android/gms/internal/ads/bu;

    move-result-object v2

    .line 27
    if-eqz v2, :cond_5

    .line 28
    new-instance v1, Lcom/google/android/gms/internal/ads/bz;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/bz;-><init>(Lcom/google/android/gms/internal/ads/bu;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cs;->c:Lcom/google/android/gms/internal/ads/bz;

    .line 36
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cs;->a:Lcom/google/android/gms/internal/ads/cn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/cn;->k()Lcom/google/android/gms/internal/ads/bn;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 37
    new-instance v1, Lcom/google/android/gms/internal/ads/br;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cs;->a:Lcom/google/android/gms/internal/ads/cn;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/cn;->k()Lcom/google/android/gms/internal/ads/bn;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/br;-><init>(Lcom/google/android/gms/internal/ads/bn;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v1

    .line 41
    :cond_2
    :goto_3
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/cs;->e:Lcom/google/android/gms/ads/b/c$a;

    .line 42
    return-void

    .line 15
    :cond_3
    :try_start_3
    new-instance v2, Lcom/google/android/gms/internal/ads/bw;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/bw;-><init>(Landroid/os/IBinder;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v2

    .line 16
    goto :goto_1

    :cond_4
    move-object v1, v3

    .line 17
    goto :goto_1

    :cond_5
    move-object v1, v3

    .line 29
    goto :goto_2

    .line 32
    :catch_1
    move-exception v1

    .line 33
    const-string/jumbo v2, ""

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    goto :goto_2

    .line 39
    :catch_2
    move-exception v1

    .line 40
    const-string/jumbo v2, ""

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private final i()Lcom/google/android/gms/dynamic/a;
    .locals 2

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cs;->a:Lcom/google/android/gms/internal/ads/cn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cn;->a()Lcom/google/android/gms/dynamic/a;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cs;->i()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cs;->a:Lcom/google/android/gms/internal/ads/cn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cn;->b()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
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
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cs;->b:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cs;->a:Lcom/google/android/gms/internal/ads/cn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cn;->d()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/google/android/gms/ads/b/c$b;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cs;->c:Lcom/google/android/gms/internal/ads/bz;

    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cs;->a:Lcom/google/android/gms/internal/ads/cn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cn;->f()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cs;->a:Lcom/google/android/gms/internal/ads/cn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cn;->g()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Lcom/google/android/gms/ads/p;
    .locals 2

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cs;->a:Lcom/google/android/gms/internal/ads/cn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cn;->j()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cs;->d:Lcom/google/android/gms/ads/p;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cs;->a:Lcom/google/android/gms/internal/ads/cn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/cn;->j()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/p;->a(Lcom/google/android/gms/internal/ads/eba;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cs;->d:Lcom/google/android/gms/ads/p;

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string/jumbo v1, "Exception occurred while getting video controller"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

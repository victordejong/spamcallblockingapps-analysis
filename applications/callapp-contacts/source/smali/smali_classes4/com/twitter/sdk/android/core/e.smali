.class public final Lcom/twitter/sdk/android/core/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/twitter/sdk/android/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/m<",
            "Lcom/twitter/sdk/android/core/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;Lcom/twitter/sdk/android/core/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;",
            "Lcom/twitter/sdk/android/core/m<",
            "Lcom/twitter/sdk/android/core/d;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/twitter/sdk/android/core/e;->b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    .line 32
    iput-object p2, p0, Lcom/twitter/sdk/android/core/e;->a:Lcom/twitter/sdk/android/core/m;

    return-void
.end method

.method private b()V
    .locals 3

    .line 56
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/f;

    move-result-object v0

    const-string v1, "GuestSessionProvider"

    const-string v2, "Refreshing expired guest session."

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 58
    iget-object v1, p0, Lcom/twitter/sdk/android/core/e;->b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    new-instance v2, Lcom/twitter/sdk/android/core/e$1;

    invoke-direct {v2, p0, v0}, Lcom/twitter/sdk/android/core/e$1;-><init>(Lcom/twitter/sdk/android/core/e;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->a(Lcom/twitter/sdk/android/core/b;)V

    .line 73
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 75
    :catch_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/e;->a:Lcom/twitter/sdk/android/core/m;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/m;->a(J)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/twitter/sdk/android/core/d;
    .locals 2

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/e;->a:Lcom/twitter/sdk/android/core/m;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/l;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/d;

    if-eqz v0, :cond_0

    .line 2042
    iget-object v1, v0, Lcom/twitter/sdk/android/core/l;->a:Lcom/twitter/sdk/android/core/a;

    if-eqz v1, :cond_0

    .line 3042
    iget-object v1, v0, Lcom/twitter/sdk/android/core/l;->a:Lcom/twitter/sdk/android/core/a;

    .line 1082
    check-cast v1, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->isExpired()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 38
    monitor-exit p0

    return-object v0

    .line 41
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/e;->b()V

    .line 43
    iget-object v0, p0, Lcom/twitter/sdk/android/core/e;->a:Lcom/twitter/sdk/android/core/m;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/l;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/twitter/sdk/android/core/d;)Lcom/twitter/sdk/android/core/d;
    .locals 1

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/e;->a:Lcom/twitter/sdk/android/core/m;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/l;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/d;

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/core/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/e;->b()V

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/twitter/sdk/android/core/e;->a:Lcom/twitter/sdk/android/core/m;

    invoke-interface {p1}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/l;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

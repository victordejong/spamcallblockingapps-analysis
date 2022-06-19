.class final Lcom/google/android/gms/internal/ads/cka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dbi<",
        "TAppOpenAd;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/cju;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/cal;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/ckc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cju;Lcom/google/android/gms/internal/ads/cal;Lcom/google/android/gms/internal/ads/ckc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cka;->a:Lcom/google/android/gms/internal/ads/cju;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cka;->b:Lcom/google/android/gms/internal/ads/cal;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cka;->c:Lcom/google/android/gms/internal/ads/ckc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .line 24
    check-cast p1, Lcom/google/android/gms/internal/ads/anp;

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cka;->a:Lcom/google/android/gms/internal/ads/cju;

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cka;->a:Lcom/google/android/gms/internal/ads/cju;

    const/4 v2, 0x0

    .line 4059
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/cju;->e:Lcom/google/android/gms/internal/ads/dbt;

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->eM:Lcom/google/android/gms/internal/ads/af;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5017
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/anp;->m:Lcom/google/android/gms/internal/ads/aue;

    .line 6004
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/aue;->a:Lcom/google/android/gms/internal/ads/avj;

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cka;->a:Lcom/google/android/gms/internal/ads/cju;

    .line 6060
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cju;->c:Lcom/google/android/gms/internal/ads/ckb;

    .line 7008
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/avj;->a:Lcom/google/android/gms/internal/ads/aue;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/aue;->a(Lcom/google/android/gms/internal/ads/aue;Lcom/google/android/gms/internal/ads/ckb;)Lcom/google/android/gms/internal/ads/ckb;

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cka;->b:Lcom/google/android/gms/internal/ads/cal;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/cal;->a(Ljava/lang/Object;)V

    .line 33
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cka;->a:Lcom/google/android/gms/internal/ads/cju;

    .line 1061
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cju;->d:Lcom/google/android/gms/internal/ads/cmh;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cmh;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/akz;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/cqh;->a(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/bso;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/akz;->c()Lcom/google/android/gms/internal/ads/aor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/aor;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v2

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cka;->a:Lcom/google/android/gms/internal/ads/cju;

    monitor-enter v3

    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cka;->a:Lcom/google/android/gms/internal/ads/cju;

    .line 2059
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/cju;->e:Lcom/google/android/gms/internal/ads/dbt;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/akz;->b()Lcom/google/android/gms/internal/ads/arn;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/arn;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->eM:Lcom/google/android/gms/internal/ads/af;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cka;->a:Lcom/google/android/gms/internal/ads/cju;

    .line 2062
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cju;->a:Ljava/util/concurrent/Executor;

    .line 14
    new-instance v1, Lcom/google/android/gms/internal/ads/cjz;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/cjz;-><init>(Lcom/google/android/gms/internal/ads/cka;Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cka;->a:Lcom/google/android/gms/internal/ads/cju;

    .line 3060
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cju;->c:Lcom/google/android/gms/internal/ads/ckb;

    .line 15
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ckb;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cka;->a:Lcom/google/android/gms/internal/ads/cju;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cka;->c:Lcom/google/android/gms/internal/ads/ckc;

    .line 3063
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cju;->a(Lcom/google/android/gms/internal/ads/cmk;)Lcom/google/android/gms/internal/ads/aqw;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aqw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/akz;

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/akz;->c()Lcom/google/android/gms/internal/ads/aor;

    move-result-object v0

    .line 4048
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aor;->c:Lcom/google/android/gms/internal/ads/awa;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/awa;->G_()V

    .line 21
    :cond_2
    :goto_1
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzvh;->errorCode:I

    const-string v1, "AppOpenAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/cqb;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cka;->b:Lcom/google/android/gms/internal/ads/cal;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cal;->a()V

    .line 23
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

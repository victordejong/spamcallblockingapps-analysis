.class final Lcom/google/android/gms/internal/ads/cog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dbi<",
        "Lcom/google/android/gms/internal/ads/bhu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/coa;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/cal;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/coh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/coa;Lcom/google/android/gms/internal/ads/cal;Lcom/google/android/gms/internal/ads/coh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cog;->a:Lcom/google/android/gms/internal/ads/coa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cog;->b:Lcom/google/android/gms/internal/ads/cal;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cog;->c:Lcom/google/android/gms/internal/ads/coh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .line 19
    check-cast p1, Lcom/google/android/gms/internal/ads/bhu;

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cog;->a:Lcom/google/android/gms/internal/ads/coa;

    monitor-enter v0

    .line 5017
    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/anp;->m:Lcom/google/android/gms/internal/ads/aue;

    .line 6004
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/aue;->a:Lcom/google/android/gms/internal/ads/avj;

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cog;->a:Lcom/google/android/gms/internal/ads/coa;

    .line 6051
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/coa;->b:Lcom/google/android/gms/internal/ads/cnc;

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/avj;->a(Lcom/google/android/gms/internal/ads/cnc;)Lcom/google/android/gms/internal/ads/avj;

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cog;->b:Lcom/google/android/gms/internal/ads/cal;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/cal;->a(Ljava/lang/Object;)V

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cog;->a:Lcom/google/android/gms/internal/ads/coa;

    .line 6052
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/coa;->a:Ljava/util/concurrent/Executor;

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cog;->a:Lcom/google/android/gms/internal/ads/coa;

    .line 7051
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/coa;->b:Lcom/google/android/gms/internal/ads/cnc;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/cof;->a(Lcom/google/android/gms/internal/ads/cnc;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cog;->a:Lcom/google/android/gms/internal/ads/coa;

    .line 8051
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/coa;->b:Lcom/google/android/gms/internal/ads/cnc;

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/ads/reward/AdMetadataListener;->onAdMetadataChanged()V

    .line 26
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
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cog;->a:Lcom/google/android/gms/internal/ads/coa;

    .line 1053
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/coa;->c:Lcom/google/android/gms/internal/ads/cmh;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cmh;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bhx;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/cqh;->a(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/bso;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhx;->c()Lcom/google/android/gms/internal/ads/aor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/aor;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v1

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cog;->a:Lcom/google/android/gms/internal/ads/coa;

    monitor-enter v2

    if-eqz v0, :cond_1

    .line 8
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhx;->b()Lcom/google/android/gms/internal/ads/arn;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/arn;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cog;->a:Lcom/google/android/gms/internal/ads/coa;

    .line 2052
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/coa;->a:Ljava/util/concurrent/Executor;

    .line 9
    new-instance v3, Lcom/google/android/gms/internal/ads/coi;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/coi;-><init>(Lcom/google/android/gms/internal/ads/cog;Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cog;->a:Lcom/google/android/gms/internal/ads/coa;

    .line 3051
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/coa;->b:Lcom/google/android/gms/internal/ads/cnc;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnc;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cog;->a:Lcom/google/android/gms/internal/ads/coa;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cog;->c:Lcom/google/android/gms/internal/ads/coh;

    .line 3054
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/coa;->a(Lcom/google/android/gms/internal/ads/cmk;)Lcom/google/android/gms/internal/ads/bhz;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bhz;->a()Lcom/google/android/gms/internal/ads/bhx;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhx;->c()Lcom/google/android/gms/internal/ads/aor;

    move-result-object v0

    .line 4048
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aor;->c:Lcom/google/android/gms/internal/ads/awa;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/awa;->G_()V

    .line 16
    :goto_1
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzvh;->errorCode:I

    const-string v1, "RewardedAdLoader.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/cqb;->a(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cog;->b:Lcom/google/android/gms/internal/ads/cal;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cal;->a()V

    .line 18
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

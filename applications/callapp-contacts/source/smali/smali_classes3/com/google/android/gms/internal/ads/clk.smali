.class public final Lcom/google/android/gms/internal/ads/clk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cmh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/aqx<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/anp;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cmh<",
        "TR;TAdT;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/cmh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cmh<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/android/gms/internal/ads/crr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crr<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/android/gms/internal/ads/aqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/Executor;

.field private final e:Lcom/google/android/gms/internal/ads/cmh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cmh<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/clx<",
            "TAdT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cmh;Lcom/google/android/gms/internal/ads/cmh;Lcom/google/android/gms/internal/ads/crr;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cmh<",
            "TR;TAdT;>;",
            "Lcom/google/android/gms/internal/ads/cmh<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/clx<",
            "TAdT;>;>;",
            "Lcom/google/android/gms/internal/ads/crr<",
            "TAdT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/clk;->a:Lcom/google/android/gms/internal/ads/cmh;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/clk;->e:Lcom/google/android/gms/internal/ads/cmh;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/clk;->b:Lcom/google/android/gms/internal/ads/crr;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/clk;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final declared-synchronized b()Lcom/google/android/gms/internal/ads/aqx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clk;->c:Lcom/google/android/gms/internal/ads/aqx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/cmj;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cmm;",
            "Lcom/google/android/gms/internal/ads/cmj<",
            "TR;>;)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TAdT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cmm;->b:Lcom/google/android/gms/internal/ads/cmk;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/cmj;->a(Lcom/google/android/gms/internal/ads/cmk;)Lcom/google/android/gms/internal/ads/aqw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aqw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aqx;

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aqx;->a()Lcom/google/android/gms/internal/ads/cpo;

    move-result-object v0

    .line 11
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    .line 12
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/cpo;->f:Ljava/lang/String;

    .line 13
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/cpo;->j:Lcom/google/android/gms/internal/ads/zzwc;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/clr;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/clk;->d:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/clr;-><init>(Lcom/google/android/gms/internal/ads/cmj;Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/cri;)V

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/clk;->e:Lcom/google/android/gms/internal/ads/cmh;

    .line 17
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/cmh;->a(Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/cmj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbc;->c(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/cln;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/cln;-><init>(Lcom/google/android/gms/internal/ads/clk;Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/clr;Lcom/google/android/gms/internal/ads/cmj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/clk;->d:Ljava/util/concurrent/Executor;

    .line 19
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/dbc;->a(Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final a(Lcom/google/android/gms/internal/ads/crj;Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/cmj;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crj<",
            "TAdT;>;",
            "Lcom/google/android/gms/internal/ads/cmm;",
            "Lcom/google/android/gms/internal/ads/cmj<",
            "TR;>;)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TAdT;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cmm;->b:Lcom/google/android/gms/internal/ads/cmk;

    .line 22
    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ads/cmj;->a(Lcom/google/android/gms/internal/ads/cmk;)Lcom/google/android/gms/internal/ads/aqw;

    move-result-object p3

    .line 23
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/crj;->c:Lcom/google/android/gms/internal/ads/anp;

    if-eqz v0, :cond_1

    .line 24
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/aqw;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/aqx;

    .line 25
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/aqx;->d()Lcom/google/android/gms/internal/ads/cmi;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 26
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/crj;->c:Lcom/google/android/gms/internal/ads/anp;

    .line 1016
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/anp;->k:Lcom/google/android/gms/internal/ads/cmi;

    .line 28
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/aqx;->d()Lcom/google/android/gms/internal/ads/cmi;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/cmi;->a(Lcom/google/android/gms/internal/ads/cmi;)V

    .line 29
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/crj;->c:Lcom/google/android/gms/internal/ads/anp;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    .line 30
    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/crj;->b:Lcom/google/android/gms/internal/ads/cpk;

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/aqw;->a(Lcom/google/android/gms/internal/ads/cpk;)Lcom/google/android/gms/internal/ads/aqw;

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/clk;->a:Lcom/google/android/gms/internal/ads/cmh;

    new-instance v0, Lcom/google/android/gms/internal/ads/clm;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/clm;-><init>(Lcom/google/android/gms/internal/ads/aqw;)V

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/cmh;->a(Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/cmj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/clk;->a:Lcom/google/android/gms/internal/ads/cmh;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/cmh;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/aqx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/clk;->c:Lcom/google/android/gms/internal/ads/aqx;

    return-object p1
.end method

.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/clk;->b()Lcom/google/android/gms/internal/ads/aqx;

    move-result-object v0

    return-object v0
.end method

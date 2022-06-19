.class final synthetic Lcom/google/android/gms/internal/ads/cls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/clt;

.field private final b:Lcom/google/android/gms/internal/ads/cmm;

.field private final c:Lcom/google/android/gms/internal/ads/cmj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/clt;Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/cmj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cls;->a:Lcom/google/android/gms/internal/ads/clt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cls;->b:Lcom/google/android/gms/internal/ads/cmm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cls;->c:Lcom/google/android/gms/internal/ads/cmj;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cls;->a:Lcom/google/android/gms/internal/ads/clt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cls;->b:Lcom/google/android/gms/internal/ads/cmm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cls;->c:Lcom/google/android/gms/internal/ads/cmj;

    check-cast p1, Lcom/google/android/gms/internal/ads/cmf;

    .line 1013
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/cmf;->b:Lcom/google/android/gms/internal/ads/cri;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cmf;->a:Lcom/google/android/gms/internal/ads/zzauj;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1016
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/clt;->a:Lcom/google/android/gms/internal/ads/cqz;

    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/cqz;->a(Lcom/google/android/gms/internal/ads/cri;)Lcom/google/android/gms/internal/ads/crj;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    if-nez v3, :cond_1

    .line 1020
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v5, :cond_3

    if-eqz p1, :cond_3

    .line 1022
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cmm;->b:Lcom/google/android/gms/internal/ads/cmk;

    .line 1023
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/cmj;->a(Lcom/google/android/gms/internal/ads/cmk;)Lcom/google/android/gms/internal/ads/aqw;

    move-result-object v1

    .line 1024
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/aqw;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/aqx;

    .line 1025
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/aqx;->c()Lcom/google/android/gms/internal/ads/aor;

    move-result-object v1

    .line 1055
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/aor;->a:Lcom/google/android/gms/internal/ads/cti;

    sget-object v4, Lcom/google/android/gms/internal/ads/ctj;->zzhue:Lcom/google/android/gms/internal/ads/ctj;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/aor;->d:Lcom/google/android/gms/internal/ads/boz;

    .line 2023
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzauj;->zzdyv:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/dtl;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2024
    new-instance v6, Lcom/google/android/gms/internal/ads/zzcnp;

    sget-object v7, Lcom/google/android/gms/internal/ads/cqj;->zzhow:Lcom/google/android/gms/internal/ads/cqj;

    const-string v8, "Pool key missing from removeUrl call."

    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzcnp;-><init>(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v6

    goto :goto_1

    .line 2025
    :cond_2
    sget-object v7, Lcom/google/android/gms/internal/ads/bpf;->a:Lcom/google/android/gms/internal/ads/daq;

    .line 2026
    new-instance v8, Lcom/google/android/gms/internal/ads/bpe;

    invoke-direct {v8, v6}, Lcom/google/android/gms/internal/ads/bpe;-><init>(Lcom/google/android/gms/internal/ads/boz;)V

    new-instance v9, Lcom/google/android/gms/internal/ads/bph;

    invoke-direct {v9, v6}, Lcom/google/android/gms/internal/ads/bph;-><init>(Lcom/google/android/gms/internal/ads/boz;)V

    invoke-virtual {v6, p1, v8, v9, v7}, Lcom/google/android/gms/internal/ads/boz;->a(Lcom/google/android/gms/internal/ads/zzauj;Lcom/google/android/gms/internal/ads/bpg;Lcom/google/android/gms/internal/ads/bpg;Lcom/google/android/gms/internal/ads/daq;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v6

    .line 1056
    :goto_1
    invoke-virtual {v2, v4, v6}, Lcom/google/android/gms/internal/ads/cst;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object v2

    .line 1057
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/csz;->a()Lcom/google/android/gms/internal/ads/csu;

    move-result-object v2

    .line 1058
    new-instance v4, Lcom/google/android/gms/internal/ads/aou;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/aou;-><init>(Lcom/google/android/gms/internal/ads/aor;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/aor;->f:Ljava/util/concurrent/Executor;

    invoke-static {v2, v4, v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    .line 1026
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/clt;->c:Lcom/google/android/gms/internal/ads/dbi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/clt;->b:Ljava/util/concurrent/Executor;

    .line 1027
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    .line 1028
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/clx;

    invoke-direct {v0, v3, p1, v5}, Lcom/google/android/gms/internal/ads/clx;-><init>(Lcom/google/android/gms/internal/ads/cri;Lcom/google/android/gms/internal/ads/zzauj;Lcom/google/android/gms/internal/ads/crj;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method

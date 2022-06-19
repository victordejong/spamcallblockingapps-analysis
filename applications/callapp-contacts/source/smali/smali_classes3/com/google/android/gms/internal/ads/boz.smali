.class public final Lcom/google/android/gms/internal/ads/boz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/dbs;

.field final b:Lcom/google/android/gms/internal/ads/bon;

.field final c:Lcom/google/android/gms/internal/ads/dsb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsb<",
            "Lcom/google/android/gms/internal/ads/bpk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dbs;Lcom/google/android/gms/internal/ads/bon;Lcom/google/android/gms/internal/ads/dsb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dbs;",
            "Lcom/google/android/gms/internal/ads/bon;",
            "Lcom/google/android/gms/internal/ads/dsb<",
            "Lcom/google/android/gms/internal/ads/bpk;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/boz;->a:Lcom/google/android/gms/internal/ads/dbs;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/boz;->b:Lcom/google/android/gms/internal/ads/bon;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/boz;->c:Lcom/google/android/gms/internal/ads/dsb;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/zzauj;Lcom/google/android/gms/internal/ads/bpg;Lcom/google/android/gms/internal/ads/bpg;Lcom/google/android/gms/internal/ads/daq;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RetT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzauj;",
            "Lcom/google/android/gms/internal/ads/bpg<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/bpg<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/daq<",
            "Ljava/io/InputStream;",
            "TRetT;>;)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TRetT;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzauj;->packageName:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcpo;

    sget-object v0, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p2

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/bpg;->a(Lcom/google/android/gms/internal/ads/zzauj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p2

    const-class v0, Ljava/util/concurrent/ExecutionException;

    sget-object v1, Lcom/google/android/gms/internal/ads/boy;->a:Lcom/google/android/gms/internal/ads/daq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/boz;->a:Lcom/google/android/gms/internal/ads/dbs;

    .line 1015
    invoke-static {p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dac;->a(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p2

    .line 15
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dbc;->c(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/boz;->a:Lcom/google/android/gms/internal/ads/dbs;

    .line 16
    invoke-virtual {p2, p4, v0}, Lcom/google/android/gms/internal/ads/dbc;->a(Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object p2

    const-class v0, Lcom/google/android/gms/internal/ads/zzcpo;

    new-instance v1, Lcom/google/android/gms/internal/ads/bpb;

    invoke-direct {v1, p0, p3, p1, p4}, Lcom/google/android/gms/internal/ads/bpb;-><init>(Lcom/google/android/gms/internal/ads/boz;Lcom/google/android/gms/internal/ads/bpg;Lcom/google/android/gms/internal/ads/zzauj;Lcom/google/android/gms/internal/ads/daq;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/boz;->a:Lcom/google/android/gms/internal/ads/dbs;

    .line 17
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/dbc;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object p1

    return-object p1
.end method

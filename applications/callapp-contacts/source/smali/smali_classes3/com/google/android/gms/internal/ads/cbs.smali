.class public final Lcom/google/android/gms/internal/ads/cbs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/daq<",
        "Lcom/google/android/gms/internal/ads/zzauj;",
        "Lcom/google/android/gms/internal/ads/cbt;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/Executor;

.field private b:Lcom/google/android/gms/internal/ads/bnv;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/bnv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cbs;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cbs;->b:Lcom/google/android/gms/internal/ads/bnv;

    return-void
.end method


# virtual methods
.method public final synthetic zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzauj;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cbs;->b:Lcom/google/android/gms/internal/ads/bnv;

    .line 1007
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzauj;->packageName:Ljava/lang/String;

    .line 1008
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1010
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcpo;

    sget-object v2, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    .line 1011
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    goto :goto_0

    .line 1012
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bnv;->c:Lcom/google/android/gms/internal/ads/bom;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/bom;->a(Lcom/google/android/gms/internal/ads/zzauj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    .line 1013
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1015
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbc;->c(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->dh:Lcom/google/android/gms/internal/ads/af;

    .line 1017
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 1018
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/bnv;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/dbc;->a(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v1

    const-class v3, Ljava/lang/Throwable;

    new-instance v4, Lcom/google/android/gms/internal/ads/bnu;

    invoke-direct {v4, v0, p1, v2}, Lcom/google/android/gms/internal/ads/bnu;-><init>(Lcom/google/android/gms/internal/ads/bnv;Lcom/google/android/gms/internal/ads/zzauj;I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bnv;->b:Lcom/google/android/gms/internal/ads/dbs;

    .line 1019
    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/dbc;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/cbq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/cbq;-><init>(Lcom/google/android/gms/internal/ads/zzauj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cbs;->a:Ljava/util/concurrent/Executor;

    .line 2019
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method

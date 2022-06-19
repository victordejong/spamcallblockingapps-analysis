.class final synthetic Lcom/google/android/gms/internal/ads/bwc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bwd;

.field private final b:Lcom/google/android/gms/internal/ads/cpk;

.field private final c:Lcom/google/android/gms/internal/ads/cov;

.field private final d:Lcom/google/android/gms/internal/ads/bsk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bwd;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bwc;->a:Lcom/google/android/gms/internal/ads/bwd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bwc;->b:Lcom/google/android/gms/internal/ads/cpk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bwc;->c:Lcom/google/android/gms/internal/ads/cov;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bwc;->d:Lcom/google/android/gms/internal/ads/bsk;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 8

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bwc;->a:Lcom/google/android/gms/internal/ads/bwd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwc;->b:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bwc;->c:Lcom/google/android/gms/internal/ads/cov;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bwc;->d:Lcom/google/android/gms/internal/ads/bsk;

    .line 1076
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/bwd;->b:Lcom/google/android/gms/internal/ads/bvx;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    .line 1077
    invoke-interface {v1, v0, v6}, Lcom/google/android/gms/internal/ads/bsk;->b(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    iget v1, v6, Lcom/google/android/gms/internal/ads/cov;->M:I

    int-to-long v3, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bwd;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1078
    invoke-static {v0, v3, v4, v1, p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 2010
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/bvx;->a:Lcom/google/android/gms/common/util/f;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v3

    .line 2011
    iget-object v5, v6, Lcom/google/android/gms/internal/ads/cov;->v:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 2013
    new-instance v0, Lcom/google/android/gms/internal/ads/bwa;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/bwa;-><init>(Lcom/google/android/gms/internal/ads/bvx;JLjava/lang/String;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-object p1
.end method

.class final synthetic Lcom/google/android/gms/internal/ads/buc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bua;

.field private final b:Lcom/google/android/gms/internal/ads/cpk;

.field private final c:Lcom/google/android/gms/internal/ads/cov;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bua;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/buc;->a:Lcom/google/android/gms/internal/ads/bua;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/buc;->b:Lcom/google/android/gms/internal/ads/cpk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/buc;->c:Lcom/google/android/gms/internal/ads/cov;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/buc;->a:Lcom/google/android/gms/internal/ads/bua;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/buc;->b:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/buc;->c:Lcom/google/android/gms/internal/ads/cov;

    .line 1018
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bua;->b:Lcom/google/android/gms/internal/ads/btd;

    .line 1019
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/btd;->b(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    iget v2, v2, Lcom/google/android/gms/internal/ads/cov;->M:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/bua;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1020
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    .line 1021
    new-instance v2, Lcom/google/android/gms/internal/ads/buf;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/buf;-><init>(Lcom/google/android/gms/internal/ads/bua;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bua;->c:Lcom/google/android/gms/internal/ads/dbs;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    return-void
.end method

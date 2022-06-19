.class public final Lcom/google/android/gms/internal/ads/ciz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/chb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/chb<",
        "Lcom/google/android/gms/internal/ads/civ;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/rh;

.field private b:Ljava/util/concurrent/ScheduledExecutorService;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/rh;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ciz;->a:Lcom/google/android/gms/internal/ads/rh;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ciz;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ciz;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dbt;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/civ;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciz;->a:Lcom/google/android/gms/internal/ads/rh;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/rh;->a()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->ci:Lcom/google/android/gms/internal/ads/af;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ciz;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/ads/cix;->a:Lcom/google/android/gms/internal/ads/cxu;

    sget-object v2, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/dbs;

    .line 1020
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method

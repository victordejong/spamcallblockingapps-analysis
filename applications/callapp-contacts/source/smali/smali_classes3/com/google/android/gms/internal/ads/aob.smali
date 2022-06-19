.class final synthetic Lcom/google/android/gms/internal/ads/aob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aoa;

.field private final b:Lcom/google/android/gms/internal/ads/dbi;

.field private final c:Lcom/google/android/gms/internal/ads/dbt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aoa;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aob;->a:Lcom/google/android/gms/internal/ads/aoa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aob;->b:Lcom/google/android/gms/internal/ads/dbi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aob;->c:Lcom/google/android/gms/internal/ads/dbt;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aob;->a:Lcom/google/android/gms/internal/ads/aoa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aob;->b:Lcom/google/android/gms/internal/ads/dbi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aob;->c:Lcom/google/android/gms/internal/ads/dbt;

    check-cast p1, Lcom/google/android/gms/internal/ads/anp;

    if-eqz p1, :cond_0

    .line 1026
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/dbi;->a(Ljava/lang/Object;)V

    .line 1027
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/cy;->a:Lcom/google/android/gms/internal/ads/bz;

    .line 1028
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aoa;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1029
    invoke-static {v2, v3, v4, p1, v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method

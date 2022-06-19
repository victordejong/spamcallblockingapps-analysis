.class final Lcom/google/android/gms/internal/ads/bmt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dbi<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/bmi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bmi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bmt;->a:Lcom/google/android/gms/internal/ads/bmi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmt;->a:Lcom/google/android/gms/internal/ads/bmi;

    const/4 v1, 0x1

    .line 2174
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/bmi;->b:Z

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmt;->a:Lcom/google/android/gms/internal/ads/bmi;

    const-string v2, "com.google.android.gms.ads.MobileAds"

    const-string v3, ""

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bmt;->a:Lcom/google/android/gms/internal/ads/bmi;

    .line 2175
    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/bmi;->c:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    .line 14
    invoke-static {v0, v2, v1, v3, v5}, Lcom/google/android/gms/internal/ads/bmi;->a(Lcom/google/android/gms/internal/ads/bmi;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmt;->a:Lcom/google/android/gms/internal/ads/bmi;

    .line 2177
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bmi;->h:Ljava/util/concurrent/Executor;

    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/bms;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/bms;-><init>(Lcom/google/android/gms/internal/ads/bmt;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 7

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bmt;->a:Lcom/google/android/gms/internal/ads/bmi;

    const/4 v0, 0x1

    .line 1174
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/bmi;->b:Z

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bmt;->a:Lcom/google/android/gms/internal/ads/bmi;

    const-string v0, "com.google.android.gms.ads.MobileAds"

    const/4 v1, 0x0

    const-string v2, "Internal Error."

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bmt;->a:Lcom/google/android/gms/internal/ads/bmi;

    .line 1175
    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/bmi;->c:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    .line 6
    invoke-static {p1, v0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/bmi;->a(Lcom/google/android/gms/internal/ads/bmi;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bmt;->a:Lcom/google/android/gms/internal/ads/bmi;

    .line 1178
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bmi;->d:Lcom/google/android/gms/internal/ads/zp;

    .line 7
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

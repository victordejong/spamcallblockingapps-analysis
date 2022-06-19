.class final synthetic Lcom/google/android/gms/internal/ads/bmm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bmi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bmi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bmm;->a:Lcom/google/android/gms/internal/ads/bmi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmm;->a:Lcom/google/android/gms/internal/ads/bmi;

    .line 1156
    monitor-enter v0

    .line 1157
    :try_start_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/bmi;->b:Z

    if-eqz v1, :cond_0

    .line 1158
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "com.google.android.gms.ads.MobileAds"

    const/4 v2, 0x0

    const-string v3, "Timeout."

    .line 1160
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/bmi;->c:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    .line 1161
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/google/android/gms/internal/ads/bmi;->a(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 1162
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bmi;->d:Lcom/google/android/gms/internal/ads/zp;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    .line 1163
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

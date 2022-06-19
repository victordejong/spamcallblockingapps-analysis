.class final synthetic Lcom/google/android/gms/internal/ads/bmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bmi;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/google/android/gms/internal/ads/zp;

.field private final d:Ljava/lang/String;

.field private final e:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bmi;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zp;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bmp;->a:Lcom/google/android/gms/internal/ads/bmi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bmp;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bmp;->c:Lcom/google/android/gms/internal/ads/zp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bmp;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/bmp;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmp;->a:Lcom/google/android/gms/internal/ads/bmi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmp;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bmp;->c:Lcom/google/android/gms/internal/ads/zp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bmp;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/bmp;->e:J

    .line 1147
    monitor-enter v1

    .line 1148
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zp;->isDone()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    const-string v7, "Timeout."

    .line 1150
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v8

    sub-long/2addr v8, v4

    long-to-int v4, v8

    .line 1151
    invoke-virtual {v0, v3, v6, v7, v4}, Lcom/google/android/gms/internal/ads/bmi;->a(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 1152
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bmi;->k:Lcom/google/android/gms/internal/ads/blr;

    const-string v5, "timeout"

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/blr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bmi;->l:Lcom/google/android/gms/internal/ads/axn;

    const-string v4, "timeout"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/axn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zp;->set(Ljava/lang/Object;)Z

    .line 1155
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

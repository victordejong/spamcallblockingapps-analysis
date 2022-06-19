.class public final Lcom/google/android/gms/internal/ads/oi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gi;


# instance fields
.field private a:Z

.field private b:J

.field private c:J

.field private d:Lcom/google/android/gms/internal/ads/tb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/tb;->a:Lcom/google/android/gms/internal/ads/tb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oi;->d:Lcom/google/android/gms/internal/ads/tb;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oi;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/oi;->c:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/oi;->a:Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oi;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/oi;->o()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/oi;->c(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/oi;->a:Z

    :cond_0
    return-void
.end method

.method public final c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/oi;->b:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/oi;->a:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/oi;->c:J

    :cond_0
    return-void
.end method

.method public final c0()Lcom/google/android/gms/internal/ads/tb;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/gi;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/gi;->o()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/oi;->c(J)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/gi;->c0()Lcom/google/android/gms/internal/ads/tb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oi;->d:Lcom/google/android/gms/internal/ads/tb;

    return-void
.end method

.method public final d0(Lcom/google/android/gms/internal/ads/tb;)Lcom/google/android/gms/internal/ads/tb;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oi;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/oi;->o()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/oi;->c(J)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oi;->d:Lcom/google/android/gms/internal/ads/tb;

    return-object p1
.end method

.method public final o()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/oi;->b:J

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/oi;->a:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/oi;->c:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/oi;->d:Lcom/google/android/gms/internal/ads/tb;

    .line 2
    iget v5, v4, Lcom/google/android/gms/internal/ads/tb;->b:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/db;->b(J)J

    move-result-wide v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/tb;->a(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

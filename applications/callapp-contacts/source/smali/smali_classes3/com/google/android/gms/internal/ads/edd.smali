.class public final Lcom/google/android/gms/internal/ads/edd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ecv;


# instance fields
.field private a:Z

.field private b:J

.field private c:J

.field private d:Lcom/google/android/gms/internal/ads/dvz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/dvz;->a:Lcom/google/android/gms/internal/ads/dvz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/edd;->d:Lcom/google/android/gms/internal/ads/dvz;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dvz;)Lcom/google/android/gms/internal/ads/dvz;
    .locals 2

    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/edd;->a:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/edd;->y()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/edd;->a(J)V

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/edd;->d:Lcom/google/android/gms/internal/ads/dvz;

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/edd;->a:Z

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/edd;->c:J

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/edd;->a:Z

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/edd;->b:J

    .line 13
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/edd;->a:Z

    if-eqz p1, :cond_0

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/edd;->c:J

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ecv;)V
    .locals 2

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ecv;->y()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/edd;->a(J)V

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ecv;->z()Lcom/google/android/gms/internal/ads/dvz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/edd;->d:Lcom/google/android/gms/internal/ads/dvz;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/edd;->a:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/edd;->y()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/edd;->a(J)V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/edd;->a:Z

    :cond_0
    return-void
.end method

.method public final y()J
    .locals 6

    .line 19
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/edd;->b:J

    .line 20
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/edd;->a:Z

    if-eqz v2, :cond_1

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/edd;->c:J

    sub-long/2addr v2, v4

    .line 22
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/edd;->d:Lcom/google/android/gms/internal/ads/dvz;

    iget v4, v4, Lcom/google/android/gms/internal/ads/dvz;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 23
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/dvj;->b(J)J

    move-result-wide v2

    goto :goto_0

    .line 24
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/edd;->d:Lcom/google/android/gms/internal/ads/dvz;

    .line 1006
    iget v4, v4, Lcom/google/android/gms/internal/ads/dvz;->d:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public final z()Lcom/google/android/gms/internal/ads/dvz;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edd;->d:Lcom/google/android/gms/internal/ads/dvz;

    return-object v0
.end method

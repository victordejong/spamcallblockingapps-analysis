.class public final Lcom/google/android/gms/internal/ads/na;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/u9;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/z8;

.field private e:Z

.field private f:J

.field private g:J

.field private h:Lcom/google/android/gms/internal/ads/d6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/z8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/na;->d:Lcom/google/android/gms/internal/ads/z8;

    sget-object p1, Lcom/google/android/gms/internal/ads/d6;->a:Lcom/google/android/gms/internal/ads/d6;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/na;->h:Lcom/google/android/gms/internal/ads/d6;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/na;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/na;->g:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/na;->e:Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/d6;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/na;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/na;->v()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/na;->d(J)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/na;->h:Lcom/google/android/gms/internal/ads/d6;

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/na;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/na;->v()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/na;->d(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/na;->e:Z

    :cond_0
    return-void
.end method

.method public final d(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/na;->f:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/na;->e:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/na;->g:J

    :cond_0
    return-void
.end method

.method public final u()Lcom/google/android/gms/internal/ads/d6;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/na;->h:Lcom/google/android/gms/internal/ads/d6;

    return-object v0
.end method

.method public final v()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/na;->f:J

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/na;->e:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/na;->g:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/na;->h:Lcom/google/android/gms/internal/ads/d6;

    .line 2
    iget v5, v4, Lcom/google/android/gms/internal/ads/d6;->c:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/x2;->b(J)J

    move-result-wide v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/d6;->a(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

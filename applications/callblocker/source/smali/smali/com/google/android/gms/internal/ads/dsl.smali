.class public final Lcom/google/android/gms/internal/ads/dsl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsd;


# instance fields
.field private a:Z

.field private b:J

.field private c:J

.field private d:Lcom/google/android/gms/internal/ads/dlj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/dlj;->a:Lcom/google/android/gms/internal/ads/dlj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dsl;->d:Lcom/google/android/gms/internal/ads/dlj;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dlj;)Lcom/google/android/gms/internal/ads/dlj;
    .locals 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dsl;->a:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsl;->w()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dsl;->a(J)V

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dsl;->d:Lcom/google/android/gms/internal/ads/dlj;

    .line 29
    return-object p1
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dsl;->a:Z

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dsl;->c:J

    .line 6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dsl;->a:Z

    .line 7
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 12
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dsl;->b:J

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dsl;->a:Z

    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dsl;->c:J

    .line 15
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dsd;)V
    .locals 2

    .prologue
    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dsd;->w()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dsl;->a(J)V

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dsd;->x()Lcom/google/android/gms/internal/ads/dlj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dsl;->d:Lcom/google/android/gms/internal/ads/dlj;

    .line 18
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dsl;->a:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsl;->w()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dsl;->a(J)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dsl;->a:Z

    .line 11
    :cond_0
    return-void
.end method

.method public final w()J
    .locals 6

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dsl;->b:J

    .line 20
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dsl;->a:Z

    if-eqz v2, :cond_0

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dsl;->c:J

    sub-long/2addr v2, v4

    .line 22
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dsl;->d:Lcom/google/android/gms/internal/ads/dlj;

    iget v4, v4, Lcom/google/android/gms/internal/ads/dlj;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 23
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/dkr;->b(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 25
    :cond_0
    :goto_0
    return-wide v0

    .line 24
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dsl;->d:Lcom/google/android/gms/internal/ads/dlj;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/dlj;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final x()Lcom/google/android/gms/internal/ads/dlj;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsl;->d:Lcom/google/android/gms/internal/ads/dlj;

    return-object v0
.end method

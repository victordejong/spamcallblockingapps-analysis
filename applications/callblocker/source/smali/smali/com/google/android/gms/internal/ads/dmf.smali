.class Lcom/google/android/gms/internal/ads/dmf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field protected a:Landroid/media/AudioTrack;

.field private b:Z

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dmc;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dmf;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dmf;->h:J

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dmf;->g:J

    .line 13
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dmf;->i:J

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmf;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 15
    return-void
.end method

.method public a(Landroid/media/AudioTrack;Z)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dmf;->a:Landroid/media/AudioTrack;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/dmf;->b:Z

    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dmf;->g:J

    .line 5
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dmf;->d:J

    .line 6
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dmf;->e:J

    .line 7
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dmf;->f:J

    .line 8
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmf;->c:I

    .line 10
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public b()J
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c()J
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmf;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 19
    :goto_0
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmf;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    goto :goto_0
.end method

.method public final e()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 20
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmf;->g:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmf;->g:J

    sub-long/2addr v0, v2

    .line 22
    iget v2, p0, Lcom/google/android/gms/internal/ads/dmf;->c:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 23
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmf;->i:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dmf;->h:J

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 35
    :goto_0
    return-wide v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmf;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    .line 25
    const/4 v0, 0x1

    if-ne v4, v0, :cond_1

    move-wide v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-wide v0, 0xffffffffL

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dmf;->a:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v5

    int-to-long v6, v5

    and-long/2addr v0, v6

    .line 28
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dmf;->b:Z

    if-eqz v5, :cond_3

    .line 29
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 30
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmf;->d:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dmf;->f:J

    .line 31
    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmf;->f:J

    add-long/2addr v0, v2

    .line 32
    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmf;->d:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_4

    .line 33
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmf;->e:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dmf;->e:J

    .line 34
    :cond_4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dmf;->d:J

    .line 35
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmf;->e:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final f()J
    .locals 4

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dmf;->e()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmf;->c:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

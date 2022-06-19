.class final Lcom/google/android/gms/internal/ads/dme;
.super Lcom/google/android/gms/internal/ads/dmf;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final b:Landroid/media/AudioTimestamp;

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dmf;-><init>(Lcom/google/android/gms/internal/ads/dmc;)V

    .line 2
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dme;->b:Landroid/media/AudioTimestamp;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Landroid/media/AudioTrack;Z)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 4
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dmf;->a(Landroid/media/AudioTrack;Z)V

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dme;->c:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dme;->d:J

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dme;->e:J

    .line 8
    return-void
.end method

.method public final a()Z
    .locals 8

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dme;->a:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dme;->b:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dme;->b:Landroid/media/AudioTimestamp;

    iget-wide v2, v1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 12
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dme;->d:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 13
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dme;->c:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dme;->c:J

    .line 14
    :cond_0
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dme;->d:J

    .line 15
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dme;->c:J

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dme;->e:J

    .line 16
    :cond_1
    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dme;->b:Landroid/media/AudioTimestamp;

    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dme;->e:J

    return-wide v0
.end method

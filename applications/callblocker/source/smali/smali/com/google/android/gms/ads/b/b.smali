.class public Lcom/google/android/gms/ads/b/b;
.super Landroid/widget/FrameLayout;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private a:Lcom/google/android/gms/ads/j;

.field private b:Z

.field private c:Lcom/google/android/gms/internal/ads/bk;

.field private d:Landroid/widget/ImageView$ScaleType;

.field private e:Z

.field private f:Lcom/google/android/gms/internal/ads/bm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final declared-synchronized a(Lcom/google/android/gms/internal/ads/bk;)V
    .locals 1

    .prologue
    .line 14
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/b/b;->c:Lcom/google/android/gms/internal/ads/bk;

    .line 15
    iget-boolean v0, p0, Lcom/google/android/gms/ads/b/b;->b:Z

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/ads/b/b;->a:Lcom/google/android/gms/ads/j;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/bk;->a(Lcom/google/android/gms/ads/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_0
    monitor-exit p0

    return-void

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Lcom/google/android/gms/internal/ads/bm;)V
    .locals 1

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/b/b;->f:Lcom/google/android/gms/internal/ads/bm;

    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/ads/b/b;->e:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/ads/b/b;->d:Landroid/widget/ImageView$ScaleType;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/bm;->a(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    monitor-exit p0

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/b/b;->e:Z

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/ads/b/b;->d:Landroid/widget/ImageView$ScaleType;

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/ads/b/b;->f:Lcom/google/android/gms/internal/ads/bm;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/b/b;->f:Lcom/google/android/gms/internal/ads/bm;

    iget-object v1, p0, Lcom/google/android/gms/ads/b/b;->d:Landroid/widget/ImageView$ScaleType;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/bm;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 22
    :cond_0
    return-void
.end method

.method public setMediaContent(Lcom/google/android/gms/ads/j;)V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/b/b;->b:Z

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/ads/b/b;->a:Lcom/google/android/gms/ads/j;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/ads/b/b;->c:Lcom/google/android/gms/internal/ads/bk;

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/ads/b/b;->c:Lcom/google/android/gms/internal/ads/bk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bk;->a(Lcom/google/android/gms/ads/j;)V

    .line 13
    :cond_0
    return-void
.end method

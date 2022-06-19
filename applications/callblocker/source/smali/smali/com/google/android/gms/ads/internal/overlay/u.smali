.class public final Lcom/google/android/gms/ads/internal/overlay/u;
.super Lcom/google/android/gms/internal/ads/nx;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private b:Landroid/app/Activity;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nx;-><init>()V

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->c:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->d:Z

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/u;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/u;->b:Landroid/app/Activity;

    .line 6
    return-void
.end method

.method private final declared-synchronized a()V
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->d:Z

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/o;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/o;->h_()V

    .line 49
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    const-string/jumbo v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    .line 8
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/u;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-nez v2, :cond_2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 25
    :cond_1
    :goto_0
    return-void

    .line 12
    :cond_2
    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 15
    :cond_3
    if-nez p1, :cond_5

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->b:Lcom/google/android/gms/internal/ads/dxs;

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->b:Lcom/google/android/gms/internal/ads/dxs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dxs;->e()V

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "shouldCallOnOverlayOpened"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz v0, :cond_5

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/o;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/o;->d()V

    .line 22
    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->a()Lcom/google/android/gms/ads/internal/overlay/b;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/u;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a:Lcom/google/android/gms/ads/internal/overlay/d;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/u;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->i:Lcom/google/android/gms/ads/internal/overlay/t;

    .line 23
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/b;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/d;Lcom/google/android/gms/ads/internal/overlay/t;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 33
    const-string/jumbo v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/u;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->c:Z

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->c:Z

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/o;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/o;->c()V

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/o;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/o;->f_()V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/u;->a()V

    .line 39
    :cond_1
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/u;->a()V

    .line 42
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/u;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/u;->a()V

    .line 45
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

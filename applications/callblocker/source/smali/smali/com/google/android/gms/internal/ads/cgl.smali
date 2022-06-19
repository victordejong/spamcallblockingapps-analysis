.class public final Lcom/google/android/gms/internal/ads/cgl;
.super Lcom/google/android/gms/internal/ads/qx;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cfy;

.field private final b:Lcom/google/android/gms/internal/ads/cfa;

.field private final c:Lcom/google/android/gms/internal/ads/chb;

.field private d:Lcom/google/android/gms/internal/ads/bdr;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private e:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cfy;Lcom/google/android/gms/internal/ads/cfa;Lcom/google/android/gms/internal/ads/chb;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/qx;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cgl;->e:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cgl;->a:Lcom/google/android/gms/internal/ads/cfy;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cgl;->b:Lcom/google/android/gms/internal/ads/cfa;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cgl;->c:Lcom/google/android/gms/internal/ads/chb;

    .line 6
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cgl;)Lcom/google/android/gms/internal/ads/bdr;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cgl;Lcom/google/android/gms/internal/ads/bdr;)Lcom/google/android/gms/internal/ads/bdr;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    return-object p1
.end method

.method private final declared-synchronized j()Z
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bdr;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 42
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cgl;->d(Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    if-eqz v0, :cond_0

    .line 32
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 33
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/amh;->i()Lcom/google/android/gms/internal/ads/aqk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/aqk;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_0
    monitor-exit p0

    return-void

    .line 32
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dzr;)V
    .locals 2

    .prologue
    .line 68
    const-string/jumbo v0, "setAdMetadataListener can only be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 69
    if-nez p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->b:Lcom/google/android/gms/internal/ads/cfa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cfa;->a(Lcom/google/android/gms/ads/reward/a;)V

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->b:Lcom/google/android/gms/internal/ads/cfa;

    new-instance v1, Lcom/google/android/gms/internal/ads/cgn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/cgn;-><init>(Lcom/google/android/gms/internal/ads/cgl;Lcom/google/android/gms/internal/ads/dzr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cfa;->a(Lcom/google/android/gms/ads/reward/a;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/qw;)V
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "#008 Must be called on the main UI thread.: setRewardedAdSkuListener"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->b:Lcom/google/android/gms/internal/ads/cfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cfa;->a(Lcom/google/android/gms/internal/ads/qw;)V

    .line 67
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/rb;)V
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "setRewardedVideoAdListener can only be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->b:Lcom/google/android/gms/internal/ads/cfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cfa;->a(Lcom/google/android/gms/internal/ads/rb;)V

    .line 64
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/rh;)V
    .locals 5

    .prologue
    .line 8
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 9
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/rh;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/d;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 11
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cgl;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ct:Lcom/google/android/gms/internal/ads/ect;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/cfv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cfv;-><init>(Ljava/lang/String;)V

    .line 16
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cgl;->a:Lcom/google/android/gms/internal/ads/cfy;

    sget v2, Lcom/google/android/gms/internal/ads/cgy;->a:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cfy;->a(I)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cgl;->a:Lcom/google/android/gms/internal/ads/cfy;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/rh;->a:Lcom/google/android/gms/internal/ads/dya;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/rh;->b:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ads/cgk;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/cgk;-><init>(Lcom/google/android/gms/internal/ads/cgl;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/cfy;->a(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/btl;Lcom/google/android/gms/internal/ads/bto;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "setUserId must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->c:Lcom/google/android/gms/internal/ads/chb;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/chb;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "setImmersiveMode must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 87
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/cgl;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    if-eqz v0, :cond_0

    .line 39
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 40
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/amh;->i()Lcom/google/android/gms/internal/ads/aqk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/aqk;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    monitor-exit p0

    return-void

    .line 39
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 7
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cgl;->j()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cgl;->a(Lcom/google/android/gms/dynamic/a;)V

    .line 29
    return-void
.end method

.method public final declared-synchronized c(Lcom/google/android/gms/dynamic/a;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 22
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "destroy must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cgl;->b:Lcom/google/android/gms/internal/ads/cfa;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cfa;->a(Lcom/google/android/gms/ads/reward/a;)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    if-eqz v1, :cond_0

    .line 25
    if-nez p1, :cond_1

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/amh;->i()Lcom/google/android/gms/internal/ads/aqk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/aqk;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_0
    monitor-exit p0

    return-void

    .line 25
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->an:Lcom/google/android/gms/internal/ads/ect;

    .line 80
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 85
    :goto_0
    monitor-exit p0

    return-void

    .line 83
    :cond_0
    :try_start_1
    const-string/jumbo v0, "#008 Must be called on the main UI thread.: setCustomData"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->c:Lcom/google/android/gms/internal/ads/chb;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/chb;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cgl;->b(Lcom/google/android/gms/dynamic/a;)V

    .line 36
    return-void
.end method

.method public final declared-synchronized d(Lcom/google/android/gms/dynamic/a;)V
    .locals 3

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "showAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 55
    :goto_0
    monitor-exit p0

    return-void

    .line 48
    :cond_0
    if-eqz p1, :cond_1

    .line 49
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 51
    check-cast v0, Landroid/app/Activity;

    .line 54
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/cgl;->e:Z

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/bdr;->a(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cgl;->c(Lcom/google/android/gms/dynamic/a;)V

    .line 21
    return-void
.end method

.method public final declared-synchronized f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->j()Lcom/google/android/gms/internal/ads/apk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->j()Lcom/google/android/gms/internal/ads/apk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/apk;->a()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 59
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 74
    const-string/jumbo v0, "getAdMetadata can only be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bdr;->e()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bdr;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized i()Lcom/google/android/gms/internal/ads/eav;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 89
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->dB:Lcom/google/android/gms/internal/ads/ect;

    .line 90
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 93
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgl;->d:Lcom/google/android/gms/internal/ads/bdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->j()Lcom/google/android/gms/internal/ads/apk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

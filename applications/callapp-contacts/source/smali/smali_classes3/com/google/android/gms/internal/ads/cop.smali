.class public final Lcom/google/android/gms/internal/ads/cop;
.super Lcom/google/android/gms/internal/ads/tv;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/coa;

.field private final b:Lcom/google/android/gms/internal/ads/cnc;

.field private final c:Lcom/google/android/gms/internal/ads/cpj;

.field private d:Lcom/google/android/gms/internal/ads/bhu;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/coa;Lcom/google/android/gms/internal/ads/cnc;Lcom/google/android/gms/internal/ads/cpj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/tv;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cop;->e:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cop;->a:Lcom/google/android/gms/internal/ads/coa;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cop;->b:Lcom/google/android/gms/internal/ads/cnc;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cop;->c:Lcom/google/android/gms/internal/ads/cpj;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cop;)Lcom/google/android/gms/internal/ads/bhu;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cop;->d:Lcom/google/android/gms/internal/ads/bhu;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cop;Lcom/google/android/gms/internal/ads/bhu;)Lcom/google/android/gms/internal/ads/bhu;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cop;->d:Lcom/google/android/gms/internal/ads/bhu;

    return-object p1
.end method

.method private final declared-synchronized j()Z
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->d:Lcom/google/android/gms/internal/ads/bhu;

    if-eqz v0, :cond_0

    .line 7040
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bhu;->c:Lcom/google/android/gms/internal/ads/aom;

    .line 8013
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aom;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 94
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 42
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cop;->a(Lcom/google/android/gms/dynamic/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/dynamic/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "showAd must be called on the main UI thread."

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->d:Lcom/google/android/gms/internal/ads/bhu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 46
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 49
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    .line 50
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 51
    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->d:Lcom/google/android/gms/internal/ads/bhu;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/cop;->e:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/bhu;->a(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ekz;)V
    .locals 2

    const-string v0, "setAdMetadataListener can only be called from the UI thread."

    .line 68
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cop;->b:Lcom/google/android/gms/internal/ads/cnc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/cnc;->a(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->b:Lcom/google/android/gms/internal/ads/cnc;

    new-instance v1, Lcom/google/android/gms/internal/ads/cor;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/cor;-><init>(Lcom/google/android/gms/internal/ads/cop;Lcom/google/android/gms/internal/ads/ekz;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnc;->a(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/tq;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread.: setRewardedAdSkuListener"

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->b:Lcom/google/android/gms/internal/ads/cnc;

    .line 6024
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cnc;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/tz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "setRewardedVideoAdListener can only be called from the UI thread."

    .line 62
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->b:Lcom/google/android/gms/internal/ads/cnc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cnc;->a(Lcom/google/android/gms/internal/ads/tz;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/zzavt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 9
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzavt;->zzbvf:Ljava/lang/String;

    .line 1001
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->db:Lcom/google/android/gms/internal/ads/af;

    .line 1002
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 1003
    check-cast v1, Ljava/lang/String;

    .line 1004
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/as;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cop;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->dd:Lcom/google/android/gms/internal/ads/af;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_1
    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/ads/coc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/coc;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cop;->d:Lcom/google/android/gms/internal/ads/bhu;

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cop;->a:Lcom/google/android/gms/internal/ads/coa;

    sget v2, Lcom/google/android/gms/internal/ads/cpg;->a:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/coa;->a(I)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cop;->a:Lcom/google/android/gms/internal/ads/coa;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzavt;->zzdvn:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzavt;->zzbvf:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/cos;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/cos;-><init>(Lcom/google/android/gms/internal/ads/cop;)V

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/google/android/gms/internal/ads/coa;->a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cai;Lcom/google/android/gms/internal/ads/cal;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "setUserId must be called on the main UI thread."

    .line 76
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->c:Lcom/google/android/gms/internal/ads/cpj;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/cpj;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setImmersiveMode must be called on the main UI thread."

    .line 86
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 87
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/cop;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAdMetadata can only be called from the UI thread."

    .line 74
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->d:Lcom/google/android/gms/internal/ads/bhu;

    if-eqz v0, :cond_0

    .line 6043
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bhu;->b:Lcom/google/android/gms/internal/ads/ate;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ate;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/dynamic/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->d:Lcom/google/android/gms/internal/ads/bhu;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->d:Lcom/google/android/gms/internal/ads/bhu;

    .line 2010
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/anp;->j:Lcom/google/android/gms/internal/ads/asj;

    .line 33
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/asj;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->aA:Lcom/google/android/gms/internal/ads/af;

    .line 80
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 82
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "#008 Must be called on the main UI thread.: setCustomData"

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->c:Lcom/google/android/gms/internal/ads/cpj;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/cpj;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Lcom/google/android/gms/dynamic/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    .line 37
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->d:Lcom/google/android/gms/internal/ads/bhu;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->d:Lcom/google/android/gms/internal/ads/bhu;

    .line 3010
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/anp;->j:Lcom/google/android/gms/internal/ads/asj;

    .line 40
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/asj;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final c()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "isLoaded must be called on the main UI thread."

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cop;->j()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cop;->b(Lcom/google/android/gms/dynamic/b;)V

    return-void
.end method

.method public final declared-synchronized d(Lcom/google/android/gms/dynamic/b;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->b:Lcom/google/android/gms/internal/ads/cnc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnc;->a(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->d:Lcom/google/android/gms/internal/ads/bhu;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    .line 26
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cop;->d:Lcom/google/android/gms/internal/ads/bhu;

    .line 1010
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/anp;->j:Lcom/google/android/gms/internal/ads/asj;

    .line 26
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/asj;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cop;->c(Lcom/google/android/gms/dynamic/b;)V

    return-void
.end method

.method public final f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cop;->d(Lcom/google/android/gms/dynamic/b;)V

    return-void
.end method

.method public final declared-synchronized g()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->d:Lcom/google/android/gms/internal/ads/bhu;

    if-eqz v0, :cond_0

    .line 4013
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/anp;->l:Lcom/google/android/gms/internal/ads/arf;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->d:Lcom/google/android/gms/internal/ads/bhu;

    .line 5013
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/anp;->l:Lcom/google/android/gms/internal/ads/arf;

    .line 6010
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/arf;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 59
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h()Z
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->d:Lcom/google/android/gms/internal/ads/bhu;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3041
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bhu;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/adt;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3042
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->R()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public final declared-synchronized i()Lcom/google/android/gms/internal/ads/emj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->em:Lcom/google/android/gms/internal/ads/af;

    .line 90
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 92
    monitor-exit p0

    return-object v1

    .line 93
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cop;->d:Lcom/google/android/gms/internal/ads/bhu;

    if-eqz v0, :cond_1

    .line 7013
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/anp;->l:Lcom/google/android/gms/internal/ads/arf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

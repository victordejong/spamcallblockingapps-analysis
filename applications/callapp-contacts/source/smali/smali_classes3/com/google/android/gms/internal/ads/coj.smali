.class public final Lcom/google/android/gms/internal/ads/coj;
.super Lcom/google/android/gms/internal/ads/up;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/coa;

.field private final b:Lcom/google/android/gms/internal/ads/cnc;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/cpj;

.field private final e:Landroid/content/Context;

.field private f:Lcom/google/android/gms/internal/ads/bhu;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/coa;Landroid/content/Context;Lcom/google/android/gms/internal/ads/cnc;Lcom/google/android/gms/internal/ads/cpj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/up;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/coj;->c:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/coj;->a:Lcom/google/android/gms/internal/ads/coa;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/coj;->b:Lcom/google/android/gms/internal/ads/cnc;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/coj;->d:Lcom/google/android/gms/internal/ads/cpj;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/coj;->e:Landroid/content/Context;

    .line 7
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->aq:Lcom/google/android/gms/internal/ads/af;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/coj;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/coj;)Lcom/google/android/gms/internal/ads/bhu;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/coj;->f:Lcom/google/android/gms/internal/ads/bhu;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/coj;Lcom/google/android/gms/internal/ads/bhu;)Lcom/google/android/gms/internal/ads/bhu;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/coj;->f:Lcom/google/android/gms/internal/ads/bhu;

    return-object p1
.end method

.method private final declared-synchronized a(Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/internal/ads/uy;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 66
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coj;->b:Lcom/google/android/gms/internal/ads/cnc;

    .line 7012
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cnc;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 68
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/coj;->e:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbc(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzvq;->zzcip:Lcom/google/android/gms/internal/ads/zzvf;

    if-nez p2, :cond_0

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 69
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/coj;->b:Lcom/google/android/gms/internal/ads/cnc;

    sget-object p2, Lcom/google/android/gms/internal/ads/cqj;->zzhoy:Lcom/google/android/gms/internal/ads/cqj;

    .line 71
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/cqh;->a(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/cnc;->a(Lcom/google/android/gms/internal/ads/zzvh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/coj;->f:Lcom/google/android/gms/internal/ads/bhu;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 75
    monitor-exit p0

    return-void

    .line 76
    :cond_1
    :try_start_2
    new-instance p2, Lcom/google/android/gms/internal/ads/coc;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/coc;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coj;->a:Lcom/google/android/gms/internal/ads/coa;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/coa;->a(I)V

    .line 78
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/coj;->a:Lcom/google/android/gms/internal/ads/coa;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coj;->c:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/col;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/col;-><init>(Lcom/google/android/gms/internal/ads/coj;)V

    invoke-virtual {p3, p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/coa;->a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cai;Lcom/google/android/gms/internal/ads/cal;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 43
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coj;->f:Lcom/google/android/gms/internal/ads/bhu;

    if-eqz v0, :cond_0

    .line 4043
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bhu;->b:Lcom/google/android/gms/internal/ads/ate;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ate;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/dynamic/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 15
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/coj;->g:Z

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/coj;->a(Lcom/google/android/gms/dynamic/b;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/dynamic/b;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coj;->f:Lcom/google/android/gms/internal/ads/bhu;

    if-nez v0, :cond_0

    const-string p1, "Rewarded can not be shown before loaded"

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/coj;->b:Lcom/google/android/gms/internal/ads/cnc;

    sget-object p2, Lcom/google/android/gms/internal/ads/cqj;->zzhpd:Lcom/google/android/gms/internal/ads/cqj;

    const/4 v0, 0x0

    .line 21
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/cqh;->a(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/cnc;->a_(Lcom/google/android/gms/internal/ads/zzvh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    .line 24
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coj;->f:Lcom/google/android/gms/internal/ads/bhu;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/bhu;->a(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/emc;)V
    .locals 2

    if-nez p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/coj;->b:Lcom/google/android/gms/internal/ads/cnc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/cnc;->a(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coj;->b:Lcom/google/android/gms/internal/ads/cnc;

    new-instance v1, Lcom/google/android/gms/internal/ads/com;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/com;-><init>(Lcom/google/android/gms/internal/ads/coj;Lcom/google/android/gms/internal/ads/emc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnc;->a(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/emd;)V
    .locals 1

    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coj;->b:Lcom/google/android/gms/internal/ads/cnc;

    .line 6020
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cnc;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ur;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coj;->b:Lcom/google/android/gms/internal/ads/cnc;

    .line 4014
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cnc;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/uz;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 35
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coj;->b:Lcom/google/android/gms/internal/ads/cnc;

    .line 4016
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cnc;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/zzaww;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 47
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coj;->d:Lcom/google/android/gms/internal/ads/cpj;

    .line 49
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaww;->zzear:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/cpj;->a:Ljava/lang/String;

    .line 50
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->aA:Lcom/google/android/gms/internal/ads/af;

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaww;->zzeas:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/cpj;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/internal/ads/uy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 11
    :try_start_0
    sget v0, Lcom/google/android/gms/internal/ads/cpg;->b:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/coj;->a(Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/internal/ads/uy;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
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

    .line 63
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 64
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/coj;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/internal/ads/uy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 13
    :try_start_0
    sget v0, Lcom/google/android/gms/internal/ads/cpg;->c:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/coj;->a(Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/internal/ads/uy;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Z
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coj;->f:Lcom/google/android/gms/internal/ads/bhu;

    if-eqz v0, :cond_0

    .line 3038
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/bhu;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coj;->f:Lcom/google/android/gms/internal/ads/bhu;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/anp;->l:Lcom/google/android/gms/internal/ads/arf;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coj;->f:Lcom/google/android/gms/internal/ads/bhu;

    .line 2013
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/anp;->l:Lcom/google/android/gms/internal/ads/arf;

    .line 3010
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/arf;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 29
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/ul;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 45
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coj;->f:Lcom/google/android/gms/internal/ads/bhu;

    if-eqz v0, :cond_0

    .line 5039
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bhu;->d:Lcom/google/android/gms/internal/ads/ul;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/emj;
    .locals 2

    .line 55
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->em:Lcom/google/android/gms/internal/ads/af;

    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coj;->f:Lcom/google/android/gms/internal/ads/bhu;

    if-eqz v0, :cond_1

    .line 6013
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/anp;->l:Lcom/google/android/gms/internal/ads/arf;

    return-object v0

    :cond_1
    return-object v1
.end method

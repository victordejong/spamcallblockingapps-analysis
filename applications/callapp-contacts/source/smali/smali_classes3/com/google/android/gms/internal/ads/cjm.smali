.class public final Lcom/google/android/gms/internal/ads/cjm;
.super Lcom/google/android/gms/internal/ads/ekv;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzab;
.implements Lcom/google/android/gms/internal/ads/atk;
.implements Lcom/google/android/gms/internal/ads/efu;


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/afq;

.field protected b:Lcom/google/android/gms/internal/ads/alb;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/view/ViewGroup;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/android/gms/internal/ads/cjk;

.field private final h:Lcom/google/android/gms/internal/ads/ckb;

.field private final i:Lcom/google/android/gms/internal/ads/zzbar;

.field private j:J

.field private k:Lcom/google/android/gms/internal/ads/akl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/afq;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cjk;Lcom/google/android/gms/internal/ads/ckb;Lcom/google/android/gms/internal/ads/zzbar;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ekv;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cjm;->j:J

    .line 4
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->d:Landroid/view/ViewGroup;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cjm;->a:Lcom/google/android/gms/internal/ads/afq;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cjm;->c:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cjm;->f:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cjm;->g:Lcom/google/android/gms/internal/ads/cjk;

    .line 9
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/cjm;->h:Lcom/google/android/gms/internal/ads/ckb;

    .line 1020
    iget-object p1, p5, Lcom/google/android/gms/internal/ads/ckb;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/cjm;->i:Lcom/google/android/gms/internal/ads/zzbar;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cjm;)Landroid/view/ViewGroup;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cjm;->d:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/alb;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 4040
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 4041
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4042
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/alb;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    .line 4044
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cjm;Lcom/google/android/gms/internal/ads/alb;)Lcom/google/android/gms/ads/internal/overlay/zzr;
    .locals 4

    .line 4029
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/alb;->b()Z

    move-result p1

    .line 4030
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->cM:Lcom/google/android/gms/internal/ads/af;

    .line 4031
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 4032
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4033
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/zzq;-><init>()V

    const/16 v2, 0x32

    .line 4034
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->size:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4035
    :goto_0
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingLeft:I

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    move p1, v0

    .line 4036
    :goto_1
    iput p1, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingRight:I

    .line 4037
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingTop:I

    .line 4038
    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingBottom:I

    .line 4039
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->c:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/ads/internal/overlay/zzab;)V

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/cjm;)Lcom/google/android/gms/internal/ads/zzbar;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cjm;->i:Lcom/google/android/gms/internal/ads/zzbar;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/cjm;Lcom/google/android/gms/internal/ads/alb;)V
    .locals 1

    .line 5020
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/alb;->b:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_0

    .line 5021
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/alb;->b:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/adt;->a(Lcom/google/android/gms/internal/ads/efu;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/cjm;)Lcom/google/android/gms/internal/ads/zzvt;
    .locals 1

    .line 5079
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cjm;->b:Lcom/google/android/gms/internal/ads/alb;

    .line 5080
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/alb;->F_()Lcom/google/android/gms/internal/ads/coy;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 5081
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/cps;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/cjm;)Lcom/google/android/gms/internal/ads/ckb;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cjm;->h:Lcom/google/android/gms/internal/ads/ckb;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->b:Lcom/google/android/gms/internal/ads/alb;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cjm;->j:J

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->b:Lcom/google/android/gms/internal/ads/alb;

    .line 2012
    iget v0, v0, Lcom/google/android/gms/internal/ads/alb;->c:I

    if-gtz v0, :cond_1

    return-void

    .line 58
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/akl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cjm;->a:Lcom/google/android/gms/internal/ads/afq;

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/afq;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/akl;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/f;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cjm;->k:Lcom/google/android/gms/internal/ads/akl;

    .line 60
    new-instance v2, Lcom/google/android/gms/internal/ads/cjo;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/cjo;-><init>(Lcom/google/android/gms/internal/ads/cjm;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/akl;->a(ILjava/lang/Runnable;)V

    return-void
.end method

.method final declared-synchronized a(I)V
    .locals 5

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->b:Lcom/google/android/gms/internal/ads/alb;

    if-eqz v0, :cond_0

    .line 2025
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/alb;->f:Lcom/google/android/gms/internal/ads/egh;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->h:Lcom/google/android/gms/internal/ads/ckb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cjm;->b:Lcom/google/android/gms/internal/ads/alb;

    .line 3025
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/alb;->f:Lcom/google/android/gms/internal/ads/egh;

    .line 4016
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ckb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->h:Lcom/google/android/gms/internal/ads/ckb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ckb;->b()V

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->k:Lcom/google/android/gms/internal/ads/akl;

    if-eqz v0, :cond_1

    .line 71
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/internal/ads/eex;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/eex;->b(Lcom/google/android/gms/internal/ads/efc;)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->b:Lcom/google/android/gms/internal/ads/alb;

    if-eqz v0, :cond_3

    .line 73
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/cjm;->j:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    goto :goto_0

    .line 75
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/cjm;->j:J

    sub-long v2, v0, v2

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->b:Lcom/google/android/gms/internal/ads/alb;

    .line 4026
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/alb;->g:Lcom/google/android/gms/internal/ads/akr;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/akr;->a(JI)V

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cjm;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 1

    .line 50
    sget v0, Lcom/google/android/gms/internal/ads/aks;->c:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cjm;->a(I)V

    return-void
.end method

.method public final declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 82
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->b:Lcom/google/android/gms/internal/ads/alb;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/anp;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getAdUnitId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 100
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized getVideoController()Lcom/google/android/gms/internal/ads/emk;
    .locals 1

    monitor-enter p0

    .line 113
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->g:Lcom/google/android/gms/internal/ads/cjk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cju;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 86
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resume()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    .line 88
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setImmersiveMode(Z)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized setManualImpressionsEnabled(Z)V
    .locals 0

    monitor-enter p0

    .line 112
    monitor-exit p0

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final showInterstitial()V
    .locals 0

    return-void
.end method

.method public final stopLoading()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/bn;)V
    .locals 0

    monitor-enter p0

    .line 115
    monitor-exit p0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/egc;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->h:Lcom/google/android/gms/internal/ads/ckb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ckb;->a(Lcom/google/android/gms/internal/ads/egc;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/ekc;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/eki;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/ekz;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/ele;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/elk;)V
    .locals 0

    monitor-enter p0

    .line 111
    monitor-exit p0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/elm;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/emd;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/ri;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/rn;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/tz;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaaz;)V
    .locals 0

    monitor-enter p0

    .line 114
    monitor-exit p0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/internal/ads/ekj;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvt;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p1, "setAdSize must be called on the main UI thread."

    .line 98
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwc;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->g:Lcom/google/android/gms/internal/ads/cjk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cju;->a(Lcom/google/android/gms/internal/ads/zzwc;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzzj;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvq;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbc(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvq;->zzcip:Lcom/google/android/gms/internal/ads/zzvf;

    if-nez v0, :cond_0

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cjm;->h:Lcom/google/android/gms/internal/ads/ckb;

    sget-object v0, Lcom/google/android/gms/internal/ads/cqj;->zzhoy:Lcom/google/android/gms/internal/ads/cqj;

    const/4 v2, 0x0

    .line 21
    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/cqh;->a(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ckb;->a(Lcom/google/android/gms/internal/ads/zzvh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return v1

    .line 24
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cjm;->isLoading()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 25
    monitor-exit p0

    return v1

    .line 26
    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/cjr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cjr;-><init>(Lcom/google/android/gms/internal/ads/cjm;)V

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cjm;->g:Lcom/google/android/gms/internal/ads/cjk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cjm;->f:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/cjq;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/cjq;-><init>(Lcom/google/android/gms/internal/ads/cjm;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/cju;->a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cai;Lcom/google/android/gms/internal/ads/cal;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzbl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zze(Lcom/google/android/gms/dynamic/b;)V
    .locals 0

    return-void
.end method

.method public final zzki()Lcom/google/android/gms/dynamic/b;
    .locals 1

    const-string v0, "getAdFrame must be called on the main UI thread."

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->d:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzkj()V
    .locals 0

    monitor-enter p0

    .line 110
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzkk()Lcom/google/android/gms/internal/ads/zzvt;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "getAdSize must be called on the main UI thread."

    .line 92
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjm;->b:Lcom/google/android/gms/internal/ads/alb;

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cjm;->c:Landroid/content/Context;

    .line 95
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/alb;->F_()Lcom/google/android/gms/internal/ads/coy;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/cps;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 97
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzkl()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 101
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzkm()Lcom/google/android/gms/internal/ads/emj;
    .locals 1

    monitor-enter p0

    .line 102
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkn()Lcom/google/android/gms/internal/ads/ele;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzko()Lcom/google/android/gms/internal/ads/eki;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzwg()V
    .locals 1

    .line 48
    sget v0, Lcom/google/android/gms/internal/ads/aks;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cjm;->a(I)V

    return-void
.end method

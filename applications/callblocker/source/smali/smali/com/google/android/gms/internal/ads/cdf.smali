.class public final Lcom/google/android/gms/internal/ads/cdf;
.super Lcom/google/android/gms/internal/ads/dzm;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/y;
.implements Lcom/google/android/gms/internal/ads/arl;
.implements Lcom/google/android/gms/internal/ads/dva;


# instance fields
.field protected a:Lcom/google/android/gms/internal/ads/ake;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/afh;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/view/ViewGroup;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/android/gms/internal/ads/ccy;

.field private final h:Lcom/google/android/gms/internal/ads/cdn;

.field private final i:Lcom/google/android/gms/internal/ads/yd;

.field private j:J

.field private k:Lcom/google/android/gms/internal/ads/ajp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/afh;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ccy;Lcom/google/android/gms/internal/ads/cdn;Lcom/google/android/gms/internal/ads/yd;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dzm;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->d:Landroid/view/ViewGroup;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cdf;->b:Lcom/google/android/gms/internal/ads/afh;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cdf;->c:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cdf;->f:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cdf;->g:Lcom/google/android/gms/internal/ads/ccy;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/cdf;->h:Lcom/google/android/gms/internal/ads/cdn;

    .line 9
    invoke-virtual {p5, p0}, Lcom/google/android/gms/internal/ads/cdn;->a(Lcom/google/android/gms/internal/ads/arl;)V

    .line 10
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/cdf;->i:Lcom/google/android/gms/internal/ads/yd;

    .line 11
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cdf;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ake;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 130
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cdf;->c(Lcom/google/android/gms/internal/ads/ake;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cdf;Lcom/google/android/gms/internal/ads/ake;)Lcom/google/android/gms/ads/internal/overlay/q;
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cdf;->b(Lcom/google/android/gms/internal/ads/ake;)Lcom/google/android/gms/ads/internal/overlay/q;

    move-result-object v0

    return-object v0
.end method

.method private final b(Lcom/google/android/gms/internal/ads/ake;)Lcom/google/android/gms/ads/internal/overlay/q;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ake;->f()Z

    move-result v3

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cg:Lcom/google/android/gms/internal/ads/ect;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 30
    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/p;

    invoke-direct {v4}, Lcom/google/android/gms/ads/internal/overlay/p;-><init>()V

    .line 31
    const/16 v0, 0x32

    iput v0, v4, Lcom/google/android/gms/ads/internal/overlay/p;->e:I

    .line 32
    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    iput v0, v4, Lcom/google/android/gms/ads/internal/overlay/p;->a:I

    .line 33
    if-eqz v3, :cond_1

    move v0, v2

    :goto_1
    iput v0, v4, Lcom/google/android/gms/ads/internal/overlay/p;->b:I

    .line 34
    iput v2, v4, Lcom/google/android/gms/ads/internal/overlay/p;->c:I

    .line 35
    iput v1, v4, Lcom/google/android/gms/ads/internal/overlay/p;->d:I

    .line 36
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/q;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdf;->c:Landroid/content/Context;

    invoke-direct {v0, v1, v4, p0}, Lcom/google/android/gms/ads/internal/overlay/q;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/p;Lcom/google/android/gms/ads/internal/overlay/y;)V

    return-object v0

    :cond_0
    move v0, v2

    .line 32
    goto :goto_0

    :cond_1
    move v0, v1

    .line 33
    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/cdf;)Lcom/google/android/gms/internal/ads/yd;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->i:Lcom/google/android/gms/internal/ads/yd;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/cdf;Lcom/google/android/gms/internal/ads/ake;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cdf;->d(Lcom/google/android/gms/internal/ads/ake;)V

    return-void
.end method

.method private static c(Lcom/google/android/gms/internal/ads/ake;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v0, -0x2

    .line 37
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 38
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ake;->f()Z

    move-result v0

    .line 40
    if-eqz v0, :cond_0

    const/16 v0, 0xb

    .line 41
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 42
    return-object v1

    .line 40
    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/cdf;)Lcom/google/android/gms/internal/ads/dyd;
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cdf;->x()Lcom/google/android/gms/internal/ads/dyd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/cdf;)Lcom/google/android/gms/internal/ads/cdn;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->h:Lcom/google/android/gms/internal/ads/cdn;

    return-object v0
.end method

.method private final d(Lcom/google/android/gms/internal/ads/ake;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/ake;->a(Lcom/google/android/gms/internal/ads/dva;)V

    .line 44
    return-void
.end method

.method private final w()V
    .locals 6

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->a:Lcom/google/android/gms/internal/ads/ake;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->a:Lcom/google/android/gms/internal/ads/ake;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ake;->h()Lcom/google/android/gms/internal/ads/dvi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->h:Lcom/google/android/gms/internal/ads/cdn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdf;->a:Lcom/google/android/gms/internal/ads/ake;

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ake;->h()Lcom/google/android/gms/internal/ads/dvi;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cdn;->a(Lcom/google/android/gms/internal/ads/dvi;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->h:Lcom/google/android/gms/internal/ads/cdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cdn;->a()V

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->k:Lcom/google/android/gms/internal/ads/ajp;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->k:Lcom/google/android/gms/internal/ads/ajp;

    .line 68
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->f()Lcom/google/android/gms/internal/ads/due;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/due;->b(Lcom/google/android/gms/internal/ads/duj;)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->a:Lcom/google/android/gms/internal/ads/ake;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->a:Lcom/google/android/gms/internal/ads/ake;

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/cdf;->j:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ake;->a(J)V

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cdf;->b()V

    .line 72
    :cond_3
    return-void
.end method

.method private final x()Lcom/google/android/gms/internal/ads/dyd;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdf;->a:Lcom/google/android/gms/internal/ads/ake;

    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ake;->a()Lcom/google/android/gms/internal/ads/cgq;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/chk;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/dyd;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "getAdFrame must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->d:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dve;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->h:Lcom/google/android/gms/internal/ads/cdn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cdn;->a(Lcom/google/android/gms/internal/ads/dve;)V

    .line 85
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/dyd;)V
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dyk;)V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->g:Lcom/google/android/gms/internal/ads/ccy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ccy;->a(Lcom/google/android/gms/internal/ads/dyk;)V

    .line 15
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dyz;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dza;)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dzr;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dzw;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/eac;)V
    .locals 0

    .prologue
    .line 105
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eau;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ebg;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/ecn;)V
    .locals 0

    .prologue
    .line 108
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/oi;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/oo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/rb;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/u;)V
    .locals 0

    .prologue
    .line 109
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 0

    .prologue
    .line 106
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/dya;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 16
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "loadAd must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdf;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ve;->o(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dya;->s:Lcom/google/android/gms/internal/ads/dxu;

    if-nez v1, :cond_1

    .line 18
    const-string/jumbo v1, "Failed to load the ad because app ID is missing."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdf;->h:Lcom/google/android/gms/internal/ads/cdn;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cdn;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 21
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cdf;->q()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/cdk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cdk;-><init>(Lcom/google/android/gms/internal/ads/cdf;)V

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdf;->g:Lcom/google/android/gms/internal/ads/ccy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cdf;->f:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/cdj;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/cdj;-><init>(Lcom/google/android/gms/internal/ads/cdf;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/ccy;->a(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/btl;Lcom/google/android/gms/internal/ads/bto;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->a:Lcom/google/android/gms/internal/ads/ake;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->a:Lcom/google/android/gms/internal/ads/ake;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public final declared-synchronized i()V
    .locals 0

    .prologue
    .line 104
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized j()Lcom/google/android/gms/internal/ads/dyd;
    .locals 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->a:Lcom/google/android/gms/internal/ads/ake;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdf;->a:Lcom/google/android/gms/internal/ads/ake;

    .line 89
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ake;->a()Lcom/google/android/gms/internal/ads/cgq;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/chk;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/dyd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 91
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j_()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cdf;->w()V

    .line 46
    return-void
.end method

.method public final declared-synchronized k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized m()Lcom/google/android/gms/internal/ads/eav;
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final o()Lcom/google/android/gms/internal/ads/dzw;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/ads/dza;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized q()Z
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->g:Lcom/google/android/gms/internal/ads/ccy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ccy;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r()Lcom/google/android/gms/internal/ads/eba;
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public final s()V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->a:Lcom/google/android/gms/internal/ads/ake;

    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/cdf;->j:J

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->a:Lcom/google/android/gms/internal/ads/ake;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ake;->c()I

    move-result v0

    .line 53
    if-lez v0, :cond_0

    .line 55
    new-instance v1, Lcom/google/android/gms/internal/ads/ajp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cdf;->b:Lcom/google/android/gms/internal/ads/afh;

    .line 56
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/afh;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/ajp;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/e;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cdf;->k:Lcom/google/android/gms/internal/ads/ajp;

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdf;->k:Lcom/google/android/gms/internal/ads/ajp;

    new-instance v2, Lcom/google/android/gms/internal/ads/cdh;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/cdh;-><init>(Lcom/google/android/gms/internal/ads/cdf;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ajp;->a(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final t()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cdf;->w()V

    .line 48
    return-void
.end method

.method final synthetic u()V
    .locals 2

    .prologue
    .line 123
    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdf;->b:Lcom/google/android/gms/internal/ads/afh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/afh;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/cdi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cdi;-><init>(Lcom/google/android/gms/internal/ads/cdf;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method final synthetic v()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cdf;->w()V

    return-void
.end method

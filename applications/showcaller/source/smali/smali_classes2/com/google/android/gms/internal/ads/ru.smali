.class public final Lcom/google/android/gms/internal/ads/ru;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/p70;

.field private final b:Lcom/google/android/gms/internal/ads/xq;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Lcom/google/android/gms/ads/s;

.field final e:Lcom/google/android/gms/internal/ads/xr;

.field private f:Lcom/google/android/gms/internal/ads/kq;

.field private g:Lcom/google/android/gms/ads/b;

.field private h:[Lcom/google/android/gms/ads/f;

.field private i:Lcom/google/android/gms/ads/admanager/b;

.field private j:Lcom/google/android/gms/internal/ads/ts;

.field private k:Lcom/google/android/gms/ads/t;

.field private l:Ljava/lang/String;

.field private final m:Landroid/view/ViewGroup;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private n:I

.field private o:Z

.field private p:Lcom/google/android/gms/ads/n;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 7

    .line 1
    sget-object v4, Lcom/google/android/gms/internal/ads/xq;->a:Lcom/google/android/gms/internal/ads/xq;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ru;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/xq;Lcom/google/android/gms/internal/ads/ts;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 7

    .line 2
    sget-object v4, Lcom/google/android/gms/internal/ads/xq;->a:Lcom/google/android/gms/internal/ads/xq;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ru;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/xq;Lcom/google/android/gms/internal/ads/ts;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 7

    .line 3
    sget-object v4, Lcom/google/android/gms/internal/ads/xq;->a:Lcom/google/android/gms/internal/ads/xq;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ru;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/xq;Lcom/google/android/gms/internal/ads/ts;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V
    .locals 7

    .line 4
    sget-object v4, Lcom/google/android/gms/internal/ads/xq;->a:Lcom/google/android/gms/internal/ads/xq;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ru;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/xq;Lcom/google/android/gms/internal/ads/ts;I)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/xq;Lcom/google/android/gms/internal/ads/ts;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Lcom/google/android/gms/internal/ads/p70;

    invoke-direct {p5}, Lcom/google/android/gms/internal/ads/p70;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ru;->a:Lcom/google/android/gms/internal/ads/p70;

    new-instance p5, Lcom/google/android/gms/ads/s;

    .line 6
    invoke-direct {p5}, Lcom/google/android/gms/ads/s;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ru;->d:Lcom/google/android/gms/ads/s;

    new-instance p5, Lcom/google/android/gms/internal/ads/qu;

    .line 7
    invoke-direct {p5, p0}, Lcom/google/android/gms/internal/ads/qu;-><init>(Lcom/google/android/gms/internal/ads/ru;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ru;->e:Lcom/google/android/gms/internal/ads/xr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ru;->m:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ru;->b:Lcom/google/android/gms/internal/ads/xq;

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    .line 8
    invoke-direct {p4, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ru;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p6, p0, Lcom/google/android/gms/internal/ads/ru;->n:I

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    :try_start_0
    new-instance p6, Lcom/google/android/gms/internal/ads/zzbdt;

    .line 10
    invoke-direct {p6, p4, p2}, Lcom/google/android/gms/internal/ads/zzbdt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/ads/zzbdt;->a(Z)[Lcom/google/android/gms/ads/f;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ru;->h:[Lcom/google/android/gms/ads/f;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzbdt;->b()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ru;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ru;->h:[Lcom/google/android/gms/ads/f;

    aget-object p3, p3, p5

    iget p5, p0, Lcom/google/android/gms/internal/ads/ru;->n:I

    .line 14
    sget-object p6, Lcom/google/android/gms/ads/f;->i:Lcom/google/android/gms/ads/f;

    invoke-virtual {p3, p6}, Lcom/google/android/gms/ads/f;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdl;->o0()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object p3

    goto :goto_0

    .line 16
    :cond_0
    new-instance p6, Lcom/google/android/gms/internal/ads/zzbdl;

    invoke-direct {p6, p4, p3}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/f;)V

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/ru;->b(I)Z

    move-result p3

    iput-boolean p3, p6, Lcom/google/android/gms/internal/ads/zzbdl;->m:Z

    move-object p3, p6

    :goto_0
    const-string p4, "Ads by Google"

    .line 17
    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/xh0;->c(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    move-result-object p3

    new-instance p5, Lcom/google/android/gms/internal/ads/zzbdl;

    sget-object p6, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/f;

    invoke-direct {p5, p4, p6}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/f;)V

    .line 19
    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p4

    .line 20
    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-virtual {p3, p1, p5, p4, p2}, Lcom/google/android/gms/internal/ads/xh0;->b(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;[Lcom/google/android/gms/ads/f;I)Lcom/google/android/gms/internal/ads/zzbdl;
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2
    sget-object v3, Lcom/google/android/gms/ads/f;->i:Lcom/google/android/gms/ads/f;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdl;->o0()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/f;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ru;->b(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/google/android/gms/internal/ads/zzbdl;->m:Z

    return-object v0
.end method

.method private static b(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/ru;)Lcom/google/android/gms/ads/s;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ru;->d:Lcom/google/android/gms/ads/s;

    return-object p0
.end method


# virtual methods
.method public final d()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ts;->g()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e()Lcom/google/android/gms/ads/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->g:Lcom/google/android/gms/ads/b;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/ads/f;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ts;->zzu()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbdl;->h:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzbdl;->e:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbdl;->d:Ljava/lang/String;

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/ads/a0;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/f;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->h:[Lcom/google/android/gms/ads/f;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()[Lcom/google/android/gms/ads/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->h:[Lcom/google/android/gms/ads/f;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ts;->K()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->l:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/ads/admanager/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->i:Lcom/google/android/gms/ads/admanager/b;

    return-object v0
.end method

.method public final j(Lcom/google/android/gms/internal/ads/pu;)V
    .locals 10

    const-string v0, "#007 Could not call remote method."

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru;->h:[Lcom/google/android/gms/ads/f;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru;->l:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru;->m:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ru;->h:[Lcom/google/android/gms/ads/f;

    iget v3, p0, Lcom/google/android/gms/internal/ads/ru;->n:I

    .line 3
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/ru;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/f;I)Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v5

    const-string v2, "search_v2"

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzbdl;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->b()Lcom/google/android/gms/internal/ads/ur;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ru;->l:Ljava/lang/String;

    .line 6
    new-instance v4, Lcom/google/android/gms/internal/ads/lr;

    invoke-direct {v4, v2, v1, v5, v3}, Lcom/google/android/gms/internal/ads/lr;-><init>(Lcom/google/android/gms/internal/ads/ur;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4, v1, v8}, Lcom/google/android/gms/internal/ads/vr;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/ts;

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->b()Lcom/google/android/gms/internal/ads/ur;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ru;->l:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/ru;->a:Lcom/google/android/gms/internal/ads/p70;

    .line 10
    new-instance v9, Lcom/google/android/gms/internal/ads/jr;

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/jr;-><init>(Lcom/google/android/gms/internal/ads/ur;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)V

    .line 11
    invoke-virtual {v9, v1, v8}, Lcom/google/android/gms/internal/ads/vr;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Lcom/google/android/gms/internal/ads/ts;

    .line 13
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    new-instance v2, Lcom/google/android/gms/internal/ads/pq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ru;->e:Lcom/google/android/gms/internal/ads/xr;

    .line 14
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/pq;-><init>(Lcom/google/android/gms/ads/b;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ts;->X5(Lcom/google/android/gms/internal/ads/gs;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru;->f:Lcom/google/android/gms/internal/ads/kq;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    new-instance v3, Lcom/google/android/gms/internal/ads/lq;

    .line 15
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/lq;-><init>(Lcom/google/android/gms/internal/ads/kq;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/ts;->v4(Lcom/google/android/gms/internal/ads/cs;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru;->i:Lcom/google/android/gms/ads/admanager/b;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    new-instance v3, Lcom/google/android/gms/internal/ads/ek;

    .line 16
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/ek;-><init>(Lcom/google/android/gms/ads/admanager/b;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/ts;->K2(Lcom/google/android/gms/internal/ads/at;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru;->k:Lcom/google/android/gms/ads/t;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    .line 17
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbis;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzbis;-><init>(Lcom/google/android/gms/ads/t;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/ts;->l6(Lcom/google/android/gms/internal/ads/zzbis;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    new-instance v2, Lcom/google/android/gms/internal/ads/nv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ru;->p:Lcom/google/android/gms/ads/n;

    .line 18
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/nv;-><init>(Lcom/google/android/gms/ads/n;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ts;->e3(Lcom/google/android/gms/internal/ads/cu;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/ru;->o:Z

    .line 19
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ts;->C4(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_4

    goto :goto_1

    .line 20
    :cond_4
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ts;->zzi()Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ru;->m:Landroid/view/ViewGroup;

    .line 21
    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 22
    :try_start_2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 23
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 25
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ru;->b:Lcom/google/android/gms/internal/ads/xq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ru;->m:Landroid/view/ViewGroup;

    .line 27
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/internal/ads/xq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/pu;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ts;->k5(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru;->a:Lcom/google/android/gms/internal/ads/p70;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pu;->l()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/p70;->F6(Ljava/util/Map;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    return-void

    :catch_1
    move-exception p1

    .line 29
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ts;->j()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ts;->m()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final m(Lcom/google/android/gms/ads/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ru;->g:Lcom/google/android/gms/ads/b;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->e:Lcom/google/android/gms/internal/ads/xr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xr;->u(Lcom/google/android/gms/ads/b;)V

    return-void
.end method

.method public final n(Lcom/google/android/gms/internal/ads/kq;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ru;->f:Lcom/google/android/gms/internal/ads/kq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/lq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/lq;-><init>(Lcom/google/android/gms/internal/ads/kq;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ts;->v4(Lcom/google/android/gms/internal/ads/cs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs o([Lcom/google/android/gms/ads/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->h:[Lcom/google/android/gms/ads/f;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ru;->p([Lcom/google/android/gms/ads/f;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad size can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs p([Lcom/google/android/gms/ads/f;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ru;->h:[Lcom/google/android/gms/ads/f;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru;->h:[Lcom/google/android/gms/ads/f;

    iget v2, p0, Lcom/google/android/gms/internal/ads/ru;->n:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ru;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/f;I)Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/ts;->L0(Lcom/google/android/gms/internal/ads/zzbdl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ru;->m:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ru;->l:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r(Lcom/google/android/gms/ads/admanager/b;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ru;->i:Lcom/google/android/gms/ads/admanager/b;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/ek;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/ek;-><init>(Lcom/google/android/gms/ads/admanager/b;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ts;->K2(Lcom/google/android/gms/internal/ads/at;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final s(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ru;->o:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ts;->C4(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final t()Lcom/google/android/gms/ads/r;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ts;->u()Lcom/google/android/gms/internal/ads/fu;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 2
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/r;->d(Lcom/google/android/gms/internal/ads/fu;)Lcom/google/android/gms/ads/r;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lcom/google/android/gms/ads/n;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ru;->p:Lcom/google/android/gms/ads/n;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/nv;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/nv;-><init>(Lcom/google/android/gms/ads/n;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ts;->e3(Lcom/google/android/gms/internal/ads/cu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final v()Lcom/google/android/gms/ads/n;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->p:Lcom/google/android/gms/ads/n;

    return-object v0
.end method

.method public final w()Lcom/google/android/gms/ads/s;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->d:Lcom/google/android/gms/ads/s;

    return-object v0
.end method

.method public final x()Lcom/google/android/gms/internal/ads/ju;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ts;->p0()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "#007 Could not call remote method."

    .line 2
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method

.method public final y(Lcom/google/android/gms/ads/t;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ru;->k:Lcom/google/android/gms/ads/t;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->j:Lcom/google/android/gms/internal/ads/ts;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbis;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbis;-><init>(Lcom/google/android/gms/ads/t;)V

    move-object p1, v1

    .line 3
    :goto_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ts;->l6(Lcom/google/android/gms/internal/ads/zzbis;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final z()Lcom/google/android/gms/ads/t;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ru;->k:Lcom/google/android/gms/ads/t;

    return-object v0
.end method

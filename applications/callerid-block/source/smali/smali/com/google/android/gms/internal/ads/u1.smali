.class public final Lcom/google/android/gms/internal/ads/u1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/de;

.field private final b:Lcom/google/android/gms/internal/ads/sz2;

.field private final c:Lcom/google/android/gms/ads/r;

.field final d:Lcom/google/android/gms/internal/ads/n03;

.field private e:Lcom/google/android/gms/internal/ads/hz2;

.field private f:Lcom/google/android/gms/ads/b;

.field private g:[Lcom/google/android/gms/ads/f;

.field private h:Lcom/google/android/gms/ads/admanager/b;

.field private i:Lcom/google/android/gms/internal/ads/w;

.field private j:Lcom/google/android/gms/ads/s;

.field private k:Ljava/lang/String;

.field private final l:Landroid/view/ViewGroup;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private m:I

.field private n:Z

.field private o:Lcom/google/android/gms/ads/m;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 7

    sget-object v4, Lcom/google/android/gms/internal/ads/sz2;->a:Lcom/google/android/gms/internal/ads/sz2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/u1;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/sz2;Lcom/google/android/gms/internal/ads/w;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 7

    sget-object v4, Lcom/google/android/gms/internal/ads/sz2;->a:Lcom/google/android/gms/internal/ads/sz2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/u1;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/sz2;Lcom/google/android/gms/internal/ads/w;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 7

    sget-object v4, Lcom/google/android/gms/internal/ads/sz2;->a:Lcom/google/android/gms/internal/ads/sz2;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/u1;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/sz2;Lcom/google/android/gms/internal/ads/w;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V
    .locals 7

    sget-object v4, Lcom/google/android/gms/internal/ads/sz2;->a:Lcom/google/android/gms/internal/ads/sz2;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/u1;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/sz2;Lcom/google/android/gms/internal/ads/w;I)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/sz2;Lcom/google/android/gms/internal/ads/w;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Lcom/google/android/gms/internal/ads/de;

    invoke-direct {p5}, Lcom/google/android/gms/internal/ads/de;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/u1;->a:Lcom/google/android/gms/internal/ads/de;

    new-instance p5, Lcom/google/android/gms/ads/r;

    invoke-direct {p5}, Lcom/google/android/gms/ads/r;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/u1;->c:Lcom/google/android/gms/ads/r;

    new-instance p5, Lcom/google/android/gms/internal/ads/t1;

    invoke-direct {p5, p0}, Lcom/google/android/gms/internal/ads/t1;-><init>(Lcom/google/android/gms/internal/ads/u1;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/u1;->d:Lcom/google/android/gms/internal/ads/n03;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u1;->l:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/u1;->b:Lcom/google/android/gms/internal/ads/sz2;

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput p6, p0, Lcom/google/android/gms/internal/ads/u1;->m:I

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    :try_start_0
    new-instance p6, Lcom/google/android/gms/internal/ads/zzzf;

    invoke-direct {p6, p4, p2}, Lcom/google/android/gms/internal/ads/zzzf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/ads/zzzf;->a(Z)[Lcom/google/android/gms/ads/f;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/u1;->g:[Lcom/google/android/gms/ads/f;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzzf;->b()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/u1;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/m03;->a()Lcom/google/android/gms/internal/ads/io;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/u1;->g:[Lcom/google/android/gms/ads/f;

    aget-object p3, p3, p5

    iget p5, p0, Lcom/google/android/gms/internal/ads/u1;->m:I

    sget-object p6, Lcom/google/android/gms/ads/f;->q:Lcom/google/android/gms/ads/f;

    invoke-virtual {p3, p6}, Lcom/google/android/gms/ads/f;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyx;->C()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-instance p6, Lcom/google/android/gms/internal/ads/zzyx;

    invoke-direct {p6, p4, p3}, Lcom/google/android/gms/internal/ads/zzyx;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/f;)V

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/u1;->c(I)Z

    move-result p3

    iput-boolean p3, p6, Lcom/google/android/gms/internal/ads/zzyx;->k:Z

    move-object p3, p6

    :goto_0
    const-string p4, "Ads by Google"

    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/io;->c(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    invoke-static {}, Lcom/google/android/gms/internal/ads/m03;->a()Lcom/google/android/gms/internal/ads/io;

    move-result-object p3

    new-instance p5, Lcom/google/android/gms/internal/ads/zzyx;

    sget-object p6, Lcom/google/android/gms/ads/f;->i:Lcom/google/android/gms/ads/f;

    invoke-direct {p5, p4, p6}, Lcom/google/android/gms/internal/ads/zzyx;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/f;)V

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p5, p4, p2}, Lcom/google/android/gms/internal/ads/io;->b(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/u1;)Lcom/google/android/gms/ads/r;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/u1;->c:Lcom/google/android/gms/ads/r;

    return-object p0
.end method

.method private static b(Landroid/content/Context;[Lcom/google/android/gms/ads/f;I)Lcom/google/android/gms/internal/ads/zzyx;
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    sget-object v3, Lcom/google/android/gms/ads/f;->q:Lcom/google/android/gms/ads/f;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyx;->C()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzyx;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/f;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/u1;->c(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/google/android/gms/internal/ads/zzyx;->k:Z

    return-object v0
.end method

.method private static c(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/w;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e()Lcom/google/android/gms/ads/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->f:Lcom/google/android/gms/ads/b;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/ads/f;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/w;->p()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzyx;->f:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzyx;->c:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzyx;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/ads/a0;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/f;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->g:[Lcom/google/android/gms/ads/f;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()[Lcom/google/android/gms/ads/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->g:[Lcom/google/android/gms/ads/f;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/w;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->k:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/ads/admanager/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->h:Lcom/google/android/gms/ads/admanager/b;

    return-object v0
.end method

.method public final j(Lcom/google/android/gms/internal/ads/s1;)V
    .locals 10

    const-string v0, "#007 Could not call remote method."

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u1;->g:[Lcom/google/android/gms/ads/f;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u1;->k:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u1;->l:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u1;->g:[Lcom/google/android/gms/ads/f;

    iget v3, p0, Lcom/google/android/gms/internal/ads/u1;->m:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/u1;->b(Landroid/content/Context;[Lcom/google/android/gms/ads/f;I)Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object v5

    const-string v2, "search_v2"

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzyx;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/m03;->b()Lcom/google/android/gms/internal/ads/k03;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/u1;->k:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ads/e03;

    invoke-direct {v4, v2, v1, v5, v3}, Lcom/google/android/gms/internal/ads/e03;-><init>(Lcom/google/android/gms/internal/ads/k03;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v8}, Lcom/google/android/gms/internal/ads/l03;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lcom/google/android/gms/internal/ads/w;

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/m03;->b()Lcom/google/android/gms/internal/ads/k03;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/u1;->k:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/u1;->a:Lcom/google/android/gms/internal/ads/de;

    new-instance v9, Lcom/google/android/gms/internal/ads/c03;

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/c03;-><init>(Lcom/google/android/gms/internal/ads/k03;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/he;)V

    invoke-virtual {v9, v1, v8}, Lcom/google/android/gms/internal/ads/l03;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    new-instance v2, Lcom/google/android/gms/internal/ads/lz2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/u1;->d:Lcom/google/android/gms/internal/ads/n03;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/lz2;-><init>(Lcom/google/android/gms/ads/b;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/w;->S3(Lcom/google/android/gms/internal/ads/j;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u1;->e:Lcom/google/android/gms/internal/ads/hz2;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    new-instance v3, Lcom/google/android/gms/internal/ads/iz2;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/iz2;-><init>(Lcom/google/android/gms/internal/ads/hz2;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/w;->Y2(Lcom/google/android/gms/internal/ads/g;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u1;->h:Lcom/google/android/gms/ads/admanager/b;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    new-instance v3, Lcom/google/android/gms/internal/ads/lt2;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/lt2;-><init>(Lcom/google/android/gms/ads/admanager/b;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/w;->E4(Lcom/google/android/gms/internal/ads/e0;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u1;->j:Lcom/google/android/gms/ads/s;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzady;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzady;-><init>(Lcom/google/android/gms/ads/s;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/w;->p5(Lcom/google/android/gms/internal/ads/zzady;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    new-instance v2, Lcom/google/android/gms/internal/ads/q2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/u1;->o:Lcom/google/android/gms/ads/m;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/q2;-><init>(Lcom/google/android/gms/ads/m;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/w;->h5(Lcom/google/android/gms/internal/ads/g1;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/u1;->n:Z

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/w;->p2(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/w;->b()Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u1;->l:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/u1;->b:Lcom/google/android/gms/internal/ads/sz2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/u1;->l:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/internal/ads/sz2;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/w;->q0(Lcom/google/android/gms/internal/ads/zzys;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u1;->a:Lcom/google/android/gms/internal/ads/de;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/s1;->l()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/de;->A6(Ljava/util/Map;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    return-void

    :catch_1
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final k()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/w;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final l()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/w;->g()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final m(Lcom/google/android/gms/ads/b;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u1;->f:Lcom/google/android/gms/ads/b;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->d:Lcom/google/android/gms/internal/ads/n03;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/n03;->u(Lcom/google/android/gms/ads/b;)V

    return-void
.end method

.method public final n(Lcom/google/android/gms/internal/ads/hz2;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u1;->e:Lcom/google/android/gms/internal/ads/hz2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/iz2;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/iz2;-><init>(Lcom/google/android/gms/internal/ads/hz2;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/w;->Y2(Lcom/google/android/gms/internal/ads/g;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs o([Lcom/google/android/gms/ads/f;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->g:[Lcom/google/android/gms/ads/f;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/u1;->p([Lcom/google/android/gms/ads/f;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad size can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs p([Lcom/google/android/gms/ads/f;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u1;->g:[Lcom/google/android/gms/ads/f;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u1;->g:[Lcom/google/android/gms/ads/f;

    iget v2, p0, Lcom/google/android/gms/internal/ads/u1;->m:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/u1;->b(Landroid/content/Context;[Lcom/google/android/gms/ads/f;I)Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/w;->y4(Lcom/google/android/gms/internal/ads/zzyx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/u1;->l:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u1;->k:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r(Lcom/google/android/gms/ads/admanager/b;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u1;->h:Lcom/google/android/gms/ads/admanager/b;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/lt2;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/lt2;-><init>(Lcom/google/android/gms/ads/admanager/b;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/w;->E4(Lcom/google/android/gms/internal/ads/e0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final s(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/u1;->n:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/w;->p2(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final t()Lcom/google/android/gms/ads/q;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/w;->r()Lcom/google/android/gms/internal/ads/j1;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/q;->d(Lcom/google/android/gms/internal/ads/j1;)Lcom/google/android/gms/ads/q;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lcom/google/android/gms/ads/m;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u1;->o:Lcom/google/android/gms/ads/m;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/q2;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/q2;-><init>(Lcom/google/android/gms/ads/m;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/w;->h5(Lcom/google/android/gms/internal/ads/g1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final v()Lcom/google/android/gms/ads/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->o:Lcom/google/android/gms/ads/m;

    return-object v0
.end method

.method public final w()Lcom/google/android/gms/ads/r;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->c:Lcom/google/android/gms/ads/r;

    return-object v0
.end method

.method public final x()Lcom/google/android/gms/internal/ads/m1;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/w;->I()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method

.method public final y(Lcom/google/android/gms/ads/s;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u1;->j:Lcom/google/android/gms/ads/s;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->i:Lcom/google/android/gms/internal/ads/w;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzady;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzady;-><init>(Lcom/google/android/gms/ads/s;)V

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/w;->p5(Lcom/google/android/gms/internal/ads/zzady;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final z()Lcom/google/android/gms/ads/s;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u1;->j:Lcom/google/android/gms/ads/s;

    return-object v0
.end method

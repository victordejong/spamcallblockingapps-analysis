.class public final Lcom/google/android/gms/internal/ads/emt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/ads/VideoController;

.field public b:Lcom/google/android/gms/ads/AdListener;

.field public c:[Lcom/google/android/gms/ads/AdSize;

.field public d:Lcom/google/android/gms/ads/admanager/AppEventListener;

.field public e:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field public f:Lcom/google/android/gms/internal/ads/ekw;

.field public g:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

.field public h:Lcom/google/android/gms/ads/VideoOptions;

.field public i:Lcom/google/android/gms/ads/OnPaidEventListener;

.field private final j:Lcom/google/android/gms/internal/ads/mj;

.field private final k:Lcom/google/android/gms/internal/ads/ejb;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final m:Lcom/google/android/gms/internal/ads/eka;

.field private n:Lcom/google/android/gms/internal/ads/eir;

.field private o:Ljava/lang/String;

.field private p:Landroid/view/ViewGroup;

.field private q:I

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 6

    .line 2
    sget-object v4, Lcom/google/android/gms/internal/ads/ejb;->a:Lcom/google/android/gms/internal/ads/ejb;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/emt;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/ejb;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 6

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/ads/ejb;->a:Lcom/google/android/gms/internal/ads/ejb;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/emt;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/ejb;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 6

    .line 10
    sget-object v4, Lcom/google/android/gms/internal/ads/ejb;->a:Lcom/google/android/gms/internal/ads/ejb;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/emt;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/ejb;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V
    .locals 6

    .line 15
    sget-object v4, Lcom/google/android/gms/internal/ads/ejb;->a:Lcom/google/android/gms/internal/ads/ejb;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/emt;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/ejb;I)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/ejb;I)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/emt;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/ejb;Lcom/google/android/gms/internal/ads/ekw;I)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/ejb;Lcom/google/android/gms/internal/ads/ekw;I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance p5, Lcom/google/android/gms/internal/ads/mj;

    invoke-direct {p5}, Lcom/google/android/gms/internal/ads/mj;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/emt;->j:Lcom/google/android/gms/internal/ads/mj;

    .line 21
    new-instance p5, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {p5}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/emt;->a:Lcom/google/android/gms/ads/VideoController;

    .line 22
    new-instance p5, Lcom/google/android/gms/internal/ads/emw;

    invoke-direct {p5, p0}, Lcom/google/android/gms/internal/ads/emw;-><init>(Lcom/google/android/gms/internal/ads/emt;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/emt;->m:Lcom/google/android/gms/internal/ads/eka;

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/emt;->p:Landroid/view/ViewGroup;

    .line 24
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/emt;->k:Lcom/google/android/gms/internal/ads/ejb;

    const/4 p4, 0x0

    .line 25
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    .line 26
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/emt;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    iput p6, p0, Lcom/google/android/gms/internal/ads/emt;->q:I

    if-eqz p2, :cond_3

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    .line 30
    :try_start_0
    new-instance p6, Lcom/google/android/gms/internal/ads/zzwe;

    invoke-direct {p6, p4, p2}, Lcom/google/android/gms/internal/ads/zzwe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    if-nez p3, :cond_1

    .line 1061
    iget-object p2, p6, Lcom/google/android/gms/internal/ads/zzwe;->a:[Lcom/google/android/gms/ads/AdSize;

    array-length p2, p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 1062
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "The adSizes XML attribute is only allowed on PublisherAdViews."

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1063
    :cond_1
    :goto_0
    iget-object p2, p6, Lcom/google/android/gms/internal/ads/zzwe;->a:[Lcom/google/android/gms/ads/AdSize;

    .line 31
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/emt;->c:[Lcom/google/android/gms/ads/AdSize;

    .line 1064
    iget-object p2, p6, Lcom/google/android/gms/internal/ads/zzwe;->b:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/emt;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/emt;->c:[Lcom/google/android/gms/ads/AdSize;

    aget-object p2, p2, p5

    iget p3, p0, Lcom/google/android/gms/internal/ads/emt;->q:I

    .line 43
    sget-object p5, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p2, p5}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->zzqn()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object p2

    goto :goto_1

    .line 45
    :cond_2
    new-instance p5, Lcom/google/android/gms/internal/ads/zzvt;

    invoke-direct {p5, p4, p2}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    .line 46
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/emt;->a(I)Z

    move-result p2

    .line 47
    iput-boolean p2, p5, Lcom/google/android/gms/internal/ads/zzvt;->zzciu:Z

    move-object p2, p5

    :goto_1
    const-string p3, "Ads by Google"

    .line 50
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/yq;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p2

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzvt;

    sget-object p5, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    .line 36
    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p4

    .line 37
    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 38
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/ads/yq;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private static a(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/ads/zzvt;
    .locals 4

    .line 272
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 273
    sget-object v3, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->zzqn()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvt;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    .line 277
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/emt;->a(I)Z

    move-result p0

    .line 278
    iput-boolean p0, v0, Lcom/google/android/gms/internal/ads/zzvt;->zzciu:Z

    return-object v0
.end method

.method private static a(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ekw;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 58
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/AdListener;)V
    .locals 1

    .line 149
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/emt;->b:Lcom/google/android/gms/ads/AdListener;

    .line 150
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->m:Lcom/google/android/gms/internal/ads/eka;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/eka;->a(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/VideoOptions;)V
    .locals 2

    .line 248
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/emt;->h:Lcom/google/android/gms/ads/VideoOptions;

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 251
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaaz;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    move-object p1, v1

    .line 252
    :goto_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/zzaaz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 255
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 2

    .line 186
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/emt;->e:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    .line 187
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 190
    new-instance p1, Lcom/google/android/gms/internal/ads/ejg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->e:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/ejg;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 192
    :goto_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/ele;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 195
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eir;)V
    .locals 2

    .line 152
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/emt;->n:Lcom/google/android/gms/internal/ads/eir;

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 155
    new-instance v1, Lcom/google/android/gms/internal/ads/eis;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/eis;-><init>(Lcom/google/android/gms/internal/ads/eir;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 156
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/ekc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 159
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/emr;)V
    .locals 10

    const-string v0, "#007 Could not call remote method."

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    if-nez v1, :cond_a

    .line 81
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/emt;->c:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/emt;->o:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    if-eqz v1, :cond_9

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->p:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/emt;->c:[Lcom/google/android/gms/ads/AdSize;

    iget v3, p0, Lcom/google/android/gms/internal/ads/emt;->q:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/emt;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v5

    const-string v2, "search_v2"

    .line 88
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzvt;->zzadd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    .line 90
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->b()Lcom/google/android/gms/internal/ads/ejj;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/emt;->o:Ljava/lang/String;

    .line 92
    new-instance v4, Lcom/google/android/gms/internal/ads/ejt;

    invoke-direct {v4, v2, v1, v5, v3}, Lcom/google/android/gms/internal/ads/ejt;-><init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v4, v1, v8}, Lcom/google/android/gms/internal/ads/ejy;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    .line 94
    check-cast v1, Lcom/google/android/gms/internal/ads/ekw;

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->b()Lcom/google/android/gms/internal/ads/ejj;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/emt;->o:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/emt;->j:Lcom/google/android/gms/internal/ads/mj;

    .line 98
    new-instance v9, Lcom/google/android/gms/internal/ads/ejl;

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/ejl;-><init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;)V

    .line 99
    invoke-virtual {v9, v1, v8}, Lcom/google/android/gms/internal/ads/ejy;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    .line 100
    check-cast v1, Lcom/google/android/gms/internal/ads/ekw;

    .line 101
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    .line 102
    new-instance v2, Lcom/google/android/gms/internal/ads/eiu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/emt;->m:Lcom/google/android/gms/internal/ads/eka;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/eiu;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/eki;)V

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->n:Lcom/google/android/gms/internal/ads/eir;

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    new-instance v2, Lcom/google/android/gms/internal/ads/eis;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/emt;->n:Lcom/google/android/gms/internal/ads/eir;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/eis;-><init>(Lcom/google/android/gms/internal/ads/eir;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/ekc;)V

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->d:Lcom/google/android/gms/ads/admanager/AppEventListener;

    if-eqz v1, :cond_4

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    new-instance v2, Lcom/google/android/gms/internal/ads/eew;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/emt;->d:Lcom/google/android/gms/ads/admanager/AppEventListener;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/eew;-><init>(Lcom/google/android/gms/ads/admanager/AppEventListener;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/ele;)V

    .line 107
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->e:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v1, :cond_5

    .line 108
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    new-instance v2, Lcom/google/android/gms/internal/ads/ejg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/emt;->e:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/ejg;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/ele;)V

    .line 109
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->g:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    if-eqz v1, :cond_6

    .line 110
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    new-instance v2, Lcom/google/android/gms/internal/ads/bs;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/emt;->g:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/bs;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/bn;)V

    .line 111
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->h:Lcom/google/android/gms/ads/VideoOptions;

    if-eqz v1, :cond_7

    .line 112
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaaz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/emt;->h:Lcom/google/android/gms/ads/VideoOptions;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzaaz;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/zzaaz;)V

    .line 113
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    new-instance v2, Lcom/google/android/gms/internal/ads/s;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/emt;->i:Lcom/google/android/gms/ads/OnPaidEventListener;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/s;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/emd;)V

    .line 114
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/emt;->r:Z

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ekw;->setManualImpressionsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ekw;->zzki()Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_1

    .line 119
    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/emt;->p:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 122
    :try_start_2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 83
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/emt;->p:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/ejb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/emr;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 124
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->j:Lcom/google/android/gms/internal/ads/mj;

    .line 2049
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/emr;->h:Ljava/util/Map;

    .line 3013
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/mj;->a:Ljava/util/Map;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_b
    return-void

    :catch_1
    move-exception p1

    .line 127
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 175
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/emt;->o:Ljava/lang/String;

    return-void

    .line 174
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Z)V
    .locals 1

    .line 208
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/emt;->r:Z

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ekw;->setManualImpressionsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 213
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs a([Lcom/google/android/gms/ads/AdSize;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->c:[Lcom/google/android/gms/ads/AdSize;

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/emt;->b([Lcom/google/android/gms/ads/AdSize;)V

    return-void

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad size can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ekw;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 260
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ekw;->zzki()Lcom/google/android/gms/dynamic/b;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return v0

    .line 267
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    return v0

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->p:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 270
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v1, "#007 Could not call remote method."

    .line 263
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final b()Lcom/google/android/gms/ads/AdSize;
    .locals 2

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ekw;->zzkk()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzvt;->zzqo()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 67
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->c:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final varargs b([Lcom/google/android/gms/ads/AdSize;)V
    .locals 3

    .line 165
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/emt;->c:[Lcom/google/android/gms/ads/AdSize;

    .line 166
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->c:[Lcom/google/android/gms/ads/AdSize;

    iget v2, p0, Lcom/google/android/gms/internal/ads/emt;->q:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/emt;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/zzvt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 170
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/emt;->p:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ekw;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->o:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 74
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final d()V
    .locals 2

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ekw;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 133
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 137
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v0, :cond_1

    .line 138
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ekw;->zzkj()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 141
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final f()V
    .locals 2

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ekw;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 147
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ekw;->zzkl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 219
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Z
    .locals 2

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ekw;->isLoading()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 225
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 3

    const/4 v0, 0x0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v1, :cond_0

    .line 229
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ekw;->zzkm()Lcom/google/android/gms/internal/ads/emj;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 232
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lcom/google/android/gms/internal/ads/emj;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/emk;
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emt;->f:Lcom/google/android/gms/internal/ads/ekw;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 244
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ekw;->getVideoController()Lcom/google/android/gms/internal/ads/emk;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "#007 Could not call remote method."

    .line 246
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

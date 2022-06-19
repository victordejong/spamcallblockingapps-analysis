.class public final Lcom/google/android/gms/internal/ads/um3;
.super Lcom/google/android/gms/internal/ads/gy3;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private final o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/dv3;",
            "Lcom/google/android/gms/internal/ads/wm3;",
            ">;>;"
        }
    .end annotation
.end field

.field private final p:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gy3;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    .line 2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/um3;->o:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/um3;->p:Landroid/util/SparseBooleanArray;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/um3;->t()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gy3;-><init>()V

    .line 6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/gy3;->k(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/gy3;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wa;->B(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 8
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/gy3;->j(IIZ)Lcom/google/android/gms/internal/ads/gy3;

    new-instance p1, Landroid/util/SparseArray;

    .line 9
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/um3;->o:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 10
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/um3;->p:Landroid/util/SparseBooleanArray;

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/um3;->t()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/tm3;Lcom/google/android/gms/internal/ads/qm3;)V
    .locals 5

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/gy3;-><init>(Lcom/google/android/gms/internal/ads/az3;)V

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/tm3;->E:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/um3;->j:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/tm3;->G:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/um3;->k:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/tm3;->H:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/um3;->l:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/tm3;->L:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/um3;->m:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/tm3;->N:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/um3;->n:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tm3;->a(Lcom/google/android/gms/internal/ads/tm3;)Landroid/util/SparseArray;

    move-result-object p2

    new-instance v0, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 15
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/um3;->o:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tm3;->b(Lcom/google/android/gms/internal/ads/tm3;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/um3;->p:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method static synthetic l(Lcom/google/android/gms/internal/ads/um3;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/um3;->j:Z

    return p0
.end method

.method static synthetic m(Lcom/google/android/gms/internal/ads/um3;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/um3;->k:Z

    return p0
.end method

.method static synthetic n(Lcom/google/android/gms/internal/ads/um3;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/um3;->l:Z

    return p0
.end method

.method static synthetic o(Lcom/google/android/gms/internal/ads/um3;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/um3;->m:Z

    return p0
.end method

.method static synthetic p(Lcom/google/android/gms/internal/ads/um3;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/um3;->n:Z

    return p0
.end method

.method static synthetic q(Lcom/google/android/gms/internal/ads/um3;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/um3;->o:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic r(Lcom/google/android/gms/internal/ads/um3;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/um3;->p:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method private final t()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/um3;->j:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/um3;->k:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/um3;->l:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/um3;->m:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/um3;->n:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic j(IIZ)Lcom/google/android/gms/internal/ads/gy3;
    .locals 0

    const/4 p3, 0x1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/gy3;->j(IIZ)Lcom/google/android/gms/internal/ads/gy3;

    return-object p0
.end method

.method public final s(IZ)Lcom/google/android/gms/internal/ads/um3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/um3;->p:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/um3;->p:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/um3;->p:Landroid/util/SparseBooleanArray;

    .line 3
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_0
    return-object p0
.end method

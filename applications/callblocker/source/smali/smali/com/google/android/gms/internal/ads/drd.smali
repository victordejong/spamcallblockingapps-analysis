.class public abstract Lcom/google/android/gms/internal/ads/drd;
.super Lcom/google/android/gms/internal/ads/drj;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/ads/dqv;",
            "Lcom/google/android/gms/internal/ads/drf;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/SparseBooleanArray;

.field private c:I

.field private d:Lcom/google/android/gms/internal/ads/drc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/drj;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drd;->a:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drd;->b:Landroid/util/SparseBooleanArray;

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/drd;->c:I

    .line 5
    return-void
.end method


# virtual methods
.method public final a([Lcom/google/android/gms/internal/ads/dll;Lcom/google/android/gms/internal/ads/dqv;)Lcom/google/android/gms/internal/ads/drl;
    .locals 12

    .prologue
    .line 11
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v8, v0, [I

    .line 12
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v9, v0, [[Lcom/google/android/gms/internal/ads/dqs;

    .line 13
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [[[I

    .line 14
    const/4 v0, 0x0

    :goto_0
    array-length v1, v9

    if-ge v0, v1, :cond_0

    .line 15
    iget v1, p2, Lcom/google/android/gms/internal/ads/dqv;->b:I

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/dqs;

    aput-object v1, v9, v0

    .line 16
    iget v1, p2, Lcom/google/android/gms/internal/ads/dqv;->b:I

    new-array v1, v1, [[I

    aput-object v1, v4, v0

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    array-length v0, p1

    new-array v3, v0, [I

    .line 20
    const/4 v0, 0x0

    :goto_1
    array-length v1, v3

    if-ge v0, v1, :cond_1

    .line 21
    aget-object v1, p1, v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dll;->m()I

    move-result v1

    aput v1, v3, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 25
    :cond_1
    const/4 v0, 0x0

    move v7, v0

    :goto_2
    iget v0, p2, Lcom/google/android/gms/internal/ads/dqv;->b:I

    if-ge v7, v0, :cond_8

    .line 26
    invoke-virtual {p2, v7}, Lcom/google/android/gms/internal/ads/dqv;->a(I)Lcom/google/android/gms/internal/ads/dqs;

    move-result-object v10

    .line 28
    array-length v2, p1

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v0, 0x0

    :goto_3
    array-length v5, p1

    if-ge v0, v5, :cond_4

    .line 31
    aget-object v11, p1, v0

    .line 32
    const/4 v5, 0x0

    :goto_4
    iget v6, v10, Lcom/google/android/gms/internal/ads/dqs;->a:I

    if-ge v5, v6, :cond_3

    .line 33
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/dqs;->a(I)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v6

    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/ads/dll;->a(Lcom/google/android/gms/internal/ads/dlf;)I

    move-result v6

    and-int/lit8 v6, v6, 0x3

    .line 34
    if-le v6, v1, :cond_2

    .line 37
    const/4 v1, 0x3

    if-eq v6, v1, :cond_5

    move v1, v6

    move v2, v0

    .line 38
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 39
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v2

    .line 42
    :cond_5
    array-length v1, p1

    if-ne v0, v1, :cond_6

    .line 43
    iget v1, v10, Lcom/google/android/gms/internal/ads/dqs;->a:I

    new-array v1, v1, [I

    .line 50
    :goto_5
    aget v2, v8, v0

    .line 51
    aget-object v5, v9, v0

    aput-object v10, v5, v2

    .line 52
    aget-object v5, v4, v0

    aput-object v1, v5, v2

    .line 53
    aget v1, v8, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, v8, v0

    .line 54
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    .line 43
    :cond_6
    aget-object v5, p1, v0

    .line 44
    iget v1, v10, Lcom/google/android/gms/internal/ads/dqs;->a:I

    new-array v2, v1, [I

    .line 45
    const/4 v1, 0x0

    :goto_6
    iget v6, v10, Lcom/google/android/gms/internal/ads/dqs;->a:I

    if-ge v1, v6, :cond_7

    .line 46
    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/dqs;->a(I)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/dll;->a(Lcom/google/android/gms/internal/ads/dlf;)I

    move-result v6

    aput v6, v2, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    move-object v1, v2

    .line 48
    goto :goto_5

    .line 55
    :cond_8
    array-length v0, p1

    new-array v2, v0, [Lcom/google/android/gms/internal/ads/dqv;

    .line 56
    array-length v0, p1

    new-array v1, v0, [I

    .line 57
    const/4 v0, 0x0

    move v5, v0

    :goto_7
    array-length v0, p1

    if-ge v5, v0, :cond_9

    .line 58
    aget v6, v8, v5

    .line 59
    new-instance v7, Lcom/google/android/gms/internal/ads/dqv;

    aget-object v0, v9, v5

    .line 60
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dqs;

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/dqv;-><init>([Lcom/google/android/gms/internal/ads/dqs;)V

    aput-object v7, v2, v5

    .line 61
    aget-object v0, v4, v5

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    aput-object v0, v4, v5

    .line 62
    aget-object v0, p1, v5

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dll;->a()I

    move-result v0

    aput v0, v1, v5

    .line 63
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_7

    .line 64
    :cond_9
    array-length v0, p1

    aget v0, v8, v0

    .line 65
    new-instance v5, Lcom/google/android/gms/internal/ads/dqv;

    array-length v6, p1

    aget-object v6, v9, v6

    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dqs;

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/dqv;-><init>([Lcom/google/android/gms/internal/ads/dqs;)V

    .line 66
    invoke-virtual {p0, p1, v2, v4}, Lcom/google/android/gms/internal/ads/drd;->a([Lcom/google/android/gms/internal/ads/dll;[Lcom/google/android/gms/internal/ads/dqv;[[[I)[Lcom/google/android/gms/internal/ads/dre;

    move-result-object v7

    .line 67
    const/4 v0, 0x0

    move v6, v0

    :goto_8
    array-length v0, p1

    if-ge v6, v0, :cond_d

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drd;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 69
    const/4 v0, 0x0

    aput-object v0, v7, v6

    .line 75
    :cond_a
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_8

    .line 70
    :cond_b
    aget-object v8, v2, v6

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drd;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 72
    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 73
    :goto_9
    if-eqz v0, :cond_a

    .line 74
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    .line 72
    :cond_c
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/drf;

    goto :goto_9

    .line 76
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/drc;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/drc;-><init>([I[Lcom/google/android/gms/internal/ads/dqv;[I[[[ILcom/google/android/gms/internal/ads/dqv;)V

    .line 77
    array-length v1, p1

    new-array v3, v1, [Lcom/google/android/gms/internal/ads/dlk;

    .line 78
    const/4 v1, 0x0

    :goto_a
    array-length v2, p1

    if-ge v1, v2, :cond_f

    .line 79
    aget-object v2, v7, v1

    if-eqz v2, :cond_e

    sget-object v2, Lcom/google/android/gms/internal/ads/dlk;->a:Lcom/google/android/gms/internal/ads/dlk;

    :goto_b
    aput-object v2, v3, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 79
    :cond_e
    const/4 v2, 0x0

    goto :goto_b

    .line 81
    :cond_f
    new-instance v1, Lcom/google/android/gms/internal/ads/drl;

    new-instance v2, Lcom/google/android/gms/internal/ads/drg;

    invoke-direct {v2, v7}, Lcom/google/android/gms/internal/ads/drg;-><init>([Lcom/google/android/gms/internal/ads/dre;)V

    invoke-direct {v1, p2, v2, v0, v3}, Lcom/google/android/gms/internal/ads/drl;-><init>(Lcom/google/android/gms/internal/ads/dqv;Lcom/google/android/gms/internal/ads/drg;Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/dlk;)V

    return-object v1
.end method

.method public final a(IZ)V
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drd;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 10
    :goto_0
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drd;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/drj;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    check-cast p1, Lcom/google/android/gms/internal/ads/drc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drd;->d:Lcom/google/android/gms/internal/ads/drc;

    .line 83
    return-void
.end method

.method protected abstract a([Lcom/google/android/gms/internal/ads/dll;[Lcom/google/android/gms/internal/ads/dqv;[[[I)[Lcom/google/android/gms/internal/ads/dre;
.end method

.class public abstract Lcom/google/android/gms/internal/ads/hh;
.super Lcom/google/android/gms/internal/ads/lh;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/yg;",
            "Lcom/google/android/gms/internal/ads/gh;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseBooleanArray;

.field private d:Lcom/google/android/gms/internal/ads/fh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lh;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->b:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 2
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->c:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final a([Lcom/google/android/gms/internal/ads/vb;Lcom/google/android/gms/internal/ads/yg;)Lcom/google/android/gms/internal/ads/mh;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x3

    new-array v4, v3, [I

    new-array v5, v3, [[Lcom/google/android/gms/internal/ads/xg;

    new-array v10, v3, [[[I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    .line 1
    iget v7, v2, Lcom/google/android/gms/internal/ads/yg;->b:I

    new-array v8, v7, [Lcom/google/android/gms/internal/ads/xg;

    aput-object v8, v5, v6

    new-array v7, v7, [[I

    aput-object v7, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x2

    new-array v9, v13, [I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v13, :cond_1

    .line 2
    aget-object v7, v1, v6

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/vb;->k()I

    const/4 v7, 0x4

    aput v7, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 3
    :goto_2
    iget v7, v2, Lcom/google/android/gms/internal/ads/yg;->b:I

    if-ge v6, v7, :cond_8

    .line 4
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/yg;->a(I)Lcom/google/android/gms/internal/ads/xg;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x2

    :goto_3
    if-ge v8, v13, :cond_5

    .line 5
    aget-object v15, v1, v8

    const/4 v12, 0x0

    .line 6
    :goto_4
    iget v13, v7, Lcom/google/android/gms/internal/ads/xg;->a:I

    if-gtz v12, :cond_4

    .line 7
    invoke-virtual {v7, v12}, Lcom/google/android/gms/internal/ads/xg;->a(I)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v13

    invoke-interface {v15, v13}, Lcom/google/android/gms/internal/ads/vb;->d(Lcom/google/android/gms/internal/ads/zzanm;)I

    move-result v13

    and-int/2addr v13, v3

    if-le v13, v11, :cond_3

    if-ne v13, v3, :cond_2

    goto :goto_5

    :cond_2
    move v14, v8

    move v11, v13

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    const/4 v13, 0x2

    goto :goto_3

    :cond_5
    move v8, v14

    :goto_5
    const/4 v11, 0x1

    const/4 v12, 0x2

    if-ne v8, v12, :cond_6

    .line 8
    iget v12, v7, Lcom/google/android/gms/internal/ads/xg;->a:I

    new-array v12, v11, [I

    goto :goto_7

    :cond_6
    aget-object v12, v1, v8

    .line 9
    iget v13, v7, Lcom/google/android/gms/internal/ads/xg;->a:I

    new-array v13, v11, [I

    const/4 v14, 0x0

    :goto_6
    if-gtz v14, :cond_7

    .line 10
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/xg;->a(I)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v15

    invoke-interface {v12, v15}, Lcom/google/android/gms/internal/ads/vb;->d(Lcom/google/android/gms/internal/ads/zzanm;)I

    move-result v15

    aput v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_7
    move-object v12, v13

    .line 11
    :goto_7
    aget v13, v4, v8

    .line 12
    aget-object v14, v5, v8

    aput-object v7, v14, v13

    .line 13
    aget-object v7, v10, v8

    aput-object v12, v7, v13

    add-int/2addr v13, v11

    .line 14
    aput v13, v4, v8

    add-int/lit8 v6, v6, 0x1

    const/4 v13, 0x2

    goto :goto_2

    :cond_8
    const/4 v6, 0x2

    new-array v8, v6, [Lcom/google/android/gms/internal/ads/yg;

    new-array v7, v6, [I

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v6, :cond_9

    .line 15
    aget v6, v4, v3

    new-instance v11, Lcom/google/android/gms/internal/ads/yg;

    aget-object v12, v5, v3

    .line 16
    invoke-static {v12, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/google/android/gms/internal/ads/xg;

    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/ads/yg;-><init>([Lcom/google/android/gms/internal/ads/xg;)V

    aput-object v11, v8, v3

    aget-object v11, v10, v3

    .line 17
    invoke-static {v11, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    aput-object v6, v10, v3

    aget-object v6, v1, v3

    .line 18
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/vb;->zza()I

    move-result v6

    aput v6, v7, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x2

    goto :goto_8

    :cond_9
    const/4 v3, 0x2

    aget v4, v4, v3

    new-instance v11, Lcom/google/android/gms/internal/ads/yg;

    aget-object v5, v5, v3

    .line 19
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/ads/xg;

    invoke-direct {v11, v4}, Lcom/google/android/gms/internal/ads/yg;-><init>([Lcom/google/android/gms/internal/ads/xg;)V

    .line 20
    invoke-virtual {v0, v1, v8, v10}, Lcom/google/android/gms/internal/ads/hh;->e([Lcom/google/android/gms/internal/ads/vb;[Lcom/google/android/gms/internal/ads/yg;[[[I)[Lcom/google/android/gms/internal/ads/bh;

    move-result-object v1

    const/4 v4, 0x0

    :goto_9
    const/4 v5, 0x0

    if-ge v4, v3, :cond_d

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/hh;->c:Landroid/util/SparseBooleanArray;

    .line 21
    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_a

    aput-object v5, v1, v4

    goto :goto_b

    :cond_a
    aget-object v3, v8, v4

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/hh;->b:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_b

    move-object v3, v5

    goto :goto_a

    .line 23
    :cond_b
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/gh;

    :goto_a
    if-nez v3, :cond_c

    :goto_b
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x2

    goto :goto_9

    .line 24
    :cond_c
    throw v5

    .line 25
    :cond_d
    new-instance v3, Lcom/google/android/gms/internal/ads/fh;

    move-object v6, v3

    .line 26
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/fh;-><init>([I[Lcom/google/android/gms/internal/ads/yg;[I[[[ILcom/google/android/gms/internal/ads/yg;)V

    const/4 v4, 0x2

    new-array v6, v4, [Lcom/google/android/gms/internal/ads/wb;

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v4, :cond_f

    aget-object v7, v1, v12

    if-eqz v7, :cond_e

    sget-object v7, Lcom/google/android/gms/internal/ads/wb;->a:Lcom/google/android/gms/internal/ads/wb;

    goto :goto_d

    :cond_e
    move-object v7, v5

    :goto_d
    aput-object v7, v6, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_f
    new-instance v4, Lcom/google/android/gms/internal/ads/mh;

    new-instance v7, Lcom/google/android/gms/internal/ads/jh;

    .line 27
    invoke-direct {v7, v1, v5}, Lcom/google/android/gms/internal/ads/jh;-><init>([Lcom/google/android/gms/internal/ads/bh;[B)V

    invoke-direct {v4, v2, v7, v3, v6}, Lcom/google/android/gms/internal/ads/mh;-><init>(Lcom/google/android/gms/internal/ads/yg;Lcom/google/android/gms/internal/ads/jh;Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/wb;)V

    return-object v4
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/fh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hh;->d:Lcom/google/android/gms/internal/ads/fh;

    return-void
.end method

.method protected abstract e([Lcom/google/android/gms/internal/ads/vb;[Lcom/google/android/gms/internal/ads/yg;[[[I)[Lcom/google/android/gms/internal/ads/bh;
.end method

.method public final f(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->c:Landroid/util/SparseBooleanArray;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lh;->d()V

    return-void
.end method

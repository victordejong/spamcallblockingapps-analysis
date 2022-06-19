.class public final Lcom/google/android/gms/internal/ads/km3;
.super Lcom/google/android/gms/internal/ads/mm3;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final f:Lcom/google/android/gms/internal/ads/on3;

.field private final g:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Lcom/google/android/gms/internal/ads/im3;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/internal/ads/z8;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/bt3;[IILcom/google/android/gms/internal/ads/on3;JJJFFLjava/util/List;Lcom/google/android/gms/internal/ads/z8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bt3;",
            "[II",
            "Lcom/google/android/gms/internal/ads/on3;",
            "JJJFF",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/im3;",
            ">;",
            "Lcom/google/android/gms/internal/ads/z8;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/mm3;-><init>(Lcom/google/android/gms/internal/ads/bt3;[II)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/km3;->f:Lcom/google/android/gms/internal/ads/on3;

    .line 2
    invoke-static {p13}, Lcom/google/android/gms/internal/ads/zzfoj;->zzp(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/km3;->g:Lcom/google/android/gms/internal/ads/zzfoj;

    iput-object p14, p0, Lcom/google/android/gms/internal/ads/km3;->h:Lcom/google/android/gms/internal/ads/z8;

    return-void
.end method

.method static synthetic e([Lcom/google/android/gms/internal/ads/an3;)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/internal/ads/an3;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Lcom/google/android/gms/internal/ads/im3;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v2, v5, :cond_1

    .line 2
    aget-object v5, p0, v2

    if-eqz v5, :cond_0

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/an3;->b:[I

    array-length v5, v5

    if-le v5, v6, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzu()Lcom/google/android/gms/internal/ads/ax2;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/im3;

    .line 4
    invoke-direct {v6, v3, v4, v3, v4}, Lcom/google/android/gms/internal/ads/im3;-><init>(JJ)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/ax2;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ax2;

    .line 5
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array v2, v5, [[J

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_4

    .line 7
    aget-object v8, p0, v7

    if-nez v8, :cond_2

    new-array v8, v1, [J

    .line 8
    aput-object v8, v2, v7

    goto :goto_4

    :cond_2
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/an3;->b:[I

    .line 9
    array-length v9, v9

    new-array v9, v9, [J

    aput-object v9, v2, v7

    const/4 v9, 0x0

    :goto_3
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/an3;->b:[I

    .line 10
    array-length v11, v10

    if-ge v9, v11, :cond_3

    .line 11
    aget-object v11, v2, v7

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/an3;->a:Lcom/google/android/gms/internal/ads/bt3;

    aget v10, v10, v9

    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/bt3;->a(I)Lcom/google/android/gms/internal/ads/u4;

    move-result-object v10

    iget v10, v10, Lcom/google/android/gms/internal/ads/u4;->j:I

    int-to-long v12, v10

    aput-wide v12, v11, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 12
    :cond_3
    aget-object v8, v2, v7

    invoke-static {v8}, Ljava/util/Arrays;->sort([J)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    new-array v7, v5, [I

    new-array v8, v5, [J

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v5, :cond_6

    .line 13
    aget-object v10, v2, v9

    array-length v11, v10

    if-nez v11, :cond_5

    move-wide v11, v3

    goto :goto_6

    :cond_5
    aget-wide v11, v10, v1

    :goto_6
    aput-wide v11, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 14
    :cond_6
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/km3;->f(Ljava/util/List;[J)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/dy2;->zzb()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ay2;->b(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/yx2;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/yx2;->b(I)Lcom/google/android/gms/internal/ads/wx2;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wx2;->c()Lcom/google/android/gms/internal/ads/kx2;

    move-result-object v3

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v5, :cond_c

    .line 16
    aget-object v9, v2, v4

    array-length v9, v9

    if-gt v9, v6, :cond_7

    goto :goto_c

    :cond_7
    new-array v10, v9, [D

    const/4 v11, 0x0

    .line 17
    :goto_8
    aget-object v12, v2, v4

    array-length v13, v12

    const-wide/16 v14, 0x0

    if-ge v11, v13, :cond_9

    .line 18
    aget-wide v5, v12, v11

    const-wide/16 v16, -0x1

    cmp-long v12, v5, v16

    if-nez v12, :cond_8

    goto :goto_9

    :cond_8
    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    :goto_9
    aput-wide v14, v10, v11

    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v9, v9, -0x1

    .line 19
    aget-wide v5, v10, v9

    aget-wide v11, v10, v1

    sub-double/2addr v5, v11

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v9, :cond_b

    add-int/lit8 v12, v11, 0x1

    .line 20
    aget-wide v16, v10, v11

    aget-wide v18, v10, v12

    add-double v16, v16, v18

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v16, v16, v18

    cmpl-double v11, v5, v14

    if-nez v11, :cond_a

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    goto :goto_b

    .line 21
    :cond_a
    aget-wide v18, v10, v1

    sub-double v16, v16, v18

    div-double v16, v16, v5

    :goto_b
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v11, v1}, Lcom/google/android/gms/internal/ads/tx2;->zzh(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v11, v12

    const/4 v1, 0x0

    goto :goto_a

    :cond_b
    :goto_c
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto :goto_7

    .line 22
    :cond_c
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/tx2;->zzt()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfoj;->zzp(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v1

    const/4 v3, 0x0

    .line 23
    :goto_d
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    .line 24
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 25
    aget v5, v7, v4

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aput v5, v7, v4

    .line 26
    aget-object v9, v2, v4

    aget-wide v10, v9, v5

    aput-wide v10, v8, v4

    .line 27
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/km3;->f(Ljava/util/List;[J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_d
    const/4 v1, 0x0

    const/4 v2, 0x2

    :goto_e
    if-ge v1, v2, :cond_f

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 29
    aget-wide v3, v8, v1

    add-long/2addr v3, v3

    aput-wide v3, v8, v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 30
    :cond_f
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/km3;->f(Ljava/util/List;[J)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzu()Lcom/google/android/gms/internal/ads/ax2;

    move-result-object v1

    const/4 v2, 0x0

    .line 31
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 32
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/ax2;

    if-nez v3, :cond_10

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v3

    goto :goto_10

    :cond_10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ax2;->g()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v3

    :goto_10
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/ax2;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ax2;

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 34
    :cond_11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ax2;->g()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    return-object v0
.end method

.method private static f(Ljava/util/List;[J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/ax2<",
            "Lcom/google/android/gms/internal/ads/im3;",
            ">;>;[J)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 1
    aget-wide v4, p1, v3

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2
    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/ax2;

    if-eqz v3, :cond_1

    new-instance v4, Lcom/google/android/gms/internal/ads/im3;

    .line 4
    aget-wide v5, p1, v0

    invoke-direct {v4, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/im3;-><init>(JJ)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/ax2;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ax2;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

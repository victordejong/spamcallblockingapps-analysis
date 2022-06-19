.class public abstract Lcom/google/android/exoplayer2/trackselection/e;
.super Lcom/google/android/exoplayer2/trackselection/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/e$a;
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/exoplayer2/trackselection/e$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/exoplayer2/trackselection/e$a;[[[I[I)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/e$a;",
            "[[[I[I)",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/android/exoplayer2/RendererConfiguration;",
            "[",
            "Lcom/google/android/exoplayer2/trackselection/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final a([Lcom/google/android/exoplayer2/ag;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/al;)Lcom/google/android/exoplayer2/trackselection/i;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 334
    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    .line 335
    array-length v4, v0

    add-int/2addr v4, v3

    new-array v5, v4, [[Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 336
    array-length v6, v0

    add-int/2addr v6, v3

    new-array v6, v6, [[[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_0

    .line 338
    iget v9, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v9, v9, [Lcom/google/android/exoplayer2/source/TrackGroup;

    aput-object v9, v5, v8

    .line 339
    iget v9, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v9, v9, [[I

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1533
    :cond_0
    array-length v4, v0

    new-array v14, v4, [I

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v4, :cond_1

    .line 1535
    aget-object v9, v0, v8

    invoke-interface {v9}, Lcom/google/android/exoplayer2/ag;->o()I

    move-result v9

    aput v9, v14, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 349
    :goto_2
    iget v8, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v4, v8, :cond_a

    .line 350
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 353
    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/q;->g(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    .line 2475
    :goto_3
    array-length v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 2478
    :goto_4
    array-length v15, v0

    if-ge v11, v15, :cond_7

    .line 2479
    aget-object v15, v0, v11

    const/4 v3, 0x0

    .line 2481
    :goto_5
    iget v1, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v7, v1, :cond_3

    .line 2485
    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/google/android/exoplayer2/ag;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 2486
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 2488
    :cond_3
    aget v1, v2, v11

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_6

    :cond_4
    const/4 v1, 0x0

    :goto_6
    if-gt v3, v12, :cond_5

    if-ne v3, v12, :cond_6

    if-eqz v9, :cond_6

    if-nez v13, :cond_6

    if-eqz v1, :cond_6

    :cond_5
    move v13, v1

    move v12, v3

    move v10, v11

    :cond_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p2

    const/4 v3, 0x1

    const/4 v7, 0x0

    goto :goto_4

    .line 360
    :cond_7
    array-length v1, v0

    if-ne v10, v1, :cond_8

    .line 361
    iget v1, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v1, v1, [I

    goto :goto_8

    .line 362
    :cond_8
    aget-object v1, v0, v10

    .line 3514
    iget v3, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v3, v3, [I

    const/4 v7, 0x0

    .line 3515
    :goto_7
    iget v9, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v7, v9, :cond_9

    .line 3516
    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    invoke-interface {v1, v9}, Lcom/google/android/exoplayer2/ag;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v9

    aput v9, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_9
    move-object v1, v3

    .line 364
    :goto_8
    aget v3, v2, v10

    .line 365
    aget-object v7, v5, v10

    aput-object v8, v7, v3

    .line 366
    aget-object v7, v6, v10

    aput-object v1, v7, v3

    .line 367
    aget v1, v2, v10

    const/4 v3, 0x1

    add-int/2addr v1, v3

    aput v1, v2, v10

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p2

    const/4 v7, 0x0

    goto/16 :goto_2

    .line 371
    :cond_a
    array-length v1, v0

    new-array v10, v1, [Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 372
    array-length v1, v0

    new-array v8, v1, [Ljava/lang/String;

    .line 373
    array-length v1, v0

    new-array v9, v1, [I

    const/4 v7, 0x0

    .line 374
    :goto_9
    array-length v1, v0

    if-ge v7, v1, :cond_b

    .line 375
    aget v1, v2, v7

    .line 376
    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v4, v5, v7

    .line 378
    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/util/af;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    aput-object v3, v10, v7

    .line 379
    aget-object v3, v6, v7

    .line 380
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/af;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    aput-object v1, v6, v7

    .line 381
    aget-object v1, v0, v7

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ag;->x()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v7

    .line 382
    aget-object v1, v0, v7

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ag;->a()I

    move-result v1

    aput v1, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 386
    :cond_b
    array-length v1, v0

    aget v1, v2, v1

    .line 387
    new-instance v13, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    array-length v0, v0

    aget-object v0, v5, v0

    .line 389
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/af;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v13, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    .line 393
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/e$a;

    move-object v7, v0

    move-object v11, v14

    move-object v12, v6

    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer2/trackselection/e$a;-><init>([Ljava/lang/String;[I[Lcom/google/android/exoplayer2/source/TrackGroupArray;[I[[[ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    move-object/from16 v1, p0

    .line 403
    invoke-virtual {v1, v0, v6, v14}, Lcom/google/android/exoplayer2/trackselection/e;->a(Lcom/google/android/exoplayer2/trackselection/e$a;[[[I[I)Landroid/util/Pair;

    move-result-object v2

    .line 409
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/i;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Lcom/google/android/exoplayer2/RendererConfiguration;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Lcom/google/android/exoplayer2/trackselection/c;

    invoke-direct {v3, v4, v2, v0}, Lcom/google/android/exoplayer2/trackselection/i;-><init>([Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/c;Ljava/lang/Object;)V

    return-object v3
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 321
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/e$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e;->a:Lcom/google/android/exoplayer2/trackselection/e$a;

    return-void
.end method

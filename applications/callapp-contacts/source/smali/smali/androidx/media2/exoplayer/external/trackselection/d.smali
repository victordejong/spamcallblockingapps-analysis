.class public abstract Landroidx/media2/exoplayer/external/trackselection/d;
.super Landroidx/media2/exoplayer/external/trackselection/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/d$a;
    }
.end annotation


# instance fields
.field public a:Landroidx/media2/exoplayer/external/trackselection/d$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/trackselection/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroidx/media2/exoplayer/external/trackselection/d$a;[[[I[I)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/trackselection/d$a;",
            "[[[I[I)",
            "Landroid/util/Pair<",
            "[",
            "Landroidx/media2/exoplayer/external/RendererConfiguration;",
            "[",
            "Landroidx/media2/exoplayer/external/trackselection/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final a([Landroidx/media2/exoplayer/external/ah;Landroidx/media2/exoplayer/external/source/TrackGroupArray;)Landroidx/media2/exoplayer/external/trackselection/h;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 348
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 349
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [[Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 350
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [[[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    .line 352
    iget v6, p2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    new-array v6, v6, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    aput-object v6, v2, v5

    .line 353
    iget v6, p2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    new-array v6, v6, [[I

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1504
    :cond_0
    array-length v1, p1

    new-array v10, v1, [I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    .line 1506
    aget-object v6, p1, v5

    invoke-interface {v6}, Landroidx/media2/exoplayer/external/ah;->o()I

    move-result v6

    aput v6, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 362
    :goto_2
    iget v5, p2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v1, v5, :cond_8

    .line 363
    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v5

    .line 2454
    array-length v6, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2456
    :goto_3
    array-length v9, p1

    if-ge v7, v9, :cond_5

    .line 2457
    aget-object v9, p1, v7

    const/4 v11, 0x0

    .line 2458
    :goto_4
    iget v12, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v11, v12, :cond_4

    .line 2459
    invoke-virtual {v5, v11}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v12

    invoke-interface {v9, v12}, Landroidx/media2/exoplayer/external/ah;->a(Landroidx/media2/exoplayer/external/Format;)I

    move-result v12

    and-int/lit8 v12, v12, 0x7

    if-le v12, v8, :cond_3

    const/4 v6, 0x4

    if-eq v12, v6, :cond_2

    move v6, v7

    move v8, v12

    goto :goto_5

    :cond_2
    move v6, v7

    goto :goto_6

    :cond_3
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 367
    :cond_5
    :goto_6
    array-length v7, p1

    if-ne v6, v7, :cond_6

    .line 368
    iget v7, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    new-array v7, v7, [I

    goto :goto_8

    :cond_6
    aget-object v7, p1, v6

    .line 2486
    iget v8, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    new-array v8, v8, [I

    const/4 v9, 0x0

    .line 2487
    :goto_7
    iget v11, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v9, v11, :cond_7

    .line 2488
    invoke-virtual {v5, v9}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v11

    invoke-interface {v7, v11}, Landroidx/media2/exoplayer/external/ah;->a(Landroidx/media2/exoplayer/external/Format;)I

    move-result v11

    aput v11, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_7
    move-object v7, v8

    .line 370
    :goto_8
    aget v8, v0, v6

    .line 371
    aget-object v9, v2, v6

    aput-object v5, v9, v8

    .line 372
    aget-object v5, v3, v6

    aput-object v7, v5, v8

    .line 373
    aget v5, v0, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 377
    :cond_8
    array-length p2, p1

    new-array v6, p2, [Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 378
    array-length p2, p1

    new-array v5, p2, [I

    .line 379
    :goto_9
    array-length p2, p1

    if-ge v4, p2, :cond_9

    .line 380
    aget p2, v0, v4

    .line 381
    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v7, v2, v4

    .line 383
    invoke-static {v7, p2}, Landroidx/media2/exoplayer/external/util/ac;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v1, v7}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    aput-object v1, v6, v4

    .line 384
    aget-object v1, v3, v4

    .line 385
    invoke-static {v1, p2}, Landroidx/media2/exoplayer/external/util/ac;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[I

    aput-object p2, v3, v4

    .line 386
    aget-object p2, p1, v4

    invoke-interface {p2}, Landroidx/media2/exoplayer/external/ah;->a()I

    move-result p2

    aput p2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 390
    :cond_9
    array-length p2, p1

    aget p2, v0, p2

    .line 391
    new-instance v9, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    array-length p1, p1

    aget-object p1, v2, p1

    .line 393
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/util/ac;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v9, p1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    .line 397
    new-instance p1, Landroidx/media2/exoplayer/external/trackselection/d$a;

    move-object v4, p1

    move-object v7, v10

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Landroidx/media2/exoplayer/external/trackselection/d$a;-><init>([I[Landroidx/media2/exoplayer/external/source/TrackGroupArray;[I[[[ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V

    .line 406
    invoke-virtual {p0, p1, v3, v10}, Landroidx/media2/exoplayer/external/trackselection/d;->a(Landroidx/media2/exoplayer/external/trackselection/d$a;[[[I[I)Landroid/util/Pair;

    move-result-object p2

    .line 408
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/h;

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [Landroidx/media2/exoplayer/external/RendererConfiguration;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, [Landroidx/media2/exoplayer/external/trackselection/e;

    invoke-direct {v0, v1, p2, p1}, Landroidx/media2/exoplayer/external/trackselection/h;-><init>([Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/trackselection/e;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 335
    check-cast p1, Landroidx/media2/exoplayer/external/trackselection/d$a;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/d;->a:Landroidx/media2/exoplayer/external/trackselection/d$a;

    return-void
.end method

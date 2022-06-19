.class final Landroidx/media2/player/e$a;
.super Landroidx/media2/exoplayer/external/ae$a;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/audio/f;
.implements Landroidx/media2/exoplayer/external/metadata/d;
.implements Landroidx/media2/exoplayer/external/video/g;
.implements Landroidx/media2/player/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/player/e;


# direct methods
.method constructor <init>(Landroidx/media2/player/e;)V
    .locals 0

    .line 671
    iput-object p1, p0, Landroidx/media2/player/e$a;->a:Landroidx/media2/player/e;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ae$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 695
    iget-object v0, p0, Landroidx/media2/player/e$a;->a:Landroidx/media2/player/e;

    .line 18567
    iget-object v1, v0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    .line 19200
    iget-object v2, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v2}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v2

    .line 18567
    invoke-virtual {v0}, Landroidx/media2/player/e;->d()Landroidx/media2/player/i;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroidx/media2/player/e$c;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/player/i;)V

    .line 18568
    iget-object v0, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/media2/player/e$e;->a(Z)V

    return-void
.end method

.method public final a(II)V
    .locals 13

    .line 764
    iget-object v0, p0, Landroidx/media2/player/e$a;->a:Landroidx/media2/player/e;

    .line 22537
    iget-object v1, v0, Landroidx/media2/player/e;->i:Landroidx/media2/player/n;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 23208
    :goto_0
    iget-object v4, v1, Landroidx/media2/player/n;->h:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 23209
    iget-object v4, v1, Landroidx/media2/player/n;->h:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/player/n$a;

    .line 23210
    iget v6, v4, Landroidx/media2/player/n$a;->a:I

    if-ne v6, p1, :cond_1

    iget v6, v4, Landroidx/media2/player/n$a;->b:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 23211
    iget-object v2, v4, Landroidx/media2/player/n$a;->e:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 24162
    iget v2, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 23213
    new-instance v12, Landroidx/media2/player/n$a;

    iget v7, v4, Landroidx/media2/player/n$a;->d:I

    iget-object v9, v4, Landroidx/media2/player/n$a;->c:Landroidx/media2/exoplayer/external/Format;

    move-object v6, v12

    move v8, p1

    move v10, p2

    move v11, v2

    invoke-direct/range {v6 .. v11}, Landroidx/media2/player/n$a;-><init>(IILandroidx/media2/exoplayer/external/Format;II)V

    .line 23219
    iget-object v4, v1, Landroidx/media2/player/n;->h:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23220
    iget-object v2, v1, Landroidx/media2/player/n;->m:Landroidx/media2/player/n$a;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/media2/player/n;->m:Landroidx/media2/player/n$a;

    iget v2, v2, Landroidx/media2/player/n$a;->d:I

    if-ne v2, v3, :cond_0

    .line 23221
    iget-object v2, v1, Landroidx/media2/player/n;->c:Landroidx/media2/player/l;

    invoke-virtual {v2, p1, p2}, Landroidx/media2/player/l;->a(II)V

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 23228
    new-instance v2, Landroidx/media2/player/n$a;

    iget v7, v1, Landroidx/media2/player/n;->n:I

    const/4 v9, 0x0

    iget v11, v1, Landroidx/media2/player/n;->a:I

    add-int/lit8 v3, v11, 0x1

    iput v3, v1, Landroidx/media2/player/n;->a:I

    move-object v6, v2

    move v8, p1

    move v10, p2

    invoke-direct/range {v6 .. v11}, Landroidx/media2/player/n$a;-><init>(IILandroidx/media2/exoplayer/external/Format;II)V

    .line 23230
    iget-object p1, v1, Landroidx/media2/player/n;->h:Landroid/util/SparseArray;

    iget-object p2, v2, Landroidx/media2/player/n$a;->e:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 25162
    iget p2, p2, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 23230
    invoke-virtual {p1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23231
    iput-boolean v5, v1, Landroidx/media2/player/n;->i:Z

    .line 22538
    :cond_3
    iget-object p1, v0, Landroidx/media2/player/e;->i:Landroidx/media2/player/n;

    invoke-virtual {p1}, Landroidx/media2/player/n;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22539
    iget-object p1, v0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    .line 25370
    iget-object p2, v0, Landroidx/media2/player/e;->i:Landroidx/media2/player/n;

    invoke-virtual {p2}, Landroidx/media2/player/n;->b()Ljava/util/List;

    move-result-object p2

    .line 22539
    invoke-interface {p1, p2}, Landroidx/media2/player/e$c;->a(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public final a(IIIF)V
    .locals 0

    .line 711
    iget-object p3, p0, Landroidx/media2/player/e$a;->a:Landroidx/media2/player/e;

    invoke-virtual {p3, p1, p2, p4}, Landroidx/media2/player/e;->a(IIF)V

    return-void
.end method

.method public final a(IJ)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 1

    .line 723
    iget-object p1, p0, Landroidx/media2/player/e$a;->a:Landroidx/media2/player/e;

    .line 21498
    iget-object v0, p1, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    iget-object p1, p1, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {p1}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/media2/player/e$c;->f(Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/ExoPlaybackException;)V
    .locals 4

    .line 700
    iget-object v0, p0, Landroidx/media2/player/e$a;->a:Landroidx/media2/player/e;

    .line 19574
    iget-object v1, v0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    .line 20200
    iget-object v2, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v2}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v2

    .line 19574
    invoke-virtual {v0}, Landroidx/media2/player/e;->d()Landroidx/media2/player/i;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroidx/media2/player/e$c;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/player/i;)V

    .line 19575
    iget-object v1, v0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    .line 21200
    iget-object v0, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v0}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v0

    .line 19575
    invoke-static {p1}, Landroidx/media2/player/d;->a(Landroidx/media2/exoplayer/external/ExoPlaybackException;)I

    move-result p1

    invoke-interface {v1, v0, p1}, Landroidx/media2/player/e$c;->c(Landroidx/media2/common/MediaItem;I)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/Format;)V
    .locals 3

    .line 716
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Landroidx/media2/player/e$a;->a:Landroidx/media2/player/e;

    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2, p1}, Landroidx/media2/player/e;->a(IIF)V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/b/d;)V
    .locals 0

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 9

    .line 771
    iget-object v0, p0, Landroidx/media2/player/e$a;->a:Landroidx/media2/player/e;

    .line 25593
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 25595
    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v3

    check-cast v3, Landroidx/media2/player/ByteArrayFrame;

    .line 25596
    iget-object v4, v0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    .line 26200
    iget-object v5, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v5}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v5

    .line 25597
    new-instance v6, Landroidx/media2/player/m;

    iget-wide v7, v3, Landroidx/media2/player/ByteArrayFrame;->mTimestamp:J

    iget-object v3, v3, Landroidx/media2/player/ByteArrayFrame;->mData:[B

    invoke-direct {v6, v7, v8, v3}, Landroidx/media2/player/m;-><init>(J[B)V

    .line 25596
    invoke-interface {v4, v5, v6}, Landroidx/media2/player/e$c;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/player/m;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/trackselection/f;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 685
    iget-object v2, v0, Landroidx/media2/player/e$a;->a:Landroidx/media2/player/e;

    .line 7200
    iget-object v3, v2, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v3}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v3

    .line 6546
    iget-object v4, v2, Landroidx/media2/player/e;->i:Landroidx/media2/player/n;

    .line 8104
    iget-object v5, v4, Landroidx/media2/player/n;->b:Landroidx/media2/common/MediaItem;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v5, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 8105
    :goto_0
    iput-object v3, v4, Landroidx/media2/player/n;->b:Landroidx/media2/common/MediaItem;

    .line 8107
    iput-boolean v7, v4, Landroidx/media2/player/n;->i:Z

    .line 8110
    iget-object v3, v4, Landroidx/media2/player/n;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    iget-object v8, v4, Landroidx/media2/player/n;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 8111
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;

    move-result-object v8

    .line 8688
    iget-object v9, v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->d:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    .line 8692
    :cond_1
    iget-object v9, v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->d:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 8110
    :goto_1
    invoke-virtual {v3, v8}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;)V

    const/4 v3, 0x0

    .line 8112
    iput-object v3, v4, Landroidx/media2/player/n;->j:Landroidx/media2/player/n$b;

    .line 8113
    iput-object v3, v4, Landroidx/media2/player/n;->k:Landroidx/media2/player/n$b;

    .line 8114
    iput-object v3, v4, Landroidx/media2/player/n;->l:Landroidx/media2/player/n$b;

    .line 8115
    iput-object v3, v4, Landroidx/media2/player/n;->m:Landroidx/media2/player/n$a;

    const/4 v8, -0x1

    .line 8116
    iput v8, v4, Landroidx/media2/player/n;->n:I

    .line 8117
    iget-object v9, v4, Landroidx/media2/player/n;->c:Landroidx/media2/player/l;

    invoke-virtual {v9}, Landroidx/media2/player/l;->z()V

    if-eqz v5, :cond_2

    .line 8120
    iget-object v5, v4, Landroidx/media2/player/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 8121
    iget-object v5, v4, Landroidx/media2/player/n;->f:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 8122
    iget-object v5, v4, Landroidx/media2/player/n;->g:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 8123
    iget-object v5, v4, Landroidx/media2/player/n;->h:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 8126
    :cond_2
    iget-object v5, v4, Landroidx/media2/player/n;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 9328
    iget-object v5, v5, Landroidx/media2/exoplayer/external/trackselection/d;->a:Landroidx/media2/exoplayer/external/trackselection/d$a;

    if-eqz v5, :cond_11

    .line 10055
    iget-object v9, v1, Landroidx/media2/exoplayer/external/trackselection/f;->b:[Landroidx/media2/exoplayer/external/trackselection/e;

    aget-object v9, v9, v7

    if-nez v9, :cond_3

    move-object v9, v3

    goto :goto_2

    .line 8135
    :cond_3
    invoke-interface {v9}, Landroidx/media2/exoplayer/external/trackselection/e;->e()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v9

    .line 11055
    :goto_2
    iget-object v10, v1, Landroidx/media2/exoplayer/external/trackselection/f;->b:[Landroidx/media2/exoplayer/external/trackselection/e;

    aget-object v10, v10, v6

    if-nez v10, :cond_4

    move-object v10, v3

    goto :goto_3

    .line 8138
    :cond_4
    invoke-interface {v10}, Landroidx/media2/exoplayer/external/trackselection/e;->e()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v10

    .line 12055
    :goto_3
    iget-object v11, v1, Landroidx/media2/exoplayer/external/trackselection/f;->b:[Landroidx/media2/exoplayer/external/trackselection/e;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    if-nez v11, :cond_5

    move-object v11, v3

    goto :goto_4

    .line 8141
    :cond_5
    invoke-interface {v11}, Landroidx/media2/exoplayer/external/trackselection/e;->e()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v11

    .line 13055
    :goto_4
    iget-object v1, v1, Landroidx/media2/exoplayer/external/trackselection/f;->b:[Landroidx/media2/exoplayer/external/trackselection/e;

    const/4 v13, 0x2

    aget-object v1, v1, v13

    if-nez v1, :cond_6

    goto :goto_5

    .line 8144
    :cond_6
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/trackselection/e;->e()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v3

    .line 13151
    :goto_5
    iget-object v1, v5, Landroidx/media2/exoplayer/external/trackselection/d$a;->d:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v1, v1, v7

    .line 8148
    iget-object v14, v4, Landroidx/media2/player/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    :goto_6
    iget v15, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v14, v15, :cond_8

    .line 8149
    invoke-virtual {v1, v14}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v15

    .line 8150
    new-instance v8, Landroidx/media2/player/n$b;

    .line 8153
    invoke-virtual {v15, v6}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroidx/media2/player/d;->a(Landroidx/media2/exoplayer/external/Format;)Landroid/media/MediaFormat;

    move-result-object v12

    iget v7, v4, Landroidx/media2/player/n;->a:I

    add-int/lit8 v6, v7, 0x1

    iput v6, v4, Landroidx/media2/player/n;->a:I

    invoke-direct {v8, v14, v13, v12, v7}, Landroidx/media2/player/n$b;-><init>(IILandroid/media/MediaFormat;I)V

    .line 8155
    iget-object v6, v4, Landroidx/media2/player/n;->e:Landroid/util/SparseArray;

    iget-object v7, v8, Landroidx/media2/player/n$b;->e:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 13162
    iget v7, v7, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 8155
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8156
    invoke-virtual {v15, v9}, Landroidx/media2/exoplayer/external/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 8157
    iput-object v8, v4, Landroidx/media2/player/n;->j:Landroidx/media2/player/n$b;

    :cond_7
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v12, 0x3

    goto :goto_6

    .line 14151
    :cond_8
    iget-object v1, v5, Landroidx/media2/exoplayer/external/trackselection/d$a;->d:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    const/4 v6, 0x0

    aget-object v1, v1, v6

    .line 8161
    iget-object v7, v4, Landroidx/media2/player/n;->f:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    :goto_7
    iget v8, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v7, v8, :cond_a

    .line 8162
    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v8

    .line 8163
    new-instance v9, Landroidx/media2/player/n$b;

    .line 8166
    invoke-virtual {v8, v6}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v12

    invoke-static {v12}, Landroidx/media2/player/d;->a(Landroidx/media2/exoplayer/external/Format;)Landroid/media/MediaFormat;

    move-result-object v6

    iget v12, v4, Landroidx/media2/player/n;->a:I

    add-int/lit8 v14, v12, 0x1

    iput v14, v4, Landroidx/media2/player/n;->a:I

    const/4 v14, 0x1

    invoke-direct {v9, v7, v14, v6, v12}, Landroidx/media2/player/n$b;-><init>(IILandroid/media/MediaFormat;I)V

    .line 8168
    iget-object v6, v4, Landroidx/media2/player/n;->f:Landroid/util/SparseArray;

    iget-object v12, v9, Landroidx/media2/player/n$b;->e:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 14162
    iget v12, v12, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 8168
    invoke-virtual {v6, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8169
    invoke-virtual {v8, v10}, Landroidx/media2/exoplayer/external/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 8170
    iput-object v9, v4, Landroidx/media2/player/n;->k:Landroidx/media2/player/n$b;

    :cond_9
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_7

    :cond_a
    const/4 v14, 0x1

    .line 15151
    iget-object v1, v5, Landroidx/media2/exoplayer/external/trackselection/d$a;->d:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    const/4 v6, 0x3

    aget-object v1, v1, v6

    .line 8175
    iget-object v6, v4, Landroidx/media2/player/n;->g:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    :goto_8
    iget v7, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v6, v7, :cond_c

    .line 8176
    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v7

    .line 8177
    new-instance v8, Landroidx/media2/player/n$b;

    const/4 v9, 0x5

    const/4 v10, 0x0

    .line 8180
    invoke-virtual {v7, v10}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v12

    invoke-static {v12}, Landroidx/media2/player/d;->a(Landroidx/media2/exoplayer/external/Format;)Landroid/media/MediaFormat;

    move-result-object v10

    iget v12, v4, Landroidx/media2/player/n;->a:I

    add-int/lit8 v15, v12, 0x1

    iput v15, v4, Landroidx/media2/player/n;->a:I

    invoke-direct {v8, v6, v9, v10, v12}, Landroidx/media2/player/n$b;-><init>(IILandroid/media/MediaFormat;I)V

    .line 8182
    iget-object v9, v4, Landroidx/media2/player/n;->g:Landroid/util/SparseArray;

    iget-object v10, v8, Landroidx/media2/player/n$b;->e:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 15162
    iget v10, v10, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 8182
    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8183
    invoke-virtual {v7, v11}, Landroidx/media2/exoplayer/external/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 8184
    iput-object v8, v4, Landroidx/media2/player/n;->l:Landroidx/media2/player/n$b;

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 16151
    :cond_c
    iget-object v1, v5, Landroidx/media2/exoplayer/external/trackselection/d$a;->d:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v1, v1, v13

    .line 8191
    iget-object v5, v4, Landroidx/media2/player/n;->h:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    :goto_9
    iget v6, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v5, v6, :cond_11

    .line 8192
    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v12

    const/4 v15, 0x0

    .line 8193
    invoke-virtual {v12, v15}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroidx/media2/exoplayer/external/Format;

    .line 8194
    iget-object v6, v9, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 16357
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_a
    const/4 v7, -0x1

    goto :goto_b

    :sswitch_0
    const-string v7, "application/cea-708"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_a

    :cond_d
    const/4 v7, 0x2

    goto :goto_b

    :sswitch_1
    const-string v7, "application/cea-608"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_a

    :cond_e
    const/4 v7, 0x1

    goto :goto_b

    :sswitch_2
    const-string v7, "text/vtt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_a

    :cond_f
    const/4 v7, 0x0

    :goto_b
    packed-switch v7, :pswitch_data_0

    .line 16365
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unexpected text MIME type "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/4 v8, 0x1

    goto :goto_c

    :pswitch_1
    const/4 v8, 0x0

    goto :goto_c

    :pswitch_2
    const/4 v8, 0x2

    .line 8195
    :goto_c
    new-instance v11, Landroidx/media2/player/n$a;

    const/4 v10, -0x1

    iget v7, v4, Landroidx/media2/player/n;->a:I

    add-int/lit8 v6, v7, 0x1

    iput v6, v4, Landroidx/media2/player/n;->a:I

    move-object v6, v11

    move/from16 v16, v7

    move v7, v5

    move-object v13, v11

    move/from16 v11, v16

    invoke-direct/range {v6 .. v11}, Landroidx/media2/player/n$a;-><init>(IILandroidx/media2/exoplayer/external/Format;II)V

    .line 8197
    iget-object v6, v4, Landroidx/media2/player/n;->h:Landroid/util/SparseArray;

    iget-object v7, v13, Landroidx/media2/player/n$a;->e:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 17162
    iget v7, v7, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 8197
    invoke-virtual {v6, v7, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8198
    invoke-virtual {v12, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 8199
    iput v5, v4, Landroidx/media2/player/n;->n:I

    :cond_10
    add-int/lit8 v5, v5, 0x1

    const/4 v13, 0x2

    goto/16 :goto_9

    .line 6547
    :cond_11
    iget-object v1, v2, Landroidx/media2/player/e;->i:Landroidx/media2/player/n;

    invoke-virtual {v1}, Landroidx/media2/player/n;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 6548
    iget-object v1, v2, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    invoke-virtual {v2}, Landroidx/media2/player/e;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/media2/player/e$c;->a(Ljava/util/List;)V

    :cond_12
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3be2f26c -> :sswitch_2
        0x5d578071 -> :sswitch_1
        0x5d578432 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public final a(ZI)V
    .locals 12

    .line 679
    iget-object v0, p0, Landroidx/media2/player/e$a;->a:Landroidx/media2/player/e;

    .line 1503
    iget-object v1, v0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    .line 2200
    iget-object v2, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v2}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v2

    .line 1503
    invoke-virtual {v0}, Landroidx/media2/player/e;->d()Landroidx/media2/player/i;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroidx/media2/player/e$c;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/player/i;)V

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    if-eqz p1, :cond_0

    .line 2612
    iget-object p1, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {p1}, Landroidx/media2/player/e$e;->d()V

    goto :goto_0

    .line 2616
    :cond_0
    iget-object p1, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    .line 2949
    iget-wide v4, p1, Landroidx/media2/player/e$e;->e:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 2952
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 2953
    iget-wide v8, p1, Landroidx/media2/player/e$e;->f:J

    iget-wide v10, p1, Landroidx/media2/player/e$e;->e:J

    sub-long/2addr v4, v10

    const-wide/16 v10, 0x1f4

    add-long/2addr v4, v10

    div-long/2addr v4, v1

    add-long/2addr v8, v4

    iput-wide v8, p1, Landroidx/media2/player/e$e;->f:J

    .line 2954
    iput-wide v6, p1, Landroidx/media2/player/e$e;->e:J

    :cond_1
    :goto_0
    const/4 p1, 0x2

    if-eq p2, v3, :cond_3

    if-ne p2, p1, :cond_2

    goto :goto_1

    .line 1514
    :cond_2
    iget-object v4, v0, Landroidx/media2/player/e;->c:Landroid/os/Handler;

    iget-object v5, v0, Landroidx/media2/player/e;->e:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1512
    :cond_3
    :goto_1
    iget-object v4, v0, Landroidx/media2/player/e;->c:Landroid/os/Handler;

    iget-object v5, v0, Landroidx/media2/player/e;->e:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    const/4 v4, 0x1

    if-eq p2, v4, :cond_a

    if-eq p2, p1, :cond_8

    if-eq p2, v3, :cond_7

    const/4 p1, 0x4

    if-ne p2, p1, :cond_6

    .line 5659
    iget-boolean p1, v0, Landroidx/media2/player/e;->p:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 5661
    iput-boolean p2, v0, Landroidx/media2/player/e;->p:Z

    .line 5662
    iget-object p1, v0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    invoke-interface {p1}, Landroidx/media2/player/e$c;->r()V

    .line 5664
    :cond_4
    iget-object p1, v0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/ak;->n()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 5665
    iget-object p1, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    .line 5958
    invoke-virtual {p1}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v1

    .line 5959
    iget-object v2, p1, Landroidx/media2/player/e$e;->a:Landroidx/media2/player/e$c;

    invoke-interface {v2, v1}, Landroidx/media2/player/e$c;->h(Landroidx/media2/common/MediaItem;)V

    .line 5960
    iget-object p1, p1, Landroidx/media2/player/e$e;->a:Landroidx/media2/player/e$c;

    invoke-interface {p1, v1}, Landroidx/media2/player/e$c;->j(Landroidx/media2/common/MediaItem;)V

    .line 5666
    iget-object p1, v0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/ak;->a(Z)V

    :cond_5
    return-void

    .line 1531
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1522
    :cond_7
    invoke-virtual {v0}, Landroidx/media2/player/e;->g()V

    return-void

    .line 3620
    :cond_8
    iget-boolean p1, v0, Landroidx/media2/player/e;->m:Z

    if-eqz p1, :cond_a

    iget-boolean p1, v0, Landroidx/media2/player/e;->o:Z

    if-nez p1, :cond_a

    .line 3621
    iput-boolean v4, v0, Landroidx/media2/player/e;->o:Z

    .line 3622
    iget-object p1, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {p1}, Landroidx/media2/player/e$e;->c()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3623
    iget-object p1, v0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    .line 4200
    iget-object p2, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {p2}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object p2

    .line 3624
    iget-object v3, v0, Landroidx/media2/player/e;->d:Landroidx/media2/exoplayer/external/upstream/j;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/upstream/j;->a()J

    move-result-wide v3

    div-long/2addr v3, v1

    long-to-int v1, v3

    .line 3623
    invoke-interface {p1, p2, v1}, Landroidx/media2/player/e$c;->b(Landroidx/media2/common/MediaItem;I)V

    .line 3626
    :cond_9
    iget-object p1, v0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    .line 5200
    iget-object p2, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {p2}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object p2

    .line 3626
    invoke-interface {p1, p2}, Landroidx/media2/player/e$c;->d(Landroidx/media2/common/MediaItem;)V

    :cond_a
    return-void
.end method

.method public final a([BJ)V
    .locals 10

    .line 759
    iget-object v0, p0, Landroidx/media2/player/e$a;->a:Landroidx/media2/player/e;

    .line 21585
    iget-object v1, v0, Landroidx/media2/player/e;->i:Landroidx/media2/player/n;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroidx/media2/player/n;->a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v1

    .line 22200
    iget-object v2, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v2}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v2

    .line 21587
    iget-object v0, v0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    new-instance v9, Landroidx/media2/common/SubtitleData;

    const-wide/16 v6, 0x0

    move-object v3, v9

    move-wide v4, p2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Landroidx/media2/common/SubtitleData;-><init>(JJ[B)V

    invoke-interface {v0, v2, v1, v9}, Landroidx/media2/player/e$c;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 690
    iget-object v0, p0, Landroidx/media2/player/e$a;->a:Landroidx/media2/player/e;

    .line 18200
    iget-object v1, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v1}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v1

    if-nez v1, :cond_0

    .line 17555
    iget-object v0, v0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    invoke-interface {v0}, Landroidx/media2/player/e$c;->r()V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 17558
    iput-boolean v1, v0, Landroidx/media2/player/e;->p:Z

    .line 17559
    iget-object v1, v0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/ak;->l()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 17561
    invoke-virtual {v0}, Landroidx/media2/player/e;->g()V

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 746
    iget-object v0, p0, Landroidx/media2/player/e$a;->a:Landroidx/media2/player/e;

    .line 21580
    iput p1, v0, Landroidx/media2/player/e;->l:I

    return-void
.end method

.method public final b(Landroidx/media2/exoplayer/external/b/d;)V
    .locals 2

    .line 738
    iget-object p1, p0, Landroidx/media2/player/e$a;->a:Landroidx/media2/player/e;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0, v1}, Landroidx/media2/player/e;->a(IIF)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

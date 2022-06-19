.class final synthetic Landroidx/media2/exoplayer/external/source/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/source/af;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/source/af;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ag;->a:Landroidx/media2/exoplayer/external/source/af;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ag;->a:Landroidx/media2/exoplayer/external/source/af;

    .line 1703
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/af;->g:Landroidx/media2/exoplayer/external/extractor/o;

    .line 1704
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/source/af;->u:Z

    if-nez v2, :cond_a

    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/source/af;->m:Z

    if-nez v2, :cond_a

    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/source/af;->l:Z

    if-eqz v2, :cond_a

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 1707
    :cond_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 2243
    iget-object v6, v6, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/aj;->d()Landroidx/media2/exoplayer/external/Format;

    move-result-object v6

    if-eqz v6, :cond_a

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1712
    :cond_1
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/af;->d:Landroidx/media2/exoplayer/external/util/e;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/e;->b()Z

    .line 1713
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v2, v2

    .line 1714
    new-array v3, v2, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 1715
    new-array v5, v2, [Z

    .line 1716
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/o;->b()J

    move-result-wide v6

    iput-wide v6, v0, Landroidx/media2/exoplayer/external/source/af;->q:J

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v2, :cond_8

    .line 1718
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/af;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object v8, v8, v6

    .line 3243
    iget-object v8, v8, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/source/aj;->d()Landroidx/media2/exoplayer/external/Format;

    move-result-object v8

    .line 1719
    iget-object v9, v8, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 1720
    invoke-static {v9}, Landroidx/media2/exoplayer/external/util/m;->a(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1721
    invoke-static {v9}, Landroidx/media2/exoplayer/external/util/m;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v9, 0x1

    .line 1722
    :goto_3
    aput-boolean v9, v5, v6

    .line 1723
    iget-boolean v11, v0, Landroidx/media2/exoplayer/external/source/af;->o:Z

    or-int/2addr v9, v11

    iput-boolean v9, v0, Landroidx/media2/exoplayer/external/source/af;->o:Z

    .line 1724
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/af;->h:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    if-eqz v9, :cond_7

    if-nez v10, :cond_4

    .line 1726
    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/af;->k:[Landroidx/media2/exoplayer/external/source/af$f;

    aget-object v11, v11, v6

    iget-boolean v11, v11, Landroidx/media2/exoplayer/external/source/af$f;->b:Z

    if-eqz v11, :cond_6

    .line 1727
    :cond_4
    iget-object v11, v8, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-nez v11, :cond_5

    .line 1731
    new-instance v11, Landroidx/media2/exoplayer/external/metadata/Metadata;

    new-array v12, v7, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aput-object v9, v12, v4

    invoke-direct {v11, v12}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    goto :goto_4

    :cond_5
    new-array v12, v7, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aput-object v9, v12, v4

    .line 1732
    invoke-virtual {v11, v12}, Landroidx/media2/exoplayer/external/metadata/Metadata;->copyWithAppendedEntries([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v11

    .line 1729
    :goto_4
    invoke-virtual {v8, v11}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v8

    :cond_6
    if-eqz v10, :cond_7

    .line 1734
    iget v10, v8, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    iget v10, v9, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    if-eq v10, v11, :cond_7

    .line 1737
    iget v9, v9, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    invoke-virtual {v8, v9}, Landroidx/media2/exoplayer/external/Format;->copyWithBitrate(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v8

    .line 1740
    :cond_7
    new-instance v9, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v7, v7, [Landroidx/media2/exoplayer/external/Format;

    aput-object v8, v7, v4

    invoke-direct {v9, v7}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v9, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1743
    :cond_8
    iget-wide v8, v0, Landroidx/media2/exoplayer/external/source/af;->r:J

    const-wide/16 v10, -0x1

    cmp-long v2, v8, v10

    if-nez v2, :cond_9

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/o;->b()J

    move-result-wide v8

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v8, v10

    if-nez v2, :cond_9

    const/4 v2, 0x7

    goto :goto_5

    :cond_9
    const/4 v2, 0x1

    .line 1745
    :goto_5
    iput v2, v0, Landroidx/media2/exoplayer/external/source/af;->p:I

    .line 1746
    new-instance v2, Landroidx/media2/exoplayer/external/source/af$d;

    new-instance v4, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-direct {v4, v3}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    invoke-direct {v2, v1, v4, v5}, Landroidx/media2/exoplayer/external/source/af$d;-><init>(Landroidx/media2/exoplayer/external/extractor/o;Landroidx/media2/exoplayer/external/source/TrackGroupArray;[Z)V

    iput-object v2, v0, Landroidx/media2/exoplayer/external/source/af;->n:Landroidx/media2/exoplayer/external/source/af$d;

    .line 1748
    iput-boolean v7, v0, Landroidx/media2/exoplayer/external/source/af;->m:Z

    .line 1749
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/af;->b:Landroidx/media2/exoplayer/external/source/af$c;

    iget-wide v3, v0, Landroidx/media2/exoplayer/external/source/af;->q:J

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/o;->j_()Z

    move-result v1

    invoke-interface {v2, v3, v4, v1}, Landroidx/media2/exoplayer/external/source/af$c;->a(JZ)V

    .line 1750
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/af;->f:Landroidx/media2/exoplayer/external/source/s$a;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/s$a;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/s$a;->a(Landroidx/media2/exoplayer/external/source/s;)V

    :cond_a
    :goto_6
    return-void
.end method

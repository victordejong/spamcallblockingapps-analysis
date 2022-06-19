.class public final Landroidx/media2/exoplayer/external/source/hls/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/hls/k$a;
.implements Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$b;
.implements Landroidx/media2/exoplayer/external/source/s;


# instance fields
.field final a:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

.field final b:Landroidx/media2/exoplayer/external/source/u$a;

.field c:Landroidx/media2/exoplayer/external/source/s$a;

.field d:[Landroidx/media2/exoplayer/external/source/hls/k;

.field private final e:Landroidx/media2/exoplayer/external/source/hls/f;

.field private final f:Landroidx/media2/exoplayer/external/source/hls/e;

.field private final g:Landroidx/media2/exoplayer/external/upstream/w;

.field private final h:Landroidx/media2/exoplayer/external/drm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/k<",
            "*>;"
        }
    .end annotation
.end field

.field private final i:Landroidx/media2/exoplayer/external/upstream/t;

.field private final j:Landroidx/media2/exoplayer/external/upstream/b;

.field private final k:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Landroidx/media2/exoplayer/external/source/al;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroidx/media2/exoplayer/external/source/hls/o;

.field private final m:Landroidx/media2/exoplayer/external/source/g;

.field private final n:Z

.field private final o:Z

.field private p:I

.field private q:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field private r:[Landroidx/media2/exoplayer/external/source/hls/k;

.field private s:[[I

.field private t:Landroidx/media2/exoplayer/external/source/am;

.field private u:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/f;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;Landroidx/media2/exoplayer/external/source/hls/e;Landroidx/media2/exoplayer/external/upstream/w;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/upstream/t;Landroidx/media2/exoplayer/external/source/u$a;Landroidx/media2/exoplayer/external/upstream/b;Landroidx/media2/exoplayer/external/source/g;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/hls/f;",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;",
            "Landroidx/media2/exoplayer/external/source/hls/e;",
            "Landroidx/media2/exoplayer/external/upstream/w;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "*>;",
            "Landroidx/media2/exoplayer/external/upstream/t;",
            "Landroidx/media2/exoplayer/external/source/u$a;",
            "Landroidx/media2/exoplayer/external/upstream/b;",
            "Landroidx/media2/exoplayer/external/source/g;",
            "ZZ)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/i;->e:Landroidx/media2/exoplayer/external/source/hls/f;

    .line 128
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/i;->a:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 129
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/i;->f:Landroidx/media2/exoplayer/external/source/hls/e;

    .line 130
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/hls/i;->g:Landroidx/media2/exoplayer/external/upstream/w;

    .line 131
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/hls/i;->h:Landroidx/media2/exoplayer/external/drm/k;

    .line 132
    iput-object p6, p0, Landroidx/media2/exoplayer/external/source/hls/i;->i:Landroidx/media2/exoplayer/external/upstream/t;

    .line 133
    iput-object p7, p0, Landroidx/media2/exoplayer/external/source/hls/i;->b:Landroidx/media2/exoplayer/external/source/u$a;

    .line 134
    iput-object p8, p0, Landroidx/media2/exoplayer/external/source/hls/i;->j:Landroidx/media2/exoplayer/external/upstream/b;

    .line 135
    iput-object p9, p0, Landroidx/media2/exoplayer/external/source/hls/i;->m:Landroidx/media2/exoplayer/external/source/g;

    .line 136
    iput-boolean p10, p0, Landroidx/media2/exoplayer/external/source/hls/i;->n:Z

    .line 137
    iput-boolean p11, p0, Landroidx/media2/exoplayer/external/source/hls/i;->o:Z

    const/4 p1, 0x0

    new-array p2, p1, [Landroidx/media2/exoplayer/external/source/am;

    .line 139
    invoke-interface {p9, p2}, Landroidx/media2/exoplayer/external/source/g;->a([Landroidx/media2/exoplayer/external/source/am;)Landroidx/media2/exoplayer/external/source/am;

    move-result-object p2

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/i;->t:Landroidx/media2/exoplayer/external/source/am;

    .line 140
    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/i;->k:Ljava/util/IdentityHashMap;

    .line 141
    new-instance p2, Landroidx/media2/exoplayer/external/source/hls/o;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/source/hls/o;-><init>()V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/i;->l:Landroidx/media2/exoplayer/external/source/hls/o;

    new-array p2, p1, [Landroidx/media2/exoplayer/external/source/hls/k;

    .line 142
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/i;->d:[Landroidx/media2/exoplayer/external/source/hls/k;

    new-array p2, p1, [Landroidx/media2/exoplayer/external/source/hls/k;

    .line 143
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/i;->r:[Landroidx/media2/exoplayer/external/source/hls/k;

    new-array p1, p1, [[I

    .line 144
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/i;->s:[[I

    .line 145
    invoke-virtual {p7}, Landroidx/media2/exoplayer/external/source/u$a;->a()V

    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    .line 817
    iget-object v2, v1, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 818
    iget-object v3, v1, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 819
    iget v5, v1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    .line 820
    iget v6, v1, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    .line 821
    iget v7, v1, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    .line 822
    iget-object v8, v1, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    .line 823
    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    move-object v10, v1

    move-object v13, v2

    move-object v14, v3

    move/from16 v16, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v8

    goto :goto_0

    .line 825
    :cond_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v1, v5}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 826
    iget-object v5, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-eqz p2, :cond_1

    .line 828
    iget v2, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    .line 829
    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    .line 830
    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    .line 831
    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    .line 832
    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    move-object v13, v1

    move/from16 v16, v2

    move/from16 v19, v3

    move-object v14, v5

    move/from16 v20, v6

    move-object/from16 v21, v7

    move-object v10, v8

    goto :goto_0

    :cond_1
    move-object v13, v1

    move-object v10, v2

    move-object/from16 v21, v10

    move-object v14, v5

    const/16 v16, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 835
    :goto_0
    invoke-static {v13}, Landroidx/media2/exoplayer/external/util/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz p2, :cond_2

    .line 836
    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    move v15, v4

    goto :goto_1

    :cond_2
    const/4 v15, -0x1

    .line 837
    :goto_1
    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v11, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    const/16 v17, -0x1

    const/16 v18, 0x0

    invoke-static/range {v9 .. v21}, Landroidx/media2/exoplayer/external/Format;->createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIILjava/util/List;IILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method private a(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media2/exoplayer/external/source/hls/k;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/net/Uri;",
            "[",
            "Landroidx/media2/exoplayer/external/Format;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;J)",
            "Landroidx/media2/exoplayer/external/source/hls/k;"
        }
    .end annotation

    move-object v12, p0

    .line 739
    new-instance v9, Landroidx/media2/exoplayer/external/source/hls/d;

    iget-object v1, v12, Landroidx/media2/exoplayer/external/source/hls/i;->e:Landroidx/media2/exoplayer/external/source/hls/f;

    iget-object v2, v12, Landroidx/media2/exoplayer/external/source/hls/i;->a:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    iget-object v5, v12, Landroidx/media2/exoplayer/external/source/hls/i;->f:Landroidx/media2/exoplayer/external/source/hls/e;

    iget-object v6, v12, Landroidx/media2/exoplayer/external/source/hls/i;->g:Landroidx/media2/exoplayer/external/upstream/w;

    iget-object v7, v12, Landroidx/media2/exoplayer/external/source/hls/i;->l:Landroidx/media2/exoplayer/external/source/hls/o;

    move-object v0, v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/source/hls/d;-><init>(Landroidx/media2/exoplayer/external/source/hls/f;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/hls/e;Landroidx/media2/exoplayer/external/upstream/w;Landroidx/media2/exoplayer/external/source/hls/o;Ljava/util/List;)V

    .line 749
    new-instance v13, Landroidx/media2/exoplayer/external/source/hls/k;

    iget-object v5, v12, Landroidx/media2/exoplayer/external/source/hls/i;->j:Landroidx/media2/exoplayer/external/upstream/b;

    iget-object v10, v12, Landroidx/media2/exoplayer/external/source/hls/i;->h:Landroidx/media2/exoplayer/external/drm/k;

    iget-object v11, v12, Landroidx/media2/exoplayer/external/source/hls/i;->i:Landroidx/media2/exoplayer/external/upstream/t;

    iget-object v14, v12, Landroidx/media2/exoplayer/external/source/hls/i;->b:Landroidx/media2/exoplayer/external/source/u$a;

    move-object v0, v13

    move/from16 v1, p1

    move-object v2, p0

    move-object v3, v9

    move-object/from16 v4, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p4

    move-object v9, v10

    move-object v10, v11

    move-object v11, v14

    invoke-direct/range {v0 .. v11}, Landroidx/media2/exoplayer/external/source/hls/k;-><init>(ILandroidx/media2/exoplayer/external/source/hls/k$a;Landroidx/media2/exoplayer/external/source/hls/d;Ljava/util/Map;Landroidx/media2/exoplayer/external/upstream/b;JLandroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/upstream/t;Landroidx/media2/exoplayer/external/source/u$a;)V

    return-object v13
.end method

.method private a(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/k;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 680
    new-instance v1, Ljava/util/ArrayList;

    .line 681
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 682
    new-instance v2, Ljava/util/ArrayList;

    .line 683
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 684
    new-instance v3, Ljava/util/ArrayList;

    .line 685
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 686
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 688
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 690
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;->d:Ljava/lang/String;

    .line 691
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 697
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 698
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 699
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 701
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_2

    .line 702
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;->d:Ljava/lang/String;

    invoke-static {v7, v11}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 703
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;

    .line 704
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    iget-object v12, v11, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;->a:Landroid/net/Uri;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    iget-object v12, v11, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;->b:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    iget-object v11, v11, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;->b:Landroidx/media2/exoplayer/external/Format;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    goto :goto_2

    :cond_0
    const/4 v11, 0x0

    :goto_2
    and-int/2addr v10, v11

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x1

    new-array v7, v5, [Landroid/net/Uri;

    .line 714
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, [Landroid/net/Uri;

    new-array v7, v5, [Landroidx/media2/exoplayer/external/Format;

    .line 715
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, [Landroidx/media2/exoplayer/external/Format;

    const/4 v15, 0x0

    .line 717
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    move-object/from16 v11, p0

    move-object/from16 v17, p6

    move-wide/from16 v18, p1

    .line 712
    invoke-direct/range {v11 .. v19}, Landroidx/media2/exoplayer/external/source/hls/i;->a(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media2/exoplayer/external/source/hls/k;

    move-result-object v7

    .line 720
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/util/List;)[I

    move-result-object v9

    move-object/from16 v11, p5

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p4

    .line 721
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p0

    .line 723
    iget-boolean v13, v12, Landroidx/media2/exoplayer/external/source/hls/i;->n:Z

    if-eqz v13, :cond_4

    if-eqz v10, :cond_4

    new-array v10, v5, [Landroidx/media2/exoplayer/external/Format;

    .line 724
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroidx/media2/exoplayer/external/Format;

    new-array v8, v8, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 725
    new-instance v13, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v13, v10}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v13, v8, v5

    new-array v10, v5, [I

    invoke-virtual {v7, v8, v10}, Landroidx/media2/exoplayer/external/source/hls/k;->a([Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    goto :goto_3

    :cond_3
    move-object/from16 v12, p0

    move-object/from16 v9, p4

    move-object/from16 v11, p5

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v12, p0

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/source/hls/playlist/e;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/e;",
            "J",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/k;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 559
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 562
    :goto_0
    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v4, v7, :cond_3

    .line 563
    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->c:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;

    .line 564
    iget-object v7, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->b:Landroidx/media2/exoplayer/external/Format;

    .line 565
    iget v11, v7, Landroidx/media2/exoplayer/external/Format;->height:I

    if-gtz v11, :cond_2

    iget-object v11, v7, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {v11, v9}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    goto :goto_1

    .line 568
    :cond_0
    iget-object v7, v7, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {v7, v10}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 569
    aput v10, v2, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 572
    :cond_1
    aput v8, v2, v4

    goto :goto_2

    .line 566
    :cond_2
    :goto_1
    aput v9, v2, v4

    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-lez v5, :cond_4

    move v1, v5

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    if-ge v6, v1, :cond_5

    sub-int/2addr v1, v6

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_3
    const/4 v5, 0x0

    .line 590
    :goto_4
    new-array v13, v1, [Landroid/net/Uri;

    .line 591
    new-array v6, v1, [Landroidx/media2/exoplayer/external/Format;

    .line 592
    new-array v7, v1, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 594
    :goto_5
    iget-object v14, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->c:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_9

    if-eqz v4, :cond_6

    .line 595
    aget v14, v2, v11

    if-ne v14, v9, :cond_8

    :cond_6
    if-eqz v5, :cond_7

    aget v14, v2, v11

    if-eq v14, v10, :cond_8

    .line 597
    :cond_7
    iget-object v14, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->c:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;

    .line 598
    iget-object v15, v14, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->a:Landroid/net/Uri;

    aput-object v15, v13, v12

    .line 599
    iget-object v14, v14, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->b:Landroidx/media2/exoplayer/external/Format;

    aput-object v14, v6, v12

    add-int/lit8 v14, v12, 0x1

    .line 600
    aput v11, v7, v12

    move v12, v14

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 603
    :cond_9
    aget-object v2, v6, v3

    iget-object v2, v2, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    const/4 v12, 0x0

    .line 604
    iget-object v15, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->h:Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->i:Ljava/util/List;

    move-object/from16 v11, p0

    move-object v14, v6

    move-object/from16 v16, v4

    move-object/from16 v17, p6

    move-wide/from16 v18, p2

    .line 605
    invoke-direct/range {v11 .. v19}, Landroidx/media2/exoplayer/external/source/hls/i;->a(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media2/exoplayer/external/source/hls/k;

    move-result-object v4

    move-object/from16 v5, p4

    .line 613
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p5

    .line 614
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p0

    .line 615
    iget-boolean v7, v5, Landroidx/media2/exoplayer/external/source/hls/i;->n:Z

    if-eqz v7, :cond_14

    if-eqz v2, :cond_14

    .line 616
    invoke-static {v2, v9}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    .line 617
    :goto_6
    invoke-static {v2, v10}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    goto :goto_7

    :cond_b
    const/4 v11, 0x0

    .line 618
    :goto_7
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_10

    .line 620
    new-array v2, v1, [Landroidx/media2/exoplayer/external/Format;

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v1, :cond_c

    .line 622
    aget-object v13, v6, v7

    .line 12789
    iget-object v14, v13, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {v14, v9}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 12790
    invoke-static/range {v19 .. v19}, Landroidx/media2/exoplayer/external/util/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 12791
    iget-object v15, v13, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v14, v13, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget-object v9, v13, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v8, v13, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget v3, v13, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget v10, v13, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v5, v13, Landroidx/media2/exoplayer/external/Format;->height:I

    move-object/from16 p2, v4

    iget v4, v13, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    const/16 v25, 0x0

    move/from16 v28, v1

    iget v1, v13, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v13, v13, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    move-object/from16 v16, v14

    move-object/from16 v17, v9

    move-object/from16 v20, v8

    move/from16 v21, v3

    move/from16 v22, v10

    move/from16 v23, v5

    move/from16 v24, v4

    move/from16 v26, v1

    move/from16 v27, v13

    invoke-static/range {v15 .. v27}, Landroidx/media2/exoplayer/external/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIIFLjava/util/List;II)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 622
    aput-object v1, v2, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, p0

    move-object/from16 v4, p2

    move/from16 v1, v28

    const/4 v3, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    goto :goto_8

    :cond_c
    move-object/from16 p2, v4

    .line 624
    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v11, :cond_e

    .line 626
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->h:Landroidx/media2/exoplayer/external/Format;

    if-nez v1, :cond_d

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->e:Ljava/util/List;

    .line 627
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 628
    :cond_d
    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroup;

    const/4 v2, 0x1

    new-array v3, v2, [Landroidx/media2/exoplayer/external/Format;

    const/4 v2, 0x0

    aget-object v4, v6, v2

    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->h:Landroidx/media2/exoplayer/external/Format;

    .line 630
    invoke-static {v4, v5, v2}, Landroidx/media2/exoplayer/external/source/hls/i;->a(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-direct {v1, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    .line 628
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_e
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->i:Ljava/util/List;

    if-eqz v0, :cond_f

    const/4 v2, 0x0

    .line 637
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_f

    .line 638
    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroup;

    const/4 v3, 0x1

    new-array v4, v3, [Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/Format;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-direct {v1, v4}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_f
    const/4 v7, 0x1

    goto :goto_b

    :cond_10
    move/from16 v28, v1

    move-object/from16 p2, v4

    if-eqz v11, :cond_12

    move/from16 v1, v28

    .line 643
    new-array v2, v1, [Landroidx/media2/exoplayer/external/Format;

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_11

    .line 645
    aget-object v4, v6, v3

    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->h:Landroidx/media2/exoplayer/external/Format;

    const/4 v7, 0x1

    .line 646
    invoke-static {v4, v5, v7}, Landroidx/media2/exoplayer/external/source/hls/i;->a(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_11
    const/4 v7, 0x1

    .line 651
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    :goto_b
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v1, v7, [Landroidx/media2/exoplayer/external/Format;

    const-string v2, "ID3"

    const-string v3, "application/id3"

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 659
    invoke-static {v2, v3, v4, v5, v4}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    .line 665
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v3, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 668
    invoke-interface {v12, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v2, v7, [I

    .line 670
    invoke-interface {v12, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    aput v0, v2, v3

    move-object/from16 v0, p2

    .line 667
    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/source/hls/k;->a([Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    goto :goto_d

    .line 654
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected codecs attribute: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_13
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_d
    return-void
.end method


# virtual methods
.method public final a(JLandroidx/media2/exoplayer/external/aj;)J
    .locals 0

    return-wide p1
.end method

.method public final a([Landroidx/media2/exoplayer/external/trackselection/e;[Z[Landroidx/media2/exoplayer/external/source/al;[ZJ)J
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v10, p5

    .line 267
    array-length v3, v1

    new-array v12, v3, [I

    .line 268
    array-length v3, v1

    new-array v13, v3, [I

    const/4 v3, 0x0

    .line 269
    :goto_0
    array-length v4, v1

    const/4 v15, -0x1

    if-ge v3, v4, :cond_3

    .line 270
    aget-object v4, v2, v3

    if-nez v4, :cond_0

    const/4 v4, -0x1

    goto :goto_1

    .line 271
    :cond_0
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/i;->k:Ljava/util/IdentityHashMap;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    aput v4, v12, v3

    .line 272
    aput v15, v13, v3

    .line 273
    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    .line 274
    aget-object v4, v1, v3

    invoke-interface {v4}, Landroidx/media2/exoplayer/external/trackselection/e;->e()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v4

    const/4 v5, 0x0

    .line 275
    :goto_2
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/i;->d:[Landroidx/media2/exoplayer/external/source/hls/k;

    array-length v7, v6

    if-ge v5, v7, :cond_2

    .line 276
    aget-object v6, v6, v5

    .line 2248
    iget-object v6, v6, Landroidx/media2/exoplayer/external/source/hls/k;->r:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 276
    invoke-virtual {v6, v4}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v6

    if-eq v6, v15, :cond_1

    .line 277
    aput v5, v13, v3

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 285
    :cond_3
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/i;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->clear()V

    .line 287
    array-length v8, v1

    new-array v9, v8, [Landroidx/media2/exoplayer/external/source/al;

    .line 288
    array-length v6, v1

    new-array v7, v6, [Landroidx/media2/exoplayer/external/source/al;

    .line 289
    array-length v4, v1

    new-array v5, v4, [Landroidx/media2/exoplayer/external/trackselection/e;

    .line 291
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/i;->d:[Landroidx/media2/exoplayer/external/source/hls/k;

    array-length v3, v3

    new-array v3, v3, [Landroidx/media2/exoplayer/external/source/hls/k;

    move/from16 v16, v8

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 293
    :goto_4
    iget-object v14, v0, Landroidx/media2/exoplayer/external/source/hls/i;->d:[Landroidx/media2/exoplayer/external/source/hls/k;

    array-length v14, v14

    if-ge v8, v14, :cond_29

    const/4 v14, 0x0

    .line 294
    :goto_5
    array-length v15, v1

    move-object/from16 v20, v3

    if-ge v14, v15, :cond_6

    .line 295
    aget v15, v12, v14

    if-ne v15, v8, :cond_4

    aget-object v15, v2, v14

    goto :goto_6

    :cond_4
    const/4 v15, 0x0

    :goto_6
    aput-object v15, v7, v14

    .line 296
    aget v15, v13, v14

    if-ne v15, v8, :cond_5

    aget-object v3, v1, v14

    goto :goto_7

    :cond_5
    const/4 v3, 0x0

    :goto_7
    aput-object v3, v5, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v20

    goto :goto_5

    .line 298
    :cond_6
    iget-object v14, v0, Landroidx/media2/exoplayer/external/source/hls/i;->d:[Landroidx/media2/exoplayer/external/source/hls/k;

    aget-object v14, v14, v8

    .line 2295
    iget-boolean v15, v14, Landroidx/media2/exoplayer/external/source/hls/k;->m:Z

    invoke-static {v15}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 2296
    iget v15, v14, Landroidx/media2/exoplayer/external/source/hls/k;->n:I

    move/from16 v22, v8

    const/4 v3, 0x0

    :goto_8
    const/4 v8, 0x1

    if-ge v3, v4, :cond_a

    .line 2299
    aget-object v23, v7, v3

    if-eqz v23, :cond_9

    aget-object v23, v5, v3

    if-eqz v23, :cond_7

    aget-boolean v23, p2, v3

    if-nez v23, :cond_9

    :cond_7
    move/from16 v23, v6

    .line 2300
    iget v6, v14, Landroidx/media2/exoplayer/external/source/hls/k;->n:I

    sub-int/2addr v6, v8

    iput v6, v14, Landroidx/media2/exoplayer/external/source/hls/k;->n:I

    .line 2301
    aget-object v6, v7, v3

    check-cast v6, Landroidx/media2/exoplayer/external/source/hls/j;

    .line 3052
    iget v8, v6, Landroidx/media2/exoplayer/external/source/hls/j;->c:I

    move-object/from16 v24, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    .line 3053
    iget-object v8, v6, Landroidx/media2/exoplayer/external/source/hls/j;->b:Landroidx/media2/exoplayer/external/source/hls/k;

    iget v9, v6, Landroidx/media2/exoplayer/external/source/hls/j;->a:I

    .line 3271
    iget-object v2, v8, Landroidx/media2/exoplayer/external/source/hls/k;->s:[I

    aget v2, v2, v9

    .line 3272
    iget-object v9, v8, Landroidx/media2/exoplayer/external/source/hls/k;->u:[Z

    aget-boolean v9, v9, v2

    invoke-static {v9}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 3273
    iget-object v8, v8, Landroidx/media2/exoplayer/external/source/hls/k;->u:[Z

    const/4 v9, 0x0

    aput-boolean v9, v8, v2

    const/4 v2, -0x1

    .line 3054
    iput v2, v6, Landroidx/media2/exoplayer/external/source/hls/j;->c:I

    :cond_8
    const/4 v2, 0x0

    .line 2302
    aput-object v2, v7, v3

    goto :goto_9

    :cond_9
    move/from16 v23, v6

    move-object/from16 v24, v9

    :goto_9
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p3

    move/from16 v6, v23

    move-object/from16 v9, v24

    goto :goto_8

    :cond_a
    move/from16 v23, v6

    move-object/from16 v24, v9

    if-nez v18, :cond_d

    .line 2308
    iget-boolean v2, v14, Landroidx/media2/exoplayer/external/source/hls/k;->x:Z

    if-eqz v2, :cond_b

    if-nez v15, :cond_c

    goto :goto_a

    :cond_b
    iget-wide v2, v14, Landroidx/media2/exoplayer/external/source/hls/k;->v:J

    cmp-long v6, v10, v2

    if-eqz v6, :cond_c

    goto :goto_a

    :cond_c
    const/4 v9, 0x0

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v9, 0x1

    .line 2315
    :goto_b
    iget-object v2, v14, Landroidx/media2/exoplayer/external/source/hls/k;->b:Landroidx/media2/exoplayer/external/source/hls/d;

    .line 4200
    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/hls/d;->h:Landroidx/media2/exoplayer/external/trackselection/e;

    move-object v6, v2

    move v15, v9

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v4, :cond_13

    .line 2319
    aget-object v3, v5, v9

    if-eqz v3, :cond_11

    .line 2323
    iget-object v8, v14, Landroidx/media2/exoplayer/external/source/hls/k;->r:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move/from16 v26, v4

    invoke-interface {v3}, Landroidx/media2/exoplayer/external/trackselection/e;->e()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v4

    .line 2324
    iget v8, v14, Landroidx/media2/exoplayer/external/source/hls/k;->t:I

    if-ne v4, v8, :cond_e

    .line 2326
    iget-object v6, v14, Landroidx/media2/exoplayer/external/source/hls/k;->b:Landroidx/media2/exoplayer/external/source/hls/d;

    .line 5195
    iput-object v3, v6, Landroidx/media2/exoplayer/external/source/hls/d;->h:Landroidx/media2/exoplayer/external/trackselection/e;

    move-object v6, v3

    .line 2328
    :cond_e
    aget-object v3, v7, v9

    if-nez v3, :cond_12

    .line 2329
    iget v3, v14, Landroidx/media2/exoplayer/external/source/hls/k;->n:I

    const/4 v8, 0x1

    add-int/2addr v3, v8

    iput v3, v14, Landroidx/media2/exoplayer/external/source/hls/k;->n:I

    .line 2330
    new-instance v3, Landroidx/media2/exoplayer/external/source/hls/j;

    invoke-direct {v3, v14, v4}, Landroidx/media2/exoplayer/external/source/hls/j;-><init>(Landroidx/media2/exoplayer/external/source/hls/k;I)V

    aput-object v3, v7, v9

    .line 2331
    aput-boolean v8, p4, v9

    .line 2332
    iget-object v3, v14, Landroidx/media2/exoplayer/external/source/hls/k;->s:[I

    if-eqz v3, :cond_f

    .line 2333
    aget-object v3, v7, v9

    check-cast v3, Landroidx/media2/exoplayer/external/source/hls/j;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/hls/j;->c()V

    .line 2336
    :cond_f
    iget-boolean v3, v14, Landroidx/media2/exoplayer/external/source/hls/k;->l:Z

    if-eqz v3, :cond_12

    if-nez v15, :cond_12

    .line 2337
    iget-object v3, v14, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    iget-object v8, v14, Landroidx/media2/exoplayer/external/source/hls/k;->s:[I

    aget v4, v8, v4

    aget-object v3, v3, v4

    .line 2338
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/ak;->b()V

    const/4 v4, 0x1

    .line 2343
    invoke-virtual {v3, v10, v11, v4}, Landroidx/media2/exoplayer/external/source/ak;->a(JZ)I

    move-result v8

    const/4 v4, -0x1

    if-ne v8, v4, :cond_10

    .line 5226
    iget-object v3, v3, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/aj;->b()I

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_d

    :cond_10
    const/4 v3, 0x0

    :goto_d
    move v15, v3

    goto :goto_e

    :cond_11
    move/from16 v26, v4

    :cond_12
    const/4 v4, -0x1

    :goto_e
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v26

    const/4 v8, 0x1

    goto :goto_c

    :cond_13
    move/from16 v26, v4

    const/4 v4, -0x1

    .line 2349
    iget v3, v14, Landroidx/media2/exoplayer/external/source/hls/k;->n:I

    if-nez v3, :cond_16

    .line 2350
    iget-object v2, v14, Landroidx/media2/exoplayer/external/source/hls/k;->b:Landroidx/media2/exoplayer/external/source/hls/d;

    const/4 v3, 0x0

    .line 6207
    iput-object v3, v2, Landroidx/media2/exoplayer/external/source/hls/d;->f:Ljava/io/IOException;

    .line 2351
    iput-object v3, v14, Landroidx/media2/exoplayer/external/source/hls/k;->p:Landroidx/media2/exoplayer/external/Format;

    const/4 v8, 0x1

    .line 2352
    iput-boolean v8, v14, Landroidx/media2/exoplayer/external/source/hls/k;->w:Z

    .line 2353
    iget-object v2, v14, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2354
    iget-object v2, v14, Landroidx/media2/exoplayer/external/source/hls/k;->c:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/upstream/Loader;->a()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2355
    iget-boolean v2, v14, Landroidx/media2/exoplayer/external/source/hls/k;->l:Z

    if-eqz v2, :cond_14

    .line 2357
    iget-object v2, v14, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v3, v2

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v3, :cond_14

    aget-object v6, v2, v9

    .line 2358
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/ak;->c()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 2361
    :cond_14
    iget-object v2, v14, Landroidx/media2/exoplayer/external/source/hls/k;->c:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/upstream/Loader;->b()V

    goto :goto_10

    .line 2363
    :cond_15
    invoke-virtual {v14}, Landroidx/media2/exoplayer/external/source/hls/k;->g()V

    :goto_10
    move-object/from16 v27, v12

    move v8, v15

    move/from16 v31, v16

    move-object/from16 v33, v20

    move/from16 v34, v22

    move/from16 v15, v23

    move-object/from16 v32, v24

    move/from16 v19, v26

    const/4 v12, 0x1

    const/16 v21, -0x1

    move-object/from16 v20, v5

    move-object/from16 v23, v7

    goto/16 :goto_15

    :cond_16
    const/4 v8, 0x1

    .line 2366
    iget-object v3, v14, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 2367
    invoke-static {v6, v2}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2371
    iget-boolean v2, v14, Landroidx/media2/exoplayer/external/source/hls/k;->x:Z

    if-nez v2, :cond_19

    const-wide/16 v2, 0x0

    cmp-long v9, v10, v2

    if-gez v9, :cond_17

    neg-long v2, v10

    :cond_17
    move-wide/from16 v27, v2

    .line 2373
    invoke-virtual {v14}, Landroidx/media2/exoplayer/external/source/hls/k;->j()Landroidx/media2/exoplayer/external/source/hls/h;

    move-result-object v2

    .line 2374
    iget-object v3, v14, Landroidx/media2/exoplayer/external/source/hls/k;->b:Landroidx/media2/exoplayer/external/source/hls/d;

    .line 2375
    invoke-virtual {v3, v2, v10, v11}, Landroidx/media2/exoplayer/external/source/hls/d;->a(Landroidx/media2/exoplayer/external/source/hls/h;J)[Landroidx/media2/exoplayer/external/source/a/e;

    const-wide v29, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v9, v20

    move-object v3, v6

    move-object/from16 v20, v5

    move/from16 v19, v26

    const/16 v21, -0x1

    move-wide/from16 v4, p5

    move-object/from16 v26, v6

    move/from16 v25, v15

    move/from16 v15, v23

    move-object/from16 v23, v7

    move-wide/from16 v6, v27

    move-object/from16 v33, v9

    move-object/from16 v27, v12

    move/from16 v31, v16

    move/from16 v34, v22

    move-object/from16 v32, v24

    const/4 v12, 0x1

    move-wide/from16 v8, v29

    .line 2376
    invoke-interface/range {v3 .. v9}, Landroidx/media2/exoplayer/external/trackselection/e;->a(JJJ)V

    .line 2382
    iget-object v3, v14, Landroidx/media2/exoplayer/external/source/hls/k;->b:Landroidx/media2/exoplayer/external/source/hls/d;

    .line 7186
    iget-object v3, v3, Landroidx/media2/exoplayer/external/source/hls/d;->b:Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 2382
    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/hls/h;->c:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->indexOf(Landroidx/media2/exoplayer/external/Format;)I

    move-result v2

    .line 2383
    invoke-interface/range {v26 .. v26}, Landroidx/media2/exoplayer/external/trackselection/e;->h()I

    move-result v3

    if-eq v3, v2, :cond_18

    goto :goto_11

    :cond_18
    const/4 v8, 0x0

    goto :goto_12

    :cond_19
    move-object/from16 v27, v12

    move/from16 v25, v15

    move/from16 v31, v16

    move-object/from16 v33, v20

    move/from16 v34, v22

    move/from16 v15, v23

    move-object/from16 v32, v24

    move/from16 v19, v26

    const/4 v12, 0x1

    const/16 v21, -0x1

    move-object/from16 v20, v5

    move-object/from16 v23, v7

    :goto_11
    const/4 v8, 0x1

    :goto_12
    if-eqz v8, :cond_1b

    .line 2395
    iput-boolean v12, v14, Landroidx/media2/exoplayer/external/source/hls/k;->w:Z

    const/4 v2, 0x1

    const/4 v8, 0x1

    goto :goto_13

    :cond_1a
    move-object/from16 v27, v12

    move/from16 v25, v15

    move/from16 v31, v16

    move-object/from16 v33, v20

    move/from16 v34, v22

    move/from16 v15, v23

    move-object/from16 v32, v24

    move/from16 v19, v26

    const/4 v12, 0x1

    const/16 v21, -0x1

    move-object/from16 v20, v5

    move-object/from16 v23, v7

    :cond_1b
    move/from16 v2, v18

    move/from16 v8, v25

    :goto_13
    if-eqz v8, :cond_1d

    .line 2399
    invoke-virtual {v14, v10, v11, v2}, Landroidx/media2/exoplayer/external/source/hls/k;->a(JZ)Z

    const/4 v9, 0x0

    :goto_14
    if-ge v9, v15, :cond_1d

    .line 2402
    aget-object v2, v23, v9

    if-eqz v2, :cond_1c

    .line 2403
    aput-boolean v12, p4, v9

    :cond_1c
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    .line 7919
    :cond_1d
    :goto_15
    iget-object v2, v14, Landroidx/media2/exoplayer/external/source/hls/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    :goto_16
    if-ge v9, v15, :cond_1f

    .line 7920
    aget-object v2, v23, v9

    if-eqz v2, :cond_1e

    .line 7922
    iget-object v3, v14, Landroidx/media2/exoplayer/external/source/hls/k;->h:Ljava/util/ArrayList;

    check-cast v2, Landroidx/media2/exoplayer/external/source/hls/j;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    .line 2410
    :cond_1f
    iput-boolean v12, v14, Landroidx/media2/exoplayer/external/source/hls/k;->x:Z

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 302
    :goto_17
    array-length v3, v1

    if-ge v9, v3, :cond_24

    .line 303
    aget v3, v13, v9

    move/from16 v4, v34

    if-ne v3, v4, :cond_21

    .line 305
    aget-object v2, v23, v9

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    goto :goto_18

    :cond_20
    const/4 v2, 0x0

    :goto_18
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 306
    aget-object v2, v23, v9

    move-object/from16 v3, v32

    aput-object v2, v3, v9

    .line 308
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/i;->k:Ljava/util/IdentityHashMap;

    aget-object v5, v23, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_1a

    :cond_21
    move-object/from16 v3, v32

    .line 309
    aget v5, v27, v9

    if-ne v5, v4, :cond_23

    .line 311
    aget-object v5, v23, v9

    if-nez v5, :cond_22

    const/4 v5, 0x1

    goto :goto_19

    :cond_22
    const/4 v5, 0x0

    :goto_19
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    :cond_23
    :goto_1a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v32, v3

    move/from16 v34, v4

    goto :goto_17

    :cond_24
    move-object/from16 v3, v32

    move/from16 v4, v34

    if-eqz v2, :cond_27

    move/from16 v2, v17

    move-object/from16 v5, v33

    .line 315
    aput-object v14, v5, v2

    add-int/lit8 v17, v2, 0x1

    if-nez v2, :cond_26

    .line 319
    invoke-virtual {v14, v12}, Landroidx/media2/exoplayer/external/source/hls/k;->a(Z)V

    if-nez v8, :cond_25

    .line 320
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/i;->r:[Landroidx/media2/exoplayer/external/source/hls/k;

    array-length v6, v2

    if-eqz v6, :cond_25

    const/4 v6, 0x0

    aget-object v2, v2, v6

    if-eq v14, v2, :cond_28

    goto :goto_1b

    :cond_25
    const/4 v6, 0x0

    .line 324
    :goto_1b
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/i;->l:Landroidx/media2/exoplayer/external/source/hls/o;

    .line 8060
    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/hls/o;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    const/16 v18, 0x1

    goto :goto_1c

    :cond_26
    const/4 v6, 0x0

    .line 328
    invoke-virtual {v14, v6}, Landroidx/media2/exoplayer/external/source/hls/k;->a(Z)V

    goto :goto_1c

    :cond_27
    move/from16 v2, v17

    move-object/from16 v5, v33

    const/4 v6, 0x0

    :cond_28
    :goto_1c
    add-int/lit8 v8, v4, 0x1

    move-object/from16 v2, p3

    move-object v9, v3

    move-object v3, v5

    move v6, v15

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v7, v23

    move-object/from16 v12, v27

    move/from16 v16, v31

    const/4 v15, -0x1

    goto/16 :goto_4

    :cond_29
    move-object v4, v2

    move-object v5, v3

    move-object v3, v9

    move/from16 v7, v16

    move/from16 v2, v17

    const/4 v6, 0x0

    .line 333
    invoke-static {v3, v6, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media2/exoplayer/external/source/hls/k;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/i;->r:[Landroidx/media2/exoplayer/external/source/hls/k;

    .line 337
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/i;->m:Landroidx/media2/exoplayer/external/source/g;

    .line 338
    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/source/g;->a([Landroidx/media2/exoplayer/external/source/am;)Landroidx/media2/exoplayer/external/source/am;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/i;->t:Landroidx/media2/exoplayer/external/source/am;

    return-wide v10
.end method

.method public final a(J)V
    .locals 1

    .line 352
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->t:Landroidx/media2/exoplayer/external/source/am;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/am;->a(J)V

    return-void
.end method

.method public final a(JZ)V
    .locals 9

    .line 345
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->r:[Landroidx/media2/exoplayer/external/source/hls/k;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 8415
    iget-boolean v5, v4, Landroidx/media2/exoplayer/external/source/hls/k;->l:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/hls/k;->k()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 8418
    :cond_0
    iget-object v5, v4, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v5, v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    .line 8420
    iget-object v7, v4, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object v7, v7, v6

    iget-object v8, v4, Landroidx/media2/exoplayer/external/source/hls/k;->u:[Z

    aget-boolean v8, v8, v6

    invoke-virtual {v7, p1, p2, p3, v8}, Landroidx/media2/exoplayer/external/source/ak;->a(JZZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 1

    .line 434
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->a:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->c(Landroid/net/Uri;)V

    return-void
.end method

.method public final bridge synthetic a(Landroidx/media2/exoplayer/external/source/am;)V
    .locals 0

    .line 13439
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/i;->c:Landroidx/media2/exoplayer/external/source/s$a;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/source/s$a;->a(Landroidx/media2/exoplayer/external/source/am;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/s$a;J)V
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    .line 159
    iput-object v0, v9, Landroidx/media2/exoplayer/external/source/hls/i;->c:Landroidx/media2/exoplayer/external/source/s$a;

    .line 160
    iget-object v0, v9, Landroidx/media2/exoplayer/external/source/hls/i;->a:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, v9}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$b;)V

    .line 1462
    iget-object v0, v9, Landroidx/media2/exoplayer/external/source/hls/i;->a:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->b()Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    .line 1464
    iget-boolean v0, v9, Landroidx/media2/exoplayer/external/source/hls/i;->o:Z

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    .line 1465
    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->k:Ljava/util/List;

    .line 1764
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1765
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    .line 1766
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1767
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 1768
    iget-object v6, v5, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    move v7, v4

    .line 1774
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 1775
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 1776
    iget-object v11, v8, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v11, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1777
    invoke-virtual {v5, v8}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->merge(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v5

    .line 1778
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1783
    :cond_1
    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1466
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    :cond_3
    move-object v11, v3

    .line 1468
    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v12, 0x1

    xor-int/2addr v0, v12

    .line 1469
    iget-object v7, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->e:Ljava/util/List;

    .line 1470
    iget-object v13, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->f:Ljava/util/List;

    .line 1472
    iput v10, v9, Landroidx/media2/exoplayer/external/source/hls/i;->p:I

    .line 1473
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1474
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_4

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    move-object v4, v14

    move-object v5, v15

    move-object v6, v11

    .line 1477
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/hls/i;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/e;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    :cond_4
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object v3, v7

    move-object v4, v14

    move-object v5, v15

    move-object v6, v11

    .line 1487
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/hls/i;->a(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    const/4 v7, 0x0

    .line 1495
    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 1496
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;

    const/4 v1, 0x3

    new-array v2, v12, [Landroid/net/Uri;

    .line 1497
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;->a:Landroid/net/Uri;

    aput-object v0, v2, v10

    new-array v3, v12, [Landroidx/media2/exoplayer/external/Format;

    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;->b:Landroidx/media2/exoplayer/external/Format;

    aput-object v0, v3, v10

    const/4 v4, 0x0

    .line 1503
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v6, v11

    move/from16 v16, v7

    move-object/from16 v17, v8

    move-wide/from16 v7, p2

    .line 1498
    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/source/hls/i;->a(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media2/exoplayer/external/source/hls/k;

    move-result-object v0

    new-array v1, v12, [I

    aput v16, v1, v10

    .line 1506
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v1, v12, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 1508
    new-instance v2, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v3, v12, [Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v4, v17

    iget-object v4, v4, Landroidx/media2/exoplayer/external/source/hls/playlist/e$a;->b:Landroidx/media2/exoplayer/external/Format;

    aput-object v4, v3, v10

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v2, v1, v10

    new-array v2, v10, [I

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/source/hls/k;->a([Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    add-int/lit8 v7, v16, 0x1

    goto :goto_2

    :cond_5
    new-array v0, v10, [Landroidx/media2/exoplayer/external/source/hls/k;

    .line 1513
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/source/hls/k;

    iput-object v0, v9, Landroidx/media2/exoplayer/external/source/hls/i;->d:[Landroidx/media2/exoplayer/external/source/hls/k;

    new-array v0, v10, [[I

    .line 1514
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, v9, Landroidx/media2/exoplayer/external/source/hls/i;->s:[[I

    .line 1515
    iget-object v0, v9, Landroidx/media2/exoplayer/external/source/hls/i;->d:[Landroidx/media2/exoplayer/external/source/hls/k;

    array-length v1, v0

    iput v1, v9, Landroidx/media2/exoplayer/external/source/hls/i;->p:I

    .line 1517
    aget-object v0, v0, v10

    invoke-virtual {v0, v12}, Landroidx/media2/exoplayer/external/source/hls/k;->a(Z)V

    .line 1518
    iget-object v0, v9, Landroidx/media2/exoplayer/external/source/hls/i;->d:[Landroidx/media2/exoplayer/external/source/hls/k;

    array-length v1, v0

    :goto_3
    if-ge v10, v1, :cond_6

    aget-object v2, v0, v10

    .line 1519
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/hls/k;->b()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1522
    :cond_6
    iget-object v0, v9, Landroidx/media2/exoplayer/external/source/hls/i;->d:[Landroidx/media2/exoplayer/external/source/hls/k;

    iput-object v0, v9, Landroidx/media2/exoplayer/external/source/hls/i;->r:[Landroidx/media2/exoplayer/external/source/hls/k;

    return-void
.end method

.method public final a(Landroid/net/Uri;J)Z
    .locals 11

    .line 452
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->d:[Landroidx/media2/exoplayer/external/source/hls/k;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v1, :cond_6

    aget-object v6, v0, v4

    .line 11487
    iget-object v6, v6, Landroidx/media2/exoplayer/external/source/hls/k;->b:Landroidx/media2/exoplayer/external/source/hls/d;

    const/4 v7, 0x0

    .line 12399
    :goto_1
    iget-object v8, v6, Landroidx/media2/exoplayer/external/source/hls/d;->a:[Landroid/net/Uri;

    array-length v8, v8

    const/4 v9, -0x1

    if-ge v7, v8, :cond_1

    .line 12400
    iget-object v8, v6, Landroidx/media2/exoplayer/external/source/hls/d;->a:[Landroid/net/Uri;

    aget-object v8, v8, v7

    invoke-virtual {v8, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_2
    if-ne v7, v9, :cond_3

    :cond_2
    :goto_3
    const/4 v6, 0x1

    goto :goto_4

    .line 12408
    :cond_3
    iget-object v8, v6, Landroidx/media2/exoplayer/external/source/hls/d;->h:Landroidx/media2/exoplayer/external/trackselection/e;

    invoke-interface {v8, v7}, Landroidx/media2/exoplayer/external/trackselection/e;->c(I)I

    move-result v7

    if-ne v7, v9, :cond_4

    goto :goto_3

    .line 12412
    :cond_4
    iget-boolean v8, v6, Landroidx/media2/exoplayer/external/source/hls/d;->i:Z

    iget-object v9, v6, Landroidx/media2/exoplayer/external/source/hls/d;->g:Landroid/net/Uri;

    invoke-virtual {p1, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    iput-boolean v8, v6, Landroidx/media2/exoplayer/external/source/hls/d;->i:Z

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, p2, v8

    if-eqz v10, :cond_2

    .line 12413
    iget-object v6, v6, Landroidx/media2/exoplayer/external/source/hls/d;->h:Landroidx/media2/exoplayer/external/trackselection/e;

    .line 12414
    invoke-interface {v6, v7, p2, p3}, Landroidx/media2/exoplayer/external/trackselection/e;->a(IJ)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_4
    and-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 455
    :cond_6
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/i;->c:Landroidx/media2/exoplayer/external/source/s$a;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/source/s$a;->a(Landroidx/media2/exoplayer/external/source/am;)V

    return v5
.end method

.method public final b(J)J
    .locals 4

    .line 389
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->r:[Landroidx/media2/exoplayer/external/source/hls/k;

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 392
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/media2/exoplayer/external/source/hls/k;->a(JZ)Z

    move-result v0

    const/4 v1, 0x1

    .line 393
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/i;->r:[Landroidx/media2/exoplayer/external/source/hls/k;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 394
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Landroidx/media2/exoplayer/external/source/hls/k;->a(JZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->l:Landroidx/media2/exoplayer/external/source/hls/o;

    .line 9060
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/hls/o;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_1
    return-wide p1
.end method

.method public final b()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    .line 173
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->q:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 375
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->u:Z

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->b:Landroidx/media2/exoplayer/external/source/u$a;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/u$a;->c()V

    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->u:Z

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final c(J)Z
    .locals 3

    .line 357
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->q:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    if-nez v0, :cond_1

    .line 359
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/i;->d:[Landroidx/media2/exoplayer/external/source/hls/k;

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    .line 360
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/hls/k;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    .line 364
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->t:Landroidx/media2/exoplayer/external/source/am;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/am;->c(J)Z

    move-result p1

    return p1
.end method

.method public final d()J
    .locals 2

    .line 384
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->t:Landroidx/media2/exoplayer/external/source/am;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/am;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .line 370
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->t:Landroidx/media2/exoplayer/external/source/am;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/am;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()V
    .locals 11

    .line 412
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->p:I

    if-lez v0, :cond_0

    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->d:[Landroidx/media2/exoplayer/external/source/hls/k;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 9248
    iget-object v5, v5, Landroidx/media2/exoplayer/external/source/hls/k;->r:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 418
    iget v5, v5, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 420
    :cond_1
    new-array v0, v4, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 422
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/i;->d:[Landroidx/media2/exoplayer/external/source/hls/k;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    .line 10248
    iget-object v7, v6, Landroidx/media2/exoplayer/external/source/hls/k;->r:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 423
    iget v7, v7, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    add-int/lit8 v9, v5, 0x1

    .line 11248
    iget-object v10, v6, Landroidx/media2/exoplayer/external/source/hls/k;->r:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 425
    invoke-virtual {v10, v8}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v10

    aput-object v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 428
    :cond_3
    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/i;->q:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 429
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->c:Landroidx/media2/exoplayer/external/source/s$a;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/source/s$a;->a(Landroidx/media2/exoplayer/external/source/s;)V

    return-void
.end method

.method public final g()V
    .locals 1

    .line 446
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->c:Landroidx/media2/exoplayer/external/source/s$a;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/source/s$a;->a(Landroidx/media2/exoplayer/external/source/am;)V

    return-void
.end method

.method public final k_()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/i;->d:[Landroidx/media2/exoplayer/external/source/hls/k;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 2241
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/hls/k;->c()V

    .line 2242
    iget-boolean v4, v3, Landroidx/media2/exoplayer/external/source/hls/k;->y:Z

    if-eqz v4, :cond_1

    iget-boolean v3, v3, Landroidx/media2/exoplayer/external/source/hls/k;->m:Z

    if-eqz v3, :cond_0

    goto :goto_1

    .line 2243
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Loading finished before preparation is complete."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

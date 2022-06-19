.class public final Lqq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lfp;
.implements Lwq$a;
.implements Ljr$b;


# instance fields
.field public final a:Lnq;

.field public final b:Ljr;

.field public final c:Lmq;

.field public final d:Lht;

.field public final f:Lct;

.field public final g:Lqp$a;

.field public final h:Les;

.field public final j:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lxp;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lyq;

.field public final l:Lwo;

.field public final m:Z

.field public final n:Z

.field public o:Lfp$a;

.field public p:I

.field public q:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field public r:[Lwq;

.field public s:[Lwq;

.field public t:Lyp;

.field public u:Z


# direct methods
.method public constructor <init>(Lnq;Ljr;Lmq;Lht;Lct;Lqp$a;Les;Lwo;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqq;->a:Lnq;

    iput-object p2, p0, Lqq;->b:Ljr;

    iput-object p3, p0, Lqq;->c:Lmq;

    iput-object p4, p0, Lqq;->d:Lht;

    iput-object p5, p0, Lqq;->f:Lct;

    iput-object p6, p0, Lqq;->g:Lqp$a;

    iput-object p7, p0, Lqq;->h:Les;

    iput-object p8, p0, Lqq;->l:Lwo;

    iput-boolean p9, p0, Lqq;->m:Z

    iput-boolean p10, p0, Lqq;->n:Z

    const/4 p1, 0x0

    new-array p2, p1, [Lyp;

    invoke-interface {p8, p2}, Lwo;->a([Lyp;)Lyp;

    move-result-object p2

    iput-object p2, p0, Lqq;->t:Lyp;

    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lqq;->j:Ljava/util/IdentityHashMap;

    new-instance p2, Lyq;

    invoke-direct {p2}, Lyq;-><init>()V

    iput-object p2, p0, Lqq;->k:Lyq;

    new-array p2, p1, [Lwq;

    iput-object p2, p0, Lqq;->r:[Lwq;

    new-array p1, p1, [Lwq;

    iput-object p1, p0, Lqq;->s:[Lwq;

    invoke-virtual {p6}, Lqp$a;->y()V

    return-void
.end method

.method public static l(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->x:I

    iget v5, v1, Landroidx/media2/exoplayer/external/Format;->c:I

    iget v6, v1, Landroidx/media2/exoplayer/external/Format;->d:I

    iget-object v7, v1, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    move-object v9, v1

    move-object v12, v2

    move v14, v3

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v7

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lnu;->w(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->x:I

    iget v2, v0, Landroidx/media2/exoplayer/external/Format;->c:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->d:I

    iget-object v6, v0, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    move-object v12, v1

    move/from16 v17, v2

    move v14, v3

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object v9, v7

    goto :goto_0

    :cond_1
    move-object v12, v1

    move-object v9, v2

    move-object/from16 v19, v9

    const/4 v14, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_0
    invoke-static {v12}, Lvt;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz p2, :cond_2

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->f:I

    move v13, v4

    goto :goto_1

    :cond_2
    const/4 v13, -0x1

    :goto_1
    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->j:Ljava/lang/String;

    const/4 v15, -0x1

    const/16 v16, 0x0

    invoke-static/range {v8 .. v19}, Landroidx/media2/exoplayer/external/Format;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;IILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static m(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-object v4, v3, Landroidx/media2/exoplayer/external/drm/DrmInitData;->c:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    move v5, v2

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-object v7, v6, Landroidx/media2/exoplayer/external/drm/DrmInitData;->c:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v6}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->f(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static n(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;
    .locals 14

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lnu;->w(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lvt;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/Format;->j:Ljava/lang/String;

    iget v7, p0, Landroidx/media2/exoplayer/external/Format;->f:I

    iget v8, p0, Landroidx/media2/exoplayer/external/Format;->p:I

    iget v9, p0, Landroidx/media2/exoplayer/external/Format;->q:I

    iget v10, p0, Landroidx/media2/exoplayer/external/Format;->r:F

    iget v12, p0, Landroidx/media2/exoplayer/external/Format;->c:I

    iget v13, p0, Landroidx/media2/exoplayer/external/Format;->d:I

    const/4 v11, 0x0

    invoke-static/range {v2 .. v13}, Landroidx/media2/exoplayer/external/Format;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;II)Landroidx/media2/exoplayer/external/Format;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(JLnh;)J
    .locals 0

    return-wide p1
.end method

.method public bridge synthetic c(Lyp;)V
    .locals 0

    check-cast p1, Lwq;

    invoke-virtual {p0, p1}, Lqq;->o(Lwq;)V

    return-void
.end method

.method public continueLoading(J)Z
    .locals 3

    iget-object v0, p0, Lqq;->q:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    if-nez v0, :cond_1

    iget-object p1, p0, Lqq;->r:[Lwq;

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lwq;->m()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Lqq;->t:Lyp;

    invoke-interface {v0, p1, p2}, Lyp;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public d(Lfp$a;J)V
    .locals 0

    iput-object p1, p0, Lqq;->o:Lfp$a;

    iget-object p1, p0, Lqq;->b:Ljr;

    invoke-interface {p1, p0}, Ljr;->b(Ljr$b;)V

    invoke-virtual {p0, p2, p3}, Lqq;->j(J)V

    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 4

    iget-object v0, p0, Lqq;->s:[Lwq;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2, p3}, Lwq;->discardBuffer(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Landroid/net/Uri;J)Z
    .locals 5

    iget-object v0, p0, Lqq;->r:[Lwq;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4, p1, p2, p3}, Lwq;->D(Landroid/net/Uri;J)Z

    move-result v4

    and-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lqq;->o:Lfp$a;

    invoke-interface {p1, p0}, Lyp$a;->c(Lyp;)V

    return v2
.end method

.method public f([Lyr;[Z[Lxp;[ZJ)J
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    array-length v3, v1

    new-array v3, v3, [I

    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    aget-object v7, v2, v6

    const/4 v8, -0x1

    if-nez v7, :cond_0

    const/4 v7, -0x1

    goto :goto_1

    :cond_0
    iget-object v7, v0, Lqq;->j:Ljava/util/IdentityHashMap;

    aget-object v9, v2, v6

    invoke-virtual {v7, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    aput v7, v3, v6

    aput v8, v4, v6

    aget-object v7, v1, v6

    if-eqz v7, :cond_2

    aget-object v7, v1, v6

    invoke-interface {v7}, Lyr;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v7

    const/4 v9, 0x0

    :goto_2
    iget-object v10, v0, Lqq;->r:[Lwq;

    array-length v11, v10

    if-ge v9, v11, :cond_2

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lwq;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v10

    if-eq v10, v8, :cond_1

    aput v9, v4, v6

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, v0, Lqq;->j:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    array-length v6, v1

    new-array v7, v6, [Lxp;

    array-length v8, v1

    new-array v8, v8, [Lxp;

    array-length v9, v1

    new-array v14, v9, [Lyr;

    iget-object v9, v0, Lqq;->r:[Lwq;

    array-length v9, v9

    new-array v15, v9, [Lwq;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    :goto_4
    iget-object v9, v0, Lqq;->r:[Lwq;

    array-length v9, v9

    if-ge v13, v9, :cond_10

    const/4 v9, 0x0

    :goto_5
    array-length v10, v1

    if-ge v9, v10, :cond_6

    aget v10, v3, v9

    const/4 v11, 0x0

    if-ne v10, v13, :cond_4

    aget-object v10, v2, v9

    goto :goto_6

    :cond_4
    move-object v10, v11

    :goto_6
    aput-object v10, v8, v9

    aget v10, v4, v9

    if-ne v10, v13, :cond_5

    aget-object v11, v1, v9

    :cond_5
    aput-object v11, v14, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_6
    iget-object v9, v0, Lqq;->r:[Lwq;

    aget-object v11, v9, v13

    move-object v9, v11

    move-object v10, v14

    move-object v5, v11

    move-object/from16 v11, p2

    move v2, v12

    move-object v12, v8

    move/from16 v18, v6

    move v6, v13

    move-object/from16 v13, p4

    move/from16 v20, v2

    move-object/from16 v19, v14

    move-object v2, v15

    move-wide/from16 v14, p5

    move/from16 v16, v17

    invoke-virtual/range {v9 .. v16}, Lwq;->L([Lyr;[Z[Lxp;[ZJZ)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_7
    array-length v12, v1

    const/4 v13, 0x1

    if-ge v10, v12, :cond_b

    aget v12, v4, v10

    if-ne v12, v6, :cond_8

    aget-object v11, v8, v10

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    goto :goto_8

    :cond_7
    const/4 v11, 0x0

    :goto_8
    invoke-static {v11}, Lit;->f(Z)V

    aget-object v11, v8, v10

    aput-object v11, v7, v10

    iget-object v11, v0, Lqq;->j:Ljava/util/IdentityHashMap;

    aget-object v12, v8, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    goto :goto_a

    :cond_8
    aget v12, v3, v10

    if-ne v12, v6, :cond_a

    aget-object v12, v8, v10

    if-nez v12, :cond_9

    goto :goto_9

    :cond_9
    const/4 v13, 0x0

    :goto_9
    invoke-static {v13}, Lit;->f(Z)V

    :cond_a
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_b
    if-eqz v11, :cond_e

    aput-object v5, v2, v20

    add-int/lit8 v12, v20, 0x1

    if-nez v20, :cond_d

    invoke-virtual {v5, v13}, Lwq;->M(Z)V

    if-nez v9, :cond_c

    iget-object v9, v0, Lqq;->s:[Lwq;

    array-length v10, v9

    if-eqz v10, :cond_c

    const/4 v10, 0x0

    aget-object v9, v9, v10

    if-eq v5, v9, :cond_f

    goto :goto_b

    :cond_c
    const/4 v10, 0x0

    :goto_b
    iget-object v5, v0, Lqq;->k:Lyq;

    invoke-virtual {v5}, Lyq;->b()V

    const/16 v17, 0x1

    goto :goto_c

    :cond_d
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lwq;->M(Z)V

    goto :goto_c

    :cond_e
    const/4 v10, 0x0

    move/from16 v12, v20

    :cond_f
    :goto_c
    add-int/lit8 v13, v6, 0x1

    move-object v15, v2

    move/from16 v6, v18

    move-object/from16 v14, v19

    move-object/from16 v2, p3

    goto/16 :goto_4

    :cond_10
    move-object v5, v2

    move-object v2, v15

    const/4 v10, 0x0

    invoke-static {v7, v10, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lwq;

    iput-object v1, v0, Lqq;->s:[Lwq;

    iget-object v2, v0, Lqq;->l:Lwo;

    invoke-interface {v2, v1}, Lwo;->a([Lyp;)Lyp;

    move-result-object v1

    iput-object v1, v0, Lqq;->t:Lyp;

    return-wide p5
.end method

.method public final g(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ler$a;",
            ">;",
            "Ljava/util/List<",
            "Lwq;",
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ler$a;

    iget-object v7, v7, Ler$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object/from16 v12, p0

    move-object/from16 v9, p4

    move-object/from16 v11, p5

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ler$a;

    iget-object v11, v11, Ler$a;->c:Ljava/lang/String;

    invoke-static {v7, v11}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ler$a;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v11, Ler$a;->a:Landroid/net/Uri;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v11, Ler$a;->b:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v11, Ler$a;->b:Landroidx/media2/exoplayer/external/Format;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    and-int/2addr v10, v11

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v12, 0x1

    new-array v7, v5, [Landroid/net/Uri;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, [Landroid/net/Uri;

    new-array v7, v5, [Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, [Landroidx/media2/exoplayer/external/Format;

    const/4 v15, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    move-object/from16 v11, p0

    move-object/from16 v17, p6

    move-wide/from16 v18, p1

    invoke-virtual/range {v11 .. v19}, Lqq;->k(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Lwq;

    move-result-object v7

    invoke-static {v3}, Lnu;->l0(Ljava/util/List;)[I

    move-result-object v9

    move-object/from16 v11, p5

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p4

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p0

    iget-boolean v13, v12, Lqq;->m:Z

    if-eqz v13, :cond_4

    if-eqz v10, :cond_4

    new-array v10, v5, [Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroidx/media2/exoplayer/external/Format;

    new-instance v13, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    new-array v8, v8, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-instance v14, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v14, v10}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v14, v8, v5

    invoke-direct {v13, v8}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    sget-object v8, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->d:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v7, v13, v5, v8}, Lwq;->F(Landroidx/media2/exoplayer/external/source/TrackGroupArray;ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v12, p0

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object v0, p0, Lqq;->t:Lyp;

    invoke-interface {v0}, Lyp;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object v0, p0, Lqq;->t:Lyp;

    invoke-interface {v0}, Lyp;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    iget-object v0, p0, Lqq;->q:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method public h(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lqq;->b:Ljr;

    invoke-interface {v0, p1}, Ljr;->e(Landroid/net/Uri;)V

    return-void
.end method

.method public final i(Ler;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ler;",
            "J",
            "Ljava/util/List<",
            "Lwq;",
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

    iget-object v1, v0, Ler;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, Ler;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v4, v7, :cond_3

    iget-object v7, v0, Ler;->e:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ler$b;

    iget-object v7, v7, Ler$b;->b:Landroidx/media2/exoplayer/external/Format;

    iget v11, v7, Landroidx/media2/exoplayer/external/Format;->q:I

    if-gtz v11, :cond_2

    iget-object v11, v7, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    invoke-static {v11, v9}, Lnu;->w(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, v7, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    invoke-static {v7, v10}, Lnu;->w(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    aput v10, v2, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    aput v8, v2, v4

    goto :goto_2

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

    :goto_4
    new-array v13, v1, [Landroid/net/Uri;

    new-array v6, v1, [Landroidx/media2/exoplayer/external/Format;

    new-array v7, v1, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_5
    iget-object v14, v0, Ler;->e:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_9

    if-eqz v4, :cond_6

    aget v14, v2, v11

    if-ne v14, v9, :cond_8

    :cond_6
    if-eqz v5, :cond_7

    aget v14, v2, v11

    if-eq v14, v10, :cond_8

    :cond_7
    iget-object v14, v0, Ler;->e:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ler$b;

    iget-object v15, v14, Ler$b;->a:Landroid/net/Uri;

    aput-object v15, v13, v12

    iget-object v14, v14, Ler$b;->b:Landroidx/media2/exoplayer/external/Format;

    aput-object v14, v6, v12

    add-int/lit8 v14, v12, 0x1

    aput v11, v7, v12

    move v12, v14

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_9
    aget-object v2, v6, v3

    iget-object v2, v2, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v15, v0, Ler;->j:Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v0, Ler;->k:Ljava/util/List;

    move-object/from16 v11, p0

    move-object v14, v6

    move-object/from16 v16, v4

    move-object/from16 v17, p6

    move-wide/from16 v18, p2

    invoke-virtual/range {v11 .. v19}, Lqq;->k(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Lwq;

    move-result-object v4

    move-object/from16 v5, p4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p5

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p0

    iget-boolean v7, v5, Lqq;->m:Z

    if-eqz v7, :cond_14

    if-eqz v2, :cond_14

    invoke-static {v2, v9}, Lnu;->w(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_6
    invoke-static {v2, v10}, Lnu;->w(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    :goto_7
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_f

    new-array v2, v1, [Landroidx/media2/exoplayer/external/Format;

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v1, :cond_c

    aget-object v12, v6, v7

    invoke-static {v12}, Lqq;->n(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v12

    aput-object v12, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_c
    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_e

    iget-object v1, v0, Ler;->j:Landroidx/media2/exoplayer/external/Format;

    if-nez v1, :cond_d

    iget-object v1, v0, Ler;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v2, v10, [Landroidx/media2/exoplayer/external/Format;

    aget-object v6, v6, v3

    iget-object v7, v0, Ler;->j:Landroidx/media2/exoplayer/external/Format;

    invoke-static {v6, v7, v3}, Lqq;->l(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v0, v0, Ler;->k:Ljava/util/List;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    new-instance v2, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v6, v10, [Landroidx/media2/exoplayer/external/Format;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/Format;

    aput-object v7, v6, v3

    invoke-direct {v2, v6}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    if-eqz v9, :cond_12

    new-array v2, v1, [Landroidx/media2/exoplayer/external/Format;

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v1, :cond_10

    aget-object v9, v6, v7

    iget-object v12, v0, Ler;->j:Landroidx/media2/exoplayer/external/Format;

    invoke-static {v9, v12, v10}, Lqq;->l(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;

    move-result-object v9

    aput-object v9, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_10
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v1, v10, [Landroidx/media2/exoplayer/external/Format;

    const-string v2, "ID3"

    const-string v6, "application/id3"

    const/4 v7, 0x0

    invoke-static {v2, v6, v7, v8, v7}, Landroidx/media2/exoplayer/external/Format;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    new-array v2, v3, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-interface {v11, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    new-instance v2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    new-array v6, v10, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    aput-object v0, v6, v3

    invoke-direct {v2, v6}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    invoke-virtual {v4, v1, v3, v2}, Lwq;->F(Landroidx/media2/exoplayer/external/source/TrackGroupArray;ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V

    goto :goto_c

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

    goto :goto_b

    :cond_13
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_c
    return-void
.end method

.method public final j(J)V
    .locals 18

    move-object/from16 v9, p0

    iget-object v0, v9, Lqq;->b:Ljr;

    invoke-interface {v0}, Ljr;->getMasterPlaylist()Ler;

    move-result-object v1

    invoke-static {v1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v9, Lqq;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Ler;->m:Ljava/util/List;

    invoke-static {v0}, Lqq;->m(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    move-object v10, v0

    iget-object v0, v1, Ler;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    iget-object v7, v1, Ler;->g:Ljava/util/List;

    iget-object v12, v1, Ler;->h:Ljava/util/List;

    const/4 v13, 0x0

    iput v13, v9, Lqq;->p:I

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-object v4, v14

    move-object v5, v15

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lqq;->i(Ler;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v3, v7

    move-object v4, v14

    move-object v5, v15

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lqq;->g(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ler$a;

    const/4 v1, 0x3

    new-array v2, v11, [Landroid/net/Uri;

    iget-object v0, v8, Ler$a;->a:Landroid/net/Uri;

    aput-object v0, v2, v13

    new-array v3, v11, [Landroidx/media2/exoplayer/external/Format;

    iget-object v0, v8, Ler$a;->b:Landroidx/media2/exoplayer/external/Format;

    aput-object v0, v3, v13

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v6, v10

    move/from16 v16, v7

    move-object/from16 v17, v8

    move-wide/from16 v7, p1

    invoke-virtual/range {v0 .. v8}, Lqq;->k(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Lwq;

    move-result-object v0

    new-array v1, v11, [I

    aput v16, v1, v13

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    new-array v2, v11, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-instance v3, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v4, v11, [Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v5, v17

    iget-object v5, v5, Ler$a;->b:Landroidx/media2/exoplayer/external/Format;

    aput-object v5, v4, v13

    invoke-direct {v3, v4}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v3, v2, v13

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    sget-object v2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->d:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v0, v1, v13, v2}, Lwq;->F(Landroidx/media2/exoplayer/external/source/TrackGroupArray;ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V

    add-int/lit8 v7, v16, 0x1

    goto :goto_1

    :cond_2
    new-array v0, v13, [Lwq;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwq;

    iput-object v0, v9, Lqq;->r:[Lwq;

    new-array v0, v13, [[I

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iget-object v0, v9, Lqq;->r:[Lwq;

    array-length v1, v0

    iput v1, v9, Lqq;->p:I

    aget-object v0, v0, v13

    invoke-virtual {v0, v11}, Lwq;->M(Z)V

    iget-object v0, v9, Lqq;->r:[Lwq;

    array-length v1, v0

    :goto_2
    if-ge v13, v1, :cond_3

    aget-object v2, v0, v13

    invoke-virtual {v2}, Lwq;->m()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, v9, Lqq;->r:[Lwq;

    iput-object v0, v9, Lqq;->s:[Lwq;

    return-void
.end method

.method public final k(I[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Ljava/util/Map;J)Lwq;
    .locals 14
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
            "Lwq;"
        }
    .end annotation

    move-object v11, p0

    new-instance v9, Llq;

    iget-object v1, v11, Lqq;->a:Lnq;

    iget-object v2, v11, Lqq;->b:Ljr;

    iget-object v5, v11, Lqq;->c:Lmq;

    iget-object v6, v11, Lqq;->d:Lht;

    iget-object v7, v11, Lqq;->k:Lyq;

    move-object v0, v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Llq;-><init>(Lnq;Ljr;[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Lmq;Lht;Lyq;Ljava/util/List;)V

    new-instance v12, Lwq;

    iget-object v5, v11, Lqq;->h:Les;

    iget-object v10, v11, Lqq;->f:Lct;

    iget-object v13, v11, Lqq;->g:Lqp$a;

    move-object v0, v12

    move v1, p1

    move-object v2, p0

    move-object v3, v9

    move-object/from16 v4, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p4

    move-object v9, v10

    move-object v10, v13

    invoke-direct/range {v0 .. v10}, Lwq;-><init>(ILwq$a;Llq;Ljava/util/Map;Les;JLandroidx/media2/exoplayer/external/Format;Lct;Lqp$a;)V

    return-object v12
.end method

.method public maybeThrowPrepareError()V
    .locals 4

    iget-object v0, p0, Lqq;->r:[Lwq;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lwq;->maybeThrowPrepareError()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(Lwq;)V
    .locals 0

    iget-object p1, p0, Lqq;->o:Lfp$a;

    invoke-interface {p1, p0}, Lyp$a;->c(Lyp;)V

    return-void
.end method

.method public onPlaylistChanged()V
    .locals 1

    iget-object v0, p0, Lqq;->o:Lfp$a;

    invoke-interface {v0, p0}, Lyp$a;->c(Lyp;)V

    return-void
.end method

.method public onPrepared()V
    .locals 11

    iget v0, p0, Lqq;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lqq;->p:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lqq;->r:[Lwq;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lwq;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v5

    iget v5, v5, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v4, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v1, p0, Lqq;->r:[Lwq;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    invoke-virtual {v6}, Lwq;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v7

    iget v7, v7, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v6}, Lwq;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v10

    aput-object v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    iput-object v1, p0, Lqq;->q:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v0, p0, Lqq;->o:Lfp$a;

    invoke-interface {v0, p0}, Lfp$a;->b(Lfp;)V

    return-void
.end method

.method public p()V
    .locals 4

    iget-object v0, p0, Lqq;->b:Ljr;

    invoke-interface {v0, p0}, Ljr;->d(Ljr$b;)V

    iget-object v0, p0, Lqq;->r:[Lwq;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lwq;->H()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lqq;->o:Lfp$a;

    iget-object v0, p0, Lqq;->g:Lqp$a;

    invoke-virtual {v0}, Lqp$a;->z()V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    iget-boolean v0, p0, Lqq;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lqq;->g:Lqp$a;

    invoke-virtual {v0}, Lqp$a;->B()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqq;->u:Z

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    iget-object v0, p0, Lqq;->t:Lyp;

    invoke-interface {v0, p1, p2}, Lyp;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    iget-object v0, p0, Lqq;->s:[Lwq;

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Lwq;->K(JZ)Z

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lqq;->s:[Lwq;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Lwq;->K(JZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lqq;->k:Lyq;

    invoke-virtual {v0}, Lyq;->b()V

    :cond_1
    return-wide p1
.end method

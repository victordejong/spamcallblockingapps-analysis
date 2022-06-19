.class public final Ljn;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[Lkk;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljn;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lkk;

    iput-object p1, p0, Ljn;->b:[Lkk;

    return-void
.end method


# virtual methods
.method public a(JLyt;)V
    .locals 1

    iget-object v0, p0, Ljn;->b:[Lkk;

    invoke-static {p1, p2, p3, v0}, Lnr;->a(JLyt;[Lkk;)V

    return-void
.end method

.method public b(Lck;Lpn$d;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Ljn;->b:[Lkk;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    invoke-virtual/range {p2 .. p2}, Lpn$d;->a()V

    invoke-virtual/range {p2 .. p2}, Lpn$d;->c()I

    move-result v3

    const/4 v4, 0x3

    move-object/from16 v5, p1

    invoke-interface {v5, v3, v4}, Lck;->track(II)Lkk;

    move-result-object v3

    iget-object v4, v0, Ljn;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/Format;

    iget-object v7, v4, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    const-string v6, "application/cea-608"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/cea-708"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x1

    :goto_2
    const-string v8, "Invalid closed caption mime type provided: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_2
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    :goto_3
    invoke-static {v6, v8}, Lit;->b(ZLjava/lang/Object;)V

    iget-object v6, v4, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lpn$d;->b()Ljava/lang/String;

    move-result-object v6

    :goto_4
    const/4 v8, 0x0

    const/4 v9, -0x1

    iget v10, v4, Landroidx/media2/exoplayer/external/Format;->c:I

    iget-object v11, v4, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    iget v12, v4, Landroidx/media2/exoplayer/external/Format;->D:I

    const/4 v13, 0x0

    const-wide v14, 0x7fffffffffffffffL

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    move-object/from16 v16, v4

    invoke-static/range {v6 .. v16}, Landroidx/media2/exoplayer/external/Format;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    invoke-interface {v3, v4}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    iget-object v4, v0, Ljn;->b:[Lkk;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.class public final Landroidx/media2/exoplayer/external/trackselection/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/trackselection/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/upstream/c;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:F

.field private final f:F

.field private final g:J

.field private final h:Landroidx/media2/exoplayer/external/util/b;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 58
    sget-object v8, Landroidx/media2/exoplayer/external/util/b;->a:Landroidx/media2/exoplayer/external/util/b;

    const/16 v1, 0x2710

    const/16 v2, 0x61a8

    const/16 v3, 0x61a8

    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v5, 0x3f400000    # 0.75f

    const-wide/16 v6, 0x7d0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/trackselection/a$c;-><init>(IIIFFJLandroidx/media2/exoplayer/external/util/b;)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 9

    .line 106
    sget-object v8, Landroidx/media2/exoplayer/external/util/b;->a:Landroidx/media2/exoplayer/external/util/b;

    const/high16 v5, 0x3f400000    # 0.75f

    const-wide/16 v6, 0x7d0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/trackselection/a$c;-><init>(IIIFFJLandroidx/media2/exoplayer/external/util/b;)V

    return-void
.end method

.method public constructor <init>(IIIFFJLandroidx/media2/exoplayer/external/util/b;)V
    .locals 10

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    .line 174
    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/trackselection/a$c;-><init>(Landroidx/media2/exoplayer/external/upstream/c;IIIFFJLandroidx/media2/exoplayer/external/util/b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/c;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    sget-object v9, Landroidx/media2/exoplayer/external/util/b;->a:Landroidx/media2/exoplayer/external/util/b;

    const/16 v2, 0x2710

    const/16 v3, 0x61a8

    const/16 v4, 0x61a8

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v6, 0x3f400000    # 0.75f

    const-wide/16 v7, 0x7d0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/trackselection/a$c;-><init>(Landroidx/media2/exoplayer/external/upstream/c;IIIFFJLandroidx/media2/exoplayer/external/util/b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/c;IIIF)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    sget-object v9, Landroidx/media2/exoplayer/external/util/b;->a:Landroidx/media2/exoplayer/external/util/b;

    const/high16 v6, 0x3f400000    # 0.75f

    const-wide/16 v7, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/trackselection/a$c;-><init>(Landroidx/media2/exoplayer/external/upstream/c;IIIFFJLandroidx/media2/exoplayer/external/util/b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/c;IIIFFJLandroidx/media2/exoplayer/external/util/b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/a$c;->a:Landroidx/media2/exoplayer/external/upstream/c;

    .line 201
    iput p2, p0, Landroidx/media2/exoplayer/external/trackselection/a$c;->b:I

    .line 202
    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/a$c;->c:I

    .line 203
    iput p4, p0, Landroidx/media2/exoplayer/external/trackselection/a$c;->d:I

    .line 204
    iput p5, p0, Landroidx/media2/exoplayer/external/trackselection/a$c;->e:F

    .line 205
    iput p6, p0, Landroidx/media2/exoplayer/external/trackselection/a$c;->f:F

    .line 207
    iput-wide p7, p0, Landroidx/media2/exoplayer/external/trackselection/a$c;->g:J

    .line 208
    iput-object p9, p0, Landroidx/media2/exoplayer/external/trackselection/a$c;->h:Landroidx/media2/exoplayer/external/util/b;

    return-void
.end method


# virtual methods
.method public final a([Landroidx/media2/exoplayer/external/trackselection/e$a;Landroidx/media2/exoplayer/external/upstream/c;)[Landroidx/media2/exoplayer/external/trackselection/e;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 214
    iget-object v2, v0, Landroidx/media2/exoplayer/external/trackselection/a$c;->a:Landroidx/media2/exoplayer/external/upstream/c;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    .line 217
    :goto_0
    array-length v3, v1

    new-array v3, v3, [Landroidx/media2/exoplayer/external/trackselection/e;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 219
    :goto_1
    array-length v7, v1

    const/4 v8, 0x1

    if-ge v5, v7, :cond_2

    .line 220
    aget-object v7, v1, v5

    if-eqz v7, :cond_1

    .line 221
    iget-object v9, v7, Landroidx/media2/exoplayer/external/trackselection/e$a;->b:[I

    array-length v9, v9

    if-ne v9, v8, :cond_1

    .line 223
    new-instance v8, Landroidx/media2/exoplayer/external/trackselection/c;

    iget-object v9, v7, Landroidx/media2/exoplayer/external/trackselection/e$a;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v10, v7, Landroidx/media2/exoplayer/external/trackselection/e$a;->b:[I

    aget v10, v10, v4

    iget v11, v7, Landroidx/media2/exoplayer/external/trackselection/e$a;->c:I

    iget-object v12, v7, Landroidx/media2/exoplayer/external/trackselection/e$a;->d:Ljava/lang/Object;

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/media2/exoplayer/external/trackselection/c;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;IILjava/lang/Object;)V

    aput-object v8, v3, v5

    .line 226
    iget-object v8, v7, Landroidx/media2/exoplayer/external/trackselection/e$a;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/trackselection/e$a;->b:[I

    aget v7, v7, v4

    invoke-virtual {v8, v7}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    iget v7, v7, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    add-int/2addr v6, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 232
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 233
    :goto_2
    array-length v9, v1

    if-ge v7, v9, :cond_4

    .line 234
    aget-object v9, v1, v7

    if-eqz v9, :cond_3

    .line 235
    iget-object v10, v9, Landroidx/media2/exoplayer/external/trackselection/e$a;->b:[I

    array-length v10, v10

    if-le v10, v8, :cond_3

    .line 236
    iget-object v12, v9, Landroidx/media2/exoplayer/external/trackselection/e$a;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v13, v9, Landroidx/media2/exoplayer/external/trackselection/e$a;->b:[I

    .line 1278
    new-instance v9, Landroidx/media2/exoplayer/external/trackselection/a;

    new-instance v14, Landroidx/media2/exoplayer/external/trackselection/a$b;

    iget v10, v0, Landroidx/media2/exoplayer/external/trackselection/a$c;->e:F

    move-object/from16 v26, v5

    int-to-long v4, v6

    invoke-direct {v14, v2, v10, v4, v5}, Landroidx/media2/exoplayer/external/trackselection/a$b;-><init>(Landroidx/media2/exoplayer/external/upstream/c;FJ)V

    iget v4, v0, Landroidx/media2/exoplayer/external/trackselection/a$c;->b:I

    int-to-long v4, v4

    iget v10, v0, Landroidx/media2/exoplayer/external/trackselection/a$c;->c:I

    int-to-long v10, v10

    iget v15, v0, Landroidx/media2/exoplayer/external/trackselection/a$c;->d:I

    move-object/from16 v27, v9

    int-to-long v8, v15

    iget v15, v0, Landroidx/media2/exoplayer/external/trackselection/a$c;->f:F

    move-object/from16 v28, v2

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/trackselection/a$c;->g:J

    move/from16 v29, v6

    iget-object v6, v0, Landroidx/media2/exoplayer/external/trackselection/a$c;->h:Landroidx/media2/exoplayer/external/util/b;

    const/16 v25, 0x0

    move-wide/from16 v17, v10

    move-object/from16 v11, v27

    move v10, v15

    move-wide v15, v4

    move-wide/from16 v19, v8

    move/from16 v21, v10

    move-wide/from16 v22, v1

    move-object/from16 v24, v6

    invoke-direct/range {v11 .. v25}, Landroidx/media2/exoplayer/external/trackselection/a;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILandroidx/media2/exoplayer/external/trackselection/a$a;JJJFJLandroidx/media2/exoplayer/external/util/b;Landroidx/media2/exoplayer/external/trackselection/a$1;)V

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    .line 239
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    aput-object v2, v3, v7

    goto :goto_3

    :cond_3
    move-object/from16 v28, v2

    move-object v1, v5

    move/from16 v29, v6

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-object v5, v1

    move-object/from16 v2, v28

    move/from16 v6, v29

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p1

    goto :goto_2

    :cond_4
    move-object v1, v5

    .line 243
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_8

    .line 244
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [[J

    const/4 v4, 0x0

    .line 245
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 246
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/trackselection/a;

    .line 247
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/trackselection/a;->f()I

    move-result v6

    new-array v6, v6, [J

    aput-object v6, v2, v4

    const/4 v6, 0x0

    .line 248
    :goto_5
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/trackselection/a;->f()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 249
    aget-object v7, v2, v4

    .line 250
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/trackselection/a;->f()I

    move-result v8

    sub-int/2addr v8, v6

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .line 2111
    iget-object v10, v5, Landroidx/media2/exoplayer/external/trackselection/b;->e:[Landroidx/media2/exoplayer/external/Format;

    aget-object v8, v10, v8

    .line 250
    iget v8, v8, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    int-to-long v10, v8

    aput-wide v10, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    const/4 v9, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v9, 0x1

    .line 253
    invoke-static {v2}, Landroidx/media2/exoplayer/external/trackselection/a;->a([[J)[[[J

    move-result-object v2

    const/4 v4, 0x0

    .line 254
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 256
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/trackselection/a;

    aget-object v6, v2, v4

    .line 2417
    iget-object v5, v5, Landroidx/media2/exoplayer/external/trackselection/a;->a:Landroidx/media2/exoplayer/external/trackselection/a$a;

    check-cast v5, Landroidx/media2/exoplayer/external/trackselection/a$b;

    .line 2646
    array-length v7, v6

    const/4 v8, 0x2

    if-lt v7, v8, :cond_7

    const/4 v7, 0x1

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    :goto_7
    invoke-static {v7}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 2647
    iput-object v6, v5, Landroidx/media2/exoplayer/external/trackselection/a$b;->a:[[J

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    return-object v3
.end method

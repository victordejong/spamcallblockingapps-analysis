.class public final Landroidx/media2/exoplayer/external/upstream/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:I

.field public final c:[B

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Ljava/lang/String;

.field public final i:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/upstream/h;-><init>(Landroid/net/Uri;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 8

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    .line 152
    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/upstream/h;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V
    .locals 13

    .line 264
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move/from16 v11, p11

    .line 255
    invoke-direct/range {v0 .. v12}, Landroidx/media2/exoplayer/external/upstream/h;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I[BJJJLjava/lang/String;ILjava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I[BJJJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    cmp-long v12, v2, v10

    if-ltz v12, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 290
    :goto_0
    invoke-static {v12}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    cmp-long v12, v4, v10

    if-ltz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 291
    :goto_1
    invoke-static {v12}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    cmp-long v12, v6, v10

    if-gtz v12, :cond_3

    const-wide/16 v10, -0x1

    cmp-long v12, v6, v10

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 292
    :cond_3
    :goto_2
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    move-object v8, p1

    .line 293
    iput-object v8, v0, Landroidx/media2/exoplayer/external/upstream/h;->a:Landroid/net/Uri;

    move v8, p2

    .line 294
    iput v8, v0, Landroidx/media2/exoplayer/external/upstream/h;->b:I

    if-eqz v1, :cond_4

    .line 295
    array-length v8, v1

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    iput-object v1, v0, Landroidx/media2/exoplayer/external/upstream/h;->c:[B

    .line 296
    iput-wide v2, v0, Landroidx/media2/exoplayer/external/upstream/h;->e:J

    .line 297
    iput-wide v4, v0, Landroidx/media2/exoplayer/external/upstream/h;->f:J

    .line 298
    iput-wide v6, v0, Landroidx/media2/exoplayer/external/upstream/h;->g:J

    move-object/from16 v1, p10

    .line 299
    iput-object v1, v0, Landroidx/media2/exoplayer/external/upstream/h;->h:Ljava/lang/String;

    move/from16 v1, p11

    .line 300
    iput v1, v0, Landroidx/media2/exoplayer/external/upstream/h;->i:I

    .line 301
    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v2, p12

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/upstream/h;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJJLjava/lang/String;I)V
    .locals 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 198
    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/upstream/h;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    .line 164
    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/upstream/h;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;I)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 178
    invoke-direct/range {v0 .. v9}, Landroidx/media2/exoplayer/external/upstream/h;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    .locals 12

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    .line 223
    invoke-direct/range {v0 .. v11}, Landroidx/media2/exoplayer/external/upstream/h;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V

    return-void
.end method

.method private a(JJ)Landroidx/media2/exoplayer/external/upstream/h;
    .locals 16

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 378
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/upstream/h;->g:J

    cmp-long v3, v1, p3

    if-nez v3, :cond_0

    return-object v0

    .line 381
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/h;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/upstream/h;->a:Landroid/net/Uri;

    iget v5, v0, Landroidx/media2/exoplayer/external/upstream/h;->b:I

    iget-object v6, v0, Landroidx/media2/exoplayer/external/upstream/h;->c:[B

    iget-wide v2, v0, Landroidx/media2/exoplayer/external/upstream/h;->e:J

    add-long v7, v2, p1

    iget-wide v2, v0, Landroidx/media2/exoplayer/external/upstream/h;->f:J

    add-long v9, v2, p1

    iget-object v13, v0, Landroidx/media2/exoplayer/external/upstream/h;->h:Ljava/lang/String;

    iget v14, v0, Landroidx/media2/exoplayer/external/upstream/h;->i:I

    iget-object v15, v0, Landroidx/media2/exoplayer/external/upstream/h;->d:Ljava/util/Map;

    move-object v3, v1

    move-wide/from16 v11, p3

    invoke-direct/range {v3 .. v15}, Landroidx/media2/exoplayer/external/upstream/h;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;ILjava/util/Map;)V

    return-object v1
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "HEAD"

    return-object p0

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_1
    const-string p0, "POST"

    return-object p0

    :cond_2
    const-string p0, "GET"

    return-object p0
.end method


# virtual methods
.method public final a(J)Landroidx/media2/exoplayer/external/upstream/h;
    .locals 5

    .line 367
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/h;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    sub-long v2, v0, p1

    :goto_0
    invoke-direct {p0, p1, p2, v2, v3}, Landroidx/media2/exoplayer/external/upstream/h;->a(JJ)Landroidx/media2/exoplayer/external/upstream/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)Z
    .locals 1

    .line 310
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/h;->i:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    .line 1339
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/h;->b:I

    invoke-static {v0}, Landroidx/media2/exoplayer/external/upstream/h;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/h;->a:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/h;->c:[B

    .line 320
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/upstream/h;->e:J

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/upstream/h;->f:J

    iget-wide v7, p0, Landroidx/media2/exoplayer/external/upstream/h;->g:J

    iget-object v9, p0, Landroidx/media2/exoplayer/external/upstream/h;->h:Ljava/lang/String;

    iget v10, p0, Landroidx/media2/exoplayer/external/upstream/h;->i:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x5e

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "DataSpec["

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

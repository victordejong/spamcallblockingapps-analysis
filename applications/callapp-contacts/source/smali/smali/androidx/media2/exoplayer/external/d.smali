.class public final Landroidx/media2/exoplayer/external/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/y;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/upstream/i;

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:I

.field private final h:Z

.field private final i:J

.field private final j:Z

.field private k:I

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 262
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/i;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/upstream/i;-><init>(ZI)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/d;-><init>(Landroidx/media2/exoplayer/external/upstream/i;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/i;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v2, 0x3a98

    const v3, 0xc350

    const v4, 0xc350

    const/16 v5, 0x9c4

    const/16 v6, 0x1388

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 268
    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/d;-><init>(Landroidx/media2/exoplayer/external/upstream/i;IIIIIIZIZ)V

    return-void
.end method

.method protected constructor <init>(Landroidx/media2/exoplayer/external/upstream/i;IIIIIIZIZ)V
    .locals 13

    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p9

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    const-string v8, "bufferForPlaybackMs"

    const-string v9, "0"

    .line 315
    invoke-static {v4, v7, v8, v9}, Landroidx/media2/exoplayer/external/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v10, "bufferForPlaybackAfterRebufferMs"

    .line 316
    invoke-static {v5, v7, v10, v9}, Landroidx/media2/exoplayer/external/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v11, "minBufferAudioMs"

    .line 318
    invoke-static {p2, v4, v11, v8}, Landroidx/media2/exoplayer/external/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v12, "minBufferVideoMs"

    .line 320
    invoke-static {v2, v4, v12, v8}, Landroidx/media2/exoplayer/external/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static {p2, v5, v11, v10}, Landroidx/media2/exoplayer/external/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {v2, v5, v12, v10}, Landroidx/media2/exoplayer/external/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "maxBufferMs"

    .line 332
    invoke-static {v3, p2, v8, v11}, Landroidx/media2/exoplayer/external/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {v3, v2, v8, v12}, Landroidx/media2/exoplayer/external/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "backBufferDurationMs"

    .line 334
    invoke-static {v6, v7, v8, v9}, Landroidx/media2/exoplayer/external/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    move-object v7, p1

    .line 336
    iput-object v7, v0, Landroidx/media2/exoplayer/external/d;->a:Landroidx/media2/exoplayer/external/upstream/i;

    int-to-long v7, v1

    .line 337
    invoke-static {v7, v8}, Landroidx/media2/exoplayer/external/c;->b(J)J

    move-result-wide v7

    iput-wide v7, v0, Landroidx/media2/exoplayer/external/d;->b:J

    int-to-long v1, v2

    .line 338
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/c;->b(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/d;->c:J

    int-to-long v1, v3

    .line 339
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/c;->b(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/d;->d:J

    int-to-long v1, v4

    .line 340
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/c;->b(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/d;->e:J

    int-to-long v1, v5

    .line 341
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/c;->b(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/d;->f:J

    move/from16 v1, p7

    .line 342
    iput v1, v0, Landroidx/media2/exoplayer/external/d;->g:I

    move/from16 v1, p8

    .line 343
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/d;->h:Z

    int-to-long v1, v6

    .line 344
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/c;->b(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/d;->i:J

    move/from16 v1, p10

    .line 345
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/d;->j:Z

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/i;IIIIIZ)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 291
    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/d;-><init>(Landroidx/media2/exoplayer/external/upstream/i;IIIIIIZIZ)V

    return-void
.end method

.method private static a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 477
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x15

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be less than "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/util/a;->a(ZLjava/lang/Object;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 439
    iput v0, p0, Landroidx/media2/exoplayer/external/d;->k:I

    .line 440
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/d;->l:Z

    if-eqz p1, :cond_0

    .line 442
    iget-object p1, p0, Landroidx/media2/exoplayer/external/d;->a:Landroidx/media2/exoplayer/external/upstream/i;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/i;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 350
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/d;->a(Z)V

    return-void
.end method

.method public final a([Landroidx/media2/exoplayer/external/ag;Landroidx/media2/exoplayer/external/trackselection/f;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1468
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1469
    aget-object v2, p1, v1

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/ag;->a()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2055
    iget-object v2, p2, Landroidx/media2/exoplayer/external/trackselection/f;->b:[Landroidx/media2/exoplayer/external/trackselection/e;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 356
    :goto_1
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/d;->m:Z

    .line 358
    iget v1, p0, Landroidx/media2/exoplayer/external/d;->g:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2430
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 3055
    iget-object v3, p2, Landroidx/media2/exoplayer/external/trackselection/f;->b:[Landroidx/media2/exoplayer/external/trackselection/e;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    .line 2432
    aget-object v3, p1, v2

    invoke-interface {v3}, Landroidx/media2/exoplayer/external/ag;->a()I

    move-result v3

    const/high16 v4, 0x20000

    packed-switch v3, :pswitch_data_0

    .line 3463
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    const/4 v4, 0x0

    goto :goto_3

    :pswitch_1
    const/high16 v4, 0x1f40000

    goto :goto_3

    :pswitch_2
    const/high16 v4, 0x360000

    goto :goto_3

    :pswitch_3
    const/high16 v4, 0x22c0000

    :goto_3
    :pswitch_4
    add-int/2addr v1, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 360
    :cond_3
    iput v1, p0, Landroidx/media2/exoplayer/external/d;->k:I

    .line 361
    iget-object p1, p0, Landroidx/media2/exoplayer/external/d;->a:Landroidx/media2/exoplayer/external/upstream/i;

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/upstream/i;->a(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public final a(JF)Z
    .locals 8

    .line 391
    iget-object v0, p0, Landroidx/media2/exoplayer/external/d;->a:Landroidx/media2/exoplayer/external/upstream/i;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/i;->e()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/d;->k:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 392
    :goto_0
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/d;->m:Z

    if-eqz v1, :cond_1

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/d;->c:J

    goto :goto_1

    :cond_1
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/d;->b:J

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    .line 397
    invoke-static {v4, v5, p3}, Landroidx/media2/exoplayer/external/util/ac;->a(JF)J

    move-result-wide v4

    .line 398
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/d;->d:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_2
    cmp-long p3, p1, v4

    if-gez p3, :cond_5

    .line 401
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/d;->h:Z

    if-nez p1, :cond_4

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_2
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/d;->l:Z

    goto :goto_3

    .line 402
    :cond_5
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/d;->d:J

    cmp-long p3, p1, v1

    if-gez p3, :cond_6

    if-eqz v0, :cond_7

    .line 403
    :cond_6
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/d;->l:Z

    .line 405
    :cond_7
    :goto_3
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/d;->l:Z

    return p1
.end method

.method public final a(JFZ)Z
    .locals 3

    .line 411
    invoke-static {p1, p2, p3}, Landroidx/media2/exoplayer/external/util/ac;->b(JF)J

    move-result-wide p1

    if-eqz p4, :cond_0

    .line 412
    iget-wide p3, p0, Landroidx/media2/exoplayer/external/d;->f:J

    goto :goto_0

    :cond_0
    iget-wide p3, p0, Landroidx/media2/exoplayer/external/d;->e:J

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_2

    cmp-long v0, p1, p3

    if-gez v0, :cond_2

    .line 413
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/d;->h:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/media2/exoplayer/external/d;->a:Landroidx/media2/exoplayer/external/upstream/i;

    .line 416
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/i;->e()I

    move-result p1

    iget p2, p0, Landroidx/media2/exoplayer/external/d;->k:I

    if-lt p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 366
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/d;->a(Z)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    .line 371
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/d;->a(Z)V

    return-void
.end method

.method public final d()Landroidx/media2/exoplayer/external/upstream/b;
    .locals 1

    .line 376
    iget-object v0, p0, Landroidx/media2/exoplayer/external/d;->a:Landroidx/media2/exoplayer/external/upstream/i;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .line 381
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/d;->i:J

    return-wide v0
.end method

.method public final f()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/d;->j:Z

    return v0
.end method

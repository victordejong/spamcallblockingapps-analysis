.class public abstract Lcom/google/android/gms/internal/ads/doy;
.super Lcom/google/android/gms/internal/ads/dkq;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final b:[B


# instance fields
.field private A:J

.field private B:I

.field private C:I

.field private D:Z

.field private E:Z

.field private F:I

.field private G:I

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field protected a:Lcom/google/android/gms/internal/ads/dmt;

.field private final c:Lcom/google/android/gms/internal/ads/dpa;

.field private final d:Lcom/google/android/gms/internal/ads/dnb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dnb",
            "<",
            "Lcom/google/android/gms/internal/ads/dnc;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z

.field private final f:Lcom/google/android/gms/internal/ads/dmx;

.field private final g:Lcom/google/android/gms/internal/ads/dmx;

.field private final h:Lcom/google/android/gms/internal/ads/dlg;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/media/MediaCodec$BufferInfo;

.field private k:Lcom/google/android/gms/internal/ads/dlf;

.field private l:Lcom/google/android/gms/internal/ads/dmz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dmz",
            "<",
            "Lcom/google/android/gms/internal/ads/dnc;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/android/gms/internal/ads/dmz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dmz",
            "<",
            "Lcom/google/android/gms/internal/ads/dnc;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/media/MediaCodec;

.field private o:Lcom/google/android/gms/internal/ads/doz;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:[Ljava/nio/ByteBuffer;

.field private z:[Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 483
    const-string/jumbo v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dsn;->e(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/doy;->b:[B

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/dpa;Lcom/google/android/gms/internal/ads/dnb;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/ads/dpa;",
            "Lcom/google/android/gms/internal/ads/dnb",
            "<",
            "Lcom/google/android/gms/internal/ads/dnc;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dkq;-><init>(I)V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/drz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dpa;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->c:Lcom/google/android/gms/internal/ads/dpa;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/doy;->d:Lcom/google/android/gms/internal/ads/dnb;

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/doy;->e:Z

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/dmx;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dmx;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/dmx;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dmx;-><init>(I)V

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->g:Lcom/google/android/gms/internal/ads/dmx;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/dlg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dlg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->h:Lcom/google/android/gms/internal/ads/dlg;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->i:Ljava/util/List;

    .line 12
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 13
    iput v1, p0, Lcom/google/android/gms/internal/ads/doy;->F:I

    .line 14
    iput v1, p0, Lcom/google/android/gms/internal/ads/doy;->G:I

    .line 15
    return-void

    :cond_0
    move v0, v1

    .line 2
    goto :goto_0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/zzle;)V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->r()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgq;->a(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object v0

    throw v0
.end method

.method private final b(JJ)Z
    .locals 13

    .prologue
    .line 405
    iget v0, p0, Lcom/google/android/gms/internal/ads/doy;->C:I

    if-gez v0, :cond_5

    .line 406
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->u:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->I:Z

    if-eqz v0, :cond_1

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 408
    const-wide/16 v2, 0x0

    .line 409
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/doy;->C:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/doy;->C:I

    if-ltz v0, :cond_8

    .line 420
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->x:Z

    if-eqz v0, :cond_2

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->x:Z

    .line 422
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/gms/internal/ads/doy;->C:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 423
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/doy;->C:I

    .line 424
    const/4 v0, 0x1

    .line 475
    :goto_1
    return v0

    .line 412
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/doy;->w()V

    .line 413
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->K:Z

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->C()V

    .line 415
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 417
    const-wide/16 v2, 0x0

    .line 418
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/doy;->C:I

    goto :goto_0

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 426
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/doy;->w()V

    .line 427
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/doy;->C:I

    .line 428
    const/4 v0, 0x0

    goto :goto_1

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->z:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/ads/doy;->C:I

    aget-object v0, v0, v1

    .line 430
    if-eqz v0, :cond_4

    .line 431
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 432
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/doy;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 433
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->j:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 434
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 435
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_7

    .line 436
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-nez v0, :cond_6

    .line 437
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 438
    const/4 v0, 0x1

    .line 441
    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->D:Z

    .line 462
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->u:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->I:Z

    if-eqz v0, :cond_10

    .line 463
    :try_start_1
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->z:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/ads/doy;->C:I

    aget-object v7, v0, v1

    iget v8, p0, Lcom/google/android/gms/internal/ads/doy;->C:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->j:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, p0, Lcom/google/android/gms/internal/ads/doy;->D:Z

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/doy;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 471
    :goto_4
    if-eqz v0, :cond_11

    .line 472
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->j:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 473
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/doy;->C:I

    .line 474
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 439
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 440
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 443
    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/ads/doy;->C:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_b

    .line 445
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 446
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/doy;->r:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "width"

    .line 447
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_9

    const-string/jumbo v1, "height"

    .line 448
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_9

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->x:Z

    .line 454
    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 451
    :cond_9
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/doy;->v:Z

    if-eqz v1, :cond_a

    .line 452
    const-string/jumbo v1, "channel-count"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 453
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/doy;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    goto :goto_5

    .line 455
    :cond_b
    iget v0, p0, Lcom/google/android/gms/internal/ads/doy;->C:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_c

    .line 457
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->z:[Ljava/nio/ByteBuffer;

    .line 458
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 459
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->s:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->J:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/google/android/gms/internal/ads/doy;->G:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 460
    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/doy;->w()V

    .line 461
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 466
    :catch_1
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/doy;->w()V

    .line 467
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->K:Z

    if-eqz v0, :cond_f

    .line 468
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->C()V

    .line 469
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 470
    :cond_10
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->z:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/ads/doy;->C:I

    aget-object v7, v0, v1

    iget v8, p0, Lcom/google/android/gms/internal/ads/doy;->C:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->j:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, p0, Lcom/google/android/gms/internal/ads/doy;->D:Z

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/doy;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    goto/16 :goto_4

    .line 475
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private final v()Z
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 269
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/doy;->G:I

    if-eq v0, v8, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->J:Z

    if-eqz v0, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v2

    .line 271
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/doy;->B:I

    if-gez v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/doy;->B:I

    .line 273
    iget v0, p0, Lcom/google/android/gms/internal/ads/doy;->B:I

    if-ltz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->y:[Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/android/gms/internal/ads/doy;->B:I

    aget-object v1, v1, v3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    .line 276
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmp;->a()V

    .line 277
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/doy;->G:I

    if-ne v0, v7, :cond_4

    .line 278
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->s:Z

    if-nez v0, :cond_3

    .line 279
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/doy;->I:Z

    .line 280
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/gms/internal/ads/doy;->B:I

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 281
    iput v9, p0, Lcom/google/android/gms/internal/ads/doy;->B:I

    .line 282
    :cond_3
    iput v8, p0, Lcom/google/android/gms/internal/ads/doy;->G:I

    goto :goto_0

    .line 284
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->w:Z

    if-eqz v0, :cond_5

    .line 285
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->w:Z

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/doy;->b:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 287
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/gms/internal/ads/doy;->B:I

    sget-object v3, Lcom/google/android/gms/internal/ads/doy;->b:[B

    array-length v3, v3

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 288
    iput v9, p0, Lcom/google/android/gms/internal/ads/doy;->B:I

    .line 289
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/doy;->H:Z

    move v2, v7

    .line 290
    goto :goto_0

    .line 292
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->L:Z

    if-eqz v0, :cond_7

    .line 293
    const/4 v0, -0x4

    move v1, v2

    move v3, v0

    .line 302
    :goto_1
    const/4 v0, -0x3

    if-eq v3, v0, :cond_0

    .line 304
    const/4 v0, -0x5

    if-ne v3, v0, :cond_a

    .line 305
    iget v0, p0, Lcom/google/android/gms/internal/ads/doy;->F:I

    if-ne v0, v8, :cond_6

    .line 306
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmp;->a()V

    .line 307
    iput v7, p0, Lcom/google/android/gms/internal/ads/doy;->F:I

    .line 308
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->h:Lcom/google/android/gms/internal/ads/dlg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlg;->a:Lcom/google/android/gms/internal/ads/dlf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/doy;->b(Lcom/google/android/gms/internal/ads/dlf;)V

    move v2, v7

    .line 309
    goto :goto_0

    .line 294
    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/ads/doy;->F:I

    if-ne v0, v7, :cond_9

    move v1, v2

    .line 295
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 296
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 297
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 298
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 299
    :cond_8
    iput v8, p0, Lcom/google/android/gms/internal/ads/doy;->F:I

    .line 300
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->h:Lcom/google/android/gms/internal/ads/dlg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    invoke-virtual {p0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/dkq;->a(Lcom/google/android/gms/internal/ads/dlg;Lcom/google/android/gms/internal/ads/dmx;Z)I

    move-result v3

    move v1, v0

    goto :goto_1

    .line 310
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmp;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 311
    iget v0, p0, Lcom/google/android/gms/internal/ads/doy;->F:I

    if-ne v0, v8, :cond_b

    .line 312
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmp;->a()V

    .line 313
    iput v7, p0, Lcom/google/android/gms/internal/ads/doy;->F:I

    .line 314
    :cond_b
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/doy;->J:Z

    .line 315
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->H:Z

    if-nez v0, :cond_c

    .line 316
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/doy;->w()V

    goto/16 :goto_0

    .line 318
    :cond_c
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->s:Z

    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->I:Z

    .line 320
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    iget v5, p0, Lcom/google/android/gms/internal/ads/doy;->B:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 321
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/doy;->B:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 323
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgq;->a(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object v0

    throw v0

    .line 325
    :cond_d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->M:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmp;->d()Z

    move-result v0

    if-nez v0, :cond_f

    .line 326
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmp;->a()V

    .line 327
    iget v0, p0, Lcom/google/android/gms/internal/ads/doy;->F:I

    if-ne v0, v8, :cond_e

    .line 328
    iput v7, p0, Lcom/google/android/gms/internal/ads/doy;->F:I

    :cond_e
    move v2, v7

    .line 329
    goto/16 :goto_0

    .line 330
    :cond_f
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->M:Z

    .line 331
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmx;->e()Z

    move-result v3

    .line 333
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    if-eqz v0, :cond_12

    .line 334
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dmz;->a()I

    move-result v0

    .line 335
    if-nez v0, :cond_10

    .line 336
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dmz;->c()Lcom/google/android/gms/internal/ads/zzjg;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgq;->a(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object v0

    throw v0

    .line 337
    :cond_10
    const/4 v4, 0x4

    if-eq v0, v4, :cond_12

    if-nez v3, :cond_11

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->e:Z

    if-nez v0, :cond_12

    :cond_11
    move v0, v7

    .line 338
    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->L:Z

    .line 339
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->L:Z

    if-nez v0, :cond_0

    .line 341
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->p:Z

    if-eqz v0, :cond_14

    if-nez v3, :cond_14

    .line 342
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dsf;->a(Ljava/nio/ByteBuffer;)V

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_13

    move v2, v7

    .line 344
    goto/16 :goto_0

    :cond_12
    move v0, v2

    .line 337
    goto :goto_3

    .line 345
    :cond_13
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->p:Z

    .line 346
    :cond_14
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/dmx;->c:J

    .line 347
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmp;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 348
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->i:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    .line 350
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 351
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/doy;->a(Lcom/google/android/gms/internal/ads/dmx;)V

    .line 352
    if-eqz v3, :cond_18

    .line 353
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    .line 354
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dmx;->a:Lcom/google/android/gms/internal/ads/dms;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dms;->a()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    .line 355
    if-nez v1, :cond_16

    .line 362
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/gms/internal/ads/doy;->B:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 365
    :goto_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/doy;->B:I

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->H:Z

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/doy;->F:I

    .line 368
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->a:Lcom/google/android/gms/internal/ads/dmt;

    iget v1, v0, Lcom/google/android/gms/internal/ads/dmt;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/dmt;->c:I

    move v2, v7

    .line 371
    goto/16 :goto_0

    .line 357
    :cond_16
    iget-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_17

    .line 358
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 359
    :cond_17
    iget-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v2, 0x0

    aget v6, v0, v2

    add-int/2addr v1, v6

    aput v1, v0, v2
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 370
    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgq;->a(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object v0

    throw v0

    .line 364
    :cond_18
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/gms/internal/ads/doy;->B:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5
.end method

.method private final w()V
    .locals 2

    .prologue
    .line 477
    iget v0, p0, Lcom/google/android/gms/internal/ads/doy;->G:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->C()V

    .line 479
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->z()V

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->K:Z

    .line 481
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->y()V

    goto :goto_0
.end method


# virtual methods
.method protected final A()Landroid/media/MediaCodec;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected final B()Lcom/google/android/gms/internal/ads/doz;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->o:Lcom/google/android/gms/internal/ads/doz;

    return-object v0
.end method

.method protected C()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 174
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/doy;->A:J

    .line 175
    iput v4, p0, Lcom/google/android/gms/internal/ads/doy;->B:I

    .line 176
    iput v4, p0, Lcom/google/android/gms/internal/ads/doy;->C:I

    .line 177
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->L:Z

    .line 178
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->D:Z

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->y:[Ljava/nio/ByteBuffer;

    .line 181
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->z:[Ljava/nio/ByteBuffer;

    .line 182
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->o:Lcom/google/android/gms/internal/ads/doz;

    .line 183
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->E:Z

    .line 184
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->H:Z

    .line 185
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->p:Z

    .line 186
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->q:Z

    .line 187
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->r:Z

    .line 188
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->s:Z

    .line 189
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->t:Z

    .line 190
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->v:Z

    .line 191
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->w:Z

    .line 192
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->x:Z

    .line 193
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->I:Z

    .line 194
    iput v2, p0, Lcom/google/android/gms/internal/ads/doy;->F:I

    .line 195
    iput v2, p0, Lcom/google/android/gms/internal/ads/doy;->G:I

    .line 196
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->f:Lcom/google/android/gms/internal/ads/dmx;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->a:Lcom/google/android/gms/internal/ads/dmt;

    iget v1, v0, Lcom/google/android/gms/internal/ads/dmt;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/dmt;->b:I

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 200
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    if-eq v0, v1, :cond_0

    .line 203
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->d:Lcom/google/android/gms/internal/ads/dnb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dnb;->a(Lcom/google/android/gms/internal/ads/dmz;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    .line 235
    :cond_0
    return-void

    .line 206
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    .line 207
    throw v0

    .line 208
    :catchall_1
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    .line 209
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    if-eq v1, v2, :cond_1

    .line 210
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->d:Lcom/google/android/gms/internal/ads/dnb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dnb;->a(Lcom/google/android/gms/internal/ads/dmz;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 211
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    .line 215
    :cond_1
    throw v0

    .line 213
    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    .line 214
    throw v0

    .line 217
    :catchall_3
    move-exception v0

    .line 218
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 219
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    .line 220
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    if-eq v1, v2, :cond_2

    .line 221
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->d:Lcom/google/android/gms/internal/ads/dnb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dnb;->a(Lcom/google/android/gms/internal/ads/dmz;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 222
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    .line 234
    :cond_2
    throw v0

    .line 224
    :catchall_4
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    .line 225
    throw v0

    .line 226
    :catchall_5
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    .line 227
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    if-eq v1, v2, :cond_3

    .line 228
    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->d:Lcom/google/android/gms/internal/ads/dnb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dnb;->a(Lcom/google/android/gms/internal/ads/dmz;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 229
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    .line 233
    :cond_3
    throw v0

    .line 231
    :catchall_6
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    .line 232
    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dlf;)I
    .locals 2

    .prologue
    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->c:Lcom/google/android/gms/internal/ads/dpa;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/doy;->a(Lcom/google/android/gms/internal/ads/dpa;Lcom/google/android/gms/internal/ads/dlf;)I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzlj; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 18
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgq;->a(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object v0

    throw v0
.end method

.method protected abstract a(Lcom/google/android/gms/internal/ads/dpa;Lcom/google/android/gms/internal/ads/dlf;)I
.end method

.method protected a(Lcom/google/android/gms/internal/ads/dpa;Lcom/google/android/gms/internal/ads/dlf;Z)Lcom/google/android/gms/internal/ads/doz;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    invoke-interface {p1, v0, p3}, Lcom/google/android/gms/internal/ads/dpa;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/doz;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJ)V
    .locals 7

    .prologue
    const/4 v5, -0x4

    const/4 v4, -0x5

    const/4 v3, 0x1

    .line 238
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->K:Z

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->y()V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    if-nez v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->g:Lcom/google/android/gms/internal/ads/dmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmp;->a()V

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->h:Lcom/google/android/gms/internal/ads/dlg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->g:Lcom/google/android/gms/internal/ads/dmx;

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/internal/ads/dkq;->a(Lcom/google/android/gms/internal/ads/dlg;Lcom/google/android/gms/internal/ads/dmx;Z)I

    move-result v0

    .line 244
    if-ne v0, v4, :cond_6

    .line 245
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->h:Lcom/google/android/gms/internal/ads/dlg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlg;->a:Lcom/google/android/gms/internal/ads/dlf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/doy;->b(Lcom/google/android/gms/internal/ads/dlf;)V

    .line 252
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->z()V

    .line 253
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    if-eqz v0, :cond_7

    .line 254
    const-string/jumbo v0, "drainAndFeed"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/String;)V

    .line 255
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/doy;->b(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 256
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/doy;->v()Z

    move-result v0

    if-nez v0, :cond_4

    .line 257
    invoke-static {}, Lcom/google/android/gms/internal/ads/dso;->a()V

    .line 267
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->a:Lcom/google/android/gms/internal/ads/dmt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmt;->a()V

    goto :goto_0

    .line 246
    :cond_6
    if-ne v0, v5, :cond_0

    .line 247
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->g:Lcom/google/android/gms/internal/ads/dmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmp;->c()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 248
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/doy;->J:Z

    .line 249
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/doy;->w()V

    goto :goto_0

    .line 258
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dkq;->b(J)V

    .line 259
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->g:Lcom/google/android/gms/internal/ads/dmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmp;->a()V

    .line 260
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->h:Lcom/google/android/gms/internal/ads/dlg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->g:Lcom/google/android/gms/internal/ads/dmx;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dkq;->a(Lcom/google/android/gms/internal/ads/dlg;Lcom/google/android/gms/internal/ads/dmx;Z)I

    move-result v0

    .line 261
    if-ne v0, v4, :cond_8

    .line 262
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->h:Lcom/google/android/gms/internal/ads/dlg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlg;->a:Lcom/google/android/gms/internal/ads/dlf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/doy;->b(Lcom/google/android/gms/internal/ads/dlf;)V

    goto :goto_1

    .line 263
    :cond_8
    if-ne v0, v5, :cond_5

    .line 264
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->g:Lcom/google/android/gms/internal/ads/dmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmp;->c()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 265
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/doy;->J:Z

    .line 266
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/doy;->w()V

    goto :goto_1
.end method

.method protected a(JZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 106
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->J:Z

    .line 107
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->K:Z

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 110
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/doy;->A:J

    .line 111
    iput v3, p0, Lcom/google/android/gms/internal/ads/doy;->B:I

    .line 112
    iput v3, p0, Lcom/google/android/gms/internal/ads/doy;->C:I

    .line 113
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/doy;->M:Z

    .line 114
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->L:Z

    .line 115
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->D:Z

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->w:Z

    .line 118
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->x:Z

    .line 119
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->t:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->I:Z

    if-eqz v0, :cond_2

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->C()V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->z()V

    .line 127
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->E:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    if-eqz v0, :cond_1

    .line 128
    iput v4, p0, Lcom/google/android/gms/internal/ads/doy;->F:I

    .line 129
    :cond_1
    return-void

    .line 122
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/doy;->G:I

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->C()V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->z()V

    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 126
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->H:Z

    goto :goto_0
.end method

.method protected a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    .prologue
    .line 398
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ads/dmx;)V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/internal/ads/doz;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/dlf;Landroid/media/MediaCrypto;)V
.end method

.method protected a(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method protected a(Z)V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/google/android/gms/internal/ads/dmt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dmt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->a:Lcom/google/android/gms/internal/ads/dmt;

    .line 105
    return-void
.end method

.method protected abstract a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
.end method

.method protected a(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/dlf;Lcom/google/android/gms/internal/ads/dlf;)Z
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lcom/google/android/gms/internal/ads/doz;)Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method protected b(Lcom/google/android/gms/internal/ads/dlf;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 373
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    .line 374
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    .line 375
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dlf;->f:Lcom/google/android/gms/internal/ads/dmw;

    if-nez v4, :cond_0

    move-object v0, v1

    .line 377
    :goto_0
    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/dsn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 378
    :goto_1
    if-eqz v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->f:Lcom/google/android/gms/internal/ads/dmw;

    if-eqz v0, :cond_4

    .line 380
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->d:Lcom/google/android/gms/internal/ads/dnb;

    if-nez v0, :cond_2

    .line 381
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Media requires a DrmSessionManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->r()I

    move-result v1

    .line 383
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgq;->a(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object v0

    throw v0

    .line 376
    :cond_0
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/dlf;->f:Lcom/google/android/gms/internal/ads/dmw;

    goto :goto_0

    :cond_1
    move v0, v3

    .line 377
    goto :goto_1

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->d:Lcom/google/android/gms/internal/ads/dnb;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dlf;->f:Lcom/google/android/gms/internal/ads/dmw;

    invoke-interface {v0, v1, v5}, Lcom/google/android/gms/internal/ads/dnb;->a(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/dmw;)Lcom/google/android/gms/internal/ads/dmz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    .line 385
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    if-ne v0, v1, :cond_3

    .line 386
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->d:Lcom/google/android/gms/internal/ads/dnb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dnb;->a(Lcom/google/android/gms/internal/ads/dmz;)V

    .line 388
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->o:Lcom/google/android/gms/internal/ads/doz;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/doz;->b:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    .line 389
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/doy;->a(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/dlf;Lcom/google/android/gms/internal/ads/dlf;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 390
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/doy;->E:Z

    .line 391
    iput v2, p0, Lcom/google/android/gms/internal/ads/doy;->F:I

    .line 392
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->r:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    iget v1, v4, Lcom/google/android/gms/internal/ads/dlf;->g:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    iget v1, v4, Lcom/google/android/gms/internal/ads/dlf;->h:I

    if-ne v0, v1, :cond_5

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->w:Z

    .line 397
    :goto_4
    return-void

    .line 387
    :cond_4
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    goto :goto_2

    :cond_5
    move v0, v3

    .line 392
    goto :goto_3

    .line 393
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->H:Z

    if-eqz v0, :cond_7

    .line 394
    iput v2, p0, Lcom/google/android/gms/internal/ads/doy;->G:I

    goto :goto_4

    .line 395
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->C()V

    .line 396
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->z()V

    goto :goto_4
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x4

    return v0
.end method

.method protected n()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method protected o()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method protected p()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 130
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->C()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->d:Lcom/google/android/gms/internal/ads/dnb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dnb;->a(Lcom/google/android/gms/internal/ads/dmz;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    if-eq v0, v1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->d:Lcom/google/android/gms/internal/ads/dnb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dnb;->a(Lcom/google/android/gms/internal/ads/dmz;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    :cond_1
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    .line 137
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    .line 138
    return-void

    .line 139
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    .line 140
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    .line 141
    throw v0

    .line 142
    :catchall_1
    move-exception v0

    .line 143
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    if-eq v1, v2, :cond_2

    .line 144
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->d:Lcom/google/android/gms/internal/ads/dnb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dnb;->a(Lcom/google/android/gms/internal/ads/dmz;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 145
    :cond_2
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    .line 146
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    .line 151
    throw v0

    .line 148
    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    .line 149
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    .line 150
    throw v0

    .line 152
    :catchall_3
    move-exception v0

    .line 153
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    if-eqz v1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->d:Lcom/google/android/gms/internal/ads/dnb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dnb;->a(Lcom/google/android/gms/internal/ads/dmz;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 155
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    if-eq v1, v2, :cond_4

    .line 156
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->d:Lcom/google/android/gms/internal/ads/dnb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dnb;->a(Lcom/google/android/gms/internal/ads/dmz;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 157
    :cond_4
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    .line 158
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    .line 173
    throw v0

    .line 160
    :catchall_4
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    .line 161
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    .line 162
    throw v0

    .line 163
    :catchall_5
    move-exception v0

    .line 164
    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    if-eq v1, v2, :cond_5

    .line 165
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->d:Lcom/google/android/gms/internal/ads/dnb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dnb;->a(Lcom/google/android/gms/internal/ads/dmz;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 166
    :cond_5
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    .line 167
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    .line 172
    throw v0

    .line 169
    :catchall_6
    move-exception v0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    .line 170
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    .line 171
    throw v0
.end method

.method public t()Z
    .locals 4

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->L:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/doy;->C:I

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/doy;->A:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/doy;->A:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 404
    :goto_0
    return v0

    .line 403
    :cond_1
    const/4 v0, 0x0

    .line 404
    goto :goto_0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->K:Z

    return v0
.end method

.method protected y()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method protected final z()V
    .locals 10

    .prologue
    const/16 v5, 0x13

    const/4 v9, -0x1

    const/16 v4, 0x12

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->m:Lcom/google/android/gms/internal/ads/dmz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    if-eqz v0, :cond_4

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dmz;->a()I

    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dmz;->c()Lcom/google/android/gms/internal/ads/zzjg;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgq;->a(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object v0

    throw v0

    .line 28
    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->l:Lcom/google/android/gms/internal/ads/dmz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dmz;->b()Lcom/google/android/gms/internal/ads/dnd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dnc;

    .line 30
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    .line 32
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->o:Lcom/google/android/gms/internal/ads/doz;

    if-nez v0, :cond_6

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->c:Lcom/google/android/gms/internal/ads/dpa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/doy;->a(Lcom/google/android/gms/internal/ads/dpa;Lcom/google/android/gms/internal/ads/dlf;Z)Lcom/google/android/gms/internal/ads/doz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->o:Lcom/google/android/gms/internal/ads/doz;

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->o:Lcom/google/android/gms/internal/ads/doz;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzlj; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_5

    .line 38
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->o:Lcom/google/android/gms/internal/ads/doz;

    if-nez v0, :cond_6

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/zzle;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    const/4 v2, 0x0

    const v3, -0xc34f

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/google/android/gms/internal/ads/zzle;-><init>(Lcom/google/android/gms/internal/ads/dlf;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/doy;->a(Lcom/google/android/gms/internal/ads/zzle;)V

    .line 40
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->o:Lcom/google/android/gms/internal/ads/doz;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/doy;->a(Lcom/google/android/gms/internal/ads/doz;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->o:Lcom/google/android/gms/internal/ads/doz;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/doz;->a:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    .line 44
    sget v2, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_e

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v6

    .line 46
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->p:Z

    .line 48
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    if-lt v0, v4, :cond_8

    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    if-ne v0, v4, :cond_7

    const-string/jumbo v0, "OMX.SEC.avc.dec"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    if-ne v0, v5, :cond_f

    sget-object v0, Lcom/google/android/gms/internal/ads/dsn;->d:Ljava/lang/String;

    const-string/jumbo v2, "SM-G800"

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "OMX.Exynos.avc.dec"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_8
    move v0, v6

    .line 52
    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->q:Z

    .line 54
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v2, 0x18

    if-ge v0, v2, :cond_10

    const-string/jumbo v0, "OMX.Nvidia.h264.decode"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_9
    const-string/jumbo v0, "flounder"

    sget-object v2, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "flounder_lte"

    sget-object v2, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "grouper"

    sget-object v2, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "tilapia"

    sget-object v2, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_a
    move v0, v6

    .line 58
    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->r:Z

    .line 60
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v2, 0x11

    if-gt v0, v2, :cond_11

    const-string/jumbo v0, "OMX.rk.video_decoder.avc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "OMX.allwinner.video.decoder.avc"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_b
    move v0, v6

    .line 62
    :goto_5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->s:Z

    .line 64
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v2, 0x17

    if-gt v0, v2, :cond_c

    const-string/jumbo v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    if-gt v0, v5, :cond_12

    const-string/jumbo v0, "hb2000"

    sget-object v2, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "OMX.amlogic.avc.decoder.awesome"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_d
    move v0, v6

    .line 68
    :goto_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->t:Z

    .line 70
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v2, 0x15

    if-ne v0, v2, :cond_13

    const-string/jumbo v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v6

    .line 71
    :goto_7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->u:Z

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    .line 73
    sget v2, Lcom/google/android/gms/internal/ads/dsn;->a:I

    if-gt v2, v4, :cond_14

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->l:I

    if-ne v0, v6, :cond_14

    const-string/jumbo v0, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v6

    .line 75
    :goto_8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/doy;->v:Z

    .line 76
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 77
    const-string/jumbo v2, "createCodec:"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/String;)V

    .line 78
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    .line 79
    invoke-static {}, Lcom/google/android/gms/internal/ads/dso;->a()V

    .line 80
    const-string/jumbo v0, "configureCodec"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->o:Lcom/google/android/gms/internal/ads/doz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    const/4 v8, 0x0

    invoke-virtual {p0, v0, v2, v3, v8}, Lcom/google/android/gms/internal/ads/doy;->a(Lcom/google/android/gms/internal/ads/doz;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/dlf;Landroid/media/MediaCrypto;)V

    .line 82
    invoke-static {}, Lcom/google/android/gms/internal/ads/dso;->a()V

    .line 83
    const-string/jumbo v0, "startCodec"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/ads/dso;->a()V

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 87
    sub-long v4, v2, v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/doy;->a(Ljava/lang/String;JJ)V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->y:[Ljava/nio/ByteBuffer;

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->z:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    :goto_b
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/doy;->A:J

    .line 95
    iput v9, p0, Lcom/google/android/gms/internal/ads/doy;->B:I

    .line 96
    iput v9, p0, Lcom/google/android/gms/internal/ads/doy;->C:I

    .line 97
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/doy;->M:Z

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/doy;->a:Lcom/google/android/gms/internal/ads/dmt;

    iget v1, v0, Lcom/google/android/gms/internal/ads/dmt;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/dmt;->a:I

    goto/16 :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Lcom/google/android/gms/internal/ads/zzle;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    const v3, -0xc34e

    invoke-direct {v1, v2, v0, v7, v3}, Lcom/google/android/gms/internal/ads/zzle;-><init>(Lcom/google/android/gms/internal/ads/dlf;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/doy;->a(Lcom/google/android/gms/internal/ads/zzle;)V

    goto/16 :goto_1

    :cond_e
    move v0, v7

    .line 45
    goto/16 :goto_2

    :cond_f
    move v0, v7

    .line 51
    goto/16 :goto_3

    :cond_10
    move v0, v7

    .line 57
    goto/16 :goto_4

    :cond_11
    move v0, v7

    .line 61
    goto/16 :goto_5

    :cond_12
    move v0, v7

    .line 67
    goto/16 :goto_6

    :cond_13
    move v0, v7

    .line 70
    goto/16 :goto_7

    :cond_14
    move v0, v7

    .line 74
    goto/16 :goto_8

    .line 77
    :cond_15
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_9

    .line 91
    :catch_1
    move-exception v0

    .line 92
    new-instance v2, Lcom/google/android/gms/internal/ads/zzle;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/doy;->k:Lcom/google/android/gms/internal/ads/dlf;

    invoke-direct {v2, v3, v0, v7, v1}, Lcom/google/android/gms/internal/ads/zzle;-><init>(Lcom/google/android/gms/internal/ads/dlf;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/doy;->a(Lcom/google/android/gms/internal/ads/zzle;)V

    goto :goto_a

    .line 94
    :cond_16
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_b
.end method

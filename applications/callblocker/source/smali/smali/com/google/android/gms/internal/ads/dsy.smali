.class public final Lcom/google/android/gms/internal/ads/dsy;
.super Lcom/google/android/gms/internal/ads/doy;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final c:[I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:F

.field private E:Z

.field private F:I

.field private G:J

.field private H:I

.field b:Lcom/google/android/gms/internal/ads/dsz;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/dtc;

.field private final f:Lcom/google/android/gms/internal/ads/dtd;

.field private final g:J

.field private final h:I

.field private final i:Z

.field private final j:[J

.field private k:[Lcom/google/android/gms/internal/ads/dlf;

.field private l:Lcom/google/android/gms/internal/ads/dta;

.field private m:Landroid/view/Surface;

.field private n:Landroid/view/Surface;

.field private o:I

.field private p:Z

.field private q:J

.field private r:J

.field private s:I

.field private t:I

.field private u:I

.field private v:F

.field private w:I

.field private x:I

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 410
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/dsy;->c:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dpa;JLcom/google/android/gms/internal/ads/cnz;Lcom/google/android/gms/internal/ads/dte;I)V
    .locals 11

    .prologue
    .line 1
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/dsy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dpa;JLcom/google/android/gms/internal/ads/dnb;ZLcom/google/android/gms/internal/ads/cnz;Lcom/google/android/gms/internal/ads/dte;I)V

    .line 2
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dpa;JLcom/google/android/gms/internal/ads/dnb;ZLcom/google/android/gms/internal/ads/cnz;Lcom/google/android/gms/internal/ads/dte;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/dpa;",
            "J",
            "Lcom/google/android/gms/internal/ads/dnb",
            "<",
            "Lcom/google/android/gms/internal/ads/dnc;",
            ">;Z",
            "Lcom/google/android/gms/internal/ads/cnz;",
            "Lcom/google/android/gms/internal/ads/dte;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 3
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/google/android/gms/internal/ads/doy;-><init>(ILcom/google/android/gms/internal/ads/dpa;Lcom/google/android/gms/internal/ads/dnb;Z)V

    .line 4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dsy;->g:J

    .line 5
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->h:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->d:Landroid/content/Context;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/dtc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/dtc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->e:Lcom/google/android/gms/internal/ads/dtc;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/dtd;

    invoke-direct {v0, p7, p8}, Lcom/google/android/gms/internal/ads/dtd;-><init>(Lcom/google/android/gms/internal/ads/cnz;Lcom/google/android/gms/internal/ads/dte;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->f:Lcom/google/android/gms/internal/ads/dtd;

    .line 10
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "foster"

    sget-object v1, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NVIDIA"

    sget-object v1, Lcom/google/android/gms/internal/ads/dsn;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 11
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dsy;->i:Z

    .line 12
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->j:[J

    .line 13
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dsy;->G:J

    .line 14
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dsy;->q:J

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->w:I

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->x:I

    .line 17
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->z:F

    .line 18
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->v:F

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->o:I

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dsy;->D()V

    .line 21
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final D()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 361
    iput v1, p0, Lcom/google/android/gms/internal/ads/dsy;->A:I

    .line 362
    iput v1, p0, Lcom/google/android/gms/internal/ads/dsy;->B:I

    .line 363
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->D:F

    .line 364
    iput v1, p0, Lcom/google/android/gms/internal/ads/dsy;->C:I

    .line 365
    return-void
.end method

.method private final E()V
    .locals 5

    .prologue
    .line 366
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->A:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsy;->w:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->B:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsy;->x:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->C:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsy;->y:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->D:F

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsy;->z:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->f:Lcom/google/android/gms/internal/ads/dtd;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsy;->w:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dsy;->x:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dsy;->y:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/dsy;->z:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dtd;->a(IIIF)V

    .line 368
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->w:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->A:I

    .line 369
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->x:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->B:I

    .line 370
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->y:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->C:I

    .line 371
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->z:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->D:F

    .line 372
    :cond_1
    return-void
.end method

.method private final F()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 373
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->A:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->B:I

    if-eq v0, v1, :cond_1

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->f:Lcom/google/android/gms/internal/ads/dtd;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsy;->w:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dsy;->x:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dsy;->y:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/dsy;->z:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dtd;->a(IIIF)V

    .line 375
    :cond_1
    return-void
.end method

.method private final G()V
    .locals 6

    .prologue
    .line 376
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->s:I

    if-lez v0, :cond_0

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 378
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dsy;->r:J

    sub-long v2, v0, v2

    .line 379
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dsy;->f:Lcom/google/android/gms/internal/ads/dtd;

    iget v5, p0, Lcom/google/android/gms/internal/ads/dsy;->s:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/dtd;->a(IJ)V

    .line 380
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/dsy;->s:I

    .line 381
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dsy;->r:J

    .line 382
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;II)I
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v1, 0x4

    const/4 v0, 0x2

    const/4 v2, -0x1

    .line 387
    if-eq p1, v2, :cond_0

    if-ne p2, v2, :cond_1

    :cond_0
    move v0, v2

    .line 405
    :goto_0
    return v0

    .line 389
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    move v3, v2

    :goto_1
    packed-switch v3, :pswitch_data_0

    move v0, v2

    .line 404
    goto :goto_0

    .line 389
    :sswitch_0
    const-string/jumbo v3, "video/3gpp"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "video/mp4v-es"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "video/avc"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "video/hevc"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :sswitch_5
    const-string/jumbo v3, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    goto :goto_1

    .line 390
    :pswitch_0
    mul-int v1, p1, p2

    move v2, v1

    .line 405
    :goto_2
    mul-int/lit8 v1, v2, 0x3

    mul-int/lit8 v0, v0, 0x2

    div-int v0, v1, v0

    goto :goto_0

    .line 393
    :pswitch_1
    const-string/jumbo v1, "BRAVIA 4K 2015"

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    .line 394
    goto :goto_0

    .line 395
    :cond_3
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/dsn;->a(II)I

    move-result v1

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/dsn;->a(II)I

    move-result v2

    mul-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x4

    shl-int/lit8 v1, v1, 0x4

    move v2, v1

    .line 397
    goto :goto_2

    .line 398
    :pswitch_2
    mul-int v1, p1, p2

    move v2, v1

    .line 400
    goto :goto_2

    .line 401
    :pswitch_3
    mul-int v2, p1, p2

    move v0, v1

    .line 403
    goto :goto_2

    .line 389
    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_0
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_1
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_3
        0x5f50bed9 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private final a(Landroid/media/MediaCodec;IJ)V
    .locals 2

    .prologue
    .line 324
    const-string/jumbo v0, "skipVideoBuffer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 326
    invoke-static {}, Lcom/google/android/gms/internal/ads/dso;->a()V

    .line 327
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->a:Lcom/google/android/gms/internal/ads/dmt;

    iget v1, v0, Lcom/google/android/gms/internal/ads/dmt;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/dmt;->e:I

    .line 328
    return-void
.end method

.method private final a(Landroid/media/MediaCodec;IJJ)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dsy;->E()V

    .line 338
    const-string/jumbo v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1, p2, p5, p6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 340
    invoke-static {}, Lcom/google/android/gms/internal/ads/dso;->a()V

    .line 341
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->a:Lcom/google/android/gms/internal/ads/dmt;

    iget v1, v0, Lcom/google/android/gms/internal/ads/dmt;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/dmt;->d:I

    .line 342
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->t:I

    .line 343
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsy;->v()V

    .line 344
    return-void
.end method

.method private static a(ZLcom/google/android/gms/internal/ads/dlf;Lcom/google/android/gms/internal/ads/dlf;)Z
    .locals 2

    .prologue
    .line 406
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dsy;->d(Lcom/google/android/gms/internal/ads/dlf;)I

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dsy;->d(Lcom/google/android/gms/internal/ads/dlf;)I

    move-result v1

    if-ne v0, v1, :cond_1

    if-nez p0, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/ads/dlf;->g:I

    iget v1, p2, Lcom/google/android/gms/internal/ads/dlf;->g:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/ads/dlf;->h:I

    iget v1, p2, Lcom/google/android/gms/internal/ads/dlf;->h:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 408
    :goto_0
    return v0

    .line 407
    :cond_1
    const/4 v0, 0x0

    .line 408
    goto :goto_0
.end method

.method private final b(Landroid/media/MediaCodec;IJ)V
    .locals 2

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dsy;->E()V

    .line 330
    const-string/jumbo v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 332
    invoke-static {}, Lcom/google/android/gms/internal/ads/dso;->a()V

    .line 333
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->a:Lcom/google/android/gms/internal/ads/dmt;

    iget v1, v0, Lcom/google/android/gms/internal/ads/dmt;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/dmt;->d:I

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->t:I

    .line 335
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsy;->v()V

    .line 336
    return-void
.end method

.method private final b(Z)Z
    .locals 2

    .prologue
    .line 345
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dsy;->E:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->d:Landroid/content/Context;

    .line 346
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dsu;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 347
    :goto_0
    return v0

    .line 346
    :cond_1
    const/4 v0, 0x0

    .line 347
    goto :goto_0
.end method

.method private static c(Lcom/google/android/gms/internal/ads/dlf;)I
    .locals 3

    .prologue
    .line 384
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 385
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->d:I

    .line 386
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dsy;->a(Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method private static c(J)Z
    .locals 2

    .prologue
    .line 383
    const-wide/16 v0, -0x7530

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Lcom/google/android/gms/internal/ads/dlf;)I
    .locals 2

    .prologue
    .line 409
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->j:I

    goto :goto_0
.end method

.method private final w()V
    .locals 4

    .prologue
    .line 348
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dsy;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dsy;->g:J

    add-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dsy;->q:J

    .line 350
    return-void

    .line 349
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method private final x()V
    .locals 3

    .prologue
    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dsy;->p:Z

    .line 352
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dsy;->E:Z

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->A()Landroid/media/MediaCodec;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_0

    .line 355
    new-instance v1, Lcom/google/android/gms/internal/ads/dsz;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/ads/dsz;-><init>(Lcom/google/android/gms/internal/ads/dsy;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/dsx;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dsy;->b:Lcom/google/android/gms/internal/ads/dsz;

    .line 356
    :cond_0
    return-void
.end method


# virtual methods
.method protected final C()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 223
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/doy;->C()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->m:Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    if-ne v0, v1, :cond_0

    .line 226
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dsy;->m:Landroid/view/Surface;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 228
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    .line 235
    :cond_1
    return-void

    .line 229
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    if-eqz v1, :cond_3

    .line 230
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsy;->m:Landroid/view/Surface;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    if-ne v1, v2, :cond_2

    .line 231
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dsy;->m:Landroid/view/Surface;

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 233
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    .line 234
    :cond_3
    throw v0
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/dpa;Lcom/google/android/gms/internal/ads/dlf;)I
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 22
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    .line 23
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/dsg;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return v1

    .line 26
    :cond_0
    iget-object v5, p2, Lcom/google/android/gms/internal/ads/dlf;->f:Lcom/google/android/gms/internal/ads/dmw;

    .line 27
    if-eqz v5, :cond_1

    move v0, v1

    move v2, v1

    .line 28
    :goto_1
    iget v6, v5, Lcom/google/android/gms/internal/ads/dmw;->a:I

    if-ge v0, v6, :cond_2

    .line 29
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/dmw;->a(I)Lcom/google/android/gms/internal/ads/dmw$a;

    move-result-object v6

    iget-boolean v6, v6, Lcom/google/android/gms/internal/ads/dmw$a;->a:Z

    or-int/2addr v2, v6

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 31
    :cond_2
    invoke-interface {p1, v4, v2}, Lcom/google/android/gms/internal/ads/dpa;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/doz;

    move-result-object v4

    .line 32
    if-nez v4, :cond_3

    move v1, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/dlf;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/doz;->b(Ljava/lang/String;)Z

    move-result v0

    .line 35
    if-eqz v0, :cond_4

    iget v2, p2, Lcom/google/android/gms/internal/ads/dlf;->g:I

    if-lez v2, :cond_4

    iget v2, p2, Lcom/google/android/gms/internal/ads/dlf;->h:I

    if-lez v2, :cond_4

    .line 36
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_6

    .line 37
    iget v0, p2, Lcom/google/android/gms/internal/ads/dlf;->g:I

    iget v2, p2, Lcom/google/android/gms/internal/ads/dlf;->h:I

    iget v3, p2, Lcom/google/android/gms/internal/ads/dlf;->i:F

    float-to-double v6, v3

    invoke-virtual {v4, v0, v2, v6, v7}, Lcom/google/android/gms/internal/ads/doz;->a(IID)Z

    move-result v0

    .line 41
    :cond_4
    :goto_2
    iget-boolean v2, v4, Lcom/google/android/gms/internal/ads/doz;->b:Z

    if-eqz v2, :cond_8

    const/16 v2, 0x8

    .line 42
    :goto_3
    iget-boolean v3, v4, Lcom/google/android/gms/internal/ads/doz;->c:Z

    if-eqz v3, :cond_5

    const/16 v1, 0x10

    .line 43
    :cond_5
    if-eqz v0, :cond_9

    const/4 v0, 0x3

    .line 44
    :goto_4
    or-int/2addr v1, v2

    or-int/2addr v1, v0

    goto :goto_0

    .line 38
    :cond_6
    iget v0, p2, Lcom/google/android/gms/internal/ads/dlf;->g:I

    iget v2, p2, Lcom/google/android/gms/internal/ads/dlf;->h:I

    mul-int/2addr v0, v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/dpb;->b()I

    move-result v2

    if-gt v0, v2, :cond_7

    move v0, v3

    .line 39
    :goto_5
    if-nez v0, :cond_4

    .line 40
    const-string/jumbo v2, "MediaCodecVideoRenderer"

    iget v3, p2, Lcom/google/android/gms/internal/ads/dlf;->g:I

    iget v5, p2, Lcom/google/android/gms/internal/ads/dlf;->h:I

    sget-object v6, Lcom/google/android/gms/internal/ads/dsn;->e:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x38

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "FalseCheck [legacyFrameSize, "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "x"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "] ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v0, v1

    .line 38
    goto :goto_5

    .line 41
    :cond_8
    const/4 v2, 0x4

    goto :goto_3

    .line 43
    :cond_9
    const/4 v0, 0x2

    goto :goto_4
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 106
    if-ne p1, v2, :cond_8

    .line 107
    check-cast p2, Landroid/view/Surface;

    .line 108
    if-nez p2, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    if-eqz v0, :cond_4

    .line 110
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->m:Landroid/view/Surface;

    if-eq v0, p2, :cond_7

    .line 116
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dsy;->m:Landroid/view/Surface;

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->d()I

    move-result v0

    .line 118
    if-eq v0, v2, :cond_1

    if-ne v0, v4, :cond_2

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->A()Landroid/media/MediaCodec;

    move-result-object v1

    .line 120
    sget v2, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_5

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    .line 122
    invoke-virtual {v1, p2}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    .line 126
    :cond_2
    :goto_1
    if-eqz p2, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    if-eq p2, v1, :cond_6

    .line 127
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dsy;->F()V

    .line 128
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dsy;->x()V

    .line 129
    if-ne v0, v4, :cond_3

    .line 130
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dsy;->w()V

    .line 147
    :cond_3
    :goto_2
    return-void

    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->B()Lcom/google/android/gms/internal/ads/doz;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/doz;->d:Z

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dsy;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsy;->d:Landroid/content/Context;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/doz;->d:Z

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dsu;->a(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/dsu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    .line 114
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    goto :goto_0

    .line 124
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->C()V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->z()V

    goto :goto_1

    .line 131
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dsy;->D()V

    .line 132
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dsy;->x()V

    goto :goto_2

    .line 133
    :cond_7
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    if-eq p2, v0, :cond_3

    .line 134
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dsy;->F()V

    .line 136
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dsy;->p:Z

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->f:Lcom/google/android/gms/internal/ads/dtd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsy;->m:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dtd;->a(Landroid/view/Surface;)V

    goto :goto_2

    .line 139
    :cond_8
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    .line 140
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->o:I

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->A()Landroid/media/MediaCodec;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_3

    .line 143
    iget v1, p0, Lcom/google/android/gms/internal/ads/dsy;->o:I

    .line 144
    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    goto :goto_2

    .line 146
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/doy;->a(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method protected final a(JZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/doy;->a(JZ)V

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dsy;->x()V

    .line 62
    iput v2, p0, Lcom/google/android/gms/internal/ads/dsy;->t:I

    .line 63
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->H:I

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->j:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsy;->H:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dsy;->G:J

    .line 65
    iput v2, p0, Lcom/google/android/gms/internal/ads/dsy;->H:I

    .line 66
    :cond_0
    if-eqz p3, :cond_1

    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dsy;->w()V

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dsy;->q:J

    goto :goto_0
.end method

.method protected final a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3

    .prologue
    .line 248
    const-string/jumbo v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "crop-left"

    .line 249
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "crop-top"

    .line 250
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 251
    :goto_0
    if-eqz v1, :cond_3

    .line 252
    const-string/jumbo v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "crop-left"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 253
    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->w:I

    .line 254
    if-eqz v1, :cond_4

    .line 255
    const-string/jumbo v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "crop-top"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 256
    :goto_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->x:I

    .line 257
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->v:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->z:F

    .line 258
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    .line 259
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->u:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->u:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 260
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->w:I

    .line 261
    iget v1, p0, Lcom/google/android/gms/internal/ads/dsy;->x:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/dsy;->w:I

    .line 262
    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->x:I

    .line 263
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsy;->z:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->z:F

    .line 266
    :cond_1
    :goto_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->o:I

    .line 267
    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 268
    return-void

    .line 250
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 253
    :cond_3
    const-string/jumbo v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 256
    :cond_4
    const-string/jumbo v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 265
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->u:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->y:I

    goto :goto_3
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/dmx;)V
    .locals 2

    .prologue
    .line 245
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dsy;->E:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsy;->v()V

    .line 247
    :cond_0
    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/doz;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/dlf;Landroid/media/MediaCrypto;)V
    .locals 20

    .prologue
    .line 149
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/dsy;->k:[Lcom/google/android/gms/internal/ads/dlf;

    .line 150
    move-object/from16 v0, p3

    iget v8, v0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    .line 151
    move-object/from16 v0, p3

    iget v7, v0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    .line 152
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/dsy;->c(Lcom/google/android/gms/internal/ads/dlf;)I

    move-result v6

    .line 153
    array-length v4, v10

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 154
    new-instance v4, Lcom/google/android/gms/internal/ads/dta;

    invoke-direct {v4, v8, v7, v6}, Lcom/google/android/gms/internal/ads/dta;-><init>(III)V

    .line 199
    :goto_0
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dsy;->l:Lcom/google/android/gms/internal/ads/dta;

    .line 200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dsy;->l:Lcom/google/android/gms/internal/ads/dta;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/dsy;->i:Z

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/dsy;->F:I

    .line 201
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/dlf;->b()Landroid/media/MediaFormat;

    move-result-object v7

    .line 202
    const-string/jumbo v8, "max-width"

    iget v9, v4, Lcom/google/android/gms/internal/ads/dta;->a:I

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 203
    const-string/jumbo v8, "max-height"

    iget v9, v4, Lcom/google/android/gms/internal/ads/dta;->b:I

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 204
    iget v8, v4, Lcom/google/android/gms/internal/ads/dta;->c:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 205
    const-string/jumbo v8, "max-input-size"

    iget v4, v4, Lcom/google/android/gms/internal/ads/dta;->c:I

    invoke-virtual {v7, v8, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 206
    :cond_0
    if-eqz v5, :cond_1

    .line 207
    const-string/jumbo v4, "auto-frc"

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 208
    :cond_1
    if-eqz v6, :cond_2

    .line 210
    const-string/jumbo v4, "tunneled-playback"

    const/4 v5, 0x1

    invoke-virtual {v7, v4, v5}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    .line 211
    const-string/jumbo v4, "audio-session-id"

    invoke-virtual {v7, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 214
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dsy;->m:Landroid/view/Surface;

    if-nez v4, :cond_4

    .line 215
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/doz;->d:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/dsy;->b(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    if-nez v4, :cond_3

    .line 217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dsy;->d:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/doz;->d:Z

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/dsu;->a(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/dsu;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    .line 218
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dsy;->m:Landroid/view/Surface;

    .line 219
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dsy;->m:Landroid/view/Surface;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v4, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 220
    sget v4, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/dsy;->E:Z

    if-eqz v4, :cond_5

    .line 221
    new-instance v4, Lcom/google/android/gms/internal/ads/dsz;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1, v5}, Lcom/google/android/gms/internal/ads/dsz;-><init>(Lcom/google/android/gms/internal/ads/dsy;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/dsx;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dsy;->b:Lcom/google/android/gms/internal/ads/dsz;

    .line 222
    :cond_5
    return-void

    .line 155
    :cond_6
    const/4 v5, 0x0

    .line 156
    array-length v11, v10

    const/4 v4, 0x0

    move v9, v4

    :goto_1
    if-ge v9, v11, :cond_9

    aget-object v12, v10, v9

    .line 157
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/doz;->b:Z

    move-object/from16 v0, p3

    invoke-static {v4, v0, v12}, Lcom/google/android/gms/internal/ads/dsy;->a(ZLcom/google/android/gms/internal/ads/dlf;Lcom/google/android/gms/internal/ads/dlf;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 158
    iget v4, v12, Lcom/google/android/gms/internal/ads/dlf;->g:I

    const/4 v13, -0x1

    if-eq v4, v13, :cond_7

    iget v4, v12, Lcom/google/android/gms/internal/ads/dlf;->h:I

    const/4 v13, -0x1

    if-ne v4, v13, :cond_8

    :cond_7
    const/4 v4, 0x1

    :goto_2
    or-int/2addr v4, v5

    .line 159
    iget v5, v12, Lcom/google/android/gms/internal/ads/dlf;->g:I

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 160
    iget v5, v12, Lcom/google/android/gms/internal/ads/dlf;->h:I

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 161
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/dsy;->c(Lcom/google/android/gms/internal/ads/dlf;)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v5

    .line 162
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move v5, v4

    goto :goto_1

    .line 158
    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    .line 163
    :cond_9
    if-eqz v5, :cond_b

    .line 164
    const-string/jumbo v4, "MediaCodecVideoRenderer"

    const/16 v5, 0x42

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    move-object/from16 v0, p3

    iget v5, v0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    if-le v4, v5, :cond_c

    const/4 v4, 0x1

    move v13, v4

    .line 167
    :goto_4
    if-eqz v13, :cond_d

    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    move v12, v4

    .line 168
    :goto_5
    if-eqz v13, :cond_e

    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    .line 169
    :goto_6
    int-to-float v5, v4

    int-to-float v9, v12

    div-float v14, v5, v9

    .line 170
    sget-object v15, Lcom/google/android/gms/internal/ads/dsy;->c:[I

    array-length v0, v15

    move/from16 v16, v0

    const/4 v5, 0x0

    move v11, v5

    :goto_7
    move/from16 v0, v16

    if-ge v11, v0, :cond_16

    aget v5, v15, v11

    .line 171
    int-to-float v9, v5

    mul-float/2addr v9, v14

    float-to-int v9, v9

    .line 172
    if-le v5, v12, :cond_a

    if-gt v9, v4, :cond_f

    .line 173
    :cond_a
    const/4 v4, 0x0

    .line 191
    :goto_8
    if-eqz v4, :cond_b

    .line 192
    iget v5, v4, Landroid/graphics/Point;->x:I

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 193
    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 194
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    .line 195
    invoke-static {v4, v8, v7}, Lcom/google/android/gms/internal/ads/dsy;->a(Ljava/lang/String;II)I

    move-result v4

    .line 196
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 197
    const-string/jumbo v4, "MediaCodecVideoRenderer"

    const/16 v5, 0x39

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Codec max resolution adjusted to: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_b
    new-instance v4, Lcom/google/android/gms/internal/ads/dta;

    invoke-direct {v4, v8, v7, v6}, Lcom/google/android/gms/internal/ads/dta;-><init>(III)V

    goto/16 :goto_0

    .line 166
    :cond_c
    const/4 v4, 0x0

    move v13, v4

    goto :goto_4

    .line 167
    :cond_d
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    move v12, v4

    goto :goto_5

    .line 168
    :cond_e
    move-object/from16 v0, p3

    iget v4, v0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    goto :goto_6

    .line 174
    :cond_f
    sget v10, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v17, 0x15

    move/from16 v0, v17

    if-lt v10, v0, :cond_12

    .line 175
    if-eqz v13, :cond_10

    move v10, v9

    .line 176
    :goto_9
    if-eqz v13, :cond_11

    .line 177
    :goto_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v5}, Lcom/google/android/gms/internal/ads/doz;->a(II)Landroid/graphics/Point;

    move-result-object v5

    .line 178
    move-object/from16 v0, p3

    iget v9, v0, Lcom/google/android/gms/internal/ads/dlf;->i:F

    .line 179
    iget v10, v5, Landroid/graphics/Point;->x:I

    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    float-to-double v0, v9

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/google/android/gms/internal/ads/doz;->a(IID)Z

    move-result v9

    if-eqz v9, :cond_15

    move-object v4, v5

    .line 180
    goto/16 :goto_8

    :cond_10
    move v10, v5

    .line 175
    goto :goto_9

    :cond_11
    move v5, v9

    .line 176
    goto :goto_a

    .line 182
    :cond_12
    const/16 v10, 0x10

    invoke-static {v5, v10}, Lcom/google/android/gms/internal/ads/dsn;->a(II)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    .line 183
    const/16 v10, 0x10

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/dsn;->a(II)I

    move-result v9

    shl-int/lit8 v9, v9, 0x4

    .line 184
    mul-int v10, v5, v9

    invoke-static {}, Lcom/google/android/gms/internal/ads/dpb;->b()I

    move-result v17

    move/from16 v0, v17

    if-gt v10, v0, :cond_15

    .line 185
    new-instance v10, Landroid/graphics/Point;

    if-eqz v13, :cond_13

    move v11, v9

    .line 186
    :goto_b
    if-eqz v13, :cond_14

    move v4, v5

    :goto_c
    invoke-direct {v10, v11, v4}, Landroid/graphics/Point;-><init>(II)V

    move-object v4, v10

    .line 187
    goto/16 :goto_8

    :cond_13
    move v11, v5

    .line 185
    goto :goto_b

    :cond_14
    move v4, v9

    .line 186
    goto :goto_c

    .line 188
    :cond_15
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    goto/16 :goto_7

    .line 189
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_8

    :cond_17
    move v4, v5

    goto/16 :goto_3
.end method

.method protected final a(Ljava/lang/String;JJ)V
    .locals 6

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->f:Lcom/google/android/gms/internal/ads/dtd;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dtd;->a(Ljava/lang/String;JJ)V

    .line 237
    return-void
.end method

.method protected final a(Z)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/doy;->a(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->q()Lcom/google/android/gms/internal/ads/dlk;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlk;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->F:I

    .line 47
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->F:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dsy;->E:Z

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->f:Lcom/google/android/gms/internal/ads/dtd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsy;->a:Lcom/google/android/gms/internal/ads/dmt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dtd;->a(Lcom/google/android/gms/internal/ads/dmt;)V

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->e:Lcom/google/android/gms/internal/ads/dtc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dtc;->a()V

    .line 50
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a([Lcom/google/android/gms/internal/ads/dlf;J)V
    .locals 6

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dsy;->k:[Lcom/google/android/gms/internal/ads/dlf;

    .line 52
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dsy;->G:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 53
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/dsy;->G:J

    .line 58
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/doy;->a([Lcom/google/android/gms/internal/ads/dlf;J)V

    .line 59
    return-void

    .line 54
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->H:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsy;->j:[J

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 55
    const-string/jumbo v0, "MediaCodecVideoRenderer"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsy;->j:[J

    iget v2, p0, Lcom/google/android/gms/internal/ads/dsy;->H:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    const/16 v1, 0x41

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Too many stream changes, so dropping offset: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->j:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/dsy;->H:I

    add-int/lit8 v1, v1, -0x1

    aput-wide p2, v0, v1

    goto :goto_0

    .line 56
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dsy;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->H:I

    goto :goto_1
.end method

.method protected final a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 11

    .prologue
    .line 270
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/dsy;->H:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsy;->j:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    cmp-long v2, p9, v2

    if-ltz v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsy;->j:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dsy;->G:J

    .line 272
    iget v2, p0, Lcom/google/android/gms/internal/ads/dsy;->H:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dsy;->H:I

    .line 273
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsy;->j:[J

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dsy;->j:[J

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/gms/internal/ads/dsy;->H:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 274
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dsy;->G:J

    sub-long v6, p9, v2

    .line 275
    if-eqz p11, :cond_1

    .line 276
    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-direct {p0, v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/dsy;->a(Landroid/media/MediaCodec;IJ)V

    .line 277
    const/4 v2, 0x1

    .line 323
    :goto_1
    return v2

    .line 278
    :cond_1
    sub-long v2, p9, p1

    .line 279
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dsy;->m:Landroid/view/Surface;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    if-ne v4, v5, :cond_3

    .line 280
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/dsy;->c(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-direct {p0, v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/dsy;->a(Landroid/media/MediaCodec;IJ)V

    .line 282
    const/4 v2, 0x1

    goto :goto_1

    .line 283
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 284
    :cond_3
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/dsy;->p:Z

    if-nez v4, :cond_5

    .line 285
    sget v2, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4

    .line 286
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    move-object v3, p0

    move-object/from16 v4, p5

    move/from16 v5, p7

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/dsy;->a(Landroid/media/MediaCodec;IJJ)V

    .line 288
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    .line 287
    :cond_4
    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-direct {p0, v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/dsy;->b(Landroid/media/MediaCodec;IJ)V

    goto :goto_2

    .line 289
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->d()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    .line 290
    const/4 v2, 0x0

    goto :goto_1

    .line 291
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    sub-long/2addr v4, p3

    .line 292
    sub-long/2addr v2, v4

    .line 293
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 294
    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    add-long/2addr v2, v4

    .line 295
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/dsy;->e:Lcom/google/android/gms/internal/ads/dtc;

    move-wide/from16 v0, p9

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dtc;->a(JJ)J

    move-result-wide v8

    .line 296
    sub-long v2, v8, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 298
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/dsy;->c(J)Z

    move-result v4

    .line 299
    if-eqz v4, :cond_8

    .line 301
    const-string/jumbo v2, "dropVideoBuffer"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/String;)V

    .line 302
    const/4 v2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 303
    invoke-static {}, Lcom/google/android/gms/internal/ads/dso;->a()V

    .line 304
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsy;->a:Lcom/google/android/gms/internal/ads/dmt;

    iget v3, v2, Lcom/google/android/gms/internal/ads/dmt;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/ads/dmt;->f:I

    .line 305
    iget v2, p0, Lcom/google/android/gms/internal/ads/dsy;->s:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dsy;->s:I

    .line 306
    iget v2, p0, Lcom/google/android/gms/internal/ads/dsy;->t:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dsy;->t:I

    .line 307
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsy;->a:Lcom/google/android/gms/internal/ads/dmt;

    iget v3, p0, Lcom/google/android/gms/internal/ads/dsy;->t:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dsy;->a:Lcom/google/android/gms/internal/ads/dmt;

    iget v4, v4, Lcom/google/android/gms/internal/ads/dmt;->g:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/google/android/gms/internal/ads/dmt;->g:I

    .line 308
    iget v2, p0, Lcom/google/android/gms/internal/ads/dsy;->s:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dsy;->h:I

    if-ne v2, v3, :cond_7

    .line 309
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dsy;->G()V

    .line 310
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 311
    :cond_8
    sget v4, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_9

    .line 312
    const-wide/32 v4, 0xc350

    cmp-long v2, v2, v4

    if-gez v2, :cond_b

    move-object v3, p0

    move-object/from16 v4, p5

    move/from16 v5, p7

    .line 313
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/dsy;->a(Landroid/media/MediaCodec;IJJ)V

    .line 314
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 315
    :cond_9
    const-wide/16 v4, 0x7530

    cmp-long v4, v2, v4

    if-gez v4, :cond_b

    .line 316
    const-wide/16 v4, 0x2af8

    cmp-long v4, v2, v4

    if-lez v4, :cond_a

    .line 317
    const-wide/16 v4, 0x2710

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    :try_start_0
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_a
    :goto_3
    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-direct {p0, v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/dsy;->b(Landroid/media/MediaCodec;IJ)V

    .line 322
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 320
    :catch_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    .line 323
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method protected final a(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/dlf;Lcom/google/android/gms/internal/ads/dlf;)Z
    .locals 2

    .prologue
    .line 269
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/dsy;->a(ZLcom/google/android/gms/internal/ads/dlf;Lcom/google/android/gms/internal/ads/dlf;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p4, Lcom/google/android/gms/internal/ads/dlf;->g:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsy;->l:Lcom/google/android/gms/internal/ads/dta;

    iget v1, v1, Lcom/google/android/gms/internal/ads/dta;->a:I

    if-gt v0, v1, :cond_0

    iget v0, p4, Lcom/google/android/gms/internal/ads/dlf;->h:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsy;->l:Lcom/google/android/gms/internal/ads/dta;

    iget v1, v1, Lcom/google/android/gms/internal/ads/dta;->b:I

    if-gt v0, v1, :cond_0

    iget v0, p4, Lcom/google/android/gms/internal/ads/dlf;->d:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsy;->l:Lcom/google/android/gms/internal/ads/dta;

    iget v1, v1, Lcom/google/android/gms/internal/ads/dta;->c:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/doz;)Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->m:Landroid/view/Surface;

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/doz;->d:Z

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dsy;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b(Lcom/google/android/gms/internal/ads/dlf;)V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/doy;->b(Lcom/google/android/gms/internal/ads/dlf;)V

    .line 239
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->f:Lcom/google/android/gms/internal/ads/dtd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dtd;->a(Lcom/google/android/gms/internal/ads/dlf;)V

    .line 241
    iget v0, p1, Lcom/google/android/gms/internal/ads/dlf;->k:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 242
    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->v:F

    .line 243
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dsy;->d(Lcom/google/android/gms/internal/ads/dlf;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->u:I

    .line 244
    return-void

    .line 241
    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/dlf;->k:F

    goto :goto_0
.end method

.method protected final n()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/doy;->n()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->s:I

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dsy;->r:J

    .line 83
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dsy;->q:J

    .line 84
    return-void
.end method

.method protected final o()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dsy;->G()V

    .line 86
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/doy;->o()V

    .line 87
    return-void
.end method

.method protected final p()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    .line 88
    iput v1, p0, Lcom/google/android/gms/internal/ads/dsy;->w:I

    .line 89
    iput v1, p0, Lcom/google/android/gms/internal/ads/dsy;->x:I

    .line 90
    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->z:F

    .line 91
    iput v0, p0, Lcom/google/android/gms/internal/ads/dsy;->v:F

    .line 92
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dsy;->G:J

    .line 93
    iput v2, p0, Lcom/google/android/gms/internal/ads/dsy;->H:I

    .line 94
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dsy;->D()V

    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dsy;->x()V

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->e:Lcom/google/android/gms/internal/ads/dtc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dtc;->b()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->b:Lcom/google/android/gms/internal/ads/dsz;

    .line 98
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/dsy;->E:Z

    .line 99
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/doy;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->a:Lcom/google/android/gms/internal/ads/dmt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmt;->a()V

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->f:Lcom/google/android/gms/internal/ads/dtd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsy;->a:Lcom/google/android/gms/internal/ads/dmt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dtd;->b(Lcom/google/android/gms/internal/ads/dmt;)V

    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsy;->a:Lcom/google/android/gms/internal/ads/dmt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dmt;->a()V

    .line 104
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsy;->f:Lcom/google/android/gms/internal/ads/dtd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsy;->a:Lcom/google/android/gms/internal/ads/dmt;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dtd;->b(Lcom/google/android/gms/internal/ads/dmt;)V

    .line 105
    throw v0
.end method

.method public final t()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 70
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/doy;->t()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dsy;->p:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsy;->m:Landroid/view/Surface;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dsy;->n:Landroid/view/Surface;

    if-eq v2, v3, :cond_1

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/doy;->A()Landroid/media/MediaCodec;

    move-result-object v2

    if-nez v2, :cond_3

    .line 72
    :cond_1
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/dsy;->q:J

    .line 79
    :cond_2
    :goto_0
    return v0

    .line 74
    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dsy;->q:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    move v0, v1

    .line 75
    goto :goto_0

    .line 76
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dsy;->q:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 78
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/dsy;->q:J

    move v0, v1

    .line 79
    goto :goto_0
.end method

.method final v()V
    .locals 2

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dsy;->p:Z

    if-nez v0, :cond_0

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dsy;->p:Z

    .line 359
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dsy;->f:Lcom/google/android/gms/internal/ads/dtd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dsy;->m:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dtd;->a(Landroid/view/Surface;)V

    .line 360
    :cond_0
    return-void
.end method

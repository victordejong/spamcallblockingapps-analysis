.class public final Lcom/google/android/gms/internal/ads/edo;
.super Lcom/google/android/gms/internal/ads/dzq;
.source "SourceFile"


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

.field b:Lcom/google/android/gms/internal/ads/edp;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/eds;

.field private final f:Lcom/google/android/gms/internal/ads/edt;

.field private final g:J

.field private final h:I

.field private final i:Z

.field private final j:[J

.field private k:[Lcom/google/android/gms/internal/ads/zzht;

.field private l:Lcom/google/android/gms/internal/ads/edq;

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

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 410
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/edo;->c:[I

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

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dzs;JLandroid/os/Handler;Lcom/google/android/gms/internal/ads/edu;I)V
    .locals 10

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p5

    move-object/from16 v8, p6

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/edo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dzs;JLcom/google/android/gms/internal/ads/dxq;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/edu;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dzs;JLcom/google/android/gms/internal/ads/dxq;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/edu;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/dzs;",
            "J",
            "Lcom/google/android/gms/internal/ads/dxq<",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/edu;",
            "I)V"
        }
    .end annotation

    const/4 p3, 0x2

    const/4 p4, 0x0

    const/4 p5, 0x0

    .line 3
    invoke-direct {p0, p3, p2, p4, p5}, Lcom/google/android/gms/internal/ads/dzq;-><init>(ILcom/google/android/gms/internal/ads/dzs;Lcom/google/android/gms/internal/ads/dxq;Z)V

    const-wide/16 p2, 0x0

    .line 4
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/edo;->g:J

    const/4 p2, -0x1

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/edo;->h:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/edo;->d:Landroid/content/Context;

    .line 7
    new-instance p3, Lcom/google/android/gms/internal/ads/eds;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/eds;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/edo;->e:Lcom/google/android/gms/internal/ads/eds;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/edt;

    invoke-direct {p1, p7, p8}, Lcom/google/android/gms/internal/ads/edt;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/edu;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/edo;->f:Lcom/google/android/gms/internal/ads/edt;

    .line 10
    sget p1, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/4 p3, 0x1

    const/16 p4, 0x16

    if-gt p1, p4, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/ede;->b:Ljava/lang/String;

    const-string p4, "foster"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/ede;->c:Ljava/lang/String;

    const-string p4, "NVIDIA"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p5, 0x1

    .line 11
    :cond_0
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/edo;->i:Z

    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/edo;->j:[J

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/edo;->G:J

    .line 14
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/edo;->q:J

    .line 15
    iput p2, p0, Lcom/google/android/gms/internal/ads/edo;->w:I

    .line 16
    iput p2, p0, Lcom/google/android/gms/internal/ads/edo;->x:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 17
    iput p1, p0, Lcom/google/android/gms/internal/ads/edo;->z:F

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/ads/edo;->v:F

    .line 19
    iput p3, p0, Lcom/google/android/gms/internal/ads/edo;->o:I

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/edo;->y()V

    return-void
.end method

.method private final G()V
    .locals 5

    .line 373
    iget v0, p0, Lcom/google/android/gms/internal/ads/edo;->A:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/edo;->B:I

    if-eq v0, v1, :cond_1

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edo;->f:Lcom/google/android/gms/internal/ads/edt;

    iget v1, p0, Lcom/google/android/gms/internal/ads/edo;->w:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/edo;->x:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/edo;->y:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/edo;->z:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/edt;->a(IIIF)V

    :cond_1
    return-void
.end method

.method private final H()V
    .locals 6

    .line 376
    iget v0, p0, Lcom/google/android/gms/internal/ads/edo;->s:I

    if-lez v0, :cond_0

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 378
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/edo;->r:J

    sub-long v2, v0, v2

    .line 379
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/edo;->f:Lcom/google/android/gms/internal/ads/edt;

    iget v5, p0, Lcom/google/android/gms/internal/ads/edo;->s:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/edt;->a(IJ)V

    const/4 v2, 0x0

    .line 380
    iput v2, p0, Lcom/google/android/gms/internal/ads/edo;->s:I

    .line 381
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/edo;->r:J

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;II)I
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    if-ne p2, v0, :cond_0

    goto/16 :goto_4

    .line 389
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 p0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "video/avc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "video/mp4v-es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "video/hevc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "video/3gpp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v0

    .line 393
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/ads/ede;->d:Ljava/lang/String;

    const-string v1, "BRAVIA 4K 2015"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/16 p0, 0x10

    .line 395
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/ede;->a(II)I

    move-result p1

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/ede;->a(II)I

    move-result p0

    mul-int p1, p1, p0

    shl-int/lit8 p0, p1, 0x4

    shl-int/lit8 p1, p0, 0x4

    goto :goto_2

    :pswitch_1
    mul-int p1, p1, p2

    goto :goto_3

    :pswitch_2
    mul-int p1, p1, p2

    :goto_2
    const/4 v3, 0x2

    :goto_3
    mul-int/lit8 p1, p1, 0x3

    mul-int/lit8 v3, v3, 0x2

    .line 405
    div-int/2addr p1, v3

    return p1

    :cond_8
    :goto_4
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final a(Landroid/media/MediaCodec;I)V
    .locals 1

    const-string v0, "skipVideoBuffer"

    .line 324
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/edf;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 326
    invoke-static {}, Lcom/google/android/gms/internal/ads/edf;->a()V

    .line 327
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/edo;->a:Lcom/google/android/gms/internal/ads/dxk;

    iget p2, p1, Lcom/google/android/gms/internal/ads/dxk;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/dxk;->e:I

    return-void
.end method

.method private final a(Landroid/media/MediaCodec;IJ)V
    .locals 1

    .line 337
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/edo;->z()V

    const-string v0, "releaseOutputBuffer"

    .line 338
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/edf;->a(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 340
    invoke-static {}, Lcom/google/android/gms/internal/ads/edf;->a()V

    .line 341
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/edo;->a:Lcom/google/android/gms/internal/ads/dxk;

    iget p2, p1, Lcom/google/android/gms/internal/ads/dxk;->d:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/dxk;->d:I

    const/4 p1, 0x0

    .line 342
    iput p1, p0, Lcom/google/android/gms/internal/ads/edo;->t:I

    .line 343
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/edo;->v()V

    return-void
.end method

.method private final b(Landroid/media/MediaCodec;I)V
    .locals 1

    .line 329
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/edo;->z()V

    const-string v0, "releaseOutputBuffer"

    .line 330
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/edf;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 331
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 332
    invoke-static {}, Lcom/google/android/gms/internal/ads/edf;->a()V

    .line 333
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/edo;->a:Lcom/google/android/gms/internal/ads/dxk;

    iget p2, p1, Lcom/google/android/gms/internal/ads/dxk;->d:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/google/android/gms/internal/ads/dxk;->d:I

    const/4 p1, 0x0

    .line 334
    iput p1, p0, Lcom/google/android/gms/internal/ads/edo;->t:I

    .line 335
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/edo;->v()V

    return-void
.end method

.method private final b(Z)Z
    .locals 2

    .line 345
    sget v0, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/edo;->E:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/edo;->d:Landroid/content/Context;

    .line 346
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqa;->zzc(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static b(ZLcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zzht;)Z
    .locals 2

    .line 406
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzht;->zzaho:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzht;->zzaho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/edo;->d(Lcom/google/android/gms/internal/ads/zzht;)I

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/edo;->d(Lcom/google/android/gms/internal/ads/zzht;)I

    move-result v1

    if-ne v0, v1, :cond_1

    if-nez p0, :cond_0

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzht;->width:I

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzht;->width:I

    if-ne p0, v0, :cond_1

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzht;->height:I

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzht;->height:I

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Lcom/google/android/gms/internal/ads/zzht;)I
    .locals 2

    .line 384
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzahp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 385
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzahp:I

    return p0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzaho:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzht;->width:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzht;->height:I

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/edo;->a(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static c(J)Z
    .locals 3

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static d(Lcom/google/android/gms/internal/ads/zzht;)I
    .locals 2

    .line 409
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzaht:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzht;->zzaht:I

    return p0
.end method

.method private final w()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 349
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/edo;->q:J

    return-void
.end method

.method private final x()V
    .locals 3

    const/4 v0, 0x0

    .line 351
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/edo;->p:Z

    .line 352
    sget v0, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/edo;->E:Z

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dzq;->C()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    new-instance v1, Lcom/google/android/gms/internal/ads/edp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/ads/edp;-><init>(Lcom/google/android/gms/internal/ads/edo;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/edn;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/edo;->b:Lcom/google/android/gms/internal/ads/edp;

    :cond_0
    return-void
.end method

.method private final y()V
    .locals 2

    const/4 v0, -0x1

    .line 361
    iput v0, p0, Lcom/google/android/gms/internal/ads/edo;->A:I

    .line 362
    iput v0, p0, Lcom/google/android/gms/internal/ads/edo;->B:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 363
    iput v1, p0, Lcom/google/android/gms/internal/ads/edo;->D:F

    .line 364
    iput v0, p0, Lcom/google/android/gms/internal/ads/edo;->C:I

    return-void
.end method

.method private final z()V
    .locals 5

    .line 366
    iget v0, p0, Lcom/google/android/gms/internal/ads/edo;->A:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/edo;->w:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/edo;->B:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/edo;->x:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/edo;->C:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/edo;->y:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/edo;->D:F

    iget v2, p0, Lcom/google/android/gms/internal/ads/edo;->z:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edo;->f:Lcom/google/android/gms/internal/ads/edt;

    iget v2, p0, Lcom/google/android/gms/internal/ads/edo;->x:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/edo;->y:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/edo;->z:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/edt;->a(IIIF)V

    .line 368
    iget v0, p0, Lcom/google/android/gms/internal/ads/edo;->w:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/edo;->A:I

    .line 369
    iget v0, p0, Lcom/google/android/gms/internal/ads/edo;->x:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/edo;->B:I

    .line 370
    iget v0, p0, Lcom/google/android/gms/internal/ads/edo;->y:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/edo;->C:I

    .line 371
    iget v0, p0, Lcom/google/android/gms/internal/ads/edo;->z:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/edo;->D:F

    :cond_1
    return-void
.end method


# virtual methods
.method protected final E()V
    .locals 4

    const/4 v0, 0x0

    .line 223
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/dzq;->E()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/edo;->n:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 225
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/edo;->m:Landroid/view/Surface;

    if-ne v2, v1, :cond_0

    .line 226
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/edo;->m:Landroid/view/Surface;

    .line 227
    :cond_0
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 228
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/edo;->n:Landroid/view/Surface;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 229
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/edo;->n:Landroid/view/Surface;

    if-eqz v2, :cond_3

    .line 230
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/edo;->m:Landroid/view/Surface;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/edo;->n:Landroid/view/Surface;

    if-ne v2, v3, :cond_2

    .line 231
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/edo;->m:Landroid/view/Surface;

    .line 232
    :cond_2
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 233
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/edo;->n:Landroid/view/Surface;

    .line 234
    :cond_3
    throw v1
.end method

.method protected final F()V
    .locals 2

    .line 245
    sget v0, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/edo;->E:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/edo;->v()V

    :cond_0
    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/dzs;Lcom/google/android/gms/internal/ads/zzht;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzmd;
        }
    .end annotation

    .line 22
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzht;->zzaho:Ljava/lang/String;

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ecu;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 26
    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzht;->zzahr:Lcom/google/android/gms/internal/ads/zzjo;

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 28
    :goto_0
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzjo;->zzaot:I

    if-ge v3, v5, :cond_2

    .line 29
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzjo;->zzaf(I)Lcom/google/android/gms/internal/ads/zzjo$zza;

    move-result-object v5

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzjo$zza;->zzaox:Z

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 31
    :cond_2
    invoke-interface {p1, v0, v4}, Lcom/google/android/gms/internal/ads/dzs;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/dzr;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    return v0

    .line 34
    :cond_3
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzht;->zzahl:Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 1026
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dzr;->e:Ljava/lang/String;

    if-nez v3, :cond_4

    goto/16 :goto_a

    :cond_4
    if-eqz v1, :cond_15

    .line 1030
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "avc1"

    .line 1031
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "avc3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_6

    :cond_5
    const-string v4, "hev1"

    .line 1033
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "hvc1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_5

    :cond_6
    const-string v4, "vp9"

    .line 1035
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v3, "video/x-vnd.on2.vp9"

    goto/16 :goto_7

    :cond_7
    const-string v4, "vp8"

    .line 1037
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v3, "video/x-vnd.on2.vp8"

    goto/16 :goto_7

    :cond_8
    const-string v4, "mp4a"

    .line 1039
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v3, "audio/mp4a-latm"

    goto/16 :goto_7

    :cond_9
    const-string v4, "ac-3"

    .line 1041
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "dac3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_4

    :cond_a
    const-string v4, "ec-3"

    .line 1043
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "dec3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_3

    :cond_b
    const-string v4, "dtsc"

    .line 1045
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "dtse"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_2

    :cond_c
    const-string v4, "dtsh"

    .line 1047
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "dtsl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_1

    :cond_d
    const-string v4, "opus"

    .line 1049
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v3, "audio/opus"

    goto :goto_7

    :cond_e
    const-string v4, "vorbis"

    .line 1051
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "audio/vorbis"

    goto :goto_7

    :cond_f
    :goto_1
    const-string v3, "audio/vnd.dts.hd"

    goto :goto_7

    :cond_10
    :goto_2
    const-string v3, "audio/vnd.dts"

    goto :goto_7

    :cond_11
    :goto_3
    const-string v3, "audio/eac3"

    goto :goto_7

    :cond_12
    :goto_4
    const-string v3, "audio/ac3"

    goto :goto_7

    :cond_13
    :goto_5
    const-string v3, "video/hevc"

    goto :goto_7

    :cond_14
    :goto_6
    const-string v3, "video/avc"

    goto :goto_7

    :cond_15
    const/4 v3, 0x0

    :goto_7
    if-nez v3, :cond_16

    goto/16 :goto_a

    .line 1057
    :cond_16
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/dzr;->e:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, ", "

    if-nez v4, :cond_17

    .line 1058
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "codec.mime "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/dzr;->a(Ljava/lang/String;)V

    :goto_8
    const/4 v1, 0x0

    goto :goto_b

    .line 1060
    :cond_17
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dzt;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    if-nez v4, :cond_18

    goto :goto_a

    .line 1063
    :cond_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dzr;->a()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v7, :cond_1a

    aget-object v9, v6, v8

    .line 1064
    iget v10, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iget-object v11, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_19

    iget v9, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    iget-object v10, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    .line 1065
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lt v9, v10, :cond_19

    goto :goto_a

    :cond_19
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 1068
    :cond_1a
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "codec.profileLevel, "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/dzr;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_1b
    :goto_a
    const/4 v1, 0x1

    :goto_b
    if-eqz v1, :cond_1f

    .line 35
    iget v3, p2, Lcom/google/android/gms/internal/ads/zzht;->width:I

    if-lez v3, :cond_1f

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzht;->height:I

    if-lez v3, :cond_1f

    .line 36
    sget v1, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1c

    .line 37
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzht;->width:I

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzht;->height:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzht;->zzahs:F

    float-to-double v3, p2

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/dzr;->a(IID)Z

    move-result v1

    goto :goto_d

    .line 38
    :cond_1c
    iget v1, p2, Lcom/google/android/gms/internal/ads/zzht;->width:I

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzht;->height:I

    mul-int v1, v1, v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/dzt;->a()I

    move-result v3

    if-gt v1, v3, :cond_1d

    goto :goto_c

    :cond_1d
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_1e

    .line 40
    iget v1, p2, Lcom/google/android/gms/internal/ads/zzht;->width:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzht;->height:I

    sget-object v3, Lcom/google/android/gms/internal/ads/ede;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x38

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "FalseCheck [legacyFrameSize, "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] ["

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    move v1, v0

    .line 41
    :cond_1f
    :goto_d
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/dzr;->b:Z

    if-eqz p2, :cond_20

    const/16 p2, 0x8

    goto :goto_e

    :cond_20
    const/4 p2, 0x4

    .line 42
    :goto_e
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/dzr;->c:Z

    if-eqz p1, :cond_21

    const/16 v2, 0x10

    :cond_21
    if-eqz v1, :cond_22

    const/4 p1, 0x3

    goto :goto_f

    :cond_22
    const/4 p1, 0x2

    :goto_f
    or-int/2addr p2, v2

    or-int/2addr p1, p2

    return p1
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 107
    check-cast p2, Landroid/view/Surface;

    if-nez p2, :cond_1

    .line 109
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/edo;->n:Landroid/view/Surface;

    if-eqz p1, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dzq;->D()Lcom/google/android/gms/internal/ads/dzr;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 112
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/dzr;->d:Z

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/edo;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/edo;->d:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/dzr;->d:Z

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzqa;->zzc(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzqa;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/edo;->n:Landroid/view/Surface;

    .line 115
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/edo;->m:Landroid/view/Surface;

    if-eq p1, p2, :cond_7

    .line 116
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/edo;->m:Landroid/view/Surface;

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dvi;->d()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_4

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dzq;->C()Landroid/media/MediaCodec;

    move-result-object v0

    .line 120
    sget v2, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 122
    invoke-virtual {v0, p2}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dzq;->E()V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dzq;->B()V

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edo;->n:Landroid/view/Surface;

    if-eq p2, v0, :cond_5

    .line 127
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/edo;->G()V

    .line 128
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/edo;->x()V

    if-ne p1, v1, :cond_6

    .line 130
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/edo;->w()V

    return-void

    .line 131
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/edo;->y()V

    .line 132
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/edo;->x()V

    :cond_6
    return-void

    :cond_7
    if-eqz p2, :cond_8

    .line 133
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/edo;->n:Landroid/view/Surface;

    if-eq p2, p1, :cond_8

    .line 134
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/edo;->G()V

    .line 136
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/edo;->p:Z

    if-eqz p1, :cond_8

    .line 137
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/edo;->f:Lcom/google/android/gms/internal/ads/edt;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/edo;->m:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/edt;->a(Landroid/view/Surface;)V

    :cond_8
    return-void

    :cond_9
    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    .line 140
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/edo;->o:I

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dzq;->C()Landroid/media/MediaCodec;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 143
    iget p2, p0, Lcom/google/android/gms/internal/ads/edo;->o:I

    .line 144
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    :cond_a
    return-void

    .line 146
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dzq;->a(ILjava/lang/Object;)V

    return-void
.end method

.method protected final a(JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dzq;->a(JZ)V

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/edo;->x()V

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/google/android/gms/internal/ads/edo;->t:I

    .line 63
    iget p2, p0, Lcom/google/android/gms/internal/ads/edo;->H:I

    if-eqz p2, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edo;->j:[J

    add-int/lit8 p2, p2, -0x1

    aget-wide v1, v0, p2

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/edo;->G:J

    .line 65
    iput p1, p0, Lcom/google/android/gms/internal/ads/edo;->H:I

    :cond_0
    if-eqz p3, :cond_1

    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/edo;->w()V

    return-void

    :cond_1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 68
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/edo;->q:J

    return-void
.end method

.method protected final a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 6

    const-string v0, "crop-right"

    .line 248
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_1

    :cond_1
    const-string v0, "width"

    .line 253
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/edo;->w:I

    if-eqz v1, :cond_2

    .line 255
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v5

    goto :goto_2

    :cond_2
    const-string v0, "height"

    .line 256
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/edo;->x:I

    .line 257
    iget p2, p0, Lcom/google/android/gms/internal/ads/edo;->v:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/edo;->z:F

    .line 258
    sget p2, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_4

    .line 259
    iget p2, p0, Lcom/google/android/gms/internal/ads/edo;->u:I

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_3

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_5

    .line 260
    :cond_3
    iget p2, p0, Lcom/google/android/gms/internal/ads/edo;->w:I

    .line 261
    iget v0, p0, Lcom/google/android/gms/internal/ads/edo;->x:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/edo;->w:I

    .line 262
    iput p2, p0, Lcom/google/android/gms/internal/ads/edo;->x:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 263
    iget v0, p0, Lcom/google/android/gms/internal/ads/edo;->z:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/google/android/gms/internal/ads/edo;->z:F

    goto :goto_3

    .line 265
    :cond_4
    iget p2, p0, Lcom/google/android/gms/internal/ads/edo;->u:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/edo;->y:I

    .line 266
    :cond_5
    :goto_3
    iget p2, p0, Lcom/google/android/gms/internal/ads/edo;->o:I

    .line 267
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/dzr;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzht;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzmd;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 149
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/edo;->k:[Lcom/google/android/gms/internal/ads/zzht;

    .line 150
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzht;->width:I

    .line 151
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzht;->height:I

    .line 152
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/edo;->c(Lcom/google/android/gms/internal/ads/zzht;)I

    move-result v7

    .line 153
    array-length v8, v4

    const/4 v9, -0x1

    const/4 v11, 0x1

    if-ne v8, v11, :cond_0

    .line 154
    new-instance v4, Lcom/google/android/gms/internal/ads/edq;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/edq;-><init>(III)V

    goto/16 :goto_f

    .line 156
    :cond_0
    array-length v8, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v13, v8, :cond_4

    aget-object v15, v4, v13

    .line 157
    iget-boolean v10, v1, Lcom/google/android/gms/internal/ads/dzr;->b:Z

    invoke-static {v10, v3, v15}, Lcom/google/android/gms/internal/ads/edo;->b(ZLcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zzht;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 158
    iget v10, v15, Lcom/google/android/gms/internal/ads/zzht;->width:I

    if-eq v10, v9, :cond_2

    iget v10, v15, Lcom/google/android/gms/internal/ads/zzht;->height:I

    if-ne v10, v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v10, 0x1

    :goto_2
    or-int/2addr v14, v10

    .line 159
    iget v10, v15, Lcom/google/android/gms/internal/ads/zzht;->width:I

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 160
    iget v10, v15, Lcom/google/android/gms/internal/ads/zzht;->height:I

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 161
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/edo;->c(Lcom/google/android/gms/internal/ads/zzht;)I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_4
    if-eqz v14, :cond_12

    const/16 v4, 0x42

    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "MediaCodecVideoRenderer"

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget v8, v3, Lcom/google/android/gms/internal/ads/zzht;->height:I

    iget v13, v3, Lcom/google/android/gms/internal/ads/zzht;->width:I

    if-le v8, v13, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_6

    .line 167
    iget v13, v3, Lcom/google/android/gms/internal/ads/zzht;->height:I

    goto :goto_4

    :cond_6
    iget v13, v3, Lcom/google/android/gms/internal/ads/zzht;->width:I

    :goto_4
    if-eqz v8, :cond_7

    .line 168
    iget v14, v3, Lcom/google/android/gms/internal/ads/zzht;->width:I

    goto :goto_5

    :cond_7
    iget v14, v3, Lcom/google/android/gms/internal/ads/zzht;->height:I

    :goto_5
    int-to-float v15, v14

    int-to-float v11, v13

    div-float/2addr v15, v11

    .line 170
    sget-object v11, Lcom/google/android/gms/internal/ads/edo;->c:[I

    array-length v12, v11

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v12, :cond_11

    move/from16 v16, v12

    aget v12, v11, v9

    move-object/from16 v17, v11

    int-to-float v11, v12

    mul-float v11, v11, v15

    float-to-int v11, v11

    if-le v12, v13, :cond_11

    if-gt v11, v14, :cond_8

    goto/16 :goto_d

    :cond_8
    move/from16 v18, v13

    .line 174
    sget v13, Lcom/google/android/gms/internal/ads/ede;->a:I

    move/from16 v19, v14

    const/16 v14, 0x15

    if-lt v13, v14, :cond_d

    if-eqz v8, :cond_9

    move v13, v11

    goto :goto_7

    :cond_9
    move v13, v12

    :goto_7
    if-eqz v8, :cond_a

    goto :goto_8

    :cond_a
    move v12, v11

    .line 4085
    :goto_8
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/dzr;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v11, :cond_b

    const-string v11, "align.caps"

    .line 4086
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/dzr;->a(Ljava/lang/String;)V

    :goto_9
    move/from16 v20, v15

    const/4 v15, 0x0

    goto :goto_a

    .line 4088
    :cond_b
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/dzr;->f:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v11

    if-nez v11, :cond_c

    const-string v11, "align.vCaps"

    .line 4090
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/dzr;->a(Ljava/lang/String;)V

    goto :goto_9

    .line 4092
    :cond_c
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v14

    .line 4093
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v11

    move/from16 v20, v15

    .line 4094
    new-instance v15, Landroid/graphics/Point;

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/ads/ede;->a(II)I

    move-result v13

    mul-int v13, v13, v14

    .line 4095
    invoke-static {v12, v11}, Lcom/google/android/gms/internal/ads/ede;->a(II)I

    move-result v12

    mul-int v12, v12, v11

    invoke-direct {v15, v13, v12}, Landroid/graphics/Point;-><init>(II)V

    .line 178
    :goto_a
    iget v11, v3, Lcom/google/android/gms/internal/ads/zzht;->zzahs:F

    .line 179
    iget v12, v15, Landroid/graphics/Point;->x:I

    iget v13, v15, Landroid/graphics/Point;->y:I

    move-object/from16 v21, v15

    float-to-double v14, v11

    invoke-virtual {v1, v12, v13, v14, v15}, Lcom/google/android/gms/internal/ads/dzr;->a(IID)Z

    move-result v11

    if-eqz v11, :cond_10

    move-object/from16 v15, v21

    goto :goto_e

    :cond_d
    move/from16 v20, v15

    const/16 v13, 0x10

    .line 182
    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/ede;->a(II)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    .line 183
    invoke-static {v11, v13}, Lcom/google/android/gms/internal/ads/ede;->a(II)I

    move-result v11

    shl-int/lit8 v11, v11, 0x4

    mul-int v13, v12, v11

    .line 184
    invoke-static {}, Lcom/google/android/gms/internal/ads/dzt;->a()I

    move-result v14

    if-gt v13, v14, :cond_10

    .line 185
    new-instance v15, Landroid/graphics/Point;

    if-eqz v8, :cond_e

    move v9, v11

    goto :goto_b

    :cond_e
    move v9, v12

    :goto_b
    if-eqz v8, :cond_f

    goto :goto_c

    :cond_f
    move v12, v11

    .line 186
    :goto_c
    invoke-direct {v15, v9, v12}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_e

    :cond_10
    add-int/lit8 v9, v9, 0x1

    move/from16 v12, v16

    move-object/from16 v11, v17

    move/from16 v13, v18

    move/from16 v14, v19

    move/from16 v15, v20

    goto/16 :goto_6

    :cond_11
    :goto_d
    const/4 v15, 0x0

    :goto_e
    if-eqz v15, :cond_12

    .line 192
    iget v8, v15, Landroid/graphics/Point;->x:I

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 193
    iget v8, v15, Landroid/graphics/Point;->y:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 194
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzht;->zzaho:Ljava/lang/String;

    .line 195
    invoke-static {v8, v5, v6}, Lcom/google/android/gms/internal/ads/edo;->a(Ljava/lang/String;II)I

    move-result v8

    .line 196
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v8, 0x39

    .line 197
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Codec max resolution adjusted to: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_12
    new-instance v4, Lcom/google/android/gms/internal/ads/edq;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/edq;-><init>(III)V

    .line 199
    :goto_f
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/edo;->l:Lcom/google/android/gms/internal/ads/edq;

    .line 200
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/edo;->i:Z

    iget v6, v0, Lcom/google/android/gms/internal/ads/edo;->F:I

    .line 201
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzht;->zzfe()Landroid/media/MediaFormat;

    move-result-object v3

    .line 202
    iget v7, v4, Lcom/google/android/gms/internal/ads/edq;->a:I

    const-string v8, "max-width"

    invoke-virtual {v3, v8, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 203
    iget v7, v4, Lcom/google/android/gms/internal/ads/edq;->b:I

    const-string v8, "max-height"

    invoke-virtual {v3, v8, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 204
    iget v7, v4, Lcom/google/android/gms/internal/ads/edq;->c:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_13

    .line 205
    iget v4, v4, Lcom/google/android/gms/internal/ads/edq;->c:I

    const-string v7, "max-input-size"

    invoke-virtual {v3, v7, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_13
    if-eqz v5, :cond_14

    const-string v4, "auto-frc"

    const/4 v5, 0x0

    .line 207
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_14
    if-eqz v6, :cond_15

    const-string v4, "tunneled-playback"

    const/4 v5, 0x1

    .line 210
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v4, "audio-session-id"

    .line 211
    invoke-virtual {v3, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 214
    :cond_15
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/edo;->m:Landroid/view/Surface;

    if-nez v4, :cond_17

    .line 215
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/dzr;->d:Z

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/edo;->b(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ecr;->b(Z)V

    .line 216
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/edo;->n:Landroid/view/Surface;

    if-nez v4, :cond_16

    .line 217
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/edo;->d:Landroid/content/Context;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/dzr;->d:Z

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzqa;->zzc(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzqa;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/edo;->n:Landroid/view/Surface;

    .line 218
    :cond_16
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/edo;->n:Landroid/view/Surface;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/edo;->m:Landroid/view/Surface;

    .line 219
    :cond_17
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/edo;->m:Landroid/view/Surface;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 220
    sget v1, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_18

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/edo;->E:Z

    if-eqz v1, :cond_18

    .line 221
    new-instance v1, Lcom/google/android/gms/internal/ads/edp;

    invoke-direct {v1, v0, v2, v4}, Lcom/google/android/gms/internal/ads/edp;-><init>(Lcom/google/android/gms/internal/ads/edo;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/edn;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/edo;->b:Lcom/google/android/gms/internal/ads/edp;

    :cond_18
    return-void
.end method

.method protected final a(Ljava/lang/String;JJ)V
    .locals 9

    .line 236
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/edo;->f:Lcom/google/android/gms/internal/ads/edt;

    .line 5008
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/edt;->b:Lcom/google/android/gms/internal/ads/edu;

    if-eqz v0, :cond_0

    .line 5009
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/edt;->a:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/edv;

    move-object v0, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/edv;-><init>(Lcom/google/android/gms/internal/ads/edt;Ljava/lang/String;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected final a(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    .line 45
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/dzq;->a(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dvi;->q()Lcom/google/android/gms/internal/ads/dwb;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/dwb;->b:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/edo;->F:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 47
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/edo;->E:Z

    .line 48
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/edo;->f:Lcom/google/android/gms/internal/ads/edt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/edo;->a:Lcom/google/android/gms/internal/ads/dxk;

    .line 2005
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/edt;->b:Lcom/google/android/gms/internal/ads/edu;

    if-eqz v3, :cond_1

    .line 2006
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/edt;->a:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/ads/edw;

    invoke-direct {v4, p1, v2}, Lcom/google/android/gms/internal/ads/edw;-><init>(Lcom/google/android/gms/internal/ads/edt;Lcom/google/android/gms/internal/ads/dxk;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/edo;->e:Lcom/google/android/gms/internal/ads/eds;

    .line 2019
    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/eds;->h:Z

    .line 2020
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/eds;->b:Z

    if-eqz v1, :cond_2

    .line 2021
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/eds;->a:Lcom/google/android/gms/internal/ads/edr;

    .line 3008
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/edr;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method protected final a([Lcom/google/android/gms/internal/ads/zzht;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/edo;->k:[Lcom/google/android/gms/internal/ads/zzht;

    .line 52
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/edo;->G:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 53
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/edo;->G:J

    goto :goto_1

    .line 54
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/edo;->H:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/edo;->j:[J

    array-length v2, v1

    if-ne v0, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 55
    aget-wide v0, v1, v0

    const/16 v2, 0x41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Too many stream changes, so dropping offset: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecVideoRenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 56
    iput v0, p0, Lcom/google/android/gms/internal/ads/edo;->H:I

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edo;->j:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/edo;->H:I

    add-int/lit8 v1, v1, -0x1

    aput-wide p2, v0, v1

    .line 58
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dzq;->a([Lcom/google/android/gms/internal/ads/zzht;J)V

    return-void
.end method

.method protected final a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide/from16 v3, p9

    .line 270
    :goto_0
    iget v5, v0, Lcom/google/android/gms/internal/ads/edo;->H:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/edo;->j:[J

    aget-wide v9, v8, v6

    cmp-long v11, v3, v9

    if-ltz v11, :cond_0

    .line 271
    aget-wide v9, v8, v6

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/edo;->G:J

    add-int/lit8 v5, v5, -0x1

    .line 272
    iput v5, v0, Lcom/google/android/gms/internal/ads/edo;->H:I

    .line 273
    invoke-static {v8, v7, v8, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    if-eqz p11, :cond_1

    .line 276
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/edo;->a(Landroid/media/MediaCodec;I)V

    return v7

    :cond_1
    sub-long v8, v3, p1

    .line 279
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/edo;->m:Landroid/view/Surface;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/edo;->n:Landroid/view/Surface;

    if-ne v5, v10, :cond_3

    .line 280
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/edo;->c(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 281
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/edo;->a(Landroid/media/MediaCodec;I)V

    return v7

    :cond_2
    return v6

    .line 284
    :cond_3
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/edo;->p:Z

    const/16 v10, 0x15

    if-nez v5, :cond_5

    .line 285
    sget v3, Lcom/google/android/gms/internal/ads/ede;->a:I

    if-lt v3, v10, :cond_4

    .line 286
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/edo;->a(Landroid/media/MediaCodec;IJ)V

    goto :goto_1

    .line 287
    :cond_4
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/edo;->b(Landroid/media/MediaCodec;I)V

    :goto_1
    return v7

    .line 289
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvi;->d()I

    move-result v5

    const/4 v11, 0x2

    if-eq v5, v11, :cond_6

    return v6

    .line 291
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long v11, v11, v13

    sub-long v11, v11, p3

    sub-long/2addr v8, v11

    .line 293
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    mul-long v8, v8, v13

    add-long/2addr v8, v11

    .line 295
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/edo;->e:Lcom/google/android/gms/internal/ads/eds;

    move-wide/from16 p2, v11

    mul-long v10, v3, v13

    .line 5029
    iget-boolean v12, v5, Lcom/google/android/gms/internal/ads/eds;->h:Z

    if-eqz v12, :cond_a

    .line 5030
    iget-wide v13, v5, Lcom/google/android/gms/internal/ads/eds;->e:J

    cmp-long v12, v3, v13

    if-eqz v12, :cond_7

    .line 5031
    iget-wide v12, v5, Lcom/google/android/gms/internal/ads/eds;->k:J

    const-wide/16 v15, 0x1

    add-long/2addr v12, v15

    iput-wide v12, v5, Lcom/google/android/gms/internal/ads/eds;->k:J

    .line 5032
    iget-wide v12, v5, Lcom/google/android/gms/internal/ads/eds;->g:J

    iput-wide v12, v5, Lcom/google/android/gms/internal/ads/eds;->f:J

    .line 5033
    :cond_7
    iget-wide v12, v5, Lcom/google/android/gms/internal/ads/eds;->k:J

    const-wide/16 v15, 0x6

    cmp-long v14, v12, v15

    if-ltz v14, :cond_9

    .line 5034
    iget-wide v12, v5, Lcom/google/android/gms/internal/ads/eds;->j:J

    sub-long v12, v10, v12

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/eds;->k:J

    div-long/2addr v12, v6

    .line 5035
    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/eds;->f:J

    add-long/2addr v6, v12

    .line 5036
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/eds;->a(JJ)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    .line 5037
    iput-boolean v12, v5, Lcom/google/android/gms/internal/ads/eds;->h:Z

    goto :goto_2

    :cond_8
    const/4 v12, 0x0

    .line 5039
    iget-wide v13, v5, Lcom/google/android/gms/internal/ads/eds;->i:J

    add-long/2addr v13, v6

    move-wide v15, v6

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/eds;->j:J

    sub-long/2addr v13, v6

    move-wide v6, v15

    goto :goto_3

    :cond_9
    const/4 v12, 0x0

    .line 5041
    invoke-virtual {v5, v10, v11, v8, v9}, Lcom/google/android/gms/internal/ads/eds;->a(JJ)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 5042
    iput-boolean v12, v5, Lcom/google/android/gms/internal/ads/eds;->h:Z

    :cond_a
    :goto_2
    move-wide v13, v8

    move-wide v6, v10

    .line 5043
    :goto_3
    iget-boolean v12, v5, Lcom/google/android/gms/internal/ads/eds;->h:Z

    const-wide/16 v0, 0x0

    if-nez v12, :cond_b

    .line 5044
    iput-wide v10, v5, Lcom/google/android/gms/internal/ads/eds;->j:J

    .line 5045
    iput-wide v8, v5, Lcom/google/android/gms/internal/ads/eds;->i:J

    .line 5046
    iput-wide v0, v5, Lcom/google/android/gms/internal/ads/eds;->k:J

    const/4 v8, 0x1

    .line 5047
    iput-boolean v8, v5, Lcom/google/android/gms/internal/ads/eds;->h:Z

    .line 5048
    :cond_b
    iput-wide v3, v5, Lcom/google/android/gms/internal/ads/eds;->e:J

    .line 5049
    iput-wide v6, v5, Lcom/google/android/gms/internal/ads/eds;->g:J

    .line 5050
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/eds;->a:Lcom/google/android/gms/internal/ads/edr;

    if-eqz v3, :cond_f

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/eds;->a:Lcom/google/android/gms/internal/ads/edr;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/edr;->a:J

    cmp-long v6, v3, v0

    if-nez v6, :cond_c

    goto :goto_6

    .line 5052
    :cond_c
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/eds;->a:Lcom/google/android/gms/internal/ads/edr;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/edr;->a:J

    iget-wide v3, v5, Lcom/google/android/gms/internal/ads/eds;->c:J

    sub-long v6, v13, v0

    .line 5053
    div-long/2addr v6, v3

    mul-long v6, v6, v3

    add-long/2addr v0, v6

    cmp-long v6, v13, v0

    if-gtz v6, :cond_d

    sub-long v3, v0, v3

    goto :goto_4

    :cond_d
    add-long/2addr v3, v0

    move-wide/from16 v17, v0

    move-wide v0, v3

    move-wide/from16 v3, v17

    :goto_4
    sub-long v6, v0, v13

    sub-long/2addr v13, v3

    cmp-long v8, v6, v13

    if-gez v8, :cond_e

    goto :goto_5

    :cond_e
    move-wide v0, v3

    .line 5063
    :goto_5
    iget-wide v3, v5, Lcom/google/android/gms/internal/ads/eds;->d:J

    sub-long v13, v0, v3

    :cond_f
    :goto_6
    move-wide/from16 v0, p2

    sub-long v0, v13, v0

    const-wide/16 v3, 0x3e8

    .line 296
    div-long/2addr v0, v3

    .line 298
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/edo;->c(J)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v0, "dropVideoBuffer"

    .line 301
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/edf;->a(Ljava/lang/String;)V

    move-object/from16 v3, p5

    const/4 v0, 0x0

    .line 302
    invoke-virtual {v3, v2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 303
    invoke-static {}, Lcom/google/android/gms/internal/ads/edf;->a()V

    move-object/from16 v4, p0

    .line 304
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/edo;->a:Lcom/google/android/gms/internal/ads/dxk;

    iget v1, v0, Lcom/google/android/gms/internal/ads/dxk;->f:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dxk;->f:I

    .line 305
    iget v0, v4, Lcom/google/android/gms/internal/ads/edo;->s:I

    add-int/2addr v0, v2

    iput v0, v4, Lcom/google/android/gms/internal/ads/edo;->s:I

    .line 306
    iget v0, v4, Lcom/google/android/gms/internal/ads/edo;->t:I

    add-int/2addr v0, v2

    iput v0, v4, Lcom/google/android/gms/internal/ads/edo;->t:I

    .line 307
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/edo;->a:Lcom/google/android/gms/internal/ads/dxk;

    iget v1, v4, Lcom/google/android/gms/internal/ads/edo;->t:I

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/edo;->a:Lcom/google/android/gms/internal/ads/dxk;

    iget v2, v2, Lcom/google/android/gms/internal/ads/dxk;->g:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/dxk;->g:I

    .line 308
    iget v0, v4, Lcom/google/android/gms/internal/ads/edo;->s:I

    iget v1, v4, Lcom/google/android/gms/internal/ads/edo;->h:I

    if-ne v0, v1, :cond_10

    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/edo;->H()V

    :cond_10
    const/4 v5, 0x1

    return v5

    :cond_11
    move-object/from16 v4, p0

    move-object/from16 v3, p5

    const/4 v5, 0x1

    .line 311
    sget v6, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_12

    const-wide/32 v6, 0xc350

    cmp-long v8, v0, v6

    if-gez v8, :cond_14

    .line 313
    invoke-direct {v4, v3, v2, v13, v14}, Lcom/google/android/gms/internal/ads/edo;->a(Landroid/media/MediaCodec;IJ)V

    return v5

    :cond_12
    const-wide/16 v5, 0x7530

    cmp-long v7, v0, v5

    if-gez v7, :cond_14

    const-wide/16 v5, 0x2af8

    cmp-long v7, v0, v5

    if-lez v7, :cond_13

    const-wide/16 v5, 0x2710

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x3e8

    .line 317
    :try_start_0
    div-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 320
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 321
    :cond_13
    :goto_7
    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/edo;->b(Landroid/media/MediaCodec;I)V

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/dzr;)Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edo;->m:Landroid/view/Surface;

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/dzr;->d:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/edo;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected final a(ZLcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zzht;)Z
    .locals 0

    .line 269
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/edo;->b(ZLcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zzht;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p3, Lcom/google/android/gms/internal/ads/zzht;->width:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/edo;->l:Lcom/google/android/gms/internal/ads/edq;

    iget p2, p2, Lcom/google/android/gms/internal/ads/edq;->a:I

    if-gt p1, p2, :cond_0

    iget p1, p3, Lcom/google/android/gms/internal/ads/zzht;->height:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/edo;->l:Lcom/google/android/gms/internal/ads/edq;

    iget p2, p2, Lcom/google/android/gms/internal/ads/edq;->b:I

    if-gt p1, p2, :cond_0

    iget p1, p3, Lcom/google/android/gms/internal/ads/zzht;->zzahp:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/edo;->l:Lcom/google/android/gms/internal/ads/edq;

    iget p2, p2, Lcom/google/android/gms/internal/ads/edq;->c:I

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final b(Lcom/google/android/gms/internal/ads/zzht;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    .line 238
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/dzq;->b(Lcom/google/android/gms/internal/ads/zzht;)V

    .line 239
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edo;->f:Lcom/google/android/gms/internal/ads/edt;

    .line 5011
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/edt;->b:Lcom/google/android/gms/internal/ads/edu;

    if-eqz v1, :cond_0

    .line 5012
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/edt;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/edy;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/ads/edy;-><init>(Lcom/google/android/gms/internal/ads/edt;Lcom/google/android/gms/internal/ads/zzht;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzht;->zzahu:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzht;->zzahu:F

    .line 242
    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/edo;->v:F

    .line 243
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/edo;->d(Lcom/google/android/gms/internal/ads/zzht;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/edo;->u:I

    return-void
.end method

.method protected final n()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/dzq;->n()V

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/google/android/gms/internal/ads/edo;->s:I

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/edo;->r:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 83
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/edo;->q:J

    return-void
.end method

.method protected final o()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/edo;->H()V

    .line 86
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/dzq;->o()V

    return-void
.end method

.method protected final p()V
    .locals 3

    const/4 v0, -0x1

    .line 88
    iput v0, p0, Lcom/google/android/gms/internal/ads/edo;->w:I

    .line 89
    iput v0, p0, Lcom/google/android/gms/internal/ads/edo;->x:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 90
    iput v0, p0, Lcom/google/android/gms/internal/ads/edo;->z:F

    .line 91
    iput v0, p0, Lcom/google/android/gms/internal/ads/edo;->v:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 92
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/edo;->G:J

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/google/android/gms/internal/ads/edo;->H:I

    .line 94
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/edo;->y()V

    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/edo;->x()V

    .line 96
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/edo;->e:Lcom/google/android/gms/internal/ads/eds;

    .line 3023
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/eds;->b:Z

    if-eqz v2, :cond_0

    .line 3024
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/eds;->a:Lcom/google/android/gms/internal/ads/edr;

    .line 4010
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/edr;->b:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 v1, 0x0

    .line 97
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/edo;->b:Lcom/google/android/gms/internal/ads/edp;

    .line 98
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/edo;->E:Z

    .line 99
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/dzq;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edo;->f:Lcom/google/android/gms/internal/ads/edt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/edo;->a:Lcom/google/android/gms/internal/ads/dxk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/edt;->a(Lcom/google/android/gms/internal/ads/dxk;)V

    return-void

    :catchall_0
    move-exception v0

    .line 104
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/edo;->f:Lcom/google/android/gms/internal/ads/edt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/edo;->a:Lcom/google/android/gms/internal/ads/dxk;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/edt;->a(Lcom/google/android/gms/internal/ads/dxk;)V

    .line 105
    throw v0
.end method

.method public final t()Z
    .locals 9

    .line 70
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/dzq;->t()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/edo;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edo;->n:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/edo;->m:Landroid/view/Surface;

    if-eq v4, v0, :cond_1

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dzq;->C()Landroid/media/MediaCodec;

    move-result-object v0

    if-nez v0, :cond_2

    .line 72
    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/edo;->q:J

    return v1

    .line 74
    :cond_2
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/edo;->q:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    return v0

    .line 76
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/edo;->q:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    return v1

    .line 78
    :cond_4
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/edo;->q:J

    return v0
.end method

.method final v()V
    .locals 2

    .line 357
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/edo;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/edo;->p:Z

    .line 359
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edo;->f:Lcom/google/android/gms/internal/ads/edt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/edo;->m:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/edt;->a(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

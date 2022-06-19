.class public final Lcom/google/android/gms/internal/ads/dmd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static a:Z

.field private static b:Z


# instance fields
.field private A:I

.field private B:I

.field private C:J

.field private D:J

.field private E:Z

.field private F:J

.field private G:Ljava/lang/reflect/Method;

.field private H:I

.field private I:J

.field private J:J

.field private K:I

.field private L:J

.field private M:J

.field private N:I

.field private O:I

.field private P:J

.field private Q:J

.field private R:J

.field private S:F

.field private T:[Lcom/google/android/gms/internal/ads/dls;

.field private U:[Ljava/nio/ByteBuffer;

.field private V:Ljava/nio/ByteBuffer;

.field private W:Ljava/nio/ByteBuffer;

.field private X:[B

.field private Y:I

.field private Z:I

.field private aa:Z

.field private ab:Z

.field private ac:I

.field private ad:Z

.field private ae:Z

.field private af:J

.field private final c:Lcom/google/android/gms/internal/ads/dlq;

.field private final d:Lcom/google/android/gms/internal/ads/dmi;

.field private final e:Lcom/google/android/gms/internal/ads/dmq;

.field private final f:[Lcom/google/android/gms/internal/ads/dls;

.field private final g:Lcom/google/android/gms/internal/ads/dmh;

.field private final h:Landroid/os/ConditionVariable;

.field private final i:[J

.field private final j:Lcom/google/android/gms/internal/ads/dmf;

.field private final k:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/ads/dmg;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/media/AudioTrack;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:I

.field private t:J

.field private u:Lcom/google/android/gms/internal/ads/dlj;

.field private v:Lcom/google/android/gms/internal/ads/dlj;

.field private w:J

.field private x:J

.field private y:Ljava/nio/ByteBuffer;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 542
    sput-boolean v0, Lcom/google/android/gms/internal/ads/dmd;->a:Z

    .line 543
    sput-boolean v0, Lcom/google/android/gms/internal/ads/dmd;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/dlq;[Lcom/google/android/gms/internal/ads/dls;Lcom/google/android/gms/internal/ads/dmh;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/dmd;->c:Lcom/google/android/gms/internal/ads/dlq;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dmd;->g:Lcom/google/android/gms/internal/ads/dmh;

    .line 4
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v5}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->h:Landroid/os/ConditionVariable;

    .line 5
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 6
    :try_start_0
    const-class v0, Landroid/media/AudioTrack;

    const-string/jumbo v1, "getLatency"

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->G:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :cond_0
    :goto_0
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/dme;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dme;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->j:Lcom/google/android/gms/internal/ads/dmf;

    .line 13
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dmi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dmi;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->d:Lcom/google/android/gms/internal/ads/dmi;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/dmq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dmq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->e:Lcom/google/android/gms/internal/ads/dmq;

    .line 15
    array-length v0, p2

    add-int/lit8 v0, v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dls;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->f:[Lcom/google/android/gms/internal/ads/dls;

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->f:[Lcom/google/android/gms/internal/ads/dls;

    new-instance v1, Lcom/google/android/gms/internal/ads/dmo;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/dmo;-><init>()V

    aput-object v1, v0, v3

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->f:[Lcom/google/android/gms/internal/ads/dls;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmd;->d:Lcom/google/android/gms/internal/ads/dmi;

    aput-object v1, v0, v5

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->f:[Lcom/google/android/gms/internal/ads/dls;

    const/4 v1, 0x2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->f:[Lcom/google/android/gms/internal/ads/dls;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmd;->e:Lcom/google/android/gms/internal/ads/dmq;

    aput-object v2, v0, v1

    .line 20
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->i:[J

    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmd;->S:F

    .line 22
    iput v3, p0, Lcom/google/android/gms/internal/ads/dmd;->O:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmd;->q:I

    .line 24
    iput v3, p0, Lcom/google/android/gms/internal/ads/dmd;->ac:I

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/dlj;->a:Lcom/google/android/gms/internal/ads/dlj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->v:Lcom/google/android/gms/internal/ads/dlj;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmd;->Z:I

    .line 27
    new-array v0, v3, [Lcom/google/android/gms/internal/ads/dls;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->T:[Lcom/google/android/gms/internal/ads/dls;

    .line 28
    new-array v0, v3, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->U:[Ljava/nio/ByteBuffer;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->k:Ljava/util/LinkedList;

    .line 30
    return-void

    .line 12
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dmf;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/dmf;-><init>(Lcom/google/android/gms/internal/ads/dmc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->j:Lcom/google/android/gms/internal/ads/dmf;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dmd;)Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->h:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private final a(J)V
    .locals 5

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->T:[Lcom/google/android/gms/internal/ads/dls;

    array-length v2, v0

    move v1, v2

    .line 305
    :goto_0
    if-ltz v1, :cond_1

    .line 306
    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->U:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v0, v0, v3

    .line 308
    :goto_1
    if-ne v1, v2, :cond_4

    .line 309
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/dmd;->b(Ljava/nio/ByteBuffer;J)Z

    .line 317
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 321
    :cond_1
    return-void

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->V:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->V:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dls;->a:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 310
    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dmd;->T:[Lcom/google/android/gms/internal/ads/dls;

    aget-object v3, v3, v1

    .line 311
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/dls;->a(Ljava/nio/ByteBuffer;)V

    .line 312
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dls;->e()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 313
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dmd;->U:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 314
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 315
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 316
    goto :goto_0

    .line 319
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 320
    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 535
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 540
    :goto_1
    return v0

    .line 535
    :sswitch_0
    const-string/jumbo v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "audio/vnd.dts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "audio/vnd.dts.hd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 536
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_1

    .line 537
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_1

    .line 538
    :pswitch_2
    const/4 v0, 0x7

    goto :goto_1

    .line 539
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_1

    .line 535
    :sswitch_data_0
    .sparse-switch
        -0x41455b98 -> :sswitch_2
        0xb269698 -> :sswitch_0
        0x59ae0c65 -> :sswitch_1
        0x59c2dc42 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final b(J)J
    .locals 5

    .prologue
    .line 524
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmd;->m:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final b(Ljava/nio/ByteBuffer;J)Z
    .locals 10

    .prologue
    const/16 v5, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 322
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    :goto_0
    return v1

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->W:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 325
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->W:Ljava/nio/ByteBuffer;

    if-ne v0, p1, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->a(Z)V

    .line 335
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 337
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    if-ge v0, v5, :cond_7

    .line 338
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dmd;->L:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->j:Lcom/google/android/gms/internal/ads/dmf;

    .line 339
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmf;->e()J

    move-result-wide v6

    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->K:I

    int-to-long v8, v0

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .line 340
    iget v4, p0, Lcom/google/android/gms/internal/ads/dmd;->s:I

    sub-int v0, v4, v0

    .line 341
    if-lez v0, :cond_13

    .line 342
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 343
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dmd;->X:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/dmd;->Y:I

    invoke-virtual {v4, v5, v6, v0}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    .line 344
    if-lez v0, :cond_2

    .line 345
    iget v4, p0, Lcom/google/android/gms/internal/ads/dmd;->Y:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/gms/internal/ads/dmd;->Y:I

    .line 346
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 379
    :cond_2
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dmd;->af:J

    .line 380
    if-gez v0, :cond_f

    .line 381
    new-instance v1, Lcom/google/android/gms/internal/ads/zzin;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzin;-><init>(I)V

    throw v1

    :cond_3
    move v0, v2

    .line 325
    goto :goto_1

    .line 326
    :cond_4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dmd;->W:Ljava/nio/ByteBuffer;

    .line 327
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    if-ge v0, v5, :cond_1

    .line 328
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 329
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dmd;->X:[B

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dmd;->X:[B

    array-length v3, v3

    if-ge v3, v0, :cond_6

    .line 330
    :cond_5
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dmd;->X:[B

    .line 331
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 332
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dmd;->X:[B

    invoke-virtual {p1, v4, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 333
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 334
    iput v2, p0, Lcom/google/android/gms/internal/ads/dmd;->Y:I

    goto :goto_2

    .line 347
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->ad:Z

    if-eqz v0, :cond_e

    .line 348
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v4

    if-eqz v0, :cond_a

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 349
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    .line 350
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->y:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_8

    .line 351
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->y:Ljava/nio/ByteBuffer;

    .line 352
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->y:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 353
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->y:Ljava/nio/ByteBuffer;

    const v5, 0x55550001

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 354
    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->z:I

    if-nez v0, :cond_9

    .line 355
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->y:Ljava/nio/ByteBuffer;

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 356
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->y:Ljava/nio/ByteBuffer;

    const/16 v5, 0x8

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p2

    invoke-virtual {v0, v5, v6, v7}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 357
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->y:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 358
    iput v3, p0, Lcom/google/android/gms/internal/ads/dmd;->z:I

    .line 359
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->y:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 360
    if-lez v5, :cond_c

    .line 361
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->y:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0, v5, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 362
    if-gez v0, :cond_b

    .line 363
    iput v2, p0, Lcom/google/android/gms/internal/ads/dmd;->z:I

    goto/16 :goto_3

    :cond_a
    move v0, v2

    .line 348
    goto :goto_4

    .line 365
    :cond_b
    if-ge v0, v5, :cond_c

    move v0, v2

    .line 366
    goto/16 :goto_3

    .line 368
    :cond_c
    invoke-virtual {v4, p1, v3, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 370
    if-gez v0, :cond_d

    .line 371
    iput v2, p0, Lcom/google/android/gms/internal/ads/dmd;->z:I

    goto/16 :goto_3

    .line 373
    :cond_d
    iget v4, p0, Lcom/google/android/gms/internal/ads/dmd;->z:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/gms/internal/ads/dmd;->z:I

    goto/16 :goto_3

    .line 376
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    .line 377
    invoke-virtual {v0, p1, v3, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    goto/16 :goto_3

    .line 382
    :cond_f
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/dmd;->r:Z

    if-nez v4, :cond_10

    .line 383
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dmd;->L:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dmd;->L:J

    .line 384
    :cond_10
    if-ne v0, v3, :cond_12

    .line 385
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->r:Z

    if-eqz v0, :cond_11

    .line 386
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmd;->M:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->N:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dmd;->M:J

    .line 387
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->W:Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    :cond_12
    move v1, v2

    .line 389
    goto/16 :goto_0

    :cond_13
    move v0, v2

    goto/16 :goto_3
.end method

.method private final c(J)J
    .locals 5

    .prologue
    .line 525
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->m:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final k()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dmd;->f:[Lcom/google/android/gms/internal/ads/dls;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 180
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dls;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 181
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dls;->g()V

    goto :goto_1

    .line 184
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 185
    new-array v0, v3, [Lcom/google/android/gms/internal/ads/dls;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dls;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->T:[Lcom/google/android/gms/internal/ads/dls;

    .line 186
    new-array v0, v3, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->U:[Ljava/nio/ByteBuffer;

    move v0, v1

    .line 187
    :goto_2
    if-ge v0, v3, :cond_2

    .line 188
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmd;->T:[Lcom/google/android/gms/internal/ads/dls;

    aget-object v1, v1, v0

    .line 189
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dls;->g()V

    .line 190
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmd;->U:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dls;->e()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 192
    :cond_2
    return-void
.end method

.method private final l()Z
    .locals 8

    .prologue
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 397
    .line 398
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->Z:I

    if-ne v0, v5, :cond_6

    .line 399
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->r:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->T:[Lcom/google/android/gms/internal/ads/dls;

    array-length v0, v0

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/dmd;->Z:I

    move v0, v2

    .line 401
    :goto_1
    iget v3, p0, Lcom/google/android/gms/internal/ads/dmd;->Z:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dmd;->T:[Lcom/google/android/gms/internal/ads/dls;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 402
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dmd;->T:[Lcom/google/android/gms/internal/ads/dls;

    iget v4, p0, Lcom/google/android/gms/internal/ads/dmd;->Z:I

    aget-object v3, v3, v4

    .line 403
    if-eqz v0, :cond_0

    .line 404
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dls;->d()V

    .line 405
    :cond_0
    invoke-direct {p0, v6, v7}, Lcom/google/android/gms/internal/ads/dmd;->a(J)V

    .line 406
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dls;->f()Z

    move-result v0

    if-nez v0, :cond_3

    .line 416
    :cond_1
    :goto_2
    return v1

    :cond_2
    move v0, v1

    .line 399
    goto :goto_0

    .line 409
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->Z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmd;->Z:I

    move v0, v2

    .line 410
    goto :goto_1

    .line 411
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->W:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 412
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->W:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v6, v7}, Lcom/google/android/gms/internal/ads/dmd;->b(Ljava/nio/ByteBuffer;J)Z

    .line 413
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->W:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    .line 415
    :cond_5
    iput v5, p0, Lcom/google/android/gms/internal/ads/dmd;->Z:I

    move v1, v2

    .line 416
    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private final m()V
    .locals 2

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 467
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmd;->S:F

    .line 468
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmd;->S:F

    .line 471
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    goto :goto_0
.end method

.method private final n()Z
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final o()J
    .locals 4

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->r:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->M:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->L:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmd;->K:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method private final p()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 527
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dmd;->C:J

    .line 528
    iput v0, p0, Lcom/google/android/gms/internal/ads/dmd;->B:I

    .line 529
    iput v0, p0, Lcom/google/android/gms/internal/ads/dmd;->A:I

    .line 530
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dmd;->D:J

    .line 531
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->E:Z

    .line 532
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dmd;->F:J

    .line 533
    return-void
.end method

.method private final q()Z
    .locals 2

    .prologue
    .line 534
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->p:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->p:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)J
    .locals 12

    .prologue
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->O:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 36
    :goto_0
    if-nez v0, :cond_1

    .line 37
    const-wide/high16 v0, -0x8000000000000000L

    .line 108
    :goto_1
    return-wide v0

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->j:Lcom/google/android/gms/internal/ads/dmf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmf;->f()J

    move-result-wide v2

    .line 41
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_6

    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    .line 43
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->D:J

    sub-long v0, v4, v0

    const-wide/16 v6, 0x7530

    cmp-long v0, v0, v6

    if-ltz v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->i:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmd;->A:I

    sub-long v6, v2, v4

    aput-wide v6, v0, v1

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->A:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmd;->A:I

    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->B:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 47
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmd;->B:I

    .line 48
    :cond_2
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dmd;->D:J

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->C:J

    .line 50
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/dmd;->B:I

    if-ge v0, v1, :cond_3

    .line 51
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/dmd;->C:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmd;->i:[J

    aget-wide v8, v1, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmd;->B:I

    int-to-long v10, v1

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/dmd;->C:J

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 53
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->q()Z

    move-result v0

    if-nez v0, :cond_6

    .line 54
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->F:J

    sub-long v0, v4, v0

    const-wide/32 v6, 0x7a120

    cmp-long v0, v0, v6

    if-ltz v0, :cond_6

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->j:Lcom/google/android/gms/internal/ads/dmf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmf;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->E:Z

    .line 56
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->E:Z

    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->j:Lcom/google/android/gms/internal/ads/dmf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmf;->b()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    .line 58
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dmd;->j:Lcom/google/android/gms/internal/ads/dmf;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dmf;->c()J

    move-result-wide v6

    .line 59
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/dmd;->Q:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_7

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->E:Z

    .line 69
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->G:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->r:Z

    if-nez v0, :cond_5

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->G:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmd;->t:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->R:J

    .line 71
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->R:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->R:J

    .line 72
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->R:J

    const-wide/32 v2, 0x4c4b40

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 73
    const-string/jumbo v0, "AudioTrack"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmd;->R:J

    const/16 v1, 0x3d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Ignoring impossibly large audio latency: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->R:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_5
    :goto_4
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dmd;->F:J

    .line 79
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 80
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dmd;->E:Z

    if-eqz v2, :cond_9

    .line 81
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmd;->j:Lcom/google/android/gms/internal/ads/dmf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dmf;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 82
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dmd;->c(J)J

    move-result-wide v0

    .line 83
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmd;->j:Lcom/google/android/gms/internal/ads/dmf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dmf;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 84
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dmd;->b(J)J

    move-result-wide v0

    move-wide v2, v0

    .line 91
    :goto_5
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/dmd;->P:J

    .line 92
    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->k:Ljava/util/LinkedList;

    .line 93
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dmg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dmg;->b(Lcom/google/android/gms/internal/ads/dmg;)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_b

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dmg;

    .line 95
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dmg;->a(Lcom/google/android/gms/internal/ads/dmg;)Lcom/google/android/gms/internal/ads/dlj;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dmd;->v:Lcom/google/android/gms/internal/ads/dlj;

    .line 96
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dmg;->b(Lcom/google/android/gms/internal/ads/dmg;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dmd;->x:J

    .line 97
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dmg;->c(Lcom/google/android/gms/internal/ads/dmg;)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dmd;->P:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->w:J

    goto :goto_6

    .line 61
    :cond_7
    sub-long v8, v0, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 62
    const/16 v8, 0x88

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v8, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "AudioTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->E:Z

    goto/16 :goto_3

    .line 65
    :cond_8
    invoke-direct {p0, v6, v7}, Lcom/google/android/gms/internal/ads/dmd;->b(J)J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 66
    const/16 v8, 0x8a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v8, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "AudioTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->E:Z

    goto/16 :goto_3

    .line 77
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->G:Ljava/lang/reflect/Method;

    goto/16 :goto_4

    .line 86
    :cond_9
    iget v2, p0, Lcom/google/android/gms/internal/ads/dmd;->B:I

    if-nez v2, :cond_a

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->j:Lcom/google/android/gms/internal/ads/dmf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmf;->f()J

    move-result-wide v0

    .line 89
    :goto_7
    if-nez p1, :cond_e

    .line 90
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmd;->R:J

    sub-long/2addr v0, v2

    move-wide v2, v0

    goto/16 :goto_5

    .line 88
    :cond_a
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmd;->C:J

    add-long/2addr v0, v2

    goto :goto_7

    .line 99
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->v:Lcom/google/android/gms/internal/ads/dlj;

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlj;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_c

    .line 100
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->w:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmd;->x:J

    sub-long/2addr v0, v2

    .line 108
    :goto_8
    add-long/2addr v0, v6

    goto/16 :goto_1

    .line 101
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->e:Lcom/google/android/gms/internal/ads/dmq;

    .line 102
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmq;->j()J

    move-result-wide v0

    const-wide/16 v4, 0x400

    cmp-long v0, v0, v4

    if-ltz v0, :cond_d

    .line 103
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/dmd;->w:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->x:J

    sub-long v0, v2, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmd;->e:Lcom/google/android/gms/internal/ads/dmq;

    .line 104
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dmq;->i()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dmd;->e:Lcom/google/android/gms/internal/ads/dmq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dmq;->j()J

    move-result-wide v4

    .line 105
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dsn;->a(JJJ)J

    move-result-wide v0

    add-long/2addr v0, v8

    .line 106
    goto :goto_8

    .line 107
    :cond_d
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->w:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dmd;->v:Lcom/google/android/gms/internal/ads/dlj;

    iget v4, v4, Lcom/google/android/gms/internal/ads/dlj;->b:F

    float-to-double v4, v4

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/dmd;->x:J

    sub-long/2addr v2, v8

    long-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_8

    :cond_e
    move-wide v2, v0

    goto/16 :goto_5
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dlj;)Lcom/google/android/gms/internal/ads/dlj;
    .locals 4

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->r:Z

    if-eqz v0, :cond_0

    .line 427
    sget-object v0, Lcom/google/android/gms/internal/ads/dlj;->a:Lcom/google/android/gms/internal/ads/dlj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->v:Lcom/google/android/gms/internal/ads/dlj;

    .line 428
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->v:Lcom/google/android/gms/internal/ads/dlj;

    .line 440
    :goto_0
    return-object v0

    .line 429
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/dlj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->e:Lcom/google/android/gms/internal/ads/dmq;

    iget v2, p1, Lcom/google/android/gms/internal/ads/dlj;->b:F

    .line 430
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dmq;->a(F)F

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmd;->e:Lcom/google/android/gms/internal/ads/dmq;

    iget v3, p1, Lcom/google/android/gms/internal/ads/dlj;->c:F

    .line 431
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/dmq;->b(F)F

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/dlj;-><init>(FF)V

    .line 432
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->u:Lcom/google/android/gms/internal/ads/dlj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->u:Lcom/google/android/gms/internal/ads/dlj;

    .line 436
    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dlj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 437
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 438
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dmd;->u:Lcom/google/android/gms/internal/ads/dlj;

    .line 440
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->v:Lcom/google/android/gms/internal/ads/dlj;

    goto :goto_0

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 434
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dmg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dmg;->a(Lcom/google/android/gms/internal/ads/dmg;)Lcom/google/android/gms/internal/ads/dlj;

    move-result-object v0

    goto :goto_1

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->v:Lcom/google/android/gms/internal/ads/dlj;

    goto :goto_1

    .line 439
    :cond_4
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dmd;->v:Lcom/google/android/gms/internal/ads/dlj;

    goto :goto_2
.end method

.method public final a()V
    .locals 4

    .prologue
    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->ab:Z

    .line 194
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->Q:J

    .line 196
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 197
    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->S:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 462
    iput p1, p0, Lcom/google/android/gms/internal/ads/dmd;->S:F

    .line 463
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->m()V

    .line 464
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->q:I

    if-ne v0, p1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/dmd;->q:I

    .line 445
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->ad:Z

    if-nez v0, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dmd;->i()V

    .line 448
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmd;->ac:I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;IIII[I)V
    .locals 14

    .prologue
    .line 109
    const-string/jumbo v2, "audio/raw"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move v6, v2

    .line 110
    :goto_0
    if-eqz v6, :cond_2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dmd;->b(Ljava/lang/String;)I

    move-result v2

    .line 111
    :goto_1
    const/4 v5, 0x0

    .line 112
    if-nez v6, :cond_10

    .line 113
    move/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dsn;->b(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/dmd;->H:I

    .line 114
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dmd;->d:Lcom/google/android/gms/internal/ads/dmi;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/dmi;->a([I)V

    .line 115
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dmd;->f:[Lcom/google/android/gms/internal/ads/dls;

    array-length v8, v7

    const/4 v4, 0x0

    move/from16 v3, p2

    :goto_2
    if-ge v4, v8, :cond_3

    aget-object v9, v7, v4

    .line 116
    :try_start_0
    move/from16 v0, p3

    invoke-interface {v9, v0, v3, v2}, Lcom/google/android/gms/internal/ads/dls;->a(III)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhu; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    or-int/2addr v5, v10

    .line 120
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/dls;->a()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 121
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/dls;->b()I

    move-result v3

    .line 122
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/dls;->c()I

    move-result v2

    .line 123
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 109
    :cond_1
    const/4 v2, 0x0

    move v6, v2

    goto :goto_0

    :cond_2
    move/from16 v2, p4

    .line 110
    goto :goto_1

    .line 118
    :catch_0
    move-exception v2

    .line 119
    new-instance v3, Lcom/google/android/gms/internal/ads/zzij;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzij;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 124
    :cond_3
    if-eqz v5, :cond_4

    .line 125
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->k()V

    :cond_4
    move v4, v2

    move/from16 p2, v3

    .line 126
    :goto_3
    packed-switch p2, :pswitch_data_0

    .line 143
    new-instance v2, Lcom/google/android/gms/internal/ads/zzij;

    const/16 v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unsupported channel count: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzij;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :pswitch_0
    const/4 v2, 0x4

    .line 144
    :goto_4
    sget v3, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v7, 0x17

    if-gt v3, v7, :cond_5

    const-string/jumbo v3, "foster"

    sget-object v7, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "NVIDIA"

    sget-object v7, Lcom/google/android/gms/internal/ads/dsn;->c:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 145
    packed-switch p2, :pswitch_data_1

    .line 149
    :cond_5
    :goto_5
    :pswitch_1
    sget v3, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v7, 0x19

    if-gt v3, v7, :cond_f

    const-string/jumbo v3, "fugu"

    sget-object v7, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v6, :cond_f

    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_f

    .line 150
    const/16 v2, 0xc

    move v3, v2

    .line 151
    :goto_6
    if-nez v5, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->n()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmd;->o:I

    if-ne v2, v4, :cond_6

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmd;->m:I

    move/from16 v0, p3

    if-ne v2, v0, :cond_6

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmd;->n:I

    if-ne v2, v3, :cond_6

    .line 177
    :goto_7
    return-void

    .line 129
    :pswitch_2
    const/16 v2, 0xc

    .line 130
    goto :goto_4

    .line 131
    :pswitch_3
    const/16 v2, 0x1c

    .line 132
    goto :goto_4

    .line 133
    :pswitch_4
    const/16 v2, 0xcc

    .line 134
    goto :goto_4

    .line 135
    :pswitch_5
    const/16 v2, 0xdc

    .line 136
    goto :goto_4

    .line 137
    :pswitch_6
    const/16 v2, 0xfc

    .line 138
    goto :goto_4

    .line 139
    :pswitch_7
    const/16 v2, 0x4fc

    .line 140
    goto :goto_4

    .line 141
    :pswitch_8
    sget v2, Lcom/google/android/gms/internal/ads/dkr;->a:I

    goto :goto_4

    .line 146
    :pswitch_9
    sget v2, Lcom/google/android/gms/internal/ads/dkr;->a:I

    goto :goto_5

    .line 148
    :pswitch_a
    const/16 v2, 0xfc

    goto :goto_5

    .line 153
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dmd;->i()V

    .line 154
    iput v4, p0, Lcom/google/android/gms/internal/ads/dmd;->o:I

    .line 155
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/dmd;->r:Z

    .line 156
    move/from16 v0, p3

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmd;->m:I

    .line 157
    iput v3, p0, Lcom/google/android/gms/internal/ads/dmd;->n:I

    .line 158
    if-eqz v6, :cond_8

    move v2, v4

    :goto_8
    iput v2, p0, Lcom/google/android/gms/internal/ads/dmd;->p:I

    .line 159
    const/4 v2, 0x2

    move/from16 v0, p2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/dsn;->b(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/dmd;->K:I

    .line 160
    if-eqz v6, :cond_a

    .line 161
    iget v2, p0, Lcom/google/android/gms/internal/ads/dmd;->p:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmd;->p:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_9

    .line 162
    :cond_7
    const/16 v2, 0x5000

    move-object v5, p0

    .line 174
    :goto_9
    iput v2, v5, Lcom/google/android/gms/internal/ads/dmd;->s:I

    .line 175
    if-eqz v6, :cond_e

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_a
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dmd;->t:J

    .line 176
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmd;->v:Lcom/google/android/gms/internal/ads/dlj;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/dmd;->a(Lcom/google/android/gms/internal/ads/dlj;)Lcom/google/android/gms/internal/ads/dlj;

    goto :goto_7

    .line 158
    :cond_8
    const/4 v2, 0x2

    goto :goto_8

    .line 163
    :cond_9
    const v2, 0xc000

    move-object v5, p0

    goto :goto_9

    .line 164
    :cond_a
    iget v2, p0, Lcom/google/android/gms/internal/ads/dmd;->p:I

    .line 165
    move/from16 v0, p3

    invoke-static {v0, v3, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v3

    .line 166
    const/4 v2, -0x2

    if-eq v3, v2, :cond_b

    const/4 v2, 0x1

    :goto_b
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 167
    shl-int/lit8 v4, v3, 0x2

    .line 168
    const-wide/32 v8, 0x3d090

    invoke-direct {p0, v8, v9}, Lcom/google/android/gms/internal/ads/dmd;->c(J)J

    move-result-wide v8

    long-to-int v2, v8

    iget v5, p0, Lcom/google/android/gms/internal/ads/dmd;->K:I

    mul-int/2addr v2, v5

    .line 169
    int-to-long v8, v3

    const-wide/32 v10, 0xb71b0

    .line 170
    invoke-direct {p0, v10, v11}, Lcom/google/android/gms/internal/ads/dmd;->c(J)J

    move-result-wide v10

    iget v3, p0, Lcom/google/android/gms/internal/ads/dmd;->K:I

    int-to-long v12, v3

    mul-long/2addr v10, v12

    .line 171
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    long-to-int v3, v8

    .line 172
    if-ge v4, v2, :cond_c

    move-object v5, p0

    goto :goto_9

    .line 166
    :cond_b
    const/4 v2, 0x0

    goto :goto_b

    .line 173
    :cond_c
    if-le v4, v3, :cond_d

    move v2, v3

    move-object v5, p0

    goto :goto_9

    :cond_d
    move v2, v4

    move-object v5, p0

    .line 174
    goto :goto_9

    .line 175
    :cond_e
    iget v2, p0, Lcom/google/android/gms/internal/ads/dmd;->s:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dmd;->K:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/dmd;->b(J)J

    move-result-wide v2

    goto :goto_a

    :cond_f
    move v3, v2

    goto/16 :goto_6

    :cond_10
    move v4, v2

    goto/16 :goto_3

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 145
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_a
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->c:Lcom/google/android/gms/internal/ads/dlq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->c:Lcom/google/android/gms/internal/ads/dlq;

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dmd;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dlq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    goto :goto_0
.end method

.method public final a(Ljava/nio/ByteBuffer;J)Z
    .locals 8

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->V:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->V:Ljava/nio/ByteBuffer;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->a(Z)V

    .line 202
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->n()Z

    move-result v0

    if-nez v0, :cond_6

    .line 204
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 205
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->ad:Z

    if-eqz v0, :cond_2

    .line 206
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->m:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmd;->n:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/dmd;->p:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dmd;->s:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/dmd;->ac:I

    .line 207
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v6, 0x1

    .line 208
    invoke-virtual {v1, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v6, 0x3

    .line 209
    invoke-virtual {v1, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/16 v6, 0x10

    .line 210
    invoke-virtual {v1, v6}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 212
    new-instance v6, Landroid/media/AudioFormat$Builder;

    invoke-direct {v6}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 213
    invoke-virtual {v6, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 214
    invoke-virtual {v2, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 215
    invoke-virtual {v2, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    .line 217
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 218
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    .line 223
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    .line 224
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    .line 233
    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzii;

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmd;->m:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dmd;->n:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/dmd;->s:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzii;-><init>(IIII)V

    throw v1

    .line 201
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 219
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->ac:I

    if-nez v0, :cond_3

    .line 220
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmd;->q:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmd;->m:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dmd;->n:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/dmd;->p:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/dmd;->s:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    goto :goto_1

    .line 221
    :cond_3
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmd;->q:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmd;->m:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dmd;->n:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/dmd;->p:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/dmd;->s:I

    const/4 v6, 0x1

    iget v7, p0, Lcom/google/android/gms/internal/ads/dmd;->ac:I

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    goto :goto_1

    .line 229
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    goto :goto_2

    .line 231
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    .line 232
    throw v0

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    .line 235
    iget v1, p0, Lcom/google/android/gms/internal/ads/dmd;->ac:I

    if-eq v1, v0, :cond_5

    .line 236
    iput v0, p0, Lcom/google/android/gms/internal/ads/dmd;->ac:I

    .line 237
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmd;->g:Lcom/google/android/gms/internal/ads/dmh;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dmh;->a(I)V

    .line 238
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->j:Lcom/google/android/gms/internal/ads/dmf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->q()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dmf;->a(Landroid/media/AudioTrack;Z)V

    .line 239
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->m()V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->ae:Z

    .line 241
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->ab:Z

    if-eqz v0, :cond_6

    .line 242
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dmd;->a()V

    .line 243
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 244
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->ae:Z

    .line 246
    const/4 v0, 0x0

    .line 302
    :goto_3
    return v0

    .line 247
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->j:Lcom/google/android/gms/internal/ads/dmf;

    .line 248
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmf;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 249
    const/4 v0, 0x0

    goto :goto_3

    .line 250
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->ae:Z

    .line 251
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dmd;->e()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dmd;->ae:Z

    .line 252
    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->ae:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmd;->af:J

    sub-long v4, v0, v2

    .line 254
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->g:Lcom/google/android/gms/internal/ads/dmh;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmd;->s:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmd;->t:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/dkr;->a(J)J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dmh;->a(IJJ)V

    .line 255
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->V:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_13

    .line 256
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    .line 257
    const/4 v0, 0x1

    goto :goto_3

    .line 258
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->r:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->N:I

    if-nez v0, :cond_c

    .line 259
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->p:I

    .line 260
    const/4 v1, 0x7

    if-eq v0, v1, :cond_b

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    .line 261
    :cond_b
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dmk;->a(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 267
    :goto_4
    iput v0, p0, Lcom/google/android/gms/internal/ads/dmd;->N:I

    .line 268
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->u:Lcom/google/android/gms/internal/ads/dlj;

    if-eqz v0, :cond_11

    .line 269
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->l()Z

    move-result v0

    if-nez v0, :cond_10

    .line 270
    const/4 v0, 0x0

    goto :goto_3

    .line 262
    :cond_d
    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 263
    invoke-static {}, Lcom/google/android/gms/internal/ads/dlr;->a()I

    move-result v0

    goto :goto_4

    .line 264
    :cond_e
    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    .line 265
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dlr;->a(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_4

    .line 266
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Unexpected audio encoding: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_10
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dmd;->k:Ljava/util/LinkedList;

    new-instance v0, Lcom/google/android/gms/internal/ads/dmg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmd;->u:Lcom/google/android/gms/internal/ads/dlj;

    const-wide/16 v2, 0x0

    .line 272
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 273
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->o()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/internal/ads/dmd;->b(J)J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/dmg;-><init>(Lcom/google/android/gms/internal/ads/dlj;JJLcom/google/android/gms/internal/ads/dmc;)V

    .line 274
    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->u:Lcom/google/android/gms/internal/ads/dlj;

    .line 276
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->k()V

    .line 277
    :cond_11
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->O:I

    if-nez v0, :cond_14

    .line 278
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->P:J

    .line 279
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmd;->O:I

    .line 292
    :cond_12
    :goto_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->r:Z

    if-eqz v0, :cond_17

    .line 293
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->J:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmd;->N:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->J:J

    .line 295
    :goto_6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dmd;->V:Ljava/nio/ByteBuffer;

    .line 296
    :cond_13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->r:Z

    if-eqz v0, :cond_18

    .line 297
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->V:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/gms/internal/ads/dmd;->b(Ljava/nio/ByteBuffer;J)Z

    .line 299
    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->V:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_19

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->V:Ljava/nio/ByteBuffer;

    .line 301
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 280
    :cond_14
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmd;->P:J

    .line 282
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->r:Z

    if-eqz v0, :cond_16

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->J:J

    .line 283
    :goto_8
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dmd;->b(J)J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 284
    iget v2, p0, Lcom/google/android/gms/internal/ads/dmd;->O:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    sub-long v2, v0, p2

    .line 285
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x30d40

    cmp-long v2, v2, v4

    if-lez v2, :cond_15

    .line 286
    const-string/jumbo v2, "AudioTrack"

    const/16 v3, 0x50

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Discontinuity detected [expected "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v2, 0x2

    iput v2, p0, Lcom/google/android/gms/internal/ads/dmd;->O:I

    .line 288
    :cond_15
    iget v2, p0, Lcom/google/android/gms/internal/ads/dmd;->O:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    .line 289
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmd;->P:J

    sub-long v0, p2, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->P:J

    .line 290
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmd;->O:I

    .line 291
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->g:Lcom/google/android/gms/internal/ads/dmh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dmh;->a()V

    goto/16 :goto_5

    .line 282
    :cond_16
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->I:J

    iget v4, p0, Lcom/google/android/gms/internal/ads/dmd;->H:I

    int-to-long v4, v4

    div-long/2addr v0, v4

    goto :goto_8

    .line 294
    :cond_17
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->I:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dmd;->I:J

    goto/16 :goto_6

    .line 298
    :cond_18
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/dmd;->a(J)V

    goto/16 :goto_7

    .line 302
    :cond_19
    const/4 v0, 0x0

    goto/16 :goto_3
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->O:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 199
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmd;->O:I

    .line 200
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 450
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 451
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->ad:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dmd;->ac:I

    if-eq v0, p1, :cond_1

    .line 452
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dmd;->ad:Z

    .line 453
    iput p1, p0, Lcom/google/android/gms/internal/ads/dmd;->ac:I

    .line 454
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dmd;->i()V

    .line 455
    :cond_1
    return-void

    .line 450
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->aa:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->j:Lcom/google/android/gms/internal/ads/dmf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->o()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dmf;->a(J)V

    .line 394
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmd;->z:I

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->aa:Z

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->aa:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dmd;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 418
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 419
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->o()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dmd;->j:Lcom/google/android/gms/internal/ads/dmf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dmf;->e()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 421
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    .line 422
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    .line 423
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    .line 424
    :goto_0
    if-eqz v2, :cond_2

    .line 425
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 423
    goto :goto_0

    :cond_2
    move v0, v1

    .line 425
    goto :goto_1
.end method

.method public final f()Lcom/google/android/gms/internal/ads/dlj;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->v:Lcom/google/android/gms/internal/ads/dlj;

    return-object v0
.end method

.method public final g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 456
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->ad:Z

    if-eqz v0, :cond_0

    .line 457
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dmd;->ad:Z

    .line 458
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmd;->ac:I

    .line 459
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dmd;->i()V

    .line 460
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmd;->ab:Z

    .line 474
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->p()V

    .line 476
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->j:Lcom/google/android/gms/internal/ads/dmf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmf;->d()V

    .line 477
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 478
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 479
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dmd;->I:J

    .line 480
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dmd;->J:J

    .line 481
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dmd;->L:J

    .line 482
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dmd;->M:J

    .line 483
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmd;->N:I

    .line 484
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->u:Lcom/google/android/gms/internal/ads/dlj;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->u:Lcom/google/android/gms/internal/ads/dlj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->v:Lcom/google/android/gms/internal/ads/dlj;

    .line 486
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/dmd;->u:Lcom/google/android/gms/internal/ads/dlj;

    .line 489
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 490
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dmd;->w:J

    .line 491
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dmd;->x:J

    .line 492
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/dmd;->V:Ljava/nio/ByteBuffer;

    .line 493
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/dmd;->W:Ljava/nio/ByteBuffer;

    move v0, v1

    .line 494
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmd;->T:[Lcom/google/android/gms/internal/ads/dls;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 495
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmd;->T:[Lcom/google/android/gms/internal/ads/dls;

    aget-object v2, v2, v0

    .line 496
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dls;->g()V

    .line 497
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dmd;->U:[Ljava/nio/ByteBuffer;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dls;->e()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v3, v0

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dmg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dmg;->a(Lcom/google/android/gms/internal/ads/dmg;)Lcom/google/android/gms/internal/ads/dlj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->v:Lcom/google/android/gms/internal/ads/dlj;

    goto :goto_0

    .line 499
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dmd;->aa:Z

    .line 500
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmd;->Z:I

    .line 501
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/dmd;->y:Ljava/nio/ByteBuffer;

    .line 502
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmd;->z:I

    .line 503
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmd;->O:I

    .line 504
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dmd;->R:J

    .line 505
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmd;->p()V

    .line 506
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 507
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 508
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 509
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    .line 510
    iput-object v6, p0, Lcom/google/android/gms/internal/ads/dmd;->l:Landroid/media/AudioTrack;

    .line 511
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmd;->j:Lcom/google/android/gms/internal/ads/dmf;

    invoke-virtual {v2, v6, v1}, Lcom/google/android/gms/internal/ads/dmf;->a(Landroid/media/AudioTrack;Z)V

    .line 512
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmd;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 513
    new-instance v1, Lcom/google/android/gms/internal/ads/dmc;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/dmc;-><init>(Lcom/google/android/gms/internal/ads/dmd;Landroid/media/AudioTrack;)V

    .line 514
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dmc;->start()V

    .line 515
    :cond_4
    return-void
.end method

.method public final j()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 516
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dmd;->i()V

    .line 517
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmd;->f:[Lcom/google/android/gms/internal/ads/dls;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 518
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dls;->h()V

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmd;->ac:I

    .line 521
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dmd;->ab:Z

    .line 522
    return-void
.end method

.class public final Lcom/google/android/gms/internal/ads/dwt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static v:Z = false

.field private static w:Z = false


# instance fields
.field private final A:Landroid/os/ConditionVariable;

.field private final B:[J

.field private final C:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/dww;",
            ">;"
        }
    .end annotation
.end field

.field private D:Landroid/media/AudioTrack;

.field private E:Lcom/google/android/gms/internal/ads/dvz;

.field private F:J

.field private G:J

.field private H:Ljava/nio/ByteBuffer;

.field private I:I

.field private J:I

.field private K:J

.field private L:J

.field private M:Z

.field private N:J

.field private O:Ljava/lang/reflect/Method;

.field private P:J

.field private Q:J

.field private R:J

.field private S:J

.field private T:I

.field private U:J

.field private V:J

.field private W:J

.field private X:[Lcom/google/android/gms/internal/ads/dwj;

.field private Y:[Ljava/nio/ByteBuffer;

.field private Z:Ljava/nio/ByteBuffer;

.field final a:Lcom/google/android/gms/internal/ads/dwz;

.field private aa:Ljava/nio/ByteBuffer;

.field private ab:[B

.field private ac:I

.field private ad:I

.field private ae:Z

.field private af:J

.field final b:[Lcom/google/android/gms/internal/ads/dwj;

.field final c:Lcom/google/android/gms/internal/ads/dwv;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:I

.field k:J

.field l:Lcom/google/android/gms/internal/ads/dvz;

.field m:I

.field n:I

.field o:I

.field p:I

.field q:F

.field r:Z

.field s:Z

.field t:I

.field u:Z

.field private final x:Lcom/google/android/gms/internal/ads/dwh;

.field private final y:Lcom/google/android/gms/internal/ads/dxh;

.field private final z:Lcom/google/android/gms/internal/ads/dwx;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/dwh;[Lcom/google/android/gms/internal/ads/dwj;Lcom/google/android/gms/internal/ads/dwx;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwt;->x:Lcom/google/android/gms/internal/ads/dwh;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dwt;->z:Lcom/google/android/gms/internal/ads/dwx;

    .line 4
    new-instance p3, Landroid/os/ConditionVariable;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dwt;->A:Landroid/os/ConditionVariable;

    .line 5
    sget p3, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/16 v1, 0x12

    if-lt p3, v1, :cond_0

    .line 6
    :try_start_0
    const-class p3, Landroid/media/AudioTrack;

    const-string v1, "getLatency"

    .line 7
    invoke-virtual {p3, v1, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dwt;->O:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 10
    :cond_0
    :goto_0
    sget p3, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/16 v1, 0x13

    if-lt p3, v1, :cond_1

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/dwu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dwu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwt;->c:Lcom/google/android/gms/internal/ads/dwv;

    goto :goto_1

    .line 12
    :cond_1
    new-instance p3, Lcom/google/android/gms/internal/ads/dwv;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/dwv;-><init>(Lcom/google/android/gms/internal/ads/dws;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dwt;->c:Lcom/google/android/gms/internal/ads/dwv;

    .line 13
    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/ads/dwz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dwz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwt;->a:Lcom/google/android/gms/internal/ads/dwz;

    .line 14
    new-instance p3, Lcom/google/android/gms/internal/ads/dxh;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/dxh;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dwt;->y:Lcom/google/android/gms/internal/ads/dxh;

    .line 15
    array-length v1, p2

    const/4 v2, 0x3

    add-int/2addr v1, v2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/dwj;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dwt;->b:[Lcom/google/android/gms/internal/ads/dwj;

    .line 16
    new-instance v3, Lcom/google/android/gms/internal/ads/dxf;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/dxf;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 17
    aput-object p1, v1, v0

    .line 18
    array-length p1, p2

    const/4 v0, 0x2

    invoke-static {p2, v4, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    array-length p1, p2

    add-int/2addr p1, v0

    aput-object p3, v1, p1

    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwt;->B:[J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 21
    iput p1, p0, Lcom/google/android/gms/internal/ads/dwt;->q:F

    .line 22
    iput v4, p0, Lcom/google/android/gms/internal/ads/dwt;->p:I

    .line 23
    iput v2, p0, Lcom/google/android/gms/internal/ads/dwt;->h:I

    .line 24
    iput v4, p0, Lcom/google/android/gms/internal/ads/dwt;->t:I

    .line 25
    sget-object p1, Lcom/google/android/gms/internal/ads/dvz;->a:Lcom/google/android/gms/internal/ads/dvz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwt;->l:Lcom/google/android/gms/internal/ads/dvz;

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/google/android/gms/internal/ads/dwt;->ad:I

    new-array p1, v4, [Lcom/google/android/gms/internal/ads/dwj;

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwt;->X:[Lcom/google/android/gms/internal/ads/dwj;

    new-array p1, v4, [Ljava/nio/ByteBuffer;

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwt;->Y:[Ljava/nio/ByteBuffer;

    .line 29
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwt;->C:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dwt;)Landroid/os/ConditionVariable;
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/dwt;->A:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private final b(Ljava/nio/ByteBuffer;J)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzjb;
        }
    .end annotation

    .line 326
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwt;->aa:Ljava/nio/ByteBuffer;

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 329
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ecr;->a(Z)V

    goto :goto_1

    .line 330
    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwt;->aa:Ljava/nio/ByteBuffer;

    .line 331
    sget v0, Lcom/google/android/gms/internal/ads/ede;->a:I

    if-ge v0, v2, :cond_5

    .line 332
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 333
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dwt;->ab:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    .line 334
    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/dwt;->ab:[B

    .line 335
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 336
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dwt;->ab:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 337
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 338
    iput v3, p0, Lcom/google/android/gms/internal/ads/dwt;->ac:I

    .line 339
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 341
    sget v4, Lcom/google/android/gms/internal/ads/ede;->a:I

    if-ge v4, v2, :cond_7

    .line 342
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/dwt;->R:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dwt;->c:Lcom/google/android/gms/internal/ads/dwv;

    .line 343
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dwv;->e()J

    move-result-wide v4

    iget v2, p0, Lcom/google/android/gms/internal/ads/dwt;->o:I

    int-to-long v6, v2

    mul-long v4, v4, v6

    sub-long/2addr p2, v4

    long-to-int p3, p2

    .line 344
    iget p2, p0, Lcom/google/android/gms/internal/ads/dwt;->j:I

    sub-int/2addr p2, p3

    if-lez p2, :cond_6

    .line 346
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 347
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dwt;->ab:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/dwt;->ac:I

    invoke-virtual {p3, v2, v4, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p2

    if-lez p2, :cond_f

    .line 349
    iget p3, p0, Lcom/google/android/gms/internal/ads/dwt;->ac:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/ads/dwt;->ac:I

    .line 350
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_5

    :cond_6
    :goto_2
    const/4 p2, 0x0

    goto/16 :goto_5

    .line 351
    :cond_7
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dwt;->u:Z

    if-eqz v2, :cond_e

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v4

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    .line 352
    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ecr;->b(Z)V

    .line 353
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    .line 354
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dwt;->H:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_9

    const/16 v4, 0x10

    .line 355
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/dwt;->H:Ljava/nio/ByteBuffer;

    .line 356
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 357
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dwt;->H:Ljava/nio/ByteBuffer;

    const v5, 0x55550001

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 358
    :cond_9
    iget v4, p0, Lcom/google/android/gms/internal/ads/dwt;->m:I

    if-nez v4, :cond_a

    .line 359
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dwt;->H:Ljava/nio/ByteBuffer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 360
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dwt;->H:Ljava/nio/ByteBuffer;

    const/16 v5, 0x8

    const-wide/16 v6, 0x3e8

    mul-long p2, p2, v6

    invoke-virtual {v4, v5, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 361
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/dwt;->H:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 362
    iput v0, p0, Lcom/google/android/gms/internal/ads/dwt;->m:I

    .line 363
    :cond_a
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/dwt;->H:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-lez p2, :cond_c

    .line 365
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/dwt;->H:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p3, p2, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p3

    if-gez p3, :cond_b

    .line 367
    iput v3, p0, Lcom/google/android/gms/internal/ads/dwt;->m:I

    move p2, p3

    goto :goto_5

    :cond_b
    if-ge p3, p2, :cond_c

    goto :goto_2

    .line 372
    :cond_c
    invoke-virtual {v2, p1, v0, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    if-gez p1, :cond_d

    .line 375
    iput v3, p0, Lcom/google/android/gms/internal/ads/dwt;->m:I

    goto :goto_4

    .line 377
    :cond_d
    iget p2, p0, Lcom/google/android/gms/internal/ads/dwt;->m:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/dwt;->m:I

    :goto_4
    move p2, p1

    goto :goto_5

    .line 380
    :cond_e
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    .line 381
    invoke-virtual {p2, p1, v0, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    .line 383
    :cond_f
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dwt;->af:J

    if-ltz p2, :cond_13

    .line 386
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/dwt;->i:Z

    if-nez p1, :cond_10

    .line 387
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dwt;->R:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dwt;->R:J

    :cond_10
    if-ne p2, v0, :cond_12

    if-eqz p1, :cond_11

    .line 390
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/dwt;->S:J

    iget p3, p0, Lcom/google/android/gms/internal/ads/dwt;->T:I

    int-to-long v2, p3

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dwt;->S:J

    :cond_11
    const/4 p1, 0x0

    .line 391
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwt;->aa:Ljava/nio/ByteBuffer;

    return v1

    :cond_12
    return v3

    .line 385
    :cond_13
    new-instance p1, Lcom/google/android/gms/internal/ads/zzjb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzjb;-><init>(I)V

    throw p1
.end method

.method private final c(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzjb;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwt;->X:[Lcom/google/android/gms/internal/ads/dwj;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    if-lez v1, :cond_0

    .line 310
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dwt;->Y:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    .line 311
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dwt;->Z:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/dwj;->a:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    .line 313
    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/gms/internal/ads/dwt;->b(Ljava/nio/ByteBuffer;J)Z

    goto :goto_2

    .line 314
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dwt;->X:[Lcom/google/android/gms/internal/ads/dwj;

    aget-object v3, v3, v1

    .line 315
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/dwj;->a(Ljava/nio/ByteBuffer;)V

    .line 316
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dwj;->d()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 317
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dwt;->Y:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 318
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private final j()Z
    .locals 2

    .line 532
    sget v0, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/dwt;->g:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final a(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 522
    iget v0, p0, Lcom/google/android/gms/internal/ads/dwt;->d:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final a(Z)J
    .locals 19

    move-object/from16 v0, p0

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dwt;->g()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/google/android/gms/internal/ads/dwt;->p:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1

    .line 35
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v4, 0x3

    const-wide/16 v5, 0x3e8

    if-ne v1, v4, :cond_8

    .line 37
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dwt;->c:Lcom/google/android/gms/internal/ads/dwv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dwv;->f()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-eqz v1, :cond_8

    .line 39
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    div-long/2addr v11, v5

    .line 40
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/dwt;->L:J

    sub-long v13, v11, v13

    const-wide/16 v15, 0x7530

    cmp-long v1, v13, v15

    if-ltz v1, :cond_3

    .line 41
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dwt;->B:[J

    iget v4, v0, Lcom/google/android/gms/internal/ads/dwt;->I:I

    sub-long v13, v7, v11

    aput-wide v13, v1, v4

    add-int/2addr v4, v2

    const/16 v1, 0xa

    .line 42
    rem-int/2addr v4, v1

    iput v4, v0, Lcom/google/android/gms/internal/ads/dwt;->I:I

    .line 43
    iget v4, v0, Lcom/google/android/gms/internal/ads/dwt;->J:I

    if-ge v4, v1, :cond_2

    add-int/2addr v4, v2

    .line 44
    iput v4, v0, Lcom/google/android/gms/internal/ads/dwt;->J:I

    .line 45
    :cond_2
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/dwt;->L:J

    .line 46
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/dwt;->K:J

    const/4 v1, 0x0

    .line 47
    :goto_1
    iget v2, v0, Lcom/google/android/gms/internal/ads/dwt;->J:I

    if-ge v1, v2, :cond_3

    .line 48
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/dwt;->K:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dwt;->B:[J

    aget-wide v15, v4, v1

    int-to-long v9, v2

    div-long/2addr v15, v9

    add-long/2addr v13, v15

    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/dwt;->K:J

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v9, 0x0

    goto :goto_1

    .line 50
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dwt;->j()Z

    move-result v1

    if-nez v1, :cond_8

    .line 51
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/dwt;->N:J

    sub-long v1, v11, v1

    const-wide/32 v9, 0x7a120

    cmp-long v4, v1, v9

    if-ltz v4, :cond_8

    .line 52
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dwt;->c:Lcom/google/android/gms/internal/ads/dwv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dwv;->a()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/dwt;->M:Z

    const-string v2, "AudioTrack"

    if-eqz v1, :cond_6

    .line 54
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dwt;->c:Lcom/google/android/gms/internal/ads/dwv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dwv;->b()J

    move-result-wide v13

    div-long/2addr v13, v5

    .line 55
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dwt;->c:Lcom/google/android/gms/internal/ads/dwv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dwv;->c()J

    move-result-wide v5

    .line 56
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/dwt;->V:J

    cmp-long v1, v13, v9

    if-gez v1, :cond_4

    .line 57
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/dwt;->M:Z

    goto :goto_2

    :cond_4
    sub-long v9, v13, v11

    .line 58
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-string v1, ", "

    const-wide/32 v17, 0x4c4b40

    cmp-long v4, v9, v17

    if-lez v4, :cond_5

    const/16 v4, 0x88

    .line 59
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/dwt;->M:Z

    goto :goto_2

    .line 62
    :cond_5
    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/dwt;->a(J)J

    move-result-wide v9

    sub-long/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v17, 0x4c4b40

    cmp-long v4, v9, v17

    if-lez v4, :cond_6

    const/16 v4, 0x8a

    .line 63
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/dwt;->M:Z

    .line 66
    :cond_6
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dwt;->O:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_7

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/dwt;->i:Z

    if-nez v3, :cond_7

    const/4 v3, 0x0

    .line 67
    :try_start_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/dwt;->k:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/dwt;->W:J

    const-wide/16 v6, 0x0

    .line 68
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/dwt;->W:J

    const-wide/32 v6, 0x4c4b40

    cmp-long v1, v4, v6

    if-lez v1, :cond_7

    const/16 v1, 0x3d

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ignoring impossibly large audio latency: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    .line 71
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/dwt;->W:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 74
    :catch_0
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/dwt;->O:Ljava/lang/reflect/Method;

    .line 75
    :cond_7
    :goto_3
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/dwt;->N:J

    .line 76
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 77
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/dwt;->M:Z

    if-eqz v5, :cond_9

    .line 78
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dwt;->c:Lcom/google/android/gms/internal/ads/dwv;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/dwv;->b()J

    move-result-wide v5

    div-long/2addr v5, v3

    sub-long/2addr v1, v5

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dwt;->b(J)J

    move-result-wide v1

    .line 80
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dwt;->c:Lcom/google/android/gms/internal/ads/dwv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dwv;->c()J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 81
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/dwt;->a(J)J

    move-result-wide v1

    goto :goto_5

    .line 83
    :cond_9
    iget v3, v0, Lcom/google/android/gms/internal/ads/dwt;->J:I

    if-nez v3, :cond_a

    .line 84
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dwt;->c:Lcom/google/android/gms/internal/ads/dwv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dwv;->f()J

    move-result-wide v1

    goto :goto_4

    .line 85
    :cond_a
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/dwt;->K:J

    add-long/2addr v1, v3

    :goto_4
    if-nez p1, :cond_b

    .line 87
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/dwt;->W:J

    sub-long/2addr v1, v3

    .line 88
    :cond_b
    :goto_5
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/dwt;->U:J

    .line 89
    :goto_6
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dwt;->C:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dwt;->C:Ljava/util/LinkedList;

    .line 90
    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/dww;

    .line 1008
    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/dww;->c:J

    cmp-long v7, v1, v5

    if-ltz v7, :cond_c

    .line 91
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dwt;->C:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/dww;

    .line 2007
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/dww;->a:Lcom/google/android/gms/internal/ads/dvz;

    .line 92
    iput-object v6, v0, Lcom/google/android/gms/internal/ads/dwt;->l:Lcom/google/android/gms/internal/ads/dvz;

    .line 2008
    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/dww;->c:J

    .line 93
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/dwt;->G:J

    .line 2009
    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/dww;->b:J

    .line 94
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/dwt;->U:J

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/dwt;->F:J

    goto :goto_6

    .line 96
    :cond_c
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dwt;->l:Lcom/google/android/gms/internal/ads/dvz;

    iget v5, v5, Lcom/google/android/gms/internal/ads/dvz;->b:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_d

    .line 97
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/dwt;->F:J

    add-long/2addr v1, v5

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/dwt;->G:J

    sub-long/2addr v1, v5

    goto :goto_8

    .line 98
    :cond_d
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dwt;->C:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dwt;->y:Lcom/google/android/gms/internal/ads/dxh;

    .line 2015
    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/dxh;->e:J

    const-wide/16 v7, 0x400

    cmp-long v9, v5, v7

    if-ltz v9, :cond_e

    .line 100
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/dwt;->F:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/dwt;->G:J

    sub-long v9, v1, v7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dwt;->y:Lcom/google/android/gms/internal/ads/dxh;

    .line 3014
    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/dxh;->d:J

    .line 101
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dwt;->y:Lcom/google/android/gms/internal/ads/dxh;

    .line 3015
    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/dxh;->e:J

    .line 102
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/ede;->a(JJJ)J

    move-result-wide v1

    goto :goto_7

    .line 104
    :cond_e
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/dwt;->F:J

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dwt;->l:Lcom/google/android/gms/internal/ads/dvz;

    iget v7, v7, Lcom/google/android/gms/internal/ads/dvz;->b:F

    float-to-double v7, v7

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/dwt;->G:J

    sub-long/2addr v1, v9

    long-to-double v1, v1

    mul-double v7, v7, v1

    double-to-long v1, v7

    :goto_7
    add-long/2addr v1, v5

    :goto_8
    add-long/2addr v3, v1

    return-wide v3
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dvz;)Lcom/google/android/gms/internal/ads/dvz;
    .locals 4

    .line 430
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dwt;->i:Z

    if-eqz v0, :cond_0

    .line 431
    sget-object p1, Lcom/google/android/gms/internal/ads/dvz;->a:Lcom/google/android/gms/internal/ads/dvz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwt;->l:Lcom/google/android/gms/internal/ads/dvz;

    return-object p1

    .line 433
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dvz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dwt;->y:Lcom/google/android/gms/internal/ads/dxh;

    iget v2, p1, Lcom/google/android/gms/internal/ads/dvz;->b:F

    .line 4010
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ede;->a(F)F

    move-result v2

    iput v2, v1, Lcom/google/android/gms/internal/ads/dxh;->b:F

    .line 4011
    iget v1, v1, Lcom/google/android/gms/internal/ads/dxh;->b:F

    .line 434
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dwt;->y:Lcom/google/android/gms/internal/ads/dxh;

    iget p1, p1, Lcom/google/android/gms/internal/ads/dvz;->c:F

    .line 4012
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ede;->a(F)F

    move-result v3

    iput v3, v2, Lcom/google/android/gms/internal/ads/dxh;->c:F

    .line 435
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/dvz;-><init>(FF)V

    .line 436
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dwt;->E:Lcom/google/android/gms/internal/ads/dvz;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 437
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dwt;->C:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 438
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dwt;->C:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dww;

    .line 5007
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dww;->a:Lcom/google/android/gms/internal/ads/dvz;

    goto :goto_0

    .line 439
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dwt;->l:Lcom/google/android/gms/internal/ads/dvz;

    .line 440
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dvz;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 441
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dwt;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 442
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dwt;->E:Lcom/google/android/gms/internal/ads/dvz;

    goto :goto_1

    .line 443
    :cond_3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dwt;->l:Lcom/google/android/gms/internal/ads/dvz;

    .line 444
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dwt;->l:Lcom/google/android/gms/internal/ads/dvz;

    return-object p1
.end method

.method final a()V
    .locals 7

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dwt;->b:[Lcom/google/android/gms/internal/ads/dwj;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 184
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dwj;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 185
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 186
    :cond_0
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dwj;->f()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 189
    new-array v2, v1, [Lcom/google/android/gms/internal/ads/dwj;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dwj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dwt;->X:[Lcom/google/android/gms/internal/ads/dwj;

    .line 190
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dwt;->Y:[Ljava/nio/ByteBuffer;

    :goto_2
    if-ge v3, v1, :cond_2

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwt;->X:[Lcom/google/android/gms/internal/ads/dwj;

    aget-object v0, v0, v3

    .line 193
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dwj;->f()V

    .line 194
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dwt;->Y:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dwj;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;J)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;,
            Lcom/google/android/gms/internal/ads/zzjb;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    .line 205
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dwt;->Z:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ecr;->a(Z)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dwt;->g()Z

    move-result v4

    const/4 v7, 0x0

    if-nez v4, :cond_6

    .line 208
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dwt;->A:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    .line 209
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/dwt;->u:Z

    if-eqz v4, :cond_2

    .line 210
    iget v4, v1, Lcom/google/android/gms/internal/ads/dwt;->d:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/dwt;->e:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/dwt;->g:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/dwt;->j:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/dwt;->t:I

    .line 211
    new-instance v10, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v10}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 212
    invoke-virtual {v10, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    const/4 v11, 0x3

    .line 213
    invoke-virtual {v10, v11}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    const/16 v11, 0x10

    .line 214
    invoke-virtual {v10, v11}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    .line 215
    invoke-virtual {v10}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v11

    .line 216
    new-instance v10, Landroid/media/AudioFormat$Builder;

    invoke-direct {v10}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 217
    invoke-virtual {v10, v8}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    .line 218
    invoke-virtual {v8, v9}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    .line 219
    invoke-virtual {v8, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    .line 220
    invoke-virtual {v4}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v12

    .line 221
    new-instance v4, Landroid/media/AudioTrack;

    const/4 v14, 0x1

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 222
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    goto :goto_2

    .line 223
    :cond_2
    iget v4, v1, Lcom/google/android/gms/internal/ads/dwt;->t:I

    if-nez v4, :cond_3

    .line 224
    new-instance v4, Landroid/media/AudioTrack;

    iget v9, v1, Lcom/google/android/gms/internal/ads/dwt;->h:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/dwt;->d:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/dwt;->e:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/dwt;->g:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/dwt;->j:I

    const/4 v14, 0x1

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    goto :goto_2

    .line 225
    :cond_3
    new-instance v4, Landroid/media/AudioTrack;

    iget v8, v1, Lcom/google/android/gms/internal/ads/dwt;->h:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/dwt;->d:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/dwt;->e:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/dwt;->g:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/dwt;->j:I

    const/16 v21, 0x1

    iget v13, v1, Lcom/google/android/gms/internal/ads/dwt;->t:I

    move-object v15, v4

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v22, v13

    invoke-direct/range {v15 .. v22}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    .line 227
    :goto_2
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 238
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v4

    .line 239
    iget v8, v1, Lcom/google/android/gms/internal/ads/dwt;->t:I

    if-eq v8, v4, :cond_4

    .line 240
    iput v4, v1, Lcom/google/android/gms/internal/ads/dwt;->t:I

    .line 241
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/dwt;->z:Lcom/google/android/gms/internal/ads/dwx;

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/ads/dwx;->a(I)V

    .line 242
    :cond_4
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dwt;->c:Lcom/google/android/gms/internal/ads/dwv;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dwt;->j()Z

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/ads/dwv;->a(Landroid/media/AudioTrack;Z)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dwt;->e()V

    .line 244
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/dwt;->ae:Z

    .line 245
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/dwt;->s:Z

    if-eqz v4, :cond_6

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dwt;->b()V

    goto :goto_4

    .line 229
    :cond_5
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 235
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    .line 236
    throw v0

    .line 233
    :catch_0
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    .line 237
    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zziw;

    iget v2, v1, Lcom/google/android/gms/internal/ads/dwt;->d:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/dwt;->e:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/dwt;->j:I

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zziw;-><init>(IIII)V

    throw v0

    .line 247
    :cond_6
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dwt;->j()Z

    move-result v4

    const-wide/16 v8, 0x0

    const/4 v10, 0x2

    if-eqz v4, :cond_8

    .line 248
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v10, :cond_7

    .line 249
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/dwt;->ae:Z

    return v5

    .line 251
    :cond_7
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v6, :cond_8

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dwt;->c:Lcom/google/android/gms/internal/ads/dwv;

    .line 252
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dwv;->e()J

    move-result-wide v11

    cmp-long v4, v11, v8

    if-eqz v4, :cond_8

    return v5

    .line 254
    :cond_8
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/dwt;->ae:Z

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dwt;->d()Z

    move-result v11

    iput-boolean v11, v1, Lcom/google/android/gms/internal/ads/dwt;->ae:Z

    if-eqz v4, :cond_9

    if-nez v11, :cond_9

    .line 256
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-eq v4, v6, :cond_9

    .line 257
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/dwt;->af:J

    sub-long v19, v11, v13

    .line 258
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/dwt;->z:Lcom/google/android/gms/internal/ads/dwx;

    iget v4, v1, Lcom/google/android/gms/internal/ads/dwt;->j:I

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/dwt;->k:J

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/dvj;->a(J)J

    move-result-wide v17

    move/from16 v16, v4

    invoke-interface/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/dwx;->a(IJJ)V

    .line 259
    :cond_9
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dwt;->Z:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_17

    .line 260
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_a

    return v6

    .line 262
    :cond_a
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/dwt;->i:Z

    if-eqz v4, :cond_f

    iget v4, v1, Lcom/google/android/gms/internal/ads/dwt;->T:I

    if-nez v4, :cond_f

    .line 263
    iget v4, v1, Lcom/google/android/gms/internal/ads/dwt;->g:I

    const/4 v11, 0x7

    if-eq v4, v11, :cond_e

    const/16 v11, 0x8

    if-ne v4, v11, :cond_b

    goto :goto_5

    :cond_b
    const/4 v11, 0x5

    if-ne v4, v11, :cond_c

    .line 267
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwi;->a()I

    move-result v4

    goto :goto_6

    :cond_c
    const/4 v11, 0x6

    if-ne v4, v11, :cond_d

    .line 269
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dwi;->a(Ljava/nio/ByteBuffer;)I

    move-result v4

    goto :goto_6

    .line 270
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected audio encoding: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_e
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dxb;->a(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 271
    :goto_6
    iput v4, v1, Lcom/google/android/gms/internal/ads/dwt;->T:I

    .line 272
    :cond_f
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dwt;->E:Lcom/google/android/gms/internal/ads/dvz;

    if-eqz v4, :cond_11

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dwt;->c()Z

    move-result v4

    if-nez v4, :cond_10

    return v5

    .line 275
    :cond_10
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dwt;->C:Ljava/util/LinkedList;

    new-instance v15, Lcom/google/android/gms/internal/ads/dww;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/dwt;->E:Lcom/google/android/gms/internal/ads/dvz;

    .line 276
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dwt;->h()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/internal/ads/dwt;->a(J)J

    move-result-wide v16

    const/4 v10, 0x0

    move-object v11, v15

    move-object v5, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/dww;-><init>(Lcom/google/android/gms/internal/ads/dvz;JJLcom/google/android/gms/internal/ads/dws;)V

    .line 278
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 279
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/dwt;->E:Lcom/google/android/gms/internal/ads/dvz;

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dwt;->a()V

    .line 281
    :cond_11
    iget v4, v1, Lcom/google/android/gms/internal/ads/dwt;->p:I

    if-nez v4, :cond_12

    .line 282
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/dwt;->U:J

    .line 283
    iput v6, v1, Lcom/google/android/gms/internal/ads/dwt;->p:I

    goto :goto_9

    .line 284
    :cond_12
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/dwt;->U:J

    .line 286
    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/dwt;->i:Z

    if-eqz v8, :cond_13

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/dwt;->Q:J

    goto :goto_7

    :cond_13
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/dwt;->P:J

    iget v10, v1, Lcom/google/android/gms/internal/ads/dwt;->n:I

    int-to-long v10, v10

    div-long/2addr v8, v10

    .line 287
    :goto_7
    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/internal/ads/dwt;->a(J)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 288
    iget v8, v1, Lcom/google/android/gms/internal/ads/dwt;->p:I

    if-ne v8, v6, :cond_14

    sub-long v8, v4, v2

    .line 289
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x30d40

    cmp-long v12, v8, v10

    if-lez v12, :cond_14

    const/16 v8, 0x50

    .line 290
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Discontinuity detected [expected "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", got "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    .line 291
    iput v8, v1, Lcom/google/android/gms/internal/ads/dwt;->p:I

    goto :goto_8

    :cond_14
    const/4 v8, 0x2

    .line 292
    :goto_8
    iget v9, v1, Lcom/google/android/gms/internal/ads/dwt;->p:I

    if-ne v9, v8, :cond_15

    .line 293
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/dwt;->U:J

    sub-long v4, v2, v4

    add-long/2addr v8, v4

    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/dwt;->U:J

    .line 294
    iput v6, v1, Lcom/google/android/gms/internal/ads/dwt;->p:I

    .line 295
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dwt;->z:Lcom/google/android/gms/internal/ads/dwx;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dwx;->a()V

    .line 296
    :cond_15
    :goto_9
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/dwt;->i:Z

    if-eqz v4, :cond_16

    .line 297
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/dwt;->Q:J

    iget v8, v1, Lcom/google/android/gms/internal/ads/dwt;->T:I

    int-to-long v8, v8

    add-long/2addr v4, v8

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/dwt;->Q:J

    goto :goto_a

    .line 298
    :cond_16
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/dwt;->P:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v4, v8

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/dwt;->P:J

    .line 299
    :goto_a
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/dwt;->Z:Ljava/nio/ByteBuffer;

    .line 300
    :cond_17
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/dwt;->i:Z

    if-eqz v0, :cond_18

    .line 301
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/dwt;->Z:Ljava/nio/ByteBuffer;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/dwt;->b(Ljava/nio/ByteBuffer;J)Z

    goto :goto_b

    .line 302
    :cond_18
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/dwt;->c(J)V

    .line 303
    :goto_b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/dwt;->Z:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_19

    .line 304
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/dwt;->Z:Ljava/nio/ByteBuffer;

    return v6

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method final b(J)J
    .locals 2

    .line 523
    iget v0, p0, Lcom/google/android/gms/internal/ads/dwt;->d:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final b()V
    .locals 4

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dwt;->s:Z

    .line 198
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dwt;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dwt;->V:J

    .line 200
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method final c()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzjb;
        }
    .end annotation

    .line 402
    iget v0, p0, Lcom/google/android/gms/internal/ads/dwt;->ad:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 403
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dwt;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwt;->X:[Lcom/google/android/gms/internal/ads/dwj;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/dwt;->ad:I

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 405
    :goto_2
    iget v4, p0, Lcom/google/android/gms/internal/ads/dwt;->ad:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dwt;->X:[Lcom/google/android/gms/internal/ads/dwj;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_4

    .line 406
    aget-object v4, v5, v4

    if-eqz v0, :cond_2

    .line 408
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dwj;->c()V

    .line 409
    :cond_2
    invoke-direct {p0, v7, v8}, Lcom/google/android/gms/internal/ads/dwt;->c(J)V

    .line 410
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dwj;->e()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 413
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/dwt;->ad:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/dwt;->ad:I

    goto :goto_1

    .line 415
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwt;->aa:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 416
    invoke-direct {p0, v0, v7, v8}, Lcom/google/android/gms/internal/ads/dwt;->b(Ljava/nio/ByteBuffer;J)Z

    .line 417
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwt;->aa:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return v3

    .line 419
    :cond_5
    iput v1, p0, Lcom/google/android/gms/internal/ads/dwt;->ad:I

    return v2
.end method

.method public final d()Z
    .locals 7

    .line 422
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dwt;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 423
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dwt;->h()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwt;->c:Lcom/google/android/gms/internal/ads/dwv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwv;->e()J

    move-result-wide v4

    const/4 v0, 0x1

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    .line 425
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dwt;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    .line 426
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    .line 427
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method final e()V
    .locals 2

    .line 463
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dwt;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    sget v0, Lcom/google/android/gms/internal/ads/ede;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dwt;->q:F

    .line 466
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dwt;->q:F

    .line 469
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 7

    .line 476
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dwt;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    .line 477
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dwt;->P:J

    .line 478
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dwt;->Q:J

    .line 479
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dwt;->R:J

    .line 480
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dwt;->S:J

    const/4 v2, 0x0

    .line 481
    iput v2, p0, Lcom/google/android/gms/internal/ads/dwt;->T:I

    .line 482
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dwt;->E:Lcom/google/android/gms/internal/ads/dvz;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 483
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dwt;->l:Lcom/google/android/gms/internal/ads/dvz;

    .line 484
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/dwt;->E:Lcom/google/android/gms/internal/ads/dvz;

    goto :goto_0

    .line 485
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dwt;->C:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 486
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dwt;->C:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/dww;

    .line 6007
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dww;->a:Lcom/google/android/gms/internal/ads/dvz;

    .line 486
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dwt;->l:Lcom/google/android/gms/internal/ads/dvz;

    .line 487
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dwt;->C:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 488
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dwt;->F:J

    .line 489
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dwt;->G:J

    .line 490
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/dwt;->Z:Ljava/nio/ByteBuffer;

    .line 491
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/dwt;->aa:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 492
    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dwt;->X:[Lcom/google/android/gms/internal/ads/dwj;

    array-length v6, v5

    if-ge v3, v6, :cond_2

    .line 493
    aget-object v5, v5, v3

    .line 494
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dwj;->f()V

    .line 495
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dwt;->Y:[Ljava/nio/ByteBuffer;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dwj;->d()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 497
    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/dwt;->r:Z

    const/4 v3, -0x1

    .line 498
    iput v3, p0, Lcom/google/android/gms/internal/ads/dwt;->ad:I

    .line 499
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/dwt;->H:Ljava/nio/ByteBuffer;

    .line 500
    iput v2, p0, Lcom/google/android/gms/internal/ads/dwt;->m:I

    .line 501
    iput v2, p0, Lcom/google/android/gms/internal/ads/dwt;->p:I

    .line 502
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dwt;->W:J

    .line 503
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dwt;->i()V

    .line 504
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 506
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 507
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    .line 508
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    .line 509
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dwt;->c:Lcom/google/android/gms/internal/ads/dwv;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/dwv;->a(Landroid/media/AudioTrack;Z)V

    .line 510
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dwt;->A:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 511
    new-instance v1, Lcom/google/android/gms/internal/ads/dws;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/dws;-><init>(Lcom/google/android/gms/internal/ads/dwt;Landroid/media/AudioTrack;)V

    .line 512
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dws;->start()V

    :cond_4
    return-void
.end method

.method final g()Z
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwt;->D:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final h()J
    .locals 4

    .line 524
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dwt;->i:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dwt;->S:J

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dwt;->R:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/dwt;->o:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method final i()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 525
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dwt;->K:J

    const/4 v2, 0x0

    .line 526
    iput v2, p0, Lcom/google/android/gms/internal/ads/dwt;->J:I

    .line 527
    iput v2, p0, Lcom/google/android/gms/internal/ads/dwt;->I:I

    .line 528
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dwt;->L:J

    .line 529
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/dwt;->M:Z

    .line 530
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dwt;->N:J

    return-void
.end method

.class final Lcom/google/android/gms/internal/ads/dek;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dfd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dfd",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Lsun/misc/Unsafe;


# instance fields
.field private final c:[I

.field private final d:[Ljava/lang/Object;

.field private final e:I

.field private final f:I

.field private final g:Lcom/google/android/gms/internal/ads/deg;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:[I

.field private final m:I

.field private final n:I

.field private final o:Lcom/google/android/gms/internal/ads/deo;

.field private final p:Lcom/google/android/gms/internal/ads/ddp;

.field private final q:Lcom/google/android/gms/internal/ads/dfv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dfv",
            "<**>;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/android/gms/internal/ads/dck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dck",
            "<*>;"
        }
    .end annotation
.end field

.field private final s:Lcom/google/android/gms/internal/ads/ddz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4080
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/dek;->a:[I

    .line 4081
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgb;->c()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dek;->b:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/deg;ZZ[IIILcom/google/android/gms/internal/ads/deo;Lcom/google/android/gms/internal/ads/ddp;Lcom/google/android/gms/internal/ads/dfv;Lcom/google/android/gms/internal/ads/dck;Lcom/google/android/gms/internal/ads/ddz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/ads/deg;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/ads/deo;",
            "Lcom/google/android/gms/internal/ads/ddp;",
            "Lcom/google/android/gms/internal/ads/dfv",
            "<**>;",
            "Lcom/google/android/gms/internal/ads/dck",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/ddz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dek;->d:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/dek;->e:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/dek;->f:I

    .line 6
    instance-of v1, p5, Lcom/google/android/gms/internal/ads/dcw;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dek;->i:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/dek;->j:Z

    .line 8
    if-eqz p14, :cond_0

    move-object/from16 v0, p14

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/dck;->a(Lcom/google/android/gms/internal/ads/deg;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dek;->h:Z

    .line 9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/dek;->l:[I

    .line 11
    iput p9, p0, Lcom/google/android/gms/internal/ads/dek;->m:I

    .line 12
    iput p10, p0, Lcom/google/android/gms/internal/ads/dek;->n:I

    .line 13
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/dek;->o:Lcom/google/android/gms/internal/ads/deo;

    .line 14
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 15
    iput-object p13, p0, Lcom/google/android/gms/internal/ads/dek;->q:Lcom/google/android/gms/internal/ads/dfv;

    .line 16
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    .line 17
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/dek;->g:Lcom/google/android/gms/internal/ads/deg;

    .line 18
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    .line 19
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final a(II)I
    .locals 1

    .prologue
    .line 4063
    iget v0, p0, Lcom/google/android/gms/internal/ads/dek;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dek;->f:I

    if-gt p1, v0, :cond_0

    .line 4064
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dek;->b(II)I

    move-result v0

    .line 4065
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dfv;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/dfv",
            "<TUT;TUB;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 1217
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1218
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dfv;->f(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private final a(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/dbh;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/ads/dbh;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3433
    sget-object v8, Lcom/google/android/gms/internal/ads/dek;->b:Lsun/misc/Unsafe;

    .line 3434
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    add-int/lit8 v3, p12, 0x2

    aget v2, v2, v3

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v10, v2

    .line 3435
    packed-switch p9, :pswitch_data_0

    .line 3526
    :cond_0
    :goto_0
    return p3

    .line 3436
    :pswitch_0
    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    .line 3437
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/dbe;->c([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3438
    add-int/lit8 v2, p3, 0x8

    .line 3525
    :goto_1
    move/from16 v0, p6

    invoke-virtual {v8, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move p3, v2

    goto :goto_0

    .line 3440
    :pswitch_1
    const/4 v2, 0x5

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    .line 3441
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/dbe;->d([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3442
    add-int/lit8 v2, p3, 0x4

    .line 3443
    goto :goto_1

    .line 3444
    :pswitch_2
    if-nez p7, :cond_0

    .line 3445
    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v2

    .line 3446
    move-object/from16 v0, p13

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/dbh;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 3448
    :pswitch_3
    if-nez p7, :cond_0

    .line 3449
    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v2

    .line 3450
    move-object/from16 v0, p13

    iget v3, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 3452
    :pswitch_4
    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    .line 3453
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/dbe;->b([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3454
    add-int/lit8 v2, p3, 0x8

    .line 3455
    goto :goto_1

    .line 3456
    :pswitch_5
    const/4 v2, 0x5

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    .line 3457
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/dbe;->a([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3458
    add-int/lit8 v2, p3, 0x4

    .line 3459
    goto :goto_1

    .line 3460
    :pswitch_6
    if-nez p7, :cond_0

    .line 3461
    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v3

    .line 3462
    move-object/from16 v0, p13

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/dbh;->b:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    .line 3463
    goto/16 :goto_1

    .line 3462
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 3464
    :pswitch_7
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    .line 3465
    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v2

    .line 3466
    move-object/from16 v0, p13

    iget v3, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    .line 3467
    if-nez v3, :cond_2

    .line 3468
    const-string/jumbo v3, ""

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3475
    :goto_3
    move/from16 v0, p6

    invoke-virtual {v8, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move p3, v2

    .line 3476
    goto/16 :goto_0

    .line 3469
    :cond_2
    const/high16 v4, 0x20000000

    and-int v4, v4, p8

    if-eqz v4, :cond_3

    add-int v4, v2, v3

    .line 3470
    invoke-static {p2, v2, v4}, Lcom/google/android/gms/internal/ads/dgd;->a([BII)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3471
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->i()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v2

    throw v2

    .line 3472
    :cond_3
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/ads/dcz;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, p2, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3473
    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3474
    add-int/2addr v2, v3

    goto :goto_3

    .line 3477
    :pswitch_8
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    .line 3479
    move/from16 v0, p12

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v2

    .line 3480
    move/from16 v0, p4

    move-object/from16 v1, p13

    invoke-static {v2, p2, p3, v0, v1}, Lcom/google/android/gms/internal/ads/dbe;->a(Lcom/google/android/gms/internal/ads/dfd;[BIILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3481
    invoke-virtual {v8, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move/from16 v0, p6

    if-ne v2, v0, :cond_4

    .line 3482
    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 3484
    :goto_4
    if-nez v2, :cond_5

    .line 3485
    move-object/from16 v0, p13

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3489
    :goto_5
    move/from16 v0, p6

    invoke-virtual {v8, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    .line 3483
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 3486
    :cond_5
    move-object/from16 v0, p13

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    .line 3487
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/dcz;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3488
    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 3491
    :pswitch_9
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    .line 3492
    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/dbe;->e([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v2

    .line 3493
    move-object/from16 v0, p13

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 3495
    :pswitch_a
    if-nez p7, :cond_0

    .line 3496
    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v2

    .line 3497
    move-object/from16 v0, p13

    iget v3, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    .line 3498
    move/from16 v0, p12

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dek;->c(I)Lcom/google/android/gms/internal/ads/dda;

    move-result-object v4

    .line 3499
    if-eqz v4, :cond_6

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/dda;->a(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3500
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 3502
    :cond_7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dfu;

    move-result-object v4

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v4, v0, v3}, Lcom/google/android/gms/internal/ads/dfu;->a(ILjava/lang/Object;)V

    move p3, v2

    .line 3503
    goto/16 :goto_0

    .line 3504
    :pswitch_b
    if-nez p7, :cond_0

    .line 3505
    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v2

    .line 3506
    move-object/from16 v0, p13

    iget v3, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dby;->e(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 3508
    :pswitch_c
    if-nez p7, :cond_0

    .line 3509
    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v2

    .line 3510
    move-object/from16 v0, p13

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/dbh;->b:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/dby;->a(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 3512
    :pswitch_d
    const/4 v2, 0x3

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    .line 3513
    and-int/lit8 v2, p5, -0x8

    or-int/lit8 v6, v2, 0x4

    .line 3515
    move/from16 v0, p12

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v2

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    .line 3516
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/dbe;->a(Lcom/google/android/gms/internal/ads/dfd;[BIIILcom/google/android/gms/internal/ads/dbh;)I

    move-result v2

    .line 3517
    invoke-virtual {v8, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move/from16 v0, p6

    if-ne v3, v0, :cond_8

    .line 3518
    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3520
    :goto_6
    if-nez v3, :cond_9

    .line 3521
    move-object/from16 v0, p13

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 3519
    :cond_8
    const/4 v3, 0x0

    goto :goto_6

    .line 3522
    :cond_9
    move-object/from16 v0, p13

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    .line 3523
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/dcz;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3524
    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 3435
    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/dbh;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/ads/dbh;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3056
    sget-object v4, Lcom/google/android/gms/internal/ads/dek;->b:Lsun/misc/Unsafe;

    move-object/from16 v0, p1

    move-wide/from16 v1, p12

    invoke-virtual {v4, v0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/dde;

    .line 3057
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dde;->a()Z

    move-result v5

    if-nez v5, :cond_2a

    .line 3058
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dde;->size()I

    move-result v5

    .line 3060
    if-nez v5, :cond_1

    const/16 v5, 0xa

    .line 3061
    :goto_0
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/dde;->a(I)Lcom/google/android/gms/internal/ads/dde;

    move-result-object v8

    .line 3062
    sget-object v4, Lcom/google/android/gms/internal/ads/dek;->b:Lsun/misc/Unsafe;

    move-object/from16 v0, p1

    move-wide/from16 v1, p12

    invoke-virtual {v4, v0, v1, v2, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3063
    :goto_1
    packed-switch p11, :pswitch_data_0

    .line 3387
    :cond_0
    :goto_2
    return p3

    .line 3060
    :cond_1
    shl-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3064
    :pswitch_0
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_3

    .line 3066
    check-cast v8, Lcom/google/android/gms/internal/ads/dch;

    .line 3067
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3068
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    add-int v4, v4, p3

    .line 3069
    :goto_3
    move/from16 v0, p3

    if-ge v0, v4, :cond_2

    .line 3070
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/dbe;->c([BI)D

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/ads/dch;->a(D)V

    .line 3071
    add-int/lit8 p3, p3, 0x8

    goto :goto_3

    .line 3072
    :cond_2
    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    .line 3073
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3076
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 3078
    check-cast v8, Lcom/google/android/gms/internal/ads/dch;

    .line 3079
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/dbe;->c([BI)D

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/ads/dch;->a(D)V

    .line 3080
    add-int/lit8 p3, p3, 0x8

    .line 3081
    :goto_4
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3082
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v4

    .line 3083
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3084
    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/dbe;->c([BI)D

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/ads/dch;->a(D)V

    .line 3085
    add-int/lit8 p3, v4, 0x8

    .line 3086
    goto :goto_4

    .line 3089
    :pswitch_1
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_5

    .line 3091
    check-cast v8, Lcom/google/android/gms/internal/ads/dcr;

    .line 3092
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3093
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    add-int v4, v4, p3

    .line 3094
    :goto_5
    move/from16 v0, p3

    if-ge v0, v4, :cond_4

    .line 3095
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/dbe;->d([BI)F

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/dcr;->a(F)V

    .line 3096
    add-int/lit8 p3, p3, 0x4

    goto :goto_5

    .line 3097
    :cond_4
    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    .line 3098
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3101
    :cond_5
    const/4 v4, 0x5

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 3103
    check-cast v8, Lcom/google/android/gms/internal/ads/dcr;

    .line 3104
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/dbe;->d([BI)F

    move-result v4

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/dcr;->a(F)V

    .line 3105
    add-int/lit8 p3, p3, 0x4

    .line 3106
    :goto_6
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3107
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v4

    .line 3108
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3109
    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/dbe;->d([BI)F

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/dcr;->a(F)V

    .line 3110
    add-int/lit8 p3, v4, 0x4

    .line 3111
    goto :goto_6

    .line 3114
    :pswitch_2
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_7

    .line 3116
    check-cast v8, Lcom/google/android/gms/internal/ads/ddu;

    .line 3117
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3118
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    add-int v4, v4, p3

    .line 3119
    :goto_7
    move/from16 v0, p3

    if-ge v0, v4, :cond_6

    .line 3120
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3121
    move-object/from16 v0, p14

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/dbh;->b:J

    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/ads/ddu;->a(J)V

    goto :goto_7

    .line 3122
    :cond_6
    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    .line 3123
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3126
    :cond_7
    if-nez p7, :cond_0

    .line 3128
    check-cast v8, Lcom/google/android/gms/internal/ads/ddu;

    .line 3129
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3130
    move-object/from16 v0, p14

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/dbh;->b:J

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/ads/ddu;->a(J)V

    .line 3131
    :goto_8
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3132
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v4

    .line 3133
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3134
    move-object/from16 v0, p2

    move-object/from16 v1, p14

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3135
    move-object/from16 v0, p14

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/dbh;->b:J

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/ads/ddu;->a(J)V

    goto :goto_8

    .line 3139
    :pswitch_3
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_8

    .line 3140
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dde;Lcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    goto/16 :goto_2

    .line 3141
    :cond_8
    if-nez p7, :cond_0

    move/from16 v4, p5

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p14

    .line 3142
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/dbe;->a(I[BIILcom/google/android/gms/internal/ads/dde;Lcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    goto/16 :goto_2

    .line 3143
    :pswitch_4
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_a

    .line 3145
    check-cast v8, Lcom/google/android/gms/internal/ads/ddu;

    .line 3146
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3147
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    add-int v4, v4, p3

    .line 3148
    :goto_9
    move/from16 v0, p3

    if-ge v0, v4, :cond_9

    .line 3149
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/dbe;->b([BI)J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/ads/ddu;->a(J)V

    .line 3150
    add-int/lit8 p3, p3, 0x8

    goto :goto_9

    .line 3151
    :cond_9
    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    .line 3152
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3155
    :cond_a
    const/4 v4, 0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 3157
    check-cast v8, Lcom/google/android/gms/internal/ads/ddu;

    .line 3158
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/dbe;->b([BI)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/ads/ddu;->a(J)V

    .line 3159
    add-int/lit8 p3, p3, 0x8

    .line 3160
    :goto_a
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3161
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v4

    .line 3162
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3163
    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/dbe;->b([BI)J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/ads/ddu;->a(J)V

    .line 3164
    add-int/lit8 p3, v4, 0x8

    .line 3165
    goto :goto_a

    .line 3168
    :pswitch_5
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_c

    .line 3170
    check-cast v8, Lcom/google/android/gms/internal/ads/dcx;

    .line 3171
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3172
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    add-int v4, v4, p3

    .line 3173
    :goto_b
    move/from16 v0, p3

    if-ge v0, v4, :cond_b

    .line 3174
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/dbe;->a([BI)I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/dcx;->d(I)V

    .line 3175
    add-int/lit8 p3, p3, 0x4

    goto :goto_b

    .line 3176
    :cond_b
    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    .line 3177
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3180
    :cond_c
    const/4 v4, 0x5

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 3182
    check-cast v8, Lcom/google/android/gms/internal/ads/dcx;

    .line 3183
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/dbe;->a([BI)I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/dcx;->d(I)V

    .line 3184
    add-int/lit8 p3, p3, 0x4

    .line 3185
    :goto_c
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3186
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v4

    .line 3187
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3188
    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/dbe;->a([BI)I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/dcx;->d(I)V

    .line 3189
    add-int/lit8 p3, v4, 0x4

    .line 3190
    goto :goto_c

    .line 3193
    :pswitch_6
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_f

    .line 3195
    check-cast v8, Lcom/google/android/gms/internal/ads/dbg;

    .line 3196
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3197
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    add-int v5, p3, v4

    .line 3198
    :goto_d
    move/from16 v0, p3

    if-ge v0, v5, :cond_e

    .line 3199
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3200
    move-object/from16 v0, p14

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/dbh;->b:J

    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    :goto_e
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/dbg;->a(Z)V

    goto :goto_d

    :cond_d
    const/4 v4, 0x0

    goto :goto_e

    .line 3201
    :cond_e
    move/from16 v0, p3

    if-eq v0, v5, :cond_0

    .line 3202
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3205
    :cond_f
    if-nez p7, :cond_0

    .line 3207
    check-cast v8, Lcom/google/android/gms/internal/ads/dbg;

    .line 3208
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3209
    move-object/from16 v0, p14

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/dbh;->b:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    :goto_f
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/dbg;->a(Z)V

    .line 3210
    :goto_10
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3211
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v4

    .line 3212
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3213
    move-object/from16 v0, p2

    move-object/from16 v1, p14

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3214
    move-object/from16 v0, p14

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/dbh;->b:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    :goto_11
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/dbg;->a(Z)V

    goto :goto_10

    .line 3209
    :cond_10
    const/4 v4, 0x0

    goto :goto_f

    .line 3214
    :cond_11
    const/4 v4, 0x0

    goto :goto_11

    .line 3218
    :pswitch_7
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 3219
    const-wide/32 v4, 0x20000000

    and-long v4, v4, p9

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_16

    .line 3222
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3223
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    .line 3224
    if-gez v4, :cond_12

    .line 3225
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->b()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3226
    :cond_12
    if-nez v4, :cond_13

    .line 3227
    const-string/jumbo v4, ""

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/ads/dde;->add(Ljava/lang/Object;)Z

    .line 3231
    :goto_12
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3232
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v4

    .line 3233
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3234
    move-object/from16 v0, p2

    move-object/from16 v1, p14

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3235
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    .line 3236
    if-gez v4, :cond_14

    .line 3237
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->b()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3228
    :cond_13
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/ads/dcz;->a:Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v5, v0, v1, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3229
    invoke-interface {v8, v5}, Lcom/google/android/gms/internal/ads/dde;->add(Ljava/lang/Object;)Z

    .line 3230
    add-int p3, p3, v4

    goto :goto_12

    .line 3238
    :cond_14
    if-nez v4, :cond_15

    .line 3239
    const-string/jumbo v4, ""

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/ads/dde;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 3240
    :cond_15
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/ads/dcz;->a:Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v5, v0, v1, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3241
    invoke-interface {v8, v5}, Lcom/google/android/gms/internal/ads/dde;->add(Ljava/lang/Object;)Z

    .line 3242
    add-int p3, p3, v4

    .line 3243
    goto :goto_12

    .line 3248
    :cond_16
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3249
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    .line 3250
    if-gez v4, :cond_17

    .line 3251
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->b()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3252
    :cond_17
    if-nez v4, :cond_18

    .line 3253
    const-string/jumbo v4, ""

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/ads/dde;->add(Ljava/lang/Object;)Z

    .line 3259
    :goto_13
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3260
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v4

    .line 3261
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3262
    move-object/from16 v0, p2

    move-object/from16 v1, p14

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3263
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    .line 3264
    if-gez v4, :cond_1a

    .line 3265
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->b()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3254
    :cond_18
    add-int v5, p3, v4

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v5}, Lcom/google/android/gms/internal/ads/dgd;->a([BII)Z

    move-result v5

    if-nez v5, :cond_19

    .line 3255
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->i()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3256
    :cond_19
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/ads/dcz;->a:Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v5, v0, v1, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3257
    invoke-interface {v8, v5}, Lcom/google/android/gms/internal/ads/dde;->add(Ljava/lang/Object;)Z

    .line 3258
    add-int p3, p3, v4

    goto :goto_13

    .line 3266
    :cond_1a
    if-nez v4, :cond_1b

    .line 3267
    const-string/jumbo v4, ""

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/ads/dde;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 3268
    :cond_1b
    add-int v5, p3, v4

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v5}, Lcom/google/android/gms/internal/ads/dgd;->a([BII)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 3269
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->i()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3270
    :cond_1c
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/ads/dcz;->a:Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v5, v0, v1, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3271
    invoke-interface {v8, v5}, Lcom/google/android/gms/internal/ads/dde;->add(Ljava/lang/Object;)Z

    .line 3272
    add-int p3, p3, v4

    .line 3273
    goto :goto_13

    .line 3276
    :pswitch_8
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 3278
    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v9

    move/from16 v10, p5

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move-object v14, v8

    move-object/from16 v15, p14

    .line 3279
    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/dbe;->a(Lcom/google/android/gms/internal/ads/dfd;I[BIILcom/google/android/gms/internal/ads/dde;Lcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    goto/16 :goto_2

    .line 3280
    :pswitch_9
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 3283
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3284
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    .line 3285
    if-gez v4, :cond_1d

    .line 3286
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->b()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3287
    :cond_1d
    move-object/from16 v0, p2

    array-length v5, v0

    sub-int v5, v5, p3

    if-le v4, v5, :cond_1e

    .line 3288
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3289
    :cond_1e
    if-nez v4, :cond_1f

    .line 3290
    sget-object v4, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/ads/dde;->add(Ljava/lang/Object;)Z

    .line 3293
    :goto_14
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3294
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v4

    .line 3295
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3296
    move-object/from16 v0, p2

    move-object/from16 v1, p14

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3297
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    .line 3298
    if-gez v4, :cond_20

    .line 3299
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->b()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3291
    :cond_1f
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dbi;->a([BII)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v5

    invoke-interface {v8, v5}, Lcom/google/android/gms/internal/ads/dde;->add(Ljava/lang/Object;)Z

    .line 3292
    add-int p3, p3, v4

    goto :goto_14

    .line 3300
    :cond_20
    move-object/from16 v0, p2

    array-length v5, v0

    sub-int v5, v5, p3

    if-le v4, v5, :cond_21

    .line 3301
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3302
    :cond_21
    if-nez v4, :cond_22

    .line 3303
    sget-object v4, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/ads/dde;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 3304
    :cond_22
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dbi;->a([BII)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v5

    invoke-interface {v8, v5}, Lcom/google/android/gms/internal/ads/dde;->add(Ljava/lang/Object;)Z

    .line 3305
    add-int p3, p3, v4

    .line 3306
    goto :goto_14

    .line 3309
    :pswitch_a
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_24

    .line 3310
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dde;Lcom/google/android/gms/internal/ads/dbh;)I

    move-result v4

    move v5, v4

    :goto_15
    move-object/from16 v4, p1

    .line 3313
    check-cast v4, Lcom/google/android/gms/internal/ads/dcw;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dcw;->zzhxv:Lcom/google/android/gms/internal/ads/dfu;

    .line 3314
    invoke-static {}, Lcom/google/android/gms/internal/ads/dfu;->a()Lcom/google/android/gms/internal/ads/dfu;

    move-result-object v6

    if-ne v4, v6, :cond_23

    .line 3315
    const/4 v4, 0x0

    .line 3317
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dek;->c(I)Lcom/google/android/gms/internal/ads/dda;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dek;->q:Lcom/google/android/gms/internal/ads/dfv;

    .line 3318
    move/from16 v0, p6

    invoke-static {v0, v8, v6, v4, v7}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/dda;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dfv;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/dfu;

    .line 3319
    if-eqz v4, :cond_29

    .line 3320
    check-cast p1, Lcom/google/android/gms/internal/ads/dcw;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dcw;->zzhxv:Lcom/google/android/gms/internal/ads/dfu;

    move/from16 p3, v5

    goto/16 :goto_2

    .line 3311
    :cond_24
    if-nez p7, :cond_0

    move/from16 v4, p5

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p14

    .line 3312
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/dbe;->a(I[BIILcom/google/android/gms/internal/ads/dde;Lcom/google/android/gms/internal/ads/dbh;)I

    move-result v4

    move v5, v4

    goto :goto_15

    .line 3321
    :pswitch_b
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_26

    .line 3323
    check-cast v8, Lcom/google/android/gms/internal/ads/dcx;

    .line 3324
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3325
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    add-int v4, v4, p3

    .line 3326
    :goto_16
    move/from16 v0, p3

    if-ge v0, v4, :cond_25

    .line 3327
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3328
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/dby;->e(I)I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/dcx;->d(I)V

    goto :goto_16

    .line 3329
    :cond_25
    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    .line 3330
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3333
    :cond_26
    if-nez p7, :cond_0

    .line 3335
    check-cast v8, Lcom/google/android/gms/internal/ads/dcx;

    .line 3336
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3337
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/dby;->e(I)I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/dcx;->d(I)V

    .line 3338
    :goto_17
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3339
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v4

    .line 3340
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3341
    move-object/from16 v0, p2

    move-object/from16 v1, p14

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3342
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/dby;->e(I)I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/dcx;->d(I)V

    goto :goto_17

    .line 3346
    :pswitch_c
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_28

    .line 3348
    check-cast v8, Lcom/google/android/gms/internal/ads/ddu;

    .line 3349
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3350
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    add-int v4, v4, p3

    .line 3351
    :goto_18
    move/from16 v0, p3

    if-ge v0, v4, :cond_27

    .line 3352
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3353
    move-object/from16 v0, p14

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/dbh;->b:J

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/dby;->a(J)J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/ads/ddu;->a(J)V

    goto :goto_18

    .line 3354
    :cond_27
    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    .line 3355
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3358
    :cond_28
    if-nez p7, :cond_0

    .line 3360
    check-cast v8, Lcom/google/android/gms/internal/ads/ddu;

    .line 3361
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3362
    move-object/from16 v0, p14

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/dbh;->b:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/dby;->a(J)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/ads/ddu;->a(J)V

    .line 3363
    :goto_19
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3364
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v4

    .line 3365
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3366
    move-object/from16 v0, p2

    move-object/from16 v1, p14

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3367
    move-object/from16 v0, p14

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/dbh;->b:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/dby;->a(J)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/ads/ddu;->a(J)V

    goto :goto_19

    .line 3371
    :pswitch_d
    const/4 v4, 0x3

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 3373
    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v9

    .line 3376
    and-int/lit8 v4, p5, -0x8

    or-int/lit8 v13, v4, 0x4

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v14, p14

    .line 3377
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/dbe;->a(Lcom/google/android/gms/internal/ads/dfd;[BIIILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3378
    move-object/from16 v0, p14

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/ads/dde;->add(Ljava/lang/Object;)Z

    .line 3379
    :goto_1a
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3380
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v11

    .line 3381
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    move/from16 v0, p5

    if-ne v0, v4, :cond_0

    move-object/from16 v10, p2

    move/from16 v12, p4

    move-object/from16 v14, p14

    .line 3382
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/dbe;->a(Lcom/google/android/gms/internal/ads/dfd;[BIIILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3383
    move-object/from16 v0, p14

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/ads/dde;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_29
    move/from16 p3, v5

    goto/16 :goto_2

    :cond_2a
    move-object v8, v4

    goto/16 :goto_1

    .line 3063
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/dbh;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/ads/dbh;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3388
    sget-object v5, Lcom/google/android/gms/internal/ads/dek;->b:Lsun/misc/Unsafe;

    .line 3389
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dek;->b(I)Ljava/lang/Object;

    move-result-object v6

    .line 3390
    move-object/from16 v0, p1

    move-wide/from16 v1, p6

    invoke-virtual {v5, v0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/ddz;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    invoke-interface {v3, v6}, Lcom/google/android/gms/internal/ads/ddz;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3394
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    invoke-interface {v7, v3, v4}, Lcom/google/android/gms/internal/ads/ddz;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3395
    move-object/from16 v0, p1

    move-wide/from16 v1, p6

    invoke-virtual {v5, v0, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3396
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    .line 3397
    invoke-interface {v4, v6}, Lcom/google/android/gms/internal/ads/ddz;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ddx;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    .line 3398
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/ddz;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v12

    .line 3400
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v5

    .line 3401
    move-object/from16 v0, p8

    iget v3, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    .line 3402
    if-ltz v3, :cond_0

    sub-int v4, p4, v5

    if-le v3, v4, :cond_1

    .line 3403
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v3

    throw v3

    .line 3404
    :cond_1
    add-int v13, v5, v3

    .line 3405
    iget-object v4, v11, Lcom/google/android/gms/internal/ads/ddx;->b:Ljava/lang/Object;

    .line 3406
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/ddx;->d:Ljava/lang/Object;

    move-object v9, v3

    move-object v10, v4

    .line 3407
    :goto_1
    if-ge v5, v13, :cond_4

    .line 3408
    add-int/lit8 v4, v5, 0x1

    aget-byte v3, p2, v5

    .line 3409
    if-gez v3, :cond_2

    .line 3410
    move-object/from16 v0, p2

    move-object/from16 v1, p8

    invoke-static {v3, v0, v4, v1}, Lcom/google/android/gms/internal/ads/dbe;->a(I[BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v4

    .line 3411
    move-object/from16 v0, p8

    iget v3, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    .line 3412
    :cond_2
    ushr-int/lit8 v5, v3, 0x3

    .line 3413
    and-int/lit8 v6, v3, 0x7

    .line 3414
    packed-switch v5, :pswitch_data_0

    .line 3426
    :cond_3
    move-object/from16 v0, p2

    move/from16 v1, p4

    move-object/from16 v2, p8

    invoke-static {v3, v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a(I[BIILcom/google/android/gms/internal/ads/dbh;)I

    move-result v3

    move v5, v3

    .line 3427
    goto :goto_1

    .line 3415
    :pswitch_0
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/ddx;->a:Lcom/google/android/gms/internal/ads/dgi;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/dgi;->b()I

    move-result v5

    if-ne v6, v5, :cond_3

    .line 3416
    iget-object v6, v11, Lcom/google/android/gms/internal/ads/ddx;->a:Lcom/google/android/gms/internal/ads/dgi;

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v8, p8

    .line 3417
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/dek;->a([BIILcom/google/android/gms/internal/ads/dgi;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dbh;)I

    move-result v4

    .line 3418
    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    move-object v10, v3

    move v5, v4

    .line 3419
    goto :goto_1

    .line 3420
    :pswitch_1
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/ddx;->c:Lcom/google/android/gms/internal/ads/dgi;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/dgi;->b()I

    move-result v5

    if-ne v6, v5, :cond_3

    .line 3421
    iget-object v6, v11, Lcom/google/android/gms/internal/ads/ddx;->c:Lcom/google/android/gms/internal/ads/dgi;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/ddx;->d:Ljava/lang/Object;

    .line 3422
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v8, p8

    .line 3423
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/dek;->a([BIILcom/google/android/gms/internal/ads/dgi;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dbh;)I

    move-result v4

    .line 3424
    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    move-object v9, v3

    move v5, v4

    .line 3425
    goto :goto_1

    .line 3428
    :cond_4
    if-eq v5, v13, :cond_5

    .line 3429
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->h()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v3

    throw v3

    .line 3430
    :cond_5
    invoke-interface {v12, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3432
    return v13

    :cond_6
    move-object v3, v4

    goto/16 :goto_0

    .line 3414
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a([BIILcom/google/android/gms/internal/ads/dgi;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dbh;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/ads/dgi;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/dbh;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3019
    sget-object v0, Lcom/google/android/gms/internal/ads/dej;->a:[I

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/dgi;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3054
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3020
    :pswitch_0
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v1

    .line 3021
    iget-wide v2, p5, Lcom/google/android/gms/internal/ads/dbh;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p5, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    move v0, v1

    .line 3055
    :goto_1
    return v0

    .line 3021
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3023
    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/dbe;->e([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v0

    goto :goto_1

    .line 3025
    :pswitch_2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/dbe;->c([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p5, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    .line 3026
    add-int/lit8 v0, p1, 0x8

    .line 3027
    goto :goto_1

    .line 3028
    :pswitch_3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/dbe;->a([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p5, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    .line 3029
    add-int/lit8 v0, p1, 0x4

    .line 3030
    goto :goto_1

    .line 3031
    :pswitch_4
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/dbe;->b([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p5, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    .line 3032
    add-int/lit8 v0, p1, 0x8

    .line 3033
    goto :goto_1

    .line 3034
    :pswitch_5
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/dbe;->d([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p5, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    .line 3035
    add-int/lit8 v0, p1, 0x4

    .line 3036
    goto :goto_1

    .line 3037
    :pswitch_6
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v0

    .line 3038
    iget v1, p5, Lcom/google/android/gms/internal/ads/dbh;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p5, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    goto :goto_1

    .line 3040
    :pswitch_7
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v0

    .line 3041
    iget-wide v2, p5, Lcom/google/android/gms/internal/ads/dbh;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p5, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    goto :goto_1

    .line 3043
    :pswitch_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/der;->a()Lcom/google/android/gms/internal/ads/der;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/der;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v0

    .line 3044
    invoke-static {v0, p0, p1, p2, p5}, Lcom/google/android/gms/internal/ads/dbe;->a(Lcom/google/android/gms/internal/ads/dfd;[BIILcom/google/android/gms/internal/ads/dbh;)I

    move-result v0

    goto :goto_1

    .line 3046
    :pswitch_9
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v0

    .line 3047
    iget v1, p5, Lcom/google/android/gms/internal/ads/dbh;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dby;->e(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p5, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    goto :goto_1

    .line 3049
    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v0

    .line 3050
    iget-wide v2, p5, Lcom/google/android/gms/internal/ads/dbh;->b:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/dby;->a(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p5, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    goto/16 :goto_1

    .line 3052
    :pswitch_b
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/dbe;->d([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v0

    goto/16 :goto_1

    .line 3019
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method static a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dee;Lcom/google/android/gms/internal/ads/deo;Lcom/google/android/gms/internal/ads/ddp;Lcom/google/android/gms/internal/ads/dfv;Lcom/google/android/gms/internal/ads/dck;Lcom/google/android/gms/internal/ads/ddz;)Lcom/google/android/gms/internal/ads/dek;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/dee;",
            "Lcom/google/android/gms/internal/ads/deo;",
            "Lcom/google/android/gms/internal/ads/ddp;",
            "Lcom/google/android/gms/internal/ads/dfv",
            "<**>;",
            "Lcom/google/android/gms/internal/ads/dck",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/ddz;",
            ")",
            "Lcom/google/android/gms/internal/ads/dek",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 20
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/google/android/gms/internal/ads/deu;

    if-eqz v2, :cond_22

    .line 21
    check-cast p1, Lcom/google/android/gms/internal/ads/deu;

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/deu;->a()I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/ads/dcw$f;->i:I

    if-ne v2, v3, :cond_0

    const/4 v8, 0x1

    .line 23
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/deu;->d()Ljava/lang/String;

    move-result-object v27

    .line 24
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v28

    .line 26
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 27
    const v3, 0xd800

    if-lt v2, v3, :cond_34

    .line 28
    and-int/lit16 v3, v2, 0x1fff

    .line 29
    const/16 v2, 0xd

    .line 30
    :goto_1
    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_1

    .line 31
    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    .line 32
    add-int/lit8 v2, v2, 0xd

    move v4, v5

    goto :goto_1

    .line 22
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 33
    :cond_1
    shl-int v2, v4, v2

    or-int/2addr v2, v3

    move v7, v2

    .line 35
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 36
    const v3, 0xd800

    if-lt v2, v3, :cond_33

    .line 37
    and-int/lit16 v3, v2, 0x1fff

    .line 38
    const/16 v2, 0xd

    .line 39
    :goto_3
    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_2

    .line 40
    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    .line 41
    add-int/lit8 v2, v2, 0xd

    move v4, v5

    goto :goto_3

    .line 42
    :cond_2
    shl-int v2, v4, v2

    or-int/2addr v2, v3

    move v14, v5

    .line 44
    :goto_4
    if-nez v2, :cond_3

    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v9, 0x0

    .line 49
    const/4 v13, 0x0

    .line 50
    const/4 v11, 0x0

    .line 51
    sget-object v10, Lcom/google/android/gms/internal/ads/dek;->a:[I

    .line 52
    const/4 v2, 0x0

    move v12, v2

    move v15, v3

    .line 127
    :goto_5
    sget-object v29, Lcom/google/android/gms/internal/ads/dek;->b:Lsun/misc/Unsafe;

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/deu;->e()[Ljava/lang/Object;

    move-result-object v30

    .line 129
    const/16 v19, 0x0

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/deu;->c()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    .line 131
    mul-int/lit8 v2, v9, 0x3

    new-array v3, v2, [I

    .line 132
    shl-int/lit8 v2, v9, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    .line 134
    add-int v20, v11, v13

    .line 135
    const/4 v2, 0x0

    move/from16 v26, v2

    move/from16 v18, v11

    move/from16 v17, v12

    .line 136
    :goto_6
    move/from16 v0, v28

    if-ge v14, v0, :cond_21

    .line 137
    add-int/lit8 v12, v14, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 138
    const v9, 0xd800

    if-lt v2, v9, :cond_2c

    .line 139
    and-int/lit16 v9, v2, 0x1fff

    .line 140
    const/16 v2, 0xd

    .line 141
    :goto_7
    add-int/lit8 v14, v12, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v16, 0xd800

    move/from16 v0, v16

    if-lt v12, v0, :cond_e

    .line 142
    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v2

    or-int/2addr v9, v12

    .line 143
    add-int/lit8 v2, v2, 0xd

    move v12, v14

    goto :goto_7

    .line 53
    :cond_3
    add-int/lit8 v4, v14, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 54
    const v3, 0xd800

    if-lt v2, v3, :cond_32

    .line 55
    and-int/lit16 v3, v2, 0x1fff

    .line 56
    const/16 v2, 0xd

    .line 57
    :goto_8
    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_4

    .line 58
    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    .line 59
    add-int/lit8 v2, v2, 0xd

    move v4, v5

    goto :goto_8

    .line 60
    :cond_4
    shl-int v2, v4, v2

    or-int/2addr v2, v3

    .line 62
    :goto_9
    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 63
    const v4, 0xd800

    if-lt v3, v4, :cond_6

    .line 64
    and-int/lit16 v4, v3, 0x1fff

    .line 65
    const/16 v3, 0xd

    move v5, v6

    .line 66
    :goto_a
    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v9, 0xd800

    if-lt v5, v9, :cond_5

    .line 67
    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v3

    or-int/2addr v4, v5

    .line 68
    add-int/lit8 v3, v3, 0xd

    move v5, v6

    goto :goto_a

    .line 69
    :cond_5
    shl-int v3, v5, v3

    or-int/2addr v3, v4

    .line 71
    :cond_6
    add-int/lit8 v9, v6, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 72
    const v5, 0xd800

    if-lt v4, v5, :cond_8

    .line 73
    and-int/lit16 v5, v4, 0x1fff

    .line 74
    const/16 v4, 0xd

    move v6, v9

    .line 75
    :goto_b
    add-int/lit8 v9, v6, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v10, 0xd800

    if-lt v6, v10, :cond_7

    .line 76
    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    .line 77
    add-int/lit8 v4, v4, 0xd

    move v6, v9

    goto :goto_b

    .line 78
    :cond_7
    shl-int v4, v6, v4

    or-int/2addr v4, v5

    .line 80
    :cond_8
    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 81
    const v6, 0xd800

    if-lt v5, v6, :cond_31

    .line 82
    and-int/lit16 v6, v5, 0x1fff

    .line 83
    const/16 v5, 0xd

    move v9, v10

    .line 84
    :goto_c
    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const v11, 0xd800

    if-lt v9, v11, :cond_9

    .line 85
    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v5

    or-int/2addr v6, v9

    .line 86
    add-int/lit8 v5, v5, 0xd

    move v9, v10

    goto :goto_c

    .line 87
    :cond_9
    shl-int v5, v9, v5

    or-int/2addr v5, v6

    move v6, v5

    .line 89
    :goto_d
    add-int/lit8 v11, v10, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 90
    const v9, 0xd800

    if-lt v5, v9, :cond_30

    .line 91
    and-int/lit16 v9, v5, 0x1fff

    .line 92
    const/16 v5, 0xd

    move v10, v11

    .line 93
    :goto_e
    add-int/lit8 v11, v10, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v12, 0xd800

    if-lt v10, v12, :cond_a

    .line 94
    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v5

    or-int/2addr v9, v10

    .line 95
    add-int/lit8 v5, v5, 0xd

    move v10, v11

    goto :goto_e

    .line 96
    :cond_a
    shl-int v5, v10, v5

    or-int/2addr v5, v9

    move v9, v5

    .line 98
    :goto_f
    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 99
    const v10, 0xd800

    if-lt v5, v10, :cond_2f

    .line 100
    and-int/lit16 v10, v5, 0x1fff

    .line 101
    const/16 v5, 0xd

    move v11, v12

    .line 102
    :goto_10
    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const v13, 0xd800

    if-lt v11, v13, :cond_b

    .line 103
    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v5

    or-int/2addr v10, v11

    .line 104
    add-int/lit8 v5, v5, 0xd

    move v11, v12

    goto :goto_10

    .line 105
    :cond_b
    shl-int v5, v11, v5

    or-int/2addr v5, v10

    move v13, v5

    .line 107
    :goto_11
    add-int/lit8 v11, v12, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 108
    const v10, 0xd800

    if-lt v5, v10, :cond_2e

    .line 109
    and-int/lit16 v10, v5, 0x1fff

    .line 110
    const/16 v5, 0xd

    .line 111
    :goto_12
    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const v14, 0xd800

    if-lt v11, v14, :cond_c

    .line 112
    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v5

    or-int/2addr v10, v11

    .line 113
    add-int/lit8 v5, v5, 0xd

    move v11, v12

    goto :goto_12

    .line 114
    :cond_c
    shl-int v5, v11, v5

    or-int/2addr v5, v10

    .line 116
    :goto_13
    add-int/lit8 v14, v12, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 117
    const v11, 0xd800

    if-lt v10, v11, :cond_2d

    .line 118
    and-int/lit16 v11, v10, 0x1fff

    .line 119
    const/16 v10, 0xd

    move v12, v14

    .line 120
    :goto_14
    add-int/lit8 v14, v12, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v15, 0xd800

    if-lt v12, v15, :cond_d

    .line 121
    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v10

    or-int/2addr v11, v12

    .line 122
    add-int/lit8 v10, v10, 0xd

    move v12, v14

    goto :goto_14

    .line 123
    :cond_d
    shl-int v10, v12, v10

    or-int/2addr v10, v11

    move v11, v10

    .line 125
    :goto_15
    add-int v10, v11, v13

    add-int/2addr v5, v10

    new-array v10, v5, [I

    .line 126
    shl-int/lit8 v5, v2, 0x1

    add-int/2addr v3, v5

    move v12, v3

    move v5, v4

    move v15, v2

    goto/16 :goto_5

    .line 144
    :cond_e
    shl-int v2, v12, v2

    or-int/2addr v2, v9

    move v9, v2

    .line 146
    :goto_16
    add-int/lit8 v16, v14, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 147
    const v12, 0xd800

    if-lt v2, v12, :cond_2b

    .line 148
    and-int/lit16 v12, v2, 0x1fff

    .line 149
    const/16 v2, 0xd

    move/from16 v14, v16

    .line 150
    :goto_17
    add-int/lit8 v16, v14, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const v21, 0xd800

    move/from16 v0, v21

    if-lt v14, v0, :cond_f

    .line 151
    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v2

    or-int/2addr v12, v14

    .line 152
    add-int/lit8 v2, v2, 0xd

    move/from16 v14, v16

    goto :goto_17

    .line 153
    :cond_f
    shl-int v2, v14, v2

    or-int/2addr v2, v12

    move/from16 v25, v2

    move/from16 v23, v16

    .line 155
    :goto_18
    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    .line 156
    move/from16 v0, v25

    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_2a

    .line 157
    add-int/lit8 v2, v19, 0x1

    aput v26, v10, v19

    move/from16 v24, v2

    .line 158
    :goto_19
    const/16 v2, 0x33

    move/from16 v0, v32

    if-lt v0, v2, :cond_15

    .line 159
    add-int/lit8 v14, v23, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 160
    const v12, 0xd800

    if-lt v2, v12, :cond_29

    .line 161
    and-int/lit16 v12, v2, 0x1fff

    .line 162
    const/16 v2, 0xd

    .line 163
    :goto_1a
    add-int/lit8 v16, v14, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const v19, 0xd800

    move/from16 v0, v19

    if-lt v14, v0, :cond_10

    .line 164
    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v2

    or-int/2addr v12, v14

    .line 165
    add-int/lit8 v2, v2, 0xd

    move/from16 v14, v16

    goto :goto_1a

    .line 166
    :cond_10
    shl-int v2, v14, v2

    or-int/2addr v2, v12

    move/from16 v21, v2

    move/from16 v19, v16

    .line 168
    :goto_1b
    add-int/lit8 v2, v32, -0x33

    .line 169
    const/16 v12, 0x9

    if-eq v2, v12, :cond_11

    const/16 v12, 0x11

    if-ne v2, v12, :cond_12

    .line 170
    :cond_11
    div-int/lit8 v2, v26, 0x3

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v12, v2, 0x1

    add-int/lit8 v2, v17, 0x1

    aget-object v14, v30, v17

    aput-object v14, v4, v12

    move v12, v2

    .line 174
    :goto_1c
    shl-int/lit8 v14, v21, 0x1

    .line 175
    aget-object v2, v30, v14

    .line 176
    instance-of v0, v2, Ljava/lang/reflect/Field;

    move/from16 v16, v0

    if-eqz v16, :cond_13

    .line 177
    check-cast v2, Ljava/lang/reflect/Field;

    .line 180
    :goto_1d
    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v17, v0

    .line 181
    add-int/lit8 v14, v14, 0x1

    .line 182
    aget-object v2, v30, v14

    .line 183
    instance-of v0, v2, Ljava/lang/reflect/Field;

    move/from16 v16, v0

    if-eqz v16, :cond_14

    .line 184
    check-cast v2, Ljava/lang/reflect/Field;

    .line 187
    :goto_1e
    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v2, v0

    .line 188
    const/4 v14, 0x0

    move/from16 v16, v14

    move/from16 v21, v18

    move/from16 v22, v12

    move/from16 v23, v19

    .line 227
    :goto_1f
    add-int/lit8 v14, v26, 0x1

    aput v9, v3, v26

    .line 228
    add-int/lit8 v18, v14, 0x1

    .line 229
    move/from16 v0, v25

    and-int/lit16 v9, v0, 0x200

    if-eqz v9, :cond_1f

    const/high16 v9, 0x20000000

    move v12, v9

    .line 230
    :goto_20
    move/from16 v0, v25

    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_20

    const/high16 v9, 0x10000000

    :goto_21
    or-int/2addr v9, v12

    shl-int/lit8 v12, v32, 0x14

    or-int/2addr v9, v12

    or-int v9, v9, v17

    aput v9, v3, v14

    .line 231
    add-int/lit8 v9, v18, 0x1

    shl-int/lit8 v12, v16, 0x14

    or-int/2addr v2, v12

    aput v2, v3, v18

    move/from16 v26, v9

    move/from16 v18, v21

    move/from16 v19, v24

    move/from16 v17, v22

    move/from16 v14, v23

    .line 232
    goto/16 :goto_6

    .line 171
    :cond_12
    const/16 v12, 0xc

    if-ne v2, v12, :cond_28

    .line 172
    and-int/lit8 v2, v7, 0x1

    const/4 v12, 0x1

    if-ne v2, v12, :cond_28

    .line 173
    div-int/lit8 v2, v26, 0x3

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v12, v2, 0x1

    add-int/lit8 v2, v17, 0x1

    aget-object v14, v30, v17

    aput-object v14, v4, v12

    move v12, v2

    goto :goto_1c

    .line 178
    :cond_13
    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 179
    aput-object v2, v30, v14

    goto :goto_1d

    .line 185
    :cond_14
    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 186
    aput-object v2, v30, v14

    goto :goto_1e

    .line 190
    :cond_15
    add-int/lit8 v14, v17, 0x1

    aget-object v2, v30, v17

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v17

    .line 191
    const/16 v2, 0x9

    move/from16 v0, v32

    if-eq v0, v2, :cond_16

    const/16 v2, 0x11

    move/from16 v0, v32

    if-ne v0, v2, :cond_17

    .line 192
    :cond_16
    div-int/lit8 v2, v26, 0x3

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v4, v2

    move/from16 v12, v18

    .line 203
    :goto_22
    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v19, v0

    .line 204
    and-int/lit8 v2, v7, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_1e

    const/16 v2, 0x11

    move/from16 v0, v32

    if-gt v0, v2, :cond_1e

    .line 205
    add-int/lit8 v17, v23, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 206
    const v16, 0xd800

    move/from16 v0, v16

    if-lt v2, v0, :cond_25

    .line 207
    and-int/lit16 v0, v2, 0x1fff

    move/from16 v16, v0

    .line 208
    const/16 v2, 0xd

    .line 209
    :goto_23
    add-int/lit8 v18, v17, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const v21, 0xd800

    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_1c

    .line 210
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x1fff

    move/from16 v17, v0

    shl-int v17, v17, v2

    or-int v16, v16, v17

    .line 211
    add-int/lit8 v2, v2, 0xd

    move/from16 v17, v18

    goto :goto_23

    .line 193
    :cond_17
    const/16 v2, 0x1b

    move/from16 v0, v32

    if-eq v0, v2, :cond_18

    const/16 v2, 0x31

    move/from16 v0, v32

    if-ne v0, v2, :cond_19

    .line 194
    :cond_18
    div-int/lit8 v2, v26, 0x3

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v12, v2, 0x1

    add-int/lit8 v2, v14, 0x1

    aget-object v14, v30, v14

    aput-object v14, v4, v12

    move/from16 v12, v18

    move v14, v2

    goto :goto_22

    .line 195
    :cond_19
    const/16 v2, 0xc

    move/from16 v0, v32

    if-eq v0, v2, :cond_1a

    const/16 v2, 0x1e

    move/from16 v0, v32

    if-eq v0, v2, :cond_1a

    const/16 v2, 0x2c

    move/from16 v0, v32

    if-ne v0, v2, :cond_1b

    .line 196
    :cond_1a
    and-int/lit8 v2, v7, 0x1

    const/4 v12, 0x1

    if-ne v2, v12, :cond_27

    .line 197
    div-int/lit8 v2, v26, 0x3

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v12, v2, 0x1

    add-int/lit8 v2, v14, 0x1

    aget-object v14, v30, v14

    aput-object v14, v4, v12

    move/from16 v12, v18

    move v14, v2

    goto/16 :goto_22

    .line 198
    :cond_1b
    const/16 v2, 0x32

    move/from16 v0, v32

    if-ne v0, v2, :cond_27

    .line 199
    add-int/lit8 v2, v18, 0x1

    aput v26, v10, v18

    .line 200
    div-int/lit8 v12, v26, 0x3

    shl-int/lit8 v12, v12, 0x1

    add-int/lit8 v16, v14, 0x1

    aget-object v14, v30, v14

    aput-object v14, v4, v12

    .line 201
    move/from16 v0, v25

    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_26

    .line 202
    div-int/lit8 v12, v26, 0x3

    shl-int/lit8 v12, v12, 0x1

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v14, v16, 0x1

    aget-object v16, v30, v16

    aput-object v16, v4, v12

    move v12, v2

    goto/16 :goto_22

    .line 212
    :cond_1c
    shl-int v2, v17, v2

    or-int v2, v2, v16

    move/from16 v16, v2

    .line 214
    :goto_24
    shl-int/lit8 v2, v15, 0x1

    div-int/lit8 v17, v16, 0x20

    add-int v17, v17, v2

    .line 215
    aget-object v2, v30, v17

    .line 216
    instance-of v0, v2, Ljava/lang/reflect/Field;

    move/from16 v21, v0

    if-eqz v21, :cond_1d

    .line 217
    check-cast v2, Ljava/lang/reflect/Field;

    .line 220
    :goto_25
    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v2, v0

    .line 221
    rem-int/lit8 v16, v16, 0x20

    move/from16 v23, v18

    .line 225
    :goto_26
    const/16 v17, 0x12

    move/from16 v0, v32

    move/from16 v1, v17

    if-lt v0, v1, :cond_24

    const/16 v17, 0x31

    move/from16 v0, v32

    move/from16 v1, v17

    if-gt v0, v1, :cond_24

    .line 226
    add-int/lit8 v18, v20, 0x1

    aput v19, v10, v20

    move/from16 v17, v19

    move/from16 v20, v18

    move/from16 v21, v12

    move/from16 v22, v14

    goto/16 :goto_1f

    .line 218
    :cond_1d
    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 219
    aput-object v2, v30, v17

    goto :goto_25

    .line 223
    :cond_1e
    const/4 v2, 0x0

    .line 224
    const/16 v16, 0x0

    goto :goto_26

    .line 229
    :cond_1f
    const/4 v9, 0x0

    move v12, v9

    goto/16 :goto_20

    .line 230
    :cond_20
    const/4 v9, 0x0

    goto/16 :goto_21

    .line 233
    :cond_21
    new-instance v2, Lcom/google/android/gms/internal/ads/dek;

    .line 234
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/deu;->c()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v7

    const/4 v9, 0x0

    add-int v12, v11, v13

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/internal/ads/dek;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/deg;ZZ[IIILcom/google/android/gms/internal/ads/deo;Lcom/google/android/gms/internal/ads/ddp;Lcom/google/android/gms/internal/ads/dfv;Lcom/google/android/gms/internal/ads/dck;Lcom/google/android/gms/internal/ads/ddz;)V

    .line 235
    return-object v2

    .line 236
    :cond_22
    check-cast p1, Lcom/google/android/gms/internal/ads/dfo;

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dfo;->a()I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/ads/dcw$f;->i:I

    if-ne v2, v3, :cond_23

    .line 238
    :cond_23
    new-instance v2, Ljava/lang/NoSuchMethodError;

    invoke-direct {v2}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v2

    :cond_24
    move/from16 v17, v19

    move/from16 v21, v12

    move/from16 v22, v14

    goto/16 :goto_1f

    :cond_25
    move/from16 v16, v2

    move/from16 v18, v17

    goto/16 :goto_24

    :cond_26
    move v12, v2

    move/from16 v14, v16

    goto/16 :goto_22

    :cond_27
    move/from16 v12, v18

    goto/16 :goto_22

    :cond_28
    move/from16 v12, v17

    goto/16 :goto_1c

    :cond_29
    move/from16 v21, v2

    move/from16 v19, v14

    goto/16 :goto_1b

    :cond_2a
    move/from16 v24, v19

    goto/16 :goto_19

    :cond_2b
    move/from16 v25, v2

    move/from16 v23, v16

    goto/16 :goto_18

    :cond_2c
    move v9, v2

    move v14, v12

    goto/16 :goto_16

    :cond_2d
    move v11, v10

    goto/16 :goto_15

    :cond_2e
    move v12, v11

    goto/16 :goto_13

    :cond_2f
    move v13, v5

    goto/16 :goto_11

    :cond_30
    move v9, v5

    goto/16 :goto_f

    :cond_31
    move v6, v5

    goto/16 :goto_d

    :cond_32
    move v5, v4

    goto/16 :goto_9

    :cond_33
    move v14, v4

    goto/16 :goto_4

    :cond_34
    move v7, v2

    move v5, v4

    goto/16 :goto_2
.end method

.method private final a(I)Lcom/google/android/gms/internal/ads/dfd;
    .locals 4

    .prologue
    .line 3527
    div-int/lit8 v0, p1, 0x3

    shl-int/lit8 v1, v0, 0x1

    .line 3528
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->d:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/android/gms/internal/ads/dfd;

    .line 3529
    if-eqz v0, :cond_0

    .line 3533
    :goto_0
    return-object v0

    .line 3531
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/der;->a()Lcom/google/android/gms/internal/ads/der;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->d:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/der;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v0

    .line 3532
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->d:[Ljava/lang/Object;

    aput-object v0, v2, v1

    goto :goto_0
.end method

.method private final a(IILjava/util/Map;Lcom/google/android/gms/internal/ads/dda;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dfv;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/android/gms/internal/ads/dda;",
            "TUB;",
            "Lcom/google/android/gms/internal/ads/dfv",
            "<TUT;TUB;>;)TUB;"
        }
    .end annotation

    .prologue
    .line 3893
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    .line 3894
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dek;->b(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ddz;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ddx;

    move-result-object v2

    .line 3895
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3896
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3897
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/android/gms/internal/ads/dda;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3898
    if-nez p5, :cond_1

    .line 3899
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/dfv;->a()Ljava/lang/Object;

    move-result-object p5

    .line 3901
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/google/android/gms/internal/ads/ddy;->a(Lcom/google/android/gms/internal/ads/ddx;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 3902
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbi;->c(I)Lcom/google/android/gms/internal/ads/dbq;

    move-result-object v1

    .line 3903
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dbq;->b()Lcom/google/android/gms/internal/ads/zzebk;

    move-result-object v4

    .line 3904
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v2, v5, v0}, Lcom/google/android/gms/internal/ads/ddy;->a(Lcom/google/android/gms/internal/ads/zzebk;Lcom/google/android/gms/internal/ads/ddx;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3908
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dbq;->a()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/android/gms/internal/ads/dfv;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/dbi;)V

    .line 3909
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 3906
    :catch_0
    move-exception v0

    .line 3907
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3911
    :cond_2
    return-object p5
.end method

.method private final a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfv;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/android/gms/internal/ads/dfv",
            "<TUT;TUB;>;)TUB;"
        }
    .end annotation

    .prologue
    .line 3877
    .line 3878
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v2, v0, p2

    .line 3880
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/dek;->d(I)I

    move-result v0

    .line 3881
    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 3883
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 3884
    if-nez v0, :cond_1

    .line 3892
    :cond_0
    :goto_0
    return-object p3

    .line 3886
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/dek;->c(I)Lcom/google/android/gms/internal/ads/dda;

    move-result-object v4

    .line 3887
    if-eqz v4, :cond_0

    .line 3889
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ddz;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    move v1, p2

    move-object v5, p3

    move-object v6, p4

    .line 3891
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/dek;->a(IILjava/util/Map;Lcom/google/android/gms/internal/ads/dda;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dfv;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 239
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 244
    :cond_0
    return-object v0

    .line 241
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 242
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 243
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 245
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 246
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 247
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Field "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " not found. Known fields are "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/Object;J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1219
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V
    .locals 1

    .prologue
    .line 3983
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3984
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/dgo;->a(ILjava/lang/String;)V

    .line 3986
    :goto_0
    return-void

    .line 3985
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/dbi;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/dgo;->a(ILcom/google/android/gms/internal/ads/dbi;)V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dfv;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/dfv",
            "<TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/ads/dgo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2499
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/dfv;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V

    .line 2500
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dgo;ILjava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/dgo;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 2493
    if-eqz p3, :cond_0

    .line 2494
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    .line 2495
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/dek;->b(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ddz;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ddx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    .line 2496
    invoke-interface {v1, p3}, Lcom/google/android/gms/internal/ads/ddz;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 2497
    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/dgo;->a(ILcom/google/android/gms/internal/ads/ddx;Ljava/util/Map;)V

    .line 2498
    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/dex;)V
    .locals 3

    .prologue
    const v1, 0xfffff

    .line 3987
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dek;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3989
    and-int v0, p2, v1

    int-to-long v0, v0

    .line 3990
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/dex;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3998
    :goto_0
    return-void

    .line 3991
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dek;->i:Z

    if-eqz v0, :cond_1

    .line 3993
    and-int v0, p2, v1

    int-to-long v0, v0

    .line 3994
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/dex;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 3996
    :cond_1
    and-int v0, p2, v1

    int-to-long v0, v0

    .line 3997
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/dex;->n()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .prologue
    .line 540
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/dek;->d(I)I

    move-result v0

    .line 541
    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 543
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 546
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 547
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 548
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/dcz;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 549
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 550
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto :goto_0

    .line 551
    :cond_2
    if-eqz v3, :cond_0

    .line 552
    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 553
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private final a(Ljava/lang/Object;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .prologue
    const v4, 0xfffff

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4011
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dek;->j:Z

    if-eqz v0, :cond_14

    .line 4012
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/dek;->d(I)I

    move-result v0

    .line 4014
    and-int v3, v0, v4

    int-to-long v4, v3

    .line 4017
    const/high16 v3, 0xff00000

    and-int/2addr v0, v3

    ushr-int/lit8 v0, v0, 0x14

    .line 4018
    packed-switch v0, :pswitch_data_0

    .line 4042
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4019
    :pswitch_0
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_0

    move v0, v1

    .line 4045
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 4019
    goto :goto_0

    .line 4020
    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->d(Ljava/lang/Object;J)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 4021
    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 4022
    :pswitch_3
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 4023
    :pswitch_4
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    .line 4024
    :pswitch_5
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    .line 4025
    :pswitch_6
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    .line 4026
    :pswitch_7
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->c(Ljava/lang/Object;J)Z

    move-result v0

    goto :goto_0

    .line 4027
    :pswitch_8
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 4028
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 4029
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0

    .line 4030
    :cond_8
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/dbi;

    if-eqz v3, :cond_a

    .line 4031
    sget-object v3, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/dbi;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    move v0, v2

    goto :goto_0

    .line 4032
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4033
    :pswitch_9
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    move v0, v2

    goto :goto_0

    .line 4034
    :pswitch_a
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dbi;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto/16 :goto_0

    .line 4035
    :pswitch_b
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto/16 :goto_0

    .line 4036
    :pswitch_c
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    goto/16 :goto_0

    :cond_e
    move v0, v2

    goto/16 :goto_0

    .line 4037
    :pswitch_d
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_f
    move v0, v2

    goto/16 :goto_0

    .line 4038
    :pswitch_e
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_10

    move v0, v1

    goto/16 :goto_0

    :cond_10
    move v0, v2

    goto/16 :goto_0

    .line 4039
    :pswitch_f
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    goto/16 :goto_0

    :cond_11
    move v0, v2

    goto/16 :goto_0

    .line 4040
    :pswitch_10
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_12

    move v0, v1

    goto/16 :goto_0

    :cond_12
    move v0, v2

    goto/16 :goto_0

    .line 4041
    :pswitch_11
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    move v0, v1

    goto/16 :goto_0

    :cond_13
    move v0, v2

    goto/16 :goto_0

    .line 4043
    :cond_14
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/dek;->e(I)I

    move-result v0

    .line 4044
    ushr-int/lit8 v3, v0, 0x14

    shl-int v3, v1, v3

    .line 4045
    and-int/2addr v0, v4

    int-to-long v4, v0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    and-int/2addr v0, v3

    if-eqz v0, :cond_15

    move v0, v1

    goto/16 :goto_0

    :cond_15
    move v0, v2

    goto/16 :goto_0

    .line 4018
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .prologue
    .line 4055
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/dek;->e(I)I

    move-result v0

    .line 4056
    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final a(Ljava/lang/Object;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    .prologue
    .line 4008
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dek;->j:Z

    if-eqz v0, :cond_0

    .line 4009
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    .line 4010
    :goto_0
    return v0

    :cond_0
    and-int v0, p3, p4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/dfd;)Z
    .locals 2

    .prologue
    .line 3979
    .line 3980
    const v0, 0xfffff

    and-int/2addr v0, p1

    int-to-long v0, v0

    .line 3981
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 3982
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/dfd;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/Object;J)D
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .prologue
    .line 4002
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private final b(II)I
    .locals 4

    .prologue
    .line 4066
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 4067
    :goto_0
    if-gt p2, v1, :cond_2

    .line 4068
    add-int v0, v1, p2

    ushr-int/lit8 v2, v0, 0x1

    .line 4069
    mul-int/lit8 v0, v2, 0x3

    .line 4071
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v3, v3, v0

    .line 4073
    if-ne p1, v3, :cond_0

    .line 4079
    :goto_1
    return v0

    .line 4075
    :cond_0
    if-ge p1, v3, :cond_1

    .line 4076
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    goto :goto_0

    .line 4077
    :cond_1
    add-int/lit8 p2, v2, 0x1

    .line 4078
    goto :goto_0

    .line 4079
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private final b(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3534
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->d:[Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3

    shl-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private final b(Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 4046
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dek;->j:Z

    if-eqz v0, :cond_0

    .line 4054
    :goto_0
    return-void

    .line 4048
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/dek;->e(I)I

    move-result v0

    .line 4049
    const/4 v1, 0x1

    ushr-int/lit8 v2, v0, 0x14

    shl-int/2addr v1, v2

    .line 4050
    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 4052
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    or-int/2addr v0, v1

    .line 4053
    invoke-static {p1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JI)V

    goto :goto_0
.end method

.method private final b(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .prologue
    .line 4057
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/dek;->e(I)I

    move-result v0

    .line 4058
    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JI)V

    .line 4059
    return-void
.end method

.method private final b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/dgo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2167
    const/4 v5, 0x0

    .line 2168
    const/4 v4, 0x0

    .line 2169
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/dek;->h:Z

    if-eqz v6, :cond_0

    .line 2170
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/dck;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v6

    .line 2172
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/dfe;->isEmpty()Z

    move-result v7

    .line 2173
    if-nez v7, :cond_0

    .line 2174
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dcl;->d()Ljava/util/Iterator;

    move-result-object v5

    .line 2175
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2176
    :cond_0
    const/4 v8, -0x1

    .line 2177
    const/4 v6, 0x0

    .line 2178
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    array-length v13, v7

    .line 2179
    sget-object v14, Lcom/google/android/gms/internal/ads/dek;->b:Lsun/misc/Unsafe;

    .line 2180
    const/4 v7, 0x0

    move v12, v7

    move-object v9, v4

    :goto_0
    if-ge v12, v13, :cond_8

    .line 2181
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/dek;->d(I)I

    move-result v15

    .line 2183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v16, v4, v12

    .line 2186
    const/high16 v4, 0xff00000

    and-int/2addr v4, v15

    ushr-int/lit8 v17, v4, 0x14

    .line 2188
    const/4 v4, 0x0

    .line 2189
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/dek;->j:Z

    if-nez v7, :cond_7

    const/16 v7, 0x11

    move/from16 v0, v17

    if-gt v0, v7, :cond_7

    .line 2190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    add-int/lit8 v7, v12, 0x2

    aget v10, v4, v7

    .line 2191
    const v4, 0xfffff

    and-int v7, v10, v4

    .line 2192
    if-eq v7, v8, :cond_6

    .line 2194
    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v14, v0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    .line 2195
    :goto_1
    const/4 v6, 0x1

    ushr-int/lit8 v8, v10, 0x14

    shl-int/2addr v6, v8

    move v10, v6

    move v11, v4

    move v8, v7

    .line 2196
    :goto_2
    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/dck;->a(Ljava/util/Map$Entry;)I

    move-result v4

    move/from16 v0, v16

    if-gt v4, v0, :cond_2

    .line 2197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v9}, Lcom/google/android/gms/internal/ads/dck;->a(Lcom/google/android/gms/internal/ads/dgo;Ljava/util/Map$Entry;)V

    .line 2198
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    :goto_3
    move-object v9, v4

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_3

    .line 2200
    :cond_2
    const v4, 0xfffff

    and-int/2addr v4, v15

    int-to-long v6, v4

    .line 2202
    packed-switch v17, :pswitch_data_0

    .line 2487
    :cond_3
    :goto_4
    add-int/lit8 v4, v12, 0x3

    move v12, v4

    move v6, v11

    goto :goto_0

    .line 2203
    :pswitch_0
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2205
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->e(Ljava/lang/Object;J)D

    move-result-wide v6

    .line 2206
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->a(ID)V

    goto :goto_4

    .line 2207
    :pswitch_1
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2209
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->d(Ljava/lang/Object;J)F

    move-result v4

    .line 2210
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dgo;->a(IF)V

    goto :goto_4

    .line 2211
    :pswitch_2
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2212
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->a(IJ)V

    goto :goto_4

    .line 2213
    :pswitch_3
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2214
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->c(IJ)V

    goto :goto_4

    .line 2215
    :pswitch_4
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2216
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dgo;->c(II)V

    goto :goto_4

    .line 2217
    :pswitch_5
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2218
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->d(IJ)V

    goto :goto_4

    .line 2219
    :pswitch_6
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2220
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dgo;->d(II)V

    goto/16 :goto_4

    .line 2221
    :pswitch_7
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2223
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->c(Ljava/lang/Object;J)Z

    move-result v4

    .line 2224
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dgo;->a(IZ)V

    goto/16 :goto_4

    .line 2225
    :pswitch_8
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2226
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/dek;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V

    goto/16 :goto_4

    .line 2227
    :pswitch_9
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2228
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2229
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4, v6}, Lcom/google/android/gms/internal/ads/dgo;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfd;)V

    goto/16 :goto_4

    .line 2231
    :pswitch_a
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2232
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/dbi;

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dgo;->a(ILcom/google/android/gms/internal/ads/dbi;)V

    goto/16 :goto_4

    .line 2233
    :pswitch_b
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2234
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dgo;->e(II)V

    goto/16 :goto_4

    .line 2235
    :pswitch_c
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2236
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dgo;->b(II)V

    goto/16 :goto_4

    .line 2237
    :pswitch_d
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2238
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dgo;->a(II)V

    goto/16 :goto_4

    .line 2239
    :pswitch_e
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2240
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->b(IJ)V

    goto/16 :goto_4

    .line 2241
    :pswitch_f
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2242
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dgo;->f(II)V

    goto/16 :goto_4

    .line 2243
    :pswitch_10
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2244
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->e(IJ)V

    goto/16 :goto_4

    .line 2245
    :pswitch_11
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2247
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v6

    .line 2248
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4, v6}, Lcom/google/android/gms/internal/ads/dgo;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfd;)V

    goto/16 :goto_4

    .line 2251
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2252
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2253
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2257
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2258
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2259
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2263
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2264
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2265
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->c(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2269
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2270
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2271
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->d(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2275
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2276
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2277
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->h(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2281
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2282
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2283
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->f(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2287
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2288
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2289
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2293
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2294
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2295
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->n(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2299
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2300
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2301
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;)V

    goto/16 :goto_4

    .line 2305
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2307
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2308
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v6

    .line 2309
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Lcom/google/android/gms/internal/ads/dfd;)V

    goto/16 :goto_4

    .line 2313
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2314
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2315
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0}, Lcom/google/android/gms/internal/ads/dff;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;)V

    goto/16 :goto_4

    .line 2319
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2320
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2321
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->i(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2325
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2326
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2327
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->m(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2331
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2332
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2333
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->l(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2337
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2338
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2339
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->g(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2343
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2344
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2345
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->j(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2349
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2350
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2351
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2355
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2356
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2357
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2361
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2362
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2363
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2367
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2368
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2369
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->c(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2373
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2374
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2375
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->d(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2379
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2380
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2381
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->h(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2385
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2386
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2387
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->f(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2391
    :pswitch_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2392
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2393
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2397
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2398
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2399
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->n(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2403
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2404
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2405
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->i(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2409
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2410
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2411
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->m(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2415
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2416
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2417
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->l(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2421
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2422
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2423
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->g(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2427
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2428
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2429
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->j(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2433
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2434
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2435
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_4

    .line 2439
    :pswitch_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v10, v4, v12

    .line 2441
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2442
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v6

    .line 2443
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/ads/dff;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Lcom/google/android/gms/internal/ads/dfd;)V

    goto/16 :goto_4

    .line 2445
    :pswitch_32
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v4, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Lcom/google/android/gms/internal/ads/dgo;ILjava/lang/Object;I)V

    goto/16 :goto_4

    .line 2447
    :pswitch_33
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2448
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;J)D

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->a(ID)V

    goto/16 :goto_4

    .line 2449
    :pswitch_34
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2450
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;J)F

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dgo;->a(IF)V

    goto/16 :goto_4

    .line 2451
    :pswitch_35
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2452
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->a(IJ)V

    goto/16 :goto_4

    .line 2453
    :pswitch_36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2454
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->c(IJ)V

    goto/16 :goto_4

    .line 2455
    :pswitch_37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2456
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dgo;->c(II)V

    goto/16 :goto_4

    .line 2457
    :pswitch_38
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2458
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->d(IJ)V

    goto/16 :goto_4

    .line 2459
    :pswitch_39
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2460
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dgo;->d(II)V

    goto/16 :goto_4

    .line 2461
    :pswitch_3a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2462
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->f(Ljava/lang/Object;J)Z

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dgo;->a(IZ)V

    goto/16 :goto_4

    .line 2463
    :pswitch_3b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2464
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/dek;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V

    goto/16 :goto_4

    .line 2465
    :pswitch_3c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2466
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2467
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4, v6}, Lcom/google/android/gms/internal/ads/dgo;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfd;)V

    goto/16 :goto_4

    .line 2469
    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2470
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/dbi;

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dgo;->a(ILcom/google/android/gms/internal/ads/dbi;)V

    goto/16 :goto_4

    .line 2471
    :pswitch_3e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2472
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dgo;->e(II)V

    goto/16 :goto_4

    .line 2473
    :pswitch_3f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2474
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dgo;->b(II)V

    goto/16 :goto_4

    .line 2475
    :pswitch_40
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2476
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dgo;->a(II)V

    goto/16 :goto_4

    .line 2477
    :pswitch_41
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2478
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->b(IJ)V

    goto/16 :goto_4

    .line 2479
    :pswitch_42
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2480
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/dgo;->f(II)V

    goto/16 :goto_4

    .line 2481
    :pswitch_43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2482
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->e(IJ)V

    goto/16 :goto_4

    .line 2483
    :pswitch_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2485
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v6

    .line 2486
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4, v6}, Lcom/google/android/gms/internal/ads/dgo;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfd;)V

    goto/16 :goto_4

    .line 2490
    :cond_4
    const/4 v4, 0x0

    .line 2488
    :goto_5
    if-eqz v4, :cond_5

    .line 2489
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v4}, Lcom/google/android/gms/internal/ads/dck;->a(Lcom/google/android/gms/internal/ads/dgo;Ljava/util/Map$Entry;)V

    .line 2490
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    goto :goto_5

    .line 2491
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->q:Lcom/google/android/gms/internal/ads/dfv;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Lcom/google/android/gms/internal/ads/dfv;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V

    .line 2492
    return-void

    :cond_6
    move v4, v6

    move v7, v8

    goto/16 :goto_1

    :cond_7
    move v10, v4

    move v11, v6

    goto/16 :goto_2

    :cond_8
    move-object v4, v9

    goto :goto_5

    .line 2202
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
    .end packed-switch
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .prologue
    .line 555
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/dek;->d(I)I

    move-result v0

    .line 557
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v1, v1, p3

    .line 560
    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 562
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 565
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 566
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 567
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/dcz;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 568
    invoke-static {p1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 569
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto :goto_0

    .line 570
    :cond_2
    if-eqz v4, :cond_0

    .line 571
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 572
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/Object;J)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .prologue
    .line 4003
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private final c(I)Lcom/google/android/gms/internal/ads/dda;
    .locals 2

    .prologue
    .line 3535
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->d:[Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/android/gms/internal/ads/dda;

    return-object v0
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .prologue
    .line 4007
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final d(I)I
    .locals 2

    .prologue
    .line 3999
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private static d(Ljava/lang/Object;J)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .prologue
    .line 4004
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private final e(I)I
    .locals 2

    .prologue
    .line 4000
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    add-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method private static e(Ljava/lang/Object;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .prologue
    .line 4005
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dfu;
    .locals 2

    .prologue
    .line 3014
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dcw;->zzhxv:Lcom/google/android/gms/internal/ads/dfu;

    .line 3015
    invoke-static {}, Lcom/google/android/gms/internal/ads/dfu;->a()Lcom/google/android/gms/internal/ads/dfu;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3016
    invoke-static {}, Lcom/google/android/gms/internal/ads/dfu;->b()Lcom/google/android/gms/internal/ads/dfu;

    move-result-object v0

    .line 3017
    check-cast p0, Lcom/google/android/gms/internal/ads/dcw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dcw;->zzhxv:Lcom/google/android/gms/internal/ads/dfu;

    .line 3018
    :cond_0
    return-object v0
.end method

.method private static f(I)Z
    .locals 1

    .prologue
    .line 4001
    const/high16 v0, 0x20000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(Ljava/lang/Object;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .prologue
    .line 4006
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final g(I)I
    .locals 1

    .prologue
    .line 4060
    iget v0, p0, Lcom/google/android/gms/internal/ads/dek;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dek;->f:I

    if-gt p1, v0, :cond_0

    .line 4061
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dek;->b(II)I

    move-result v0

    .line 4062
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    const/16 v1, 0x25

    const/4 v0, 0x0

    .line 347
    .line 348
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    array-length v4, v2

    move v3, v0

    move v2, v0

    .line 349
    :goto_0
    if-ge v3, v4, :cond_1

    .line 350
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dek;->d(I)I

    move-result v0

    .line 352
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v5, v3

    .line 355
    const v6, 0xfffff

    and-int/2addr v6, v0

    int-to-long v6, v6

    .line 358
    const/high16 v8, 0xff00000

    and-int/2addr v0, v8

    ushr-int/lit8 v0, v0, 0x14

    .line 359
    packed-switch v0, :pswitch_data_0

    :cond_0
    move v0, v2

    .line 451
    :goto_1
    add-int/lit8 v3, v3, 0x3

    move v2, v0

    goto :goto_0

    .line 360
    :pswitch_0
    mul-int/lit8 v0, v2, 0x35

    .line 361
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->e(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 362
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/dcz;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 363
    goto :goto_1

    .line 364
    :pswitch_1
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->d(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 365
    goto :goto_1

    .line 366
    :pswitch_2
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/dcz;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 367
    goto :goto_1

    .line 368
    :pswitch_3
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/dcz;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 369
    goto :goto_1

    .line 370
    :pswitch_4
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    .line 371
    goto :goto_1

    .line 372
    :pswitch_5
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/dcz;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 373
    goto :goto_1

    .line 374
    :pswitch_6
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    .line 375
    goto :goto_1

    .line 376
    :pswitch_7
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->c(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dcz;->a(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 377
    goto :goto_1

    .line 378
    :pswitch_8
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    .line 379
    goto :goto_1

    .line 381
    :pswitch_9
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_4

    .line 383
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 384
    :goto_2
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v0, v2

    .line 385
    goto :goto_1

    .line 386
    :pswitch_a
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 387
    goto/16 :goto_1

    .line 388
    :pswitch_b
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    .line 389
    goto/16 :goto_1

    .line 390
    :pswitch_c
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    .line 391
    goto/16 :goto_1

    .line 392
    :pswitch_d
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    .line 393
    goto/16 :goto_1

    .line 394
    :pswitch_e
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/dcz;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 395
    goto/16 :goto_1

    .line 396
    :pswitch_f
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    .line 397
    goto/16 :goto_1

    .line 398
    :pswitch_10
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/dcz;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 399
    goto/16 :goto_1

    .line 401
    :pswitch_11
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 402
    if-eqz v0, :cond_3

    .line 403
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 404
    :goto_3
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v0, v2

    .line 405
    goto/16 :goto_1

    .line 406
    :pswitch_12
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 407
    goto/16 :goto_1

    .line 408
    :pswitch_13
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 409
    goto/16 :goto_1

    .line 410
    :pswitch_14
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    mul-int/lit8 v0, v2, 0x35

    .line 412
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/dcz;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 413
    :pswitch_15
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 415
    :pswitch_16
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/dcz;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 417
    :pswitch_17
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/dcz;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 419
    :pswitch_18
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 421
    :pswitch_19
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/dcz;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 423
    :pswitch_1a
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 425
    :pswitch_1b
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->f(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dcz;->a(Z)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 427
    :pswitch_1c
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    mul-int/lit8 v2, v2, 0x35

    .line 429
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 430
    :pswitch_1d
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 432
    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    .line 433
    goto/16 :goto_1

    .line 434
    :pswitch_1e
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 436
    :pswitch_1f
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 438
    :pswitch_20
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 440
    :pswitch_21
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 442
    :pswitch_22
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/dcz;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 444
    :pswitch_23
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 446
    :pswitch_24
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/dcz;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 448
    :pswitch_25
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 450
    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 452
    :cond_1
    mul-int/lit8 v0, v2, 0x35

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->q:Lcom/google/android/gms/internal/ads/dfv;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 453
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/dek;->h:Z

    if-eqz v1, :cond_2

    .line 454
    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/dck;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dcl;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 455
    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto/16 :goto_3

    :cond_4
    move v0, v1

    goto/16 :goto_2

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
    .end packed-switch
.end method

.method final a(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/dbh;)I
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/ads/dbh;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3536
    sget-object v4, Lcom/google/android/gms/internal/ads/dek;->b:Lsun/misc/Unsafe;

    .line 3537
    const/16 v39, -0x1

    .line 3538
    const/16 v38, 0x0

    .line 3539
    const/16 v17, 0x0

    .line 3540
    const/16 v18, -0x1

    .line 3541
    const/16 v20, 0x0

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3542
    :goto_0
    move/from16 v0, p4

    if-ge v7, v0, :cond_1e

    .line 3543
    add-int/lit8 v10, v7, 0x1

    aget-byte v17, p2, v7

    .line 3544
    if-gez v17, :cond_0

    .line 3545
    move/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-static {v0, v1, v10, v2}, Lcom/google/android/gms/internal/ads/dbe;->a(I[BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v10

    .line 3546
    move-object/from16 v0, p6

    iget v0, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    move/from16 v17, v0

    .line 3547
    :cond_0
    ushr-int/lit8 v18, v17, 0x3

    .line 3548
    and-int/lit8 v19, v17, 0x7

    .line 3549
    move/from16 v0, v18

    if-le v0, v6, :cond_2

    .line 3550
    div-int/lit8 v5, v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/ads/dek;->a(II)I

    move-result v20

    .line 3553
    :goto_1
    const/4 v5, -0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_3

    .line 3554
    const/16 v20, 0x0

    move/from16 v11, v38

    move/from16 v12, v39

    move v7, v10

    .line 3695
    :goto_2
    move/from16 v0, v17

    move/from16 v1, p5

    if-ne v0, v1, :cond_1

    if-nez p5, :cond_14

    .line 3696
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/dek;->h:Z

    if-eqz v5, :cond_13

    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dbh;->d:Lcom/google/android/gms/internal/ads/dci;

    .line 3697
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v6

    if-eq v5, v6, :cond_13

    .line 3698
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dek;->g:Lcom/google/android/gms/internal/ads/deg;

    .line 3699
    ushr-int/lit8 v6, v17, 0x3

    .line 3700
    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dbh;->d:Lcom/google/android/gms/internal/ads/dci;

    .line 3701
    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/ads/dci;->a(Lcom/google/android/gms/internal/ads/deg;I)Lcom/google/android/gms/internal/ads/dcw$d;

    move-result-object v5

    .line 3702
    if-nez v5, :cond_12

    .line 3704
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dfu;

    move-result-object v9

    move/from16 v5, v17

    move-object/from16 v6, p2

    move/from16 v8, p4

    move-object/from16 v10, p6

    .line 3705
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/dbe;->a(I[BIILcom/google/android/gms/internal/ads/dfu;Lcom/google/android/gms/internal/ads/dbh;)I

    move-result v7

    move/from16 v6, v18

    move/from16 v38, v11

    move/from16 v39, v12

    .line 3710
    goto :goto_0

    .line 3551
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dek;->g(I)I

    move-result v20

    goto :goto_1

    .line 3555
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    add-int/lit8 v6, v20, 0x1

    aget v32, v5, v6

    .line 3557
    const/high16 v5, 0xff00000

    and-int v5, v5, v32

    ushr-int/lit8 v23, v5, 0x14

    .line 3560
    const v5, 0xfffff

    and-int v5, v5, v32

    int-to-long v6, v5

    .line 3562
    const/16 v5, 0x11

    move/from16 v0, v23

    if-gt v0, v5, :cond_d

    .line 3563
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    add-int/lit8 v8, v20, 0x2

    aget v5, v5, v8

    .line 3564
    const/4 v8, 0x1

    ushr-int/lit8 v9, v5, 0x14

    shl-int v14, v8, v9

    .line 3565
    const v8, 0xfffff

    and-int/2addr v5, v8

    .line 3566
    move/from16 v0, v39

    if-eq v5, v0, :cond_5

    .line 3567
    const/4 v8, -0x1

    move/from16 v0, v39

    if-eq v0, v8, :cond_4

    .line 3568
    move/from16 v0, v39

    int-to-long v8, v0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v4, v0, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3570
    :cond_4
    int-to-long v8, v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v38

    move/from16 v39, v5

    .line 3571
    :cond_5
    packed-switch v23, :pswitch_data_0

    :cond_6
    move/from16 v11, v38

    move/from16 v12, v39

    move v7, v10

    .line 3667
    goto/16 :goto_2

    .line 3572
    :pswitch_0
    const/4 v5, 0x1

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    .line 3573
    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/dbe;->c([BI)D

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JD)V

    .line 3574
    add-int/lit8 v7, v10, 0x8

    .line 3575
    or-int v38, v38, v14

    move/from16 v6, v18

    .line 3576
    goto/16 :goto_0

    .line 3577
    :pswitch_1
    const/4 v5, 0x5

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    .line 3578
    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/dbe;->d([BI)F

    move-result v5

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7, v5}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JF)V

    .line 3579
    add-int/lit8 v7, v10, 0x4

    .line 3580
    or-int v38, v38, v14

    move/from16 v6, v18

    .line 3581
    goto/16 :goto_0

    .line 3582
    :pswitch_2
    if-nez v19, :cond_6

    .line 3583
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3584
    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/dbh;->b:J

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 3585
    or-int v38, v38, v14

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3586
    goto/16 :goto_0

    .line 3587
    :pswitch_3
    if-nez v19, :cond_6

    .line 3588
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3589
    move-object/from16 v0, p6

    iget v5, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3590
    or-int v38, v38, v14

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3591
    goto/16 :goto_0

    .line 3592
    :pswitch_4
    const/4 v5, 0x1

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    .line 3593
    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/dbe;->b([BI)J

    move-result-wide v8

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 3594
    add-int/lit8 v7, v10, 0x8

    .line 3595
    or-int v38, v38, v14

    move/from16 v6, v18

    .line 3596
    goto/16 :goto_0

    .line 3597
    :pswitch_5
    const/4 v5, 0x5

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    .line 3598
    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/dbe;->a([BI)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3599
    add-int/lit8 v7, v10, 0x4

    .line 3600
    or-int v38, v38, v14

    move/from16 v6, v18

    .line 3601
    goto/16 :goto_0

    .line 3602
    :pswitch_6
    if-nez v19, :cond_6

    .line 3603
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3604
    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/dbh;->b:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7, v5}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JZ)V

    .line 3605
    or-int v38, v38, v14

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3606
    goto/16 :goto_0

    .line 3604
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 3607
    :pswitch_7
    const/4 v5, 0x2

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    .line 3608
    const/high16 v5, 0x20000000

    and-int v5, v5, v32

    if-nez v5, :cond_8

    .line 3609
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lcom/google/android/gms/internal/ads/dbe;->c([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v5

    .line 3611
    :goto_4
    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3612
    or-int v38, v38, v14

    move/from16 v6, v18

    move v7, v5

    .line 3613
    goto/16 :goto_0

    .line 3610
    :cond_8
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lcom/google/android/gms/internal/ads/dbe;->d([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v5

    goto :goto_4

    .line 3614
    :pswitch_8
    const/4 v5, 0x2

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    .line 3616
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v5

    .line 3617
    move-object/from16 v0, p2

    move/from16 v1, p4

    move-object/from16 v2, p6

    invoke-static {v5, v0, v10, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a(Lcom/google/android/gms/internal/ads/dfd;[BIILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3618
    and-int v5, v38, v14

    if-nez v5, :cond_9

    .line 3619
    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3624
    :goto_5
    or-int v38, v38, v14

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3625
    goto/16 :goto_0

    .line 3621
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    .line 3622
    invoke-static {v5, v8}, Lcom/google/android/gms/internal/ads/dcz;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3623
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 3626
    :pswitch_9
    const/4 v5, 0x2

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    .line 3627
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lcom/google/android/gms/internal/ads/dbe;->e([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3628
    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3629
    or-int v38, v38, v14

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3630
    goto/16 :goto_0

    .line 3631
    :pswitch_a
    if-nez v19, :cond_6

    .line 3632
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3633
    move-object/from16 v0, p6

    iget v5, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    .line 3634
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dek;->c(I)Lcom/google/android/gms/internal/ads/dda;

    move-result-object v8

    .line 3635
    if-eqz v8, :cond_a

    invoke-interface {v8, v5}, Lcom/google/android/gms/internal/ads/dda;->a(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 3636
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3637
    or-int v38, v38, v14

    move/from16 v6, v18

    move/from16 v7, p3

    goto/16 :goto_0

    .line 3638
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dfu;

    move-result-object v6

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v6, v0, v5}, Lcom/google/android/gms/internal/ads/dfu;->a(ILjava/lang/Object;)V

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3639
    goto/16 :goto_0

    .line 3640
    :pswitch_b
    if-nez v19, :cond_6

    .line 3641
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3642
    move-object/from16 v0, p6

    iget v5, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    .line 3643
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/dby;->e(I)I

    move-result v5

    .line 3644
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3645
    or-int v38, v38, v14

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3646
    goto/16 :goto_0

    .line 3647
    :pswitch_c
    if-nez v19, :cond_6

    .line 3648
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3649
    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/dbh;->b:J

    .line 3650
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/dby;->a(J)J

    move-result-wide v8

    move-object/from16 v5, p1

    .line 3651
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 3652
    or-int v38, v38, v14

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3653
    goto/16 :goto_0

    .line 3654
    :pswitch_d
    const/4 v5, 0x3

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    .line 3655
    shl-int/lit8 v5, v18, 0x3

    or-int/lit8 v12, v5, 0x4

    .line 3657
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v8

    move-object/from16 v9, p2

    move/from16 v11, p4

    move-object/from16 v13, p6

    .line 3658
    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/dbe;->a(Lcom/google/android/gms/internal/ads/dfd;[BIIILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3659
    and-int v5, v38, v14

    if-nez v5, :cond_c

    .line 3660
    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3665
    :goto_6
    or-int v38, v38, v14

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3666
    goto/16 :goto_0

    .line 3662
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    .line 3663
    invoke-static {v5, v8}, Lcom/google/android/gms/internal/ads/dcz;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3664
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    .line 3667
    :cond_d
    const/16 v5, 0x1b

    move/from16 v0, v23

    if-ne v0, v5, :cond_f

    .line 3668
    const/4 v5, 0x2

    move/from16 v0, v19

    if-ne v0, v5, :cond_1c

    .line 3669
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/dde;

    .line 3670
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dde;->a()Z

    move-result v8

    if-nez v8, :cond_1d

    .line 3671
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dde;->size()I

    move-result v8

    .line 3673
    if-nez v8, :cond_e

    const/16 v8, 0xa

    .line 3674
    :goto_7
    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/ads/dde;->a(I)Lcom/google/android/gms/internal/ads/dde;

    move-result-object v12

    .line 3675
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3677
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v7

    move/from16 v8, v17

    move-object/from16 v9, p2

    move/from16 v11, p4

    move-object/from16 v13, p6

    .line 3678
    invoke-static/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/dbe;->a(Lcom/google/android/gms/internal/ads/dfd;I[BIILcom/google/android/gms/internal/ads/dde;Lcom/google/android/gms/internal/ads/dbh;)I

    move-result v7

    move/from16 v6, v18

    .line 3679
    goto/16 :goto_0

    .line 3673
    :cond_e
    shl-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 3680
    :cond_f
    const/16 v5, 0x31

    move/from16 v0, v23

    if-gt v0, v5, :cond_10

    .line 3682
    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move v15, v10

    move/from16 v16, p4

    move-wide/from16 v24, v6

    move-object/from16 v26, p6

    .line 3683
    invoke-direct/range {v12 .. v26}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/dbh;)I

    move-result v7

    .line 3684
    if-ne v7, v10, :cond_1b

    move/from16 v11, v38

    move/from16 v12, v39

    .line 3685
    goto/16 :goto_2

    :cond_10
    const/16 v5, 0x32

    move/from16 v0, v23

    if-ne v0, v5, :cond_11

    .line 3686
    const/4 v5, 0x2

    move/from16 v0, v19

    if-ne v0, v5, :cond_1c

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, p2

    move/from16 v25, v10

    move/from16 v26, p4

    move/from16 v27, v20

    move-wide/from16 v28, v6

    move-object/from16 v30, p6

    .line 3688
    invoke-direct/range {v22 .. v30}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/dbh;)I

    move-result v7

    .line 3689
    if-ne v7, v10, :cond_1b

    move/from16 v11, v38

    move/from16 v12, v39

    .line 3690
    goto/16 :goto_2

    :cond_11
    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move-object/from16 v26, p2

    move/from16 v27, v10

    move/from16 v28, p4

    move/from16 v29, v17

    move/from16 v30, v18

    move/from16 v31, v19

    move/from16 v33, v23

    move-wide/from16 v34, v6

    move/from16 v36, v20

    move-object/from16 v37, p6

    .line 3693
    invoke-direct/range {v24 .. v37}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/dbh;)I

    move-result v7

    .line 3694
    if-ne v7, v10, :cond_1b

    move/from16 v11, v38

    move/from16 v12, v39

    goto/16 :goto_2

    :cond_12
    move-object/from16 v4, p1

    .line 3706
    check-cast v4, Lcom/google/android/gms/internal/ads/dcw$b;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dcw$b;->a()Lcom/google/android/gms/internal/ads/dcl;

    .line 3707
    check-cast p1, Lcom/google/android/gms/internal/ads/dcw$b;

    .line 3708
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dcw$b;->zzhxy:Lcom/google/android/gms/internal/ads/dcl;

    .line 3709
    new-instance v4, Ljava/lang/NoSuchMethodError;

    invoke-direct {v4}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v4

    .line 3712
    :cond_13
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dfu;

    move-result-object v9

    move/from16 v5, v17

    move-object/from16 v6, p2

    move/from16 v8, p4

    move-object/from16 v10, p6

    .line 3713
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/dbe;->a(I[BIILcom/google/android/gms/internal/ads/dfu;Lcom/google/android/gms/internal/ads/dbh;)I

    move-result v7

    move/from16 v6, v18

    move/from16 v38, v11

    move/from16 v39, v12

    .line 3714
    goto/16 :goto_0

    :cond_14
    move v5, v11

    move v6, v12

    .line 3715
    :goto_9
    const/4 v8, -0x1

    if-eq v6, v8, :cond_15

    .line 3716
    int-to-long v8, v6

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3717
    :cond_15
    const/4 v6, 0x0

    .line 3718
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/dek;->m:I

    move v5, v4

    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/dek;->n:I

    if-ge v5, v4, :cond_16

    .line 3719
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->l:[I

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dek;->q:Lcom/google/android/gms/internal/ads/dfv;

    .line 3720
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v6, v8}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfv;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/dfu;

    .line 3721
    add-int/lit8 v5, v5, 0x1

    move-object v6, v4

    goto :goto_a

    .line 3722
    :cond_16
    if-eqz v6, :cond_17

    .line 3723
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dek;->q:Lcom/google/android/gms/internal/ads/dfv;

    .line 3724
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3725
    :cond_17
    if-nez p5, :cond_18

    .line 3726
    move/from16 v0, p4

    if-eq v7, v0, :cond_1a

    .line 3727
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->h()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3728
    :cond_18
    move/from16 v0, p4

    if-gt v7, v0, :cond_19

    move/from16 v0, v17

    move/from16 v1, p5

    if-eq v0, v1, :cond_1a

    .line 3729
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->h()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3730
    :cond_1a
    return v7

    :cond_1b
    move/from16 v6, v18

    goto/16 :goto_0

    :cond_1c
    move/from16 v11, v38

    move/from16 v12, v39

    move v7, v10

    goto/16 :goto_2

    :cond_1d
    move-object v12, v5

    goto/16 :goto_8

    :cond_1e
    move/from16 v5, v38

    move/from16 v6, v39

    goto :goto_9

    .line 3571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->o:Lcom/google/android/gms/internal/ads/deo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->g:Lcom/google/android/gms/internal/ads/deg;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/deo;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dex;Lcom/google/android/gms/internal/ads/dci;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/dex;",
            "Lcom/google/android/gms/internal/ads/dci;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2501
    if-nez p3, :cond_0

    .line 2502
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2503
    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dek;->q:Lcom/google/android/gms/internal/ads/dfv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    .line 2504
    const/4 v5, 0x0

    .line 2505
    const/4 v4, 0x0

    .line 2506
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->a()I

    move-result v1

    .line 2507
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dek;->g(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2508
    if-gez v2, :cond_8

    .line 2509
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_3

    .line 2510
    iget v0, p0, Lcom/google/android/gms/internal/ads/dek;->m:I

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/dek;->n:I

    if-ge v0, v1, :cond_1

    .line 2511
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->l:[I

    aget v1, v1, v0

    .line 2512
    invoke-direct {p0, p1, v1, v5, v6}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfv;)Ljava/lang/Object;

    move-result-object v5

    .line 2513
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2514
    :cond_1
    if-eqz v5, :cond_2

    .line 2515
    invoke-virtual {v6, p1, v5}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3005
    :cond_2
    :goto_2
    return-void

    .line 2517
    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dek;->h:Z

    if-nez v2, :cond_5

    .line 2518
    const/4 v2, 0x0

    .line 2520
    :goto_3
    if-eqz v2, :cond_6

    .line 2521
    if-nez v4, :cond_4

    .line 2522
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dck;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v4

    :cond_4
    move-object v1, p2

    move-object v3, p3

    .line 2524
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/dck;->a(Lcom/google/android/gms/internal/ads/dex;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dci;Lcom/google/android/gms/internal/ads/dcl;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dfv;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 2519
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->g:Lcom/google/android/gms/internal/ads/deg;

    invoke-virtual {v0, p3, v2, v1}, Lcom/google/android/gms/internal/ads/dck;->a(Lcom/google/android/gms/internal/ads/dci;Lcom/google/android/gms/internal/ads/deg;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 2526
    :cond_6
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ads/dfv;->a(Lcom/google/android/gms/internal/ads/dex;)Z

    .line 2527
    if-nez v5, :cond_1c

    .line 2528
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/dfv;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 2529
    :goto_4
    :try_start_2
    invoke-virtual {v6, v1, p2}, Lcom/google/android/gms/internal/ads/dfv;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dex;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_1b

    .line 2530
    iget v0, p0, Lcom/google/android/gms/internal/ads/dek;->m:I

    :goto_5
    iget v2, p0, Lcom/google/android/gms/internal/ads/dek;->n:I

    if-ge v0, v2, :cond_7

    .line 2531
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->l:[I

    aget v2, v2, v0

    .line 2532
    invoke-direct {p0, p1, v2, v1, v6}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfv;)Ljava/lang/Object;

    move-result-object v1

    .line 2533
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2534
    :cond_7
    if-eqz v1, :cond_2

    .line 2535
    invoke-virtual {v6, p1, v1}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 2537
    :cond_8
    :try_start_3
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dek;->d(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    .line 2539
    const/high16 v7, 0xff00000

    and-int/2addr v7, v3

    ushr-int/lit8 v7, v7, 0x14

    .line 2540
    packed-switch v7, :pswitch_data_0

    .line 2983
    if-nez v5, :cond_19

    .line 2984
    :try_start_4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dfv;->a()Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzecn; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 2985
    :goto_6
    :try_start_5
    invoke-virtual {v6, v1, p2}, Lcom/google/android/gms/internal/ads/dfv;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dex;)Z
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzecn; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v2

    if-nez v2, :cond_13

    .line 2986
    iget v0, p0, Lcom/google/android/gms/internal/ads/dek;->m:I

    :goto_7
    iget v2, p0, Lcom/google/android/gms/internal/ads/dek;->n:I

    if-ge v0, v2, :cond_12

    .line 2987
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->l:[I

    aget v2, v2, v0

    .line 2988
    invoke-direct {p0, p1, v2, v1, v6}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfv;)Ljava/lang/Object;

    move-result-object v1

    .line 2989
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2542
    :pswitch_0
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2543
    :try_start_6
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->d()D

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JD)V

    .line 2544
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzecn; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 2995
    :catch_0
    move-exception v1

    :goto_8
    :try_start_7
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ads/dfv;->a(Lcom/google/android/gms/internal/ads/dex;)Z

    .line 2996
    if-nez v5, :cond_18

    .line 2997
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/dfv;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    .line 2998
    :goto_9
    :try_start_8
    invoke-virtual {v6, v1, p2}, Lcom/google/android/gms/internal/ads/dfv;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dex;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v2

    if-nez v2, :cond_15

    .line 2999
    iget v0, p0, Lcom/google/android/gms/internal/ads/dek;->m:I

    :goto_a
    iget v2, p0, Lcom/google/android/gms/internal/ads/dek;->n:I

    if-ge v0, v2, :cond_14

    .line 3000
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->l:[I

    aget v2, v2, v0

    .line 3001
    invoke-direct {p0, p1, v2, v1, v6}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfv;)Ljava/lang/Object;

    move-result-object v1

    .line 3002
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2547
    :pswitch_1
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2548
    :try_start_9
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->e()F

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JF)V

    .line 2549
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzecn; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 3007
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v1, v5

    :goto_b
    iget v0, p0, Lcom/google/android/gms/internal/ads/dek;->m:I

    :goto_c
    iget v3, p0, Lcom/google/android/gms/internal/ads/dek;->n:I

    if-ge v0, v3, :cond_16

    .line 3008
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dek;->l:[I

    aget v3, v3, v0

    .line 3009
    invoke-direct {p0, p1, v3, v1, v6}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfv;)Ljava/lang/Object;

    move-result-object v1

    .line 3010
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2552
    :pswitch_2
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2553
    :try_start_a
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->g()J

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JJ)V

    .line 2554
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2557
    :pswitch_3
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2558
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->f()J

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JJ)V

    .line 2559
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2562
    :pswitch_4
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2563
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->h()I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JI)V

    .line 2564
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2567
    :pswitch_5
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2568
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->i()J

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JJ)V

    .line 2569
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2572
    :pswitch_6
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2573
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->j()I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JI)V

    .line 2574
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2577
    :pswitch_7
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2578
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->k()Z

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JZ)V

    .line 2579
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2581
    :pswitch_8
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/dex;)V

    .line 2582
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2584
    :pswitch_9
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2586
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2587
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 2588
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v2

    .line 2589
    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/ads/dex;->a(Lcom/google/android/gms/internal/ads/dfd;Lcom/google/android/gms/internal/ads/dci;)Ljava/lang/Object;

    move-result-object v2

    .line 2590
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dcz;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2592
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2593
    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    .line 2596
    :cond_9
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2598
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v1

    .line 2599
    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/ads/dex;->a(Lcom/google/android/gms/internal/ads/dfd;Lcom/google/android/gms/internal/ads/dci;)Ljava/lang/Object;

    move-result-object v1

    .line 2600
    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2601
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2604
    :pswitch_a
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2605
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->n()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2606
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2609
    :pswitch_b
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2610
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->o()I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JI)V

    .line 2611
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2613
    :pswitch_c
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->p()I

    move-result v7

    .line 2614
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dek;->c(I)Lcom/google/android/gms/internal/ads/dda;

    move-result-object v8

    .line 2615
    if-eqz v8, :cond_a

    invoke-interface {v8, v7}, Lcom/google/android/gms/internal/ads/dda;->a(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2617
    :cond_a
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2618
    invoke-static {p1, v8, v9, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JI)V

    .line 2619
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2621
    :cond_b
    invoke-static {v1, v7, v5, v6}, Lcom/google/android/gms/internal/ads/dff;->a(IILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfv;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 2624
    :pswitch_d
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2625
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->q()I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JI)V

    .line 2626
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2629
    :pswitch_e
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2630
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->r()J

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JJ)V

    .line 2631
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2634
    :pswitch_f
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2635
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->s()I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JI)V

    .line 2636
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2639
    :pswitch_10
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2640
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->t()J

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JJ)V

    .line 2641
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2643
    :pswitch_11
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2645
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2646
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 2647
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v2

    .line 2648
    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/ads/dex;->b(Lcom/google/android/gms/internal/ads/dfd;Lcom/google/android/gms/internal/ads/dci;)Ljava/lang/Object;

    move-result-object v2

    .line 2649
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dcz;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2651
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2652
    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    .line 2655
    :cond_c
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2657
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v1

    .line 2658
    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/ads/dex;->b(Lcom/google/android/gms/internal/ads/dfd;Lcom/google/android/gms/internal/ads/dci;)Ljava/lang/Object;

    move-result-object v1

    .line 2659
    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2660
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2662
    :pswitch_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2663
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2664
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2665
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2667
    :pswitch_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2668
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2669
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2670
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2672
    :pswitch_14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2673
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2674
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2675
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->d(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2677
    :pswitch_15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2678
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2679
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2680
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->c(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2682
    :pswitch_16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2683
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2684
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2685
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->e(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2687
    :pswitch_17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2688
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2689
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2690
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->f(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2692
    :pswitch_18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2693
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2694
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2695
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->g(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2697
    :pswitch_19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2698
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2699
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2700
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->h(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2703
    :pswitch_1a
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dek;->f(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2704
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2705
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2706
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2707
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->j(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2708
    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2709
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2710
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->i(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2713
    :pswitch_1b
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v1

    .line 2716
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2718
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2719
    invoke-virtual {v7, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2720
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/ads/dex;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/dfd;Lcom/google/android/gms/internal/ads/dci;)V

    goto/16 :goto_0

    .line 2722
    :pswitch_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2723
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2724
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2725
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->k(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2727
    :pswitch_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2728
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2729
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2730
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->l(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2732
    :pswitch_1e
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2733
    const v8, 0xfffff

    and-int/2addr v3, v8

    int-to-long v8, v3

    .line 2734
    invoke-virtual {v7, p1, v8, v9}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 2735
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/dex;->m(Ljava/util/List;)V

    .line 2737
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dek;->c(I)Lcom/google/android/gms/internal/ads/dda;

    move-result-object v2

    .line 2738
    invoke-static {v1, v3, v2, v5, v6}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/dda;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dfv;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 2740
    :pswitch_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2741
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2742
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2743
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->n(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2745
    :pswitch_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2746
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2747
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2748
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->o(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2750
    :pswitch_21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2751
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2752
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2753
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->p(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2755
    :pswitch_22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2756
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2757
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2758
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->q(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2760
    :pswitch_23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2761
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2762
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2763
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2765
    :pswitch_24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2766
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2767
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2768
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2770
    :pswitch_25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2771
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2772
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2773
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->d(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2775
    :pswitch_26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2776
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2777
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2778
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->c(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2780
    :pswitch_27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2781
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2782
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2783
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->e(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2785
    :pswitch_28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2786
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2787
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2788
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->f(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2790
    :pswitch_29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2791
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2792
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2793
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->g(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2795
    :pswitch_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2796
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2797
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2798
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->h(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2800
    :pswitch_2b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2801
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2802
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2803
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->l(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2805
    :pswitch_2c
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2806
    const v8, 0xfffff

    and-int/2addr v3, v8

    int-to-long v8, v3

    .line 2807
    invoke-virtual {v7, p1, v8, v9}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 2808
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/dex;->m(Ljava/util/List;)V

    .line 2810
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dek;->c(I)Lcom/google/android/gms/internal/ads/dda;

    move-result-object v2

    .line 2811
    invoke-static {v1, v3, v2, v5, v6}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/dda;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dfv;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 2813
    :pswitch_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2814
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2815
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2816
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->n(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2818
    :pswitch_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2819
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2820
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2821
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->o(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2823
    :pswitch_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2824
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2825
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2826
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->p(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2828
    :pswitch_30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2829
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2830
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2831
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dex;->q(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2834
    :pswitch_31
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2836
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v1

    .line 2838
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    .line 2839
    invoke-virtual {v2, p1, v8, v9}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2840
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/ads/dex;->b(Ljava/util/List;Lcom/google/android/gms/internal/ads/dfd;Lcom/google/android/gms/internal/ads/dci;)V

    goto/16 :goto_0

    .line 2842
    :pswitch_32
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dek;->b(I)Ljava/lang/Object;

    move-result-object v3

    .line 2843
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dek;->d(I)I

    move-result v1

    .line 2844
    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v8, v1

    .line 2846
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 2847
    if-nez v2, :cond_e

    .line 2848
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/ddz;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2849
    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2855
    :goto_d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    .line 2856
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/ddz;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    .line 2857
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/ddz;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ddx;

    move-result-object v2

    .line 2858
    invoke-interface {p2, v1, v2, p3}, Lcom/google/android/gms/internal/ads/dex;->a(Ljava/util/Map;Lcom/google/android/gms/internal/ads/ddx;Lcom/google/android/gms/internal/ads/dci;)V

    goto/16 :goto_0

    .line 2850
    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/ddz;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2852
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/ddz;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2853
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    invoke-interface {v7, v1, v2}, Lcom/google/android/gms/internal/ads/ddz;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2854
    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d

    .line 2861
    :pswitch_33
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2862
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->d()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 2863
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2864
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2867
    :pswitch_34
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2868
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->e()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 2869
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2870
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2873
    :pswitch_35
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2874
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->g()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2875
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2876
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2879
    :pswitch_36
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2880
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->f()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2881
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2882
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2885
    :pswitch_37
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2886
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2887
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2888
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2891
    :pswitch_38
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2892
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->i()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2893
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2894
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2897
    :pswitch_39
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2898
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->j()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2899
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2900
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2903
    :pswitch_3a
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2904
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->k()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2905
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2906
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2908
    :pswitch_3b
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/dex;)V

    .line 2909
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2911
    :pswitch_3c
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 2913
    const v7, 0xfffff

    and-int/2addr v7, v3

    int-to-long v8, v7

    .line 2914
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 2915
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v8

    .line 2916
    invoke-interface {p2, v8, p3}, Lcom/google/android/gms/internal/ads/dex;->a(Lcom/google/android/gms/internal/ads/dfd;Lcom/google/android/gms/internal/ads/dci;)Ljava/lang/Object;

    move-result-object v8

    .line 2917
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/dcz;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 2919
    const v8, 0xfffff

    and-int/2addr v3, v8

    int-to-long v8, v3

    .line 2920
    invoke-static {p1, v8, v9, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2929
    :goto_e
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2923
    :cond_f
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2925
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v3

    .line 2926
    invoke-interface {p2, v3, p3}, Lcom/google/android/gms/internal/ads/dex;->a(Lcom/google/android/gms/internal/ads/dfd;Lcom/google/android/gms/internal/ads/dci;)Ljava/lang/Object;

    move-result-object v3

    .line 2927
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2928
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto :goto_e

    .line 2932
    :pswitch_3d
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2933
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->n()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2934
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2937
    :pswitch_3e
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2938
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2939
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2940
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2942
    :pswitch_3f
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->p()I

    move-result v7

    .line 2943
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dek;->c(I)Lcom/google/android/gms/internal/ads/dda;

    move-result-object v8

    .line 2944
    if-eqz v8, :cond_10

    invoke-interface {v8, v7}, Lcom/google/android/gms/internal/ads/dda;->a(I)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 2946
    :cond_10
    const v8, 0xfffff

    and-int/2addr v3, v8

    int-to-long v8, v3

    .line 2947
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2948
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2950
    :cond_11
    invoke-static {v1, v7, v5, v6}, Lcom/google/android/gms/internal/ads/dff;->a(IILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfv;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 2953
    :pswitch_40
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2954
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->q()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2955
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2956
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2959
    :pswitch_41
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2960
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->r()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2961
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2962
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2965
    :pswitch_42
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2966
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->s()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2967
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2968
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2971
    :pswitch_43
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2972
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dex;->t()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2973
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2974
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2977
    :pswitch_44
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2979
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v3

    invoke-interface {p2, v3, p3}, Lcom/google/android/gms/internal/ads/dex;->b(Lcom/google/android/gms/internal/ads/dfd;Lcom/google/android/gms/internal/ads/dci;)Ljava/lang/Object;

    move-result-object v3

    .line 2980
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2981
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V
    :try_end_a
    .catch Lcom/google/android/gms/internal/ads/zzecn; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 2990
    :cond_12
    if-eqz v1, :cond_2

    .line 2991
    invoke-virtual {v6, p1, v1}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_13
    move-object v5, v1

    .line 2993
    goto/16 :goto_0

    .line 3003
    :cond_14
    if-eqz v1, :cond_2

    .line 3004
    invoke-virtual {v6, p1, v1}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_15
    move-object v5, v1

    .line 3006
    goto/16 :goto_0

    .line 3011
    :cond_16
    if-eqz v1, :cond_17

    .line 3012
    invoke-virtual {v6, p1, v1}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3013
    :cond_17
    throw v2

    .line 3007
    :catchall_1
    move-exception v0

    move-object v2, v0

    goto/16 :goto_b

    .line 2995
    :catch_1
    move-exception v2

    move-object v5, v1

    goto/16 :goto_8

    :cond_18
    move-object v1, v5

    goto/16 :goto_9

    :cond_19
    move-object v1, v5

    goto/16 :goto_6

    :cond_1a
    move-object v1, v2

    goto/16 :goto_d

    :cond_1b
    move-object v5, v1

    goto/16 :goto_0

    :cond_1c
    move-object v1, v5

    goto/16 :goto_4

    .line 2540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/dgo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1220
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/dgo;->a()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/dcw$f;->k:I

    if-ne v0, v1, :cond_6

    .line 1222
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->q:Lcom/google/android/gms/internal/ads/dfv;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dek;->a(Lcom/google/android/gms/internal/ads/dfv;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V

    .line 1223
    const/4 v1, 0x0

    .line 1224
    const/4 v0, 0x0

    .line 1225
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dek;->h:Z

    if-eqz v2, :cond_0

    .line 1226
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/dck;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v2

    .line 1228
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dfe;->isEmpty()Z

    move-result v3

    .line 1229
    if-nez v3, :cond_0

    .line 1230
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dcl;->e()Ljava/util/Iterator;

    move-result-object v1

    .line 1231
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1232
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x3

    move v3, v2

    :goto_0
    if-ltz v3, :cond_5

    .line 1233
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dek;->d(I)I

    move-result v4

    .line 1235
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v2, v3

    move-object v2, v0

    .line 1237
    :goto_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dck;->a(Ljava/util/Map$Entry;)I

    move-result v0

    if-le v0, v5, :cond_2

    .line 1238
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v0, p2, v2}, Lcom/google/android/gms/internal/ads/dck;->a(Lcom/google/android/gms/internal/ads/dgo;Ljava/util/Map$Entry;)V

    .line 1239
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_2
    move-object v2, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 1241
    :cond_2
    const/high16 v0, 0xff00000

    and-int/2addr v0, v4

    ushr-int/lit8 v0, v0, 0x14

    .line 1242
    packed-switch v0, :pswitch_data_0

    .line 1687
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, -0x3

    move-object v0, v2

    goto :goto_0

    .line 1243
    :pswitch_0
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1245
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1247
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->e(Ljava/lang/Object;J)D

    move-result-wide v6

    .line 1248
    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->a(ID)V

    goto :goto_3

    .line 1249
    :pswitch_1
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1251
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1253
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->d(Ljava/lang/Object;J)F

    move-result v0

    .line 1254
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/ads/dgo;->a(IF)V

    goto :goto_3

    .line 1255
    :pswitch_2
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1257
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1259
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    .line 1260
    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->a(IJ)V

    goto :goto_3

    .line 1261
    :pswitch_3
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1263
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1265
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    .line 1266
    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->c(IJ)V

    goto :goto_3

    .line 1267
    :pswitch_4
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1269
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1271
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1272
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/ads/dgo;->c(II)V

    goto :goto_3

    .line 1273
    :pswitch_5
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1275
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1277
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    .line 1278
    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->d(IJ)V

    goto :goto_3

    .line 1279
    :pswitch_6
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1281
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1283
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1284
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/ads/dgo;->d(II)V

    goto/16 :goto_3

    .line 1285
    :pswitch_7
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1287
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1289
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->c(Ljava/lang/Object;J)Z

    move-result v0

    .line 1290
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/ads/dgo;->a(IZ)V

    goto/16 :goto_3

    .line 1291
    :pswitch_8
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1293
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1294
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0, p2}, Lcom/google/android/gms/internal/ads/dek;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V

    goto/16 :goto_3

    .line 1295
    :pswitch_9
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1297
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1298
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1299
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v4

    invoke-interface {p2, v5, v0, v4}, Lcom/google/android/gms/internal/ads/dgo;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfd;)V

    goto/16 :goto_3

    .line 1301
    :pswitch_a
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1303
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1304
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    .line 1305
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/ads/dgo;->a(ILcom/google/android/gms/internal/ads/dbi;)V

    goto/16 :goto_3

    .line 1306
    :pswitch_b
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1308
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1310
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1311
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/ads/dgo;->e(II)V

    goto/16 :goto_3

    .line 1312
    :pswitch_c
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1314
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1316
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1317
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/ads/dgo;->b(II)V

    goto/16 :goto_3

    .line 1318
    :pswitch_d
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1320
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1322
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1323
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/ads/dgo;->a(II)V

    goto/16 :goto_3

    .line 1324
    :pswitch_e
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1326
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1328
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    .line 1329
    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->b(IJ)V

    goto/16 :goto_3

    .line 1330
    :pswitch_f
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1332
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1334
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1335
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/ads/dgo;->f(II)V

    goto/16 :goto_3

    .line 1336
    :pswitch_10
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1338
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1340
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    .line 1341
    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->e(IJ)V

    goto/16 :goto_3

    .line 1342
    :pswitch_11
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1344
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1345
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1346
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v4

    .line 1347
    invoke-interface {p2, v5, v0, v4}, Lcom/google/android/gms/internal/ads/dgo;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfd;)V

    goto/16 :goto_3

    .line 1350
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1352
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1353
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1354
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1358
    :pswitch_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1360
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1361
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1362
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1366
    :pswitch_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1368
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1369
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1370
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->c(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1374
    :pswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1376
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1377
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1378
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->d(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1382
    :pswitch_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1384
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1385
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1386
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->h(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1390
    :pswitch_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1392
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1393
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1394
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->f(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1398
    :pswitch_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1400
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1401
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1402
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1406
    :pswitch_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1408
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1409
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1410
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->n(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1414
    :pswitch_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1416
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1417
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1418
    invoke-static {v5, v0, p2}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;)V

    goto/16 :goto_3

    .line 1422
    :pswitch_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1424
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1425
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1426
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v4

    .line 1427
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Lcom/google/android/gms/internal/ads/dfd;)V

    goto/16 :goto_3

    .line 1431
    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1433
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1434
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1435
    invoke-static {v5, v0, p2}, Lcom/google/android/gms/internal/ads/dff;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;)V

    goto/16 :goto_3

    .line 1439
    :pswitch_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1441
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1442
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1443
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->i(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1447
    :pswitch_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1449
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1450
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1451
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->m(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1455
    :pswitch_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1457
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1458
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1459
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->l(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1463
    :pswitch_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1465
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1466
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1467
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->g(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1471
    :pswitch_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1473
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1474
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1475
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->j(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1479
    :pswitch_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1481
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1482
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1483
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1487
    :pswitch_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1489
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1490
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1491
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1495
    :pswitch_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1497
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1498
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1499
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1503
    :pswitch_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1505
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1506
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1507
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->c(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1511
    :pswitch_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1513
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1514
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1515
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->d(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1519
    :pswitch_27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1521
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1522
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1523
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->h(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1527
    :pswitch_28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1529
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1530
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1531
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->f(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1535
    :pswitch_29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1537
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1538
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1539
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1543
    :pswitch_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1545
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1546
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1547
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->n(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1551
    :pswitch_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1553
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1554
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1555
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->i(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1559
    :pswitch_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1561
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1562
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1563
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->m(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1567
    :pswitch_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1569
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1570
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1571
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->l(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1575
    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1577
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1578
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1579
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->g(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1583
    :pswitch_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1585
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1586
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1587
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->j(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1591
    :pswitch_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1593
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1594
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1595
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_3

    .line 1599
    :pswitch_31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v5, v0, v3

    .line 1601
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1602
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1603
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v4

    .line 1604
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/ads/dff;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Lcom/google/android/gms/internal/ads/dfd;)V

    goto/16 :goto_3

    .line 1607
    :pswitch_32
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1608
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v5, v0, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Lcom/google/android/gms/internal/ads/dgo;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 1610
    :pswitch_33
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1612
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1613
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->a(ID)V

    goto/16 :goto_3

    .line 1614
    :pswitch_34
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1616
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1617
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/ads/dgo;->a(IF)V

    goto/16 :goto_3

    .line 1618
    :pswitch_35
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1620
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1621
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->a(IJ)V

    goto/16 :goto_3

    .line 1622
    :pswitch_36
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1624
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1625
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->c(IJ)V

    goto/16 :goto_3

    .line 1626
    :pswitch_37
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1628
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1629
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/ads/dgo;->c(II)V

    goto/16 :goto_3

    .line 1630
    :pswitch_38
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1632
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1633
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->d(IJ)V

    goto/16 :goto_3

    .line 1634
    :pswitch_39
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1636
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1637
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/ads/dgo;->d(II)V

    goto/16 :goto_3

    .line 1638
    :pswitch_3a
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1640
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1641
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->f(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/ads/dgo;->a(IZ)V

    goto/16 :goto_3

    .line 1642
    :pswitch_3b
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1644
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1645
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0, p2}, Lcom/google/android/gms/internal/ads/dek;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V

    goto/16 :goto_3

    .line 1646
    :pswitch_3c
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1648
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1649
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1650
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v4

    invoke-interface {p2, v5, v0, v4}, Lcom/google/android/gms/internal/ads/dgo;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfd;)V

    goto/16 :goto_3

    .line 1652
    :pswitch_3d
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1654
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1655
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    .line 1656
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/ads/dgo;->a(ILcom/google/android/gms/internal/ads/dbi;)V

    goto/16 :goto_3

    .line 1657
    :pswitch_3e
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1659
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1660
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/ads/dgo;->e(II)V

    goto/16 :goto_3

    .line 1661
    :pswitch_3f
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1663
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1664
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/ads/dgo;->b(II)V

    goto/16 :goto_3

    .line 1665
    :pswitch_40
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1667
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1668
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/ads/dgo;->a(II)V

    goto/16 :goto_3

    .line 1669
    :pswitch_41
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1671
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1672
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->b(IJ)V

    goto/16 :goto_3

    .line 1673
    :pswitch_42
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1675
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1676
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/ads/dgo;->f(II)V

    goto/16 :goto_3

    .line 1677
    :pswitch_43
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1679
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1680
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/dgo;->e(IJ)V

    goto/16 :goto_3

    .line 1681
    :pswitch_44
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1683
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1684
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1685
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v4

    .line 1686
    invoke-interface {p2, v5, v0, v4}, Lcom/google/android/gms/internal/ads/dgo;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfd;)V

    goto/16 :goto_3

    .line 1690
    :cond_4
    const/4 v0, 0x0

    .line 1688
    :cond_5
    :goto_4
    if-eqz v0, :cond_e

    .line 1689
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v2, p2, v0}, Lcom/google/android/gms/internal/ads/dck;->a(Lcom/google/android/gms/internal/ads/dgo;Ljava/util/Map$Entry;)V

    .line 1690
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_4

    .line 1692
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dek;->j:Z

    if-eqz v0, :cond_f

    .line 1694
    const/4 v1, 0x0

    .line 1695
    const/4 v0, 0x0

    .line 1696
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dek;->h:Z

    if-eqz v2, :cond_7

    .line 1697
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/dck;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v2

    .line 1699
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dfe;->isEmpty()Z

    move-result v3

    .line 1700
    if-nez v3, :cond_7

    .line 1701
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dcl;->d()Ljava/util/Iterator;

    move-result-object v1

    .line 1702
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1703
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    array-length v4, v2

    .line 1704
    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v4, :cond_c

    .line 1705
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dek;->d(I)I

    move-result v5

    .line 1707
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v2, v3

    move-object v2, v0

    .line 1709
    :goto_6
    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dck;->a(Ljava/util/Map$Entry;)I

    move-result v0

    if-gt v0, v6, :cond_9

    .line 1710
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v0, p2, v2}, Lcom/google/android/gms/internal/ads/dck;->a(Lcom/google/android/gms/internal/ads/dgo;Ljava/util/Map$Entry;)V

    .line 1711
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_7
    move-object v2, v0

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    .line 1713
    :cond_9
    const/high16 v0, 0xff00000

    and-int/2addr v0, v5

    ushr-int/lit8 v0, v0, 0x14

    .line 1714
    packed-switch v0, :pswitch_data_1

    .line 2159
    :cond_a
    :goto_8
    add-int/lit8 v3, v3, 0x3

    move-object v0, v2

    goto :goto_5

    .line 1715
    :pswitch_45
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1717
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1719
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->e(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 1720
    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/dgo;->a(ID)V

    goto :goto_8

    .line 1721
    :pswitch_46
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1723
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1725
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->d(Ljava/lang/Object;J)F

    move-result v0

    .line 1726
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/dgo;->a(IF)V

    goto :goto_8

    .line 1727
    :pswitch_47
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1729
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1731
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1732
    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/dgo;->a(IJ)V

    goto :goto_8

    .line 1733
    :pswitch_48
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1735
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1737
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1738
    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/dgo;->c(IJ)V

    goto :goto_8

    .line 1739
    :pswitch_49
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1741
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1743
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1744
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/dgo;->c(II)V

    goto :goto_8

    .line 1745
    :pswitch_4a
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1747
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1749
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1750
    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/dgo;->d(IJ)V

    goto :goto_8

    .line 1751
    :pswitch_4b
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1753
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1755
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1756
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/dgo;->d(II)V

    goto/16 :goto_8

    .line 1757
    :pswitch_4c
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1759
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1761
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->c(Ljava/lang/Object;J)Z

    move-result v0

    .line 1762
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/dgo;->a(IZ)V

    goto/16 :goto_8

    .line 1763
    :pswitch_4d
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1765
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1766
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0, p2}, Lcom/google/android/gms/internal/ads/dek;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V

    goto/16 :goto_8

    .line 1767
    :pswitch_4e
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1769
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1770
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1771
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v5

    invoke-interface {p2, v6, v0, v5}, Lcom/google/android/gms/internal/ads/dgo;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfd;)V

    goto/16 :goto_8

    .line 1773
    :pswitch_4f
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1775
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1776
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    .line 1777
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/dgo;->a(ILcom/google/android/gms/internal/ads/dbi;)V

    goto/16 :goto_8

    .line 1778
    :pswitch_50
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1780
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1782
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1783
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/dgo;->e(II)V

    goto/16 :goto_8

    .line 1784
    :pswitch_51
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1786
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1788
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1789
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/dgo;->b(II)V

    goto/16 :goto_8

    .line 1790
    :pswitch_52
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1792
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1794
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1795
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/dgo;->a(II)V

    goto/16 :goto_8

    .line 1796
    :pswitch_53
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1798
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1800
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1801
    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/dgo;->b(IJ)V

    goto/16 :goto_8

    .line 1802
    :pswitch_54
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1804
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1806
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1807
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/dgo;->f(II)V

    goto/16 :goto_8

    .line 1808
    :pswitch_55
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1810
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1812
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1813
    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/dgo;->e(IJ)V

    goto/16 :goto_8

    .line 1814
    :pswitch_56
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1816
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1817
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1818
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v5

    .line 1819
    invoke-interface {p2, v6, v0, v5}, Lcom/google/android/gms/internal/ads/dgo;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfd;)V

    goto/16 :goto_8

    .line 1822
    :pswitch_57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1824
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1825
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1826
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1830
    :pswitch_58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1832
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1833
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1834
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1838
    :pswitch_59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1840
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1841
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1842
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->c(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1846
    :pswitch_5a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1848
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1849
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1850
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->d(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1854
    :pswitch_5b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1856
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1857
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1858
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->h(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1862
    :pswitch_5c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1864
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1865
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1866
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->f(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1870
    :pswitch_5d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1872
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1873
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1874
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1878
    :pswitch_5e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1880
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1881
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1882
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->n(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1886
    :pswitch_5f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1888
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1889
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1890
    invoke-static {v6, v0, p2}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;)V

    goto/16 :goto_8

    .line 1894
    :pswitch_60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1896
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1897
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1898
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v5

    .line 1899
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Lcom/google/android/gms/internal/ads/dfd;)V

    goto/16 :goto_8

    .line 1903
    :pswitch_61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1905
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1906
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1907
    invoke-static {v6, v0, p2}, Lcom/google/android/gms/internal/ads/dff;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;)V

    goto/16 :goto_8

    .line 1911
    :pswitch_62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1913
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1914
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1915
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->i(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1919
    :pswitch_63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1921
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1922
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1923
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->m(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1927
    :pswitch_64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1929
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1930
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1931
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->l(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1935
    :pswitch_65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1937
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1938
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1939
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->g(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1943
    :pswitch_66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1945
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1946
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1947
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->j(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1951
    :pswitch_67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1953
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1954
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1955
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1959
    :pswitch_68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1961
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1962
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 1963
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1967
    :pswitch_69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1969
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1970
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 1971
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1975
    :pswitch_6a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1977
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1978
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 1979
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->c(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1983
    :pswitch_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1985
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1986
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 1987
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->d(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1991
    :pswitch_6c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 1993
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1994
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 1995
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->h(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 1999
    :pswitch_6d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 2001
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2002
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 2003
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->f(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 2007
    :pswitch_6e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 2009
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2010
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 2011
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->k(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 2015
    :pswitch_6f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 2017
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2018
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 2019
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->n(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 2023
    :pswitch_70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 2025
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2026
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 2027
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->i(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 2031
    :pswitch_71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 2033
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2034
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 2035
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->m(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 2039
    :pswitch_72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 2041
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2042
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 2043
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->l(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 2047
    :pswitch_73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 2049
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2050
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 2051
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->g(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 2055
    :pswitch_74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 2057
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2058
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 2059
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->j(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 2063
    :pswitch_75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 2065
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2066
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 2067
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Z)V

    goto/16 :goto_8

    .line 2071
    :pswitch_76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v0, v3

    .line 2073
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2074
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2075
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v5

    .line 2076
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/ads/dff;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/dgo;Lcom/google/android/gms/internal/ads/dfd;)V

    goto/16 :goto_8

    .line 2079
    :pswitch_77
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2080
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v6, v0, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Lcom/google/android/gms/internal/ads/dgo;ILjava/lang/Object;I)V

    goto/16 :goto_8

    .line 2082
    :pswitch_78
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2084
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2085
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/dgo;->a(ID)V

    goto/16 :goto_8

    .line 2086
    :pswitch_79
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2088
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2089
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/dgo;->a(IF)V

    goto/16 :goto_8

    .line 2090
    :pswitch_7a
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2092
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2093
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/dgo;->a(IJ)V

    goto/16 :goto_8

    .line 2094
    :pswitch_7b
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2096
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2097
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/dgo;->c(IJ)V

    goto/16 :goto_8

    .line 2098
    :pswitch_7c
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2100
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2101
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/dgo;->c(II)V

    goto/16 :goto_8

    .line 2102
    :pswitch_7d
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2104
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2105
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/dgo;->d(IJ)V

    goto/16 :goto_8

    .line 2106
    :pswitch_7e
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2108
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2109
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/dgo;->d(II)V

    goto/16 :goto_8

    .line 2110
    :pswitch_7f
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2112
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2113
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->f(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/dgo;->a(IZ)V

    goto/16 :goto_8

    .line 2114
    :pswitch_80
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2116
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2117
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0, p2}, Lcom/google/android/gms/internal/ads/dek;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V

    goto/16 :goto_8

    .line 2118
    :pswitch_81
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2120
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2121
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 2122
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v5

    invoke-interface {p2, v6, v0, v5}, Lcom/google/android/gms/internal/ads/dgo;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfd;)V

    goto/16 :goto_8

    .line 2124
    :pswitch_82
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2126
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2127
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    .line 2128
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/dgo;->a(ILcom/google/android/gms/internal/ads/dbi;)V

    goto/16 :goto_8

    .line 2129
    :pswitch_83
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2131
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2132
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/dgo;->e(II)V

    goto/16 :goto_8

    .line 2133
    :pswitch_84
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2135
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2136
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/dgo;->b(II)V

    goto/16 :goto_8

    .line 2137
    :pswitch_85
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2139
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2140
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/dgo;->a(II)V

    goto/16 :goto_8

    .line 2141
    :pswitch_86
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2143
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2144
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/dgo;->b(IJ)V

    goto/16 :goto_8

    .line 2145
    :pswitch_87
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2147
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2148
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/ads/dgo;->f(II)V

    goto/16 :goto_8

    .line 2149
    :pswitch_88
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2151
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2152
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/ads/dgo;->e(IJ)V

    goto/16 :goto_8

    .line 2153
    :pswitch_89
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2155
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2156
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 2157
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v5

    .line 2158
    invoke-interface {p2, v6, v0, v5}, Lcom/google/android/gms/internal/ads/dgo;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfd;)V

    goto/16 :goto_8

    .line 2162
    :cond_b
    const/4 v0, 0x0

    .line 2160
    :cond_c
    :goto_9
    if-eqz v0, :cond_d

    .line 2161
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v2, p2, v0}, Lcom/google/android/gms/internal/ads/dck;->a(Lcom/google/android/gms/internal/ads/dgo;Ljava/util/Map$Entry;)V

    .line 2162
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_9

    .line 2163
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->q:Lcom/google/android/gms/internal/ads/dfv;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dek;->a(Lcom/google/android/gms/internal/ads/dfv;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V

    .line 2166
    :cond_e
    :goto_a
    return-void

    .line 2165
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dgo;)V

    goto :goto_a

    .line 1242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
    .end packed-switch

    .line 1714
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_88
        :pswitch_89
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/dbh;)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/ads/dbh;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3731
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/dek;->j:Z

    if-eqz v4, :cond_e

    .line 3733
    sget-object v4, Lcom/google/android/gms/internal/ads/dek;->b:Lsun/misc/Unsafe;

    .line 3734
    const/4 v14, -0x1

    .line 3735
    const/16 v16, 0x0

    move v6, v14

    move/from16 v7, p3

    .line 3736
    :goto_0
    move/from16 v0, p4

    if-ge v7, v0, :cond_d

    .line 3737
    add-int/lit8 v11, v7, 0x1

    aget-byte v13, p2, v7

    .line 3738
    if-gez v13, :cond_0

    .line 3739
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v13, v0, v11, v1}, Lcom/google/android/gms/internal/ads/dbe;->a(I[BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v11

    .line 3740
    move-object/from16 v0, p5

    iget v13, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    .line 3741
    :cond_0
    ushr-int/lit8 v14, v13, 0x3

    .line 3742
    and-int/lit8 v15, v13, 0x7

    .line 3743
    if-le v14, v6, :cond_2

    .line 3744
    div-int/lit8 v5, v16, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Lcom/google/android/gms/internal/ads/dek;->a(II)I

    move-result v16

    .line 3747
    :goto_1
    const/4 v5, -0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_3

    .line 3748
    const/16 v16, 0x0

    move v7, v11

    .line 3853
    :cond_1
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dfu;

    move-result-object v9

    move v5, v13

    move-object/from16 v6, p2

    move/from16 v8, p4

    move-object/from16 v10, p5

    .line 3854
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/dbe;->a(I[BIILcom/google/android/gms/internal/ads/dfu;Lcom/google/android/gms/internal/ads/dbh;)I

    move-result v7

    move v6, v14

    .line 3855
    goto :goto_0

    .line 3745
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/ads/dek;->g(I)I

    move-result v16

    goto :goto_1

    .line 3749
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    add-int/lit8 v6, v16, 0x1

    aget v28, v5, v6

    .line 3751
    const/high16 v5, 0xff00000

    and-int v5, v5, v28

    ushr-int/lit8 v19, v5, 0x14

    .line 3754
    const v5, 0xfffff

    and-int v5, v5, v28

    int-to-long v6, v5

    .line 3756
    const/16 v5, 0x11

    move/from16 v0, v19

    if-gt v0, v5, :cond_7

    .line 3757
    packed-switch v19, :pswitch_data_0

    move v7, v11

    .line 3823
    goto :goto_2

    .line 3758
    :pswitch_0
    const/4 v5, 0x1

    if-ne v15, v5, :cond_10

    .line 3759
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/dbe;->c([BI)D

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JD)V

    .line 3760
    add-int/lit8 v7, v11, 0x8

    move v6, v14

    .line 3761
    goto :goto_0

    .line 3762
    :pswitch_1
    const/4 v5, 0x5

    if-ne v15, v5, :cond_10

    .line 3763
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/dbe;->d([BI)F

    move-result v5

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7, v5}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JF)V

    .line 3764
    add-int/lit8 v7, v11, 0x4

    move v6, v14

    .line 3765
    goto/16 :goto_0

    .line 3766
    :pswitch_2
    if-nez v15, :cond_10

    .line 3767
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3768
    move-object/from16 v0, p5

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/dbh;->b:J

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v6, v14

    move/from16 v7, p3

    .line 3769
    goto/16 :goto_0

    .line 3770
    :pswitch_3
    if-nez v15, :cond_10

    .line 3771
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3772
    move-object/from16 v0, p5

    iget v5, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v6, v14

    move/from16 v7, p3

    .line 3773
    goto/16 :goto_0

    .line 3774
    :pswitch_4
    const/4 v5, 0x1

    if-ne v15, v5, :cond_10

    .line 3775
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/dbe;->b([BI)J

    move-result-wide v8

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 3776
    add-int/lit8 v7, v11, 0x8

    move v6, v14

    .line 3777
    goto/16 :goto_0

    .line 3778
    :pswitch_5
    const/4 v5, 0x5

    if-ne v15, v5, :cond_10

    .line 3779
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/dbe;->a([BI)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3780
    add-int/lit8 v7, v11, 0x4

    move v6, v14

    .line 3781
    goto/16 :goto_0

    .line 3782
    :pswitch_6
    if-nez v15, :cond_10

    .line 3783
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3784
    move-object/from16 v0, p5

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/dbh;->b:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7, v5}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JZ)V

    move v6, v14

    move/from16 v7, p3

    .line 3785
    goto/16 :goto_0

    .line 3784
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 3786
    :pswitch_7
    const/4 v5, 0x2

    if-ne v15, v5, :cond_10

    .line 3787
    const/high16 v5, 0x20000000

    and-int v5, v5, v28

    if-nez v5, :cond_5

    .line 3788
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/google/android/gms/internal/ads/dbe;->c([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v5

    .line 3790
    :goto_4
    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v6, v14

    move v7, v5

    .line 3791
    goto/16 :goto_0

    .line 3789
    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/google/android/gms/internal/ads/dbe;->d([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result v5

    goto :goto_4

    .line 3792
    :pswitch_8
    const/4 v5, 0x2

    if-ne v15, v5, :cond_10

    .line 3794
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v5

    .line 3795
    move-object/from16 v0, p2

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v5, v0, v11, v1, v2}, Lcom/google/android/gms/internal/ads/dbe;->a(Lcom/google/android/gms/internal/ads/dfd;[BIILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3796
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 3797
    if-nez v5, :cond_6

    .line 3798
    move-object/from16 v0, p5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v6, v14

    move/from16 v7, p3

    goto/16 :goto_0

    .line 3799
    :cond_6
    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    .line 3800
    invoke-static {v5, v8}, Lcom/google/android/gms/internal/ads/dcz;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3801
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v6, v14

    move/from16 v7, p3

    .line 3802
    goto/16 :goto_0

    .line 3803
    :pswitch_9
    const/4 v5, 0x2

    if-ne v15, v5, :cond_10

    .line 3804
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/google/android/gms/internal/ads/dbe;->e([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3805
    move-object/from16 v0, p5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dbh;->c:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v6, v14

    move/from16 v7, p3

    .line 3806
    goto/16 :goto_0

    .line 3807
    :pswitch_a
    if-nez v15, :cond_10

    .line 3808
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3809
    move-object/from16 v0, p5

    iget v5, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v6, v14

    move/from16 v7, p3

    .line 3810
    goto/16 :goto_0

    .line 3811
    :pswitch_b
    if-nez v15, :cond_10

    .line 3812
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/google/android/gms/internal/ads/dbe;->a([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3813
    move-object/from16 v0, p5

    iget v5, v0, Lcom/google/android/gms/internal/ads/dbh;->a:I

    .line 3814
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/dby;->e(I)I

    move-result v5

    .line 3815
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v6, v14

    move/from16 v7, p3

    .line 3816
    goto/16 :goto_0

    .line 3817
    :pswitch_c
    if-nez v15, :cond_10

    .line 3818
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/google/android/gms/internal/ads/dbe;->b([BILcom/google/android/gms/internal/ads/dbh;)I

    move-result p3

    .line 3819
    move-object/from16 v0, p5

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/dbh;->b:J

    .line 3820
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/dby;->a(J)J

    move-result-wide v8

    move-object/from16 v5, p1

    .line 3821
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v6, v14

    move/from16 v7, p3

    .line 3822
    goto/16 :goto_0

    .line 3824
    :cond_7
    const/16 v5, 0x1b

    move/from16 v0, v19

    if-ne v0, v5, :cond_9

    .line 3825
    const/4 v5, 0x2

    if-ne v15, v5, :cond_10

    .line 3826
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/dde;

    .line 3827
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dde;->a()Z

    move-result v8

    if-nez v8, :cond_11

    .line 3828
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dde;->size()I

    move-result v8

    .line 3830
    if-nez v8, :cond_8

    const/16 v8, 0xa

    .line 3831
    :goto_5
    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/ads/dde;->a(I)Lcom/google/android/gms/internal/ads/dde;

    move-result-object v10

    .line 3832
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3834
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v5

    move v6, v13

    move-object/from16 v7, p2

    move v8, v11

    move/from16 v9, p4

    move-object/from16 v11, p5

    .line 3835
    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/dbe;->a(Lcom/google/android/gms/internal/ads/dfd;I[BIILcom/google/android/gms/internal/ads/dde;Lcom/google/android/gms/internal/ads/dbh;)I

    move-result v7

    move v6, v14

    .line 3836
    goto/16 :goto_0

    .line 3830
    :cond_8
    shl-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 3837
    :cond_9
    const/16 v5, 0x31

    move/from16 v0, v19

    if-gt v0, v5, :cond_b

    .line 3839
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v12, p4

    move-wide/from16 v20, v6

    move-object/from16 v22, p5

    .line 3840
    invoke-direct/range {v8 .. v22}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/dbh;)I

    move-result v7

    .line 3841
    if-eq v7, v11, :cond_1

    :cond_a
    move v6, v14

    goto/16 :goto_0

    .line 3842
    :cond_b
    const/16 v5, 0x32

    move/from16 v0, v19

    if-ne v0, v5, :cond_c

    .line 3843
    const/4 v5, 0x2

    if-ne v15, v5, :cond_10

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move/from16 v21, v11

    move/from16 v22, p4

    move/from16 v23, v16

    move-wide/from16 v24, v6

    move-object/from16 v26, p5

    .line 3845
    invoke-direct/range {v18 .. v26}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/dbh;)I

    move-result v7

    .line 3846
    if-ne v7, v11, :cond_a

    goto/16 :goto_2

    :cond_c
    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move/from16 v23, v11

    move/from16 v24, p4

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    move/from16 v29, v19

    move-wide/from16 v30, v6

    move/from16 v32, v16

    move-object/from16 v33, p5

    .line 3850
    invoke-direct/range {v20 .. v33}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/dbh;)I

    move-result v7

    .line 3851
    if-ne v7, v11, :cond_a

    goto/16 :goto_2

    .line 3856
    :cond_d
    move/from16 v0, p4

    if-eq v7, v0, :cond_f

    .line 3857
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->h()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v4

    throw v4

    .line 3859
    :cond_e
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/dbh;)I

    .line 3860
    :cond_f
    return-void

    :cond_10
    move v7, v11

    goto/16 :goto_2

    :cond_11
    move-object v10, v5

    goto/16 :goto_6

    .line 3757
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const v10, 0xfffff

    const/4 v0, 0x0

    .line 250
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    array-length v4, v2

    move v3, v0

    .line 251
    :goto_0
    if-ge v3, v4, :cond_16

    .line 253
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dek;->d(I)I

    move-result v2

    .line 255
    and-int v5, v2, v10

    int-to-long v6, v5

    .line 258
    const/high16 v5, 0xff00000

    and-int/2addr v2, v5

    ushr-int/lit8 v2, v2, 0x14

    .line 259
    packed-switch v2, :pswitch_data_0

    :cond_0
    move v2, v1

    .line 335
    :goto_1
    if-nez v2, :cond_15

    .line 346
    :cond_1
    :goto_2
    return v0

    .line 260
    :pswitch_0
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->e(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    .line 262
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->e(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-eqz v2, :cond_0

    :cond_2
    move v2, v0

    .line 263
    goto :goto_1

    .line 264
    :pswitch_1
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 265
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->d(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 266
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->d(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v2, v5, :cond_0

    :cond_3
    move v2, v0

    .line 267
    goto :goto_1

    .line 268
    :pswitch_2
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 269
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-eqz v2, :cond_0

    :cond_4
    move v2, v0

    .line 270
    goto :goto_1

    .line 271
    :pswitch_3
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 272
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-eqz v2, :cond_0

    :cond_5
    move v2, v0

    .line 273
    goto :goto_1

    .line 274
    :pswitch_4
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 275
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_0

    :cond_6
    move v2, v0

    .line 276
    goto :goto_1

    .line 277
    :pswitch_5
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 278
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-eqz v2, :cond_0

    :cond_7
    move v2, v0

    .line 279
    goto/16 :goto_1

    .line 280
    :pswitch_6
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 281
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_0

    :cond_8
    move v2, v0

    .line 282
    goto/16 :goto_1

    .line 283
    :pswitch_7
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 284
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->c(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->c(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v2, v5, :cond_0

    :cond_9
    move v2, v0

    .line 285
    goto/16 :goto_1

    .line 286
    :pswitch_8
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 287
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 288
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/dff;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_a
    move v2, v0

    .line 289
    goto/16 :goto_1

    .line 290
    :pswitch_9
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 291
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 292
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/dff;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_b
    move v2, v0

    .line 293
    goto/16 :goto_1

    .line 294
    :pswitch_a
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 295
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 296
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/dff;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_c
    move v2, v0

    .line 297
    goto/16 :goto_1

    .line 298
    :pswitch_b
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 299
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_0

    :cond_d
    move v2, v0

    .line 300
    goto/16 :goto_1

    .line 301
    :pswitch_c
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 302
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_0

    :cond_e
    move v2, v0

    .line 303
    goto/16 :goto_1

    .line 304
    :pswitch_d
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 305
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_0

    :cond_f
    move v2, v0

    .line 306
    goto/16 :goto_1

    .line 307
    :pswitch_e
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 308
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-eqz v2, :cond_0

    :cond_10
    move v2, v0

    .line 309
    goto/16 :goto_1

    .line 310
    :pswitch_f
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 311
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_0

    :cond_11
    move v2, v0

    .line 312
    goto/16 :goto_1

    .line 313
    :pswitch_10
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 314
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-eqz v2, :cond_0

    :cond_12
    move v2, v0

    .line 315
    goto/16 :goto_1

    .line 316
    :pswitch_11
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/dek;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 317
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 318
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/dff;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_13
    move v2, v0

    .line 319
    goto/16 :goto_1

    .line 321
    :pswitch_12
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 322
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/dff;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_1

    .line 324
    :pswitch_13
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 325
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/dff;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_1

    .line 327
    :pswitch_14
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dek;->e(I)I

    move-result v2

    .line 328
    and-int v5, v2, v10

    int-to-long v8, v5

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v5

    and-int/2addr v2, v10

    int-to-long v8, v2

    .line 329
    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v2

    if-ne v5, v2, :cond_14

    .line 331
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 332
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/dff;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_14
    move v2, v0

    .line 333
    goto/16 :goto_1

    .line 337
    :cond_15
    add-int/lit8 v2, v3, 0x3

    move v3, v2

    goto/16 :goto_0

    .line 338
    :cond_16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->q:Lcom/google/android/gms/internal/ads/dfv;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 339
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dek;->q:Lcom/google/android/gms/internal/ads/dfv;

    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/dfv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 340
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dek;->h:Z

    if-eqz v0, :cond_17

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dck;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/dck;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v1

    .line 345
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dcl;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_2

    :cond_17
    move v0, v1

    .line 346
    goto/16 :goto_2

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dek;->j:Z

    if-eqz v0, :cond_13

    .line 575
    sget-object v4, Lcom/google/android/gms/internal/ads/dek;->b:Lsun/misc/Unsafe;

    .line 576
    const/4 v2, 0x0

    .line 577
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    array-length v0, v0

    if-ge v1, v0, :cond_12

    .line 578
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dek;->d(I)I

    move-result v0

    .line 580
    const/high16 v3, 0xff00000

    and-int/2addr v3, v0

    ushr-int/lit8 v5, v3, 0x14

    .line 583
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v6, v3, v1

    .line 586
    const v3, 0xfffff

    and-int/2addr v0, v3

    int-to-long v8, v0

    .line 588
    sget-object v0, Lcom/google/android/gms/internal/ads/dcq;->a:Lcom/google/android/gms/internal/ads/dcq;

    .line 589
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcq;->a()I

    move-result v0

    if-lt v5, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/dcq;->b:Lcom/google/android/gms/internal/ads/dcq;

    .line 590
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcq;->a()I

    move-result v0

    if-gt v5, v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    add-int/lit8 v3, v1, 0x2

    aget v0, v0, v3

    const v3, 0xfffff

    and-int/2addr v0, v3

    move v3, v0

    .line 593
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 873
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x3

    move v1, v0

    goto :goto_0

    .line 592
    :cond_1
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    .line 594
    :pswitch_0
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzebk;->b(ID)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    .line 596
    :pswitch_1
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->b(IF)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    .line 598
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzebk;->d(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    .line 600
    :pswitch_3
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzebk;->e(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    .line 603
    :pswitch_4
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->f(II)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    .line 605
    :pswitch_5
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzebk;->g(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    .line 607
    :pswitch_6
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->i(II)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    .line 609
    :pswitch_7
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->b(IZ)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    .line 611
    :pswitch_8
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 613
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/dbi;

    if-eqz v3, :cond_2

    .line 614
    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->c(ILcom/google/android/gms/internal/ads/dbi;)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 615
    :cond_2
    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 616
    goto/16 :goto_2

    .line 617
    :pswitch_9
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 619
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v3

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfd;)I

    move-result v0

    add-int/2addr v2, v0

    .line 620
    goto/16 :goto_2

    .line 621
    :pswitch_a
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    .line 623
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->c(ILcom/google/android/gms/internal/ads/dbi;)I

    move-result v0

    add-int/2addr v2, v0

    .line 624
    goto/16 :goto_2

    .line 625
    :pswitch_b
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 627
    :pswitch_c
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->k(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 629
    :pswitch_d
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->j(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 631
    :pswitch_e
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzebk;->h(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 633
    :pswitch_f
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->h(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 635
    :pswitch_10
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzebk;->f(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 638
    :pswitch_11
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/deg;

    .line 641
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v3

    .line 642
    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/zzebk;->c(ILcom/google/android/gms/internal/ads/deg;Lcom/google/android/gms/internal/ads/dfd;)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 643
    :pswitch_12
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/dff;->i(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 644
    goto/16 :goto_2

    .line 645
    :pswitch_13
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/dff;->h(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 646
    goto/16 :goto_2

    .line 648
    :pswitch_14
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 649
    goto/16 :goto_2

    .line 651
    :pswitch_15
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/dff;->b(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 652
    goto/16 :goto_2

    .line 654
    :pswitch_16
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    .line 655
    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/dff;->e(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 656
    goto/16 :goto_2

    .line 657
    :pswitch_17
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/dff;->i(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 658
    goto/16 :goto_2

    .line 659
    :pswitch_18
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/dff;->h(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 660
    goto/16 :goto_2

    .line 661
    :pswitch_19
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/dff;->j(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 662
    goto/16 :goto_2

    .line 663
    :pswitch_1a
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;)I

    move-result v0

    add-int/2addr v2, v0

    .line 664
    goto/16 :goto_2

    .line 666
    :pswitch_1b
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v3

    .line 667
    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/dfd;)I

    move-result v0

    add-int/2addr v2, v0

    .line 668
    goto/16 :goto_2

    .line 670
    :pswitch_1c
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 671
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/dff;->b(ILjava/util/List;)I

    move-result v0

    add-int/2addr v2, v0

    .line 672
    goto/16 :goto_2

    .line 674
    :pswitch_1d
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    .line 675
    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/dff;->f(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 676
    goto/16 :goto_2

    .line 678
    :pswitch_1e
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    .line 679
    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/dff;->d(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 680
    goto/16 :goto_2

    .line 681
    :pswitch_1f
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/dff;->h(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 682
    goto/16 :goto_2

    .line 683
    :pswitch_20
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/dff;->i(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 684
    goto/16 :goto_2

    .line 686
    :pswitch_21
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    .line 687
    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/dff;->g(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 688
    goto/16 :goto_2

    .line 690
    :pswitch_22
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/dff;->c(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 691
    goto/16 :goto_2

    .line 693
    :pswitch_23
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 694
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->i(Ljava/util/List;)I

    move-result v0

    .line 695
    if-lez v0, :cond_0

    .line 696
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_3

    .line 697
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 699
    :cond_3
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v3

    .line 700
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 702
    :pswitch_24
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 703
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->h(Ljava/util/List;)I

    move-result v0

    .line 704
    if-lez v0, :cond_0

    .line 705
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_4

    .line 706
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 708
    :cond_4
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v3

    .line 709
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 711
    :pswitch_25
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 712
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->a(Ljava/util/List;)I

    move-result v0

    .line 713
    if-lez v0, :cond_0

    .line 714
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_5

    .line 715
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 717
    :cond_5
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v3

    .line 718
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 720
    :pswitch_26
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 721
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->b(Ljava/util/List;)I

    move-result v0

    .line 722
    if-lez v0, :cond_0

    .line 723
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_6

    .line 724
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 726
    :cond_6
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v3

    .line 727
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 729
    :pswitch_27
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 730
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->e(Ljava/util/List;)I

    move-result v0

    .line 731
    if-lez v0, :cond_0

    .line 732
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_7

    .line 733
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 735
    :cond_7
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v3

    .line 736
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 738
    :pswitch_28
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 739
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->i(Ljava/util/List;)I

    move-result v0

    .line 740
    if-lez v0, :cond_0

    .line 741
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_8

    .line 742
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 744
    :cond_8
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v3

    .line 745
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 747
    :pswitch_29
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 748
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->h(Ljava/util/List;)I

    move-result v0

    .line 749
    if-lez v0, :cond_0

    .line 750
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_9

    .line 751
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 753
    :cond_9
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v3

    .line 754
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 756
    :pswitch_2a
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 757
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->j(Ljava/util/List;)I

    move-result v0

    .line 758
    if-lez v0, :cond_0

    .line 759
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_a

    .line 760
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 762
    :cond_a
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v3

    .line 763
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 765
    :pswitch_2b
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 766
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->f(Ljava/util/List;)I

    move-result v0

    .line 767
    if-lez v0, :cond_0

    .line 768
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_b

    .line 769
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 771
    :cond_b
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v3

    .line 772
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 774
    :pswitch_2c
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 775
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->d(Ljava/util/List;)I

    move-result v0

    .line 776
    if-lez v0, :cond_0

    .line 777
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_c

    .line 778
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 780
    :cond_c
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v3

    .line 781
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 783
    :pswitch_2d
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 784
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->h(Ljava/util/List;)I

    move-result v0

    .line 785
    if-lez v0, :cond_0

    .line 786
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_d

    .line 787
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 789
    :cond_d
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v3

    .line 790
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 792
    :pswitch_2e
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 793
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->i(Ljava/util/List;)I

    move-result v0

    .line 794
    if-lez v0, :cond_0

    .line 795
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_e

    .line 796
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 798
    :cond_e
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v3

    .line 799
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 801
    :pswitch_2f
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 802
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->g(Ljava/util/List;)I

    move-result v0

    .line 803
    if-lez v0, :cond_0

    .line 804
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_f

    .line 805
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 807
    :cond_f
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v3

    .line 808
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 810
    :pswitch_30
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 811
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->c(Ljava/util/List;)I

    move-result v0

    .line 812
    if-lez v0, :cond_0

    .line 813
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_10

    .line 814
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 816
    :cond_10
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v3

    .line 817
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 819
    :pswitch_31
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v3

    .line 820
    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/dff;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/dfd;)I

    move-result v0

    add-int/2addr v2, v0

    .line 821
    goto/16 :goto_2

    .line 822
    :pswitch_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    .line 823
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dek;->b(I)Ljava/lang/Object;

    move-result-object v5

    .line 824
    invoke-interface {v0, v6, v3, v5}, Lcom/google/android/gms/internal/ads/ddz;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 825
    goto/16 :goto_2

    .line 826
    :pswitch_33
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzebk;->b(ID)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 828
    :pswitch_34
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->b(IF)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 830
    :pswitch_35
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzebk;->d(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 832
    :pswitch_36
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzebk;->e(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 834
    :pswitch_37
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->f(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 836
    :pswitch_38
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzebk;->g(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 838
    :pswitch_39
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->i(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 840
    :pswitch_3a
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->b(IZ)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 842
    :pswitch_3b
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 844
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/dbi;

    if-eqz v3, :cond_11

    .line 845
    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->c(ILcom/google/android/gms/internal/ads/dbi;)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 846
    :cond_11
    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 847
    goto/16 :goto_2

    .line 848
    :pswitch_3c
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 850
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v3

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfd;)I

    move-result v0

    add-int/2addr v2, v0

    .line 851
    goto/16 :goto_2

    .line 852
    :pswitch_3d
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    .line 855
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->c(ILcom/google/android/gms/internal/ads/dbi;)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 856
    :pswitch_3e
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 858
    :pswitch_3f
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->k(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 860
    :pswitch_40
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->j(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 862
    :pswitch_41
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzebk;->h(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 864
    :pswitch_42
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzebk;->h(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 866
    :pswitch_43
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzebk;->f(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 868
    :pswitch_44
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/deg;

    .line 871
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v3

    .line 872
    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/ads/zzebk;->c(ILcom/google/android/gms/internal/ads/deg;Lcom/google/android/gms/internal/ads/dfd;)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 874
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->q:Lcom/google/android/gms/internal/ads/dfv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dek;->a(Lcom/google/android/gms/internal/ads/dfv;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1216
    :goto_3
    return v0

    .line 876
    :cond_13
    const/4 v4, 0x0

    .line 877
    sget-object v7, Lcom/google/android/gms/internal/ads/dek;->b:Lsun/misc/Unsafe;

    .line 878
    const/4 v3, -0x1

    .line 879
    const/4 v2, 0x0

    .line 880
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    array-length v0, v0

    if-ge v1, v0, :cond_27

    .line 881
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dek;->d(I)I

    move-result v8

    .line 883
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v9, v0, v1

    .line 886
    const/high16 v0, 0xff00000

    and-int/2addr v0, v8

    ushr-int/lit8 v10, v0, 0x14

    .line 888
    const/4 v5, 0x0

    .line 889
    const/4 v0, 0x0

    .line 890
    const/16 v6, 0x11

    if-gt v10, v6, :cond_16

    .line 891
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    add-int/lit8 v5, v1, 0x2

    aget v6, v0, v5

    .line 892
    const v0, 0xfffff

    and-int/2addr v0, v6

    .line 893
    const/4 v5, 0x1

    ushr-int/lit8 v11, v6, 0x14

    shl-int/2addr v5, v11

    .line 894
    if-eq v0, v3, :cond_14

    .line 896
    int-to-long v2, v0

    invoke-virtual {v7, p1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move v3, v0

    :cond_14
    move v0, v5

    .line 902
    :goto_5
    const v5, 0xfffff

    and-int/2addr v5, v8

    int-to-long v12, v5

    .line 904
    packed-switch v10, :pswitch_data_1

    .line 1201
    :cond_15
    :goto_6
    add-int/lit8 v0, v1, 0x3

    move v1, v0

    goto :goto_4

    .line 897
    :cond_16
    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v6, :cond_2b

    sget-object v6, Lcom/google/android/gms/internal/ads/dcq;->a:Lcom/google/android/gms/internal/ads/dcq;

    .line 898
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dcq;->a()I

    move-result v6

    if-lt v10, v6, :cond_2b

    sget-object v6, Lcom/google/android/gms/internal/ads/dcq;->b:Lcom/google/android/gms/internal/ads/dcq;

    .line 899
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dcq;->a()I

    move-result v6

    if-gt v10, v6, :cond_2b

    .line 900
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    add-int/lit8 v6, v1, 0x2

    aget v5, v5, v6

    const v6, 0xfffff

    and-int/2addr v5, v6

    move v6, v5

    goto :goto_5

    .line 905
    :pswitch_45
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 906
    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzebk;->b(ID)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_6

    .line 907
    :pswitch_46
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 908
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->b(IF)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_6

    .line 909
    :pswitch_47
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 910
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzebk;->d(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_6

    .line 911
    :pswitch_48
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 912
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzebk;->e(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_6

    .line 913
    :pswitch_49
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 914
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->f(II)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_6

    .line 915
    :pswitch_4a
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 916
    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzebk;->g(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_6

    .line 917
    :pswitch_4b
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 918
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->i(II)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_6

    .line 919
    :pswitch_4c
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 920
    const/4 v0, 0x1

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->b(IZ)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_6

    .line 921
    :pswitch_4d
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 922
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 923
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/dbi;

    if-eqz v5, :cond_17

    .line 924
    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->c(ILcom/google/android/gms/internal/ads/dbi;)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 925
    :cond_17
    check-cast v0, Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v4, v0

    .line 926
    goto/16 :goto_6

    .line 927
    :pswitch_4e
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 928
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 929
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v5

    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfd;)I

    move-result v0

    add-int/2addr v4, v0

    .line 930
    goto/16 :goto_6

    .line 931
    :pswitch_4f
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 932
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    .line 933
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->c(ILcom/google/android/gms/internal/ads/dbi;)I

    move-result v0

    add-int/2addr v4, v0

    .line 934
    goto/16 :goto_6

    .line 935
    :pswitch_50
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 936
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 937
    :pswitch_51
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 938
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->k(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 939
    :pswitch_52
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 940
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->j(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 941
    :pswitch_53
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 942
    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzebk;->h(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 943
    :pswitch_54
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 944
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->h(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 945
    :pswitch_55
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 946
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzebk;->f(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 947
    :pswitch_56
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 949
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/deg;

    .line 950
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v5

    .line 951
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/zzebk;->c(ILcom/google/android/gms/internal/ads/deg;Lcom/google/android/gms/internal/ads/dfd;)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 953
    :pswitch_57
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 954
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/dff;->i(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 955
    goto/16 :goto_6

    .line 957
    :pswitch_58
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 958
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/dff;->h(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 959
    goto/16 :goto_6

    .line 961
    :pswitch_59
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 962
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 963
    goto/16 :goto_6

    .line 965
    :pswitch_5a
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 966
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/dff;->b(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 967
    goto/16 :goto_6

    .line 969
    :pswitch_5b
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 970
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/dff;->e(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 971
    goto/16 :goto_6

    .line 973
    :pswitch_5c
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 974
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/dff;->i(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 975
    goto/16 :goto_6

    .line 977
    :pswitch_5d
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 978
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/dff;->h(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 979
    goto/16 :goto_6

    .line 981
    :pswitch_5e
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 982
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/dff;->j(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 983
    goto/16 :goto_6

    .line 985
    :pswitch_5f
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;)I

    move-result v0

    add-int/2addr v4, v0

    .line 986
    goto/16 :goto_6

    .line 988
    :pswitch_60
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v5

    .line 989
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/util/List;Lcom/google/android/gms/internal/ads/dfd;)I

    move-result v0

    add-int/2addr v4, v0

    .line 990
    goto/16 :goto_6

    .line 992
    :pswitch_61
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 993
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/dff;->b(ILjava/util/List;)I

    move-result v0

    add-int/2addr v4, v0

    .line 994
    goto/16 :goto_6

    .line 996
    :pswitch_62
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 997
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/dff;->f(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 998
    goto/16 :goto_6

    .line 1000
    :pswitch_63
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1001
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/dff;->d(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 1002
    goto/16 :goto_6

    .line 1004
    :pswitch_64
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1005
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/dff;->h(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 1006
    goto/16 :goto_6

    .line 1008
    :pswitch_65
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1009
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/dff;->i(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 1010
    goto/16 :goto_6

    .line 1012
    :pswitch_66
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1013
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/dff;->g(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 1014
    goto/16 :goto_6

    .line 1016
    :pswitch_67
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1017
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/dff;->c(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 1018
    goto/16 :goto_6

    .line 1020
    :pswitch_68
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1021
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->i(Ljava/util/List;)I

    move-result v0

    .line 1022
    if-lez v0, :cond_15

    .line 1023
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_18

    .line 1024
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1026
    :cond_18
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v5

    .line 1027
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1029
    :pswitch_69
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1030
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->h(Ljava/util/List;)I

    move-result v0

    .line 1031
    if-lez v0, :cond_15

    .line 1032
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_19

    .line 1033
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1035
    :cond_19
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v5

    .line 1036
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1038
    :pswitch_6a
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1039
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->a(Ljava/util/List;)I

    move-result v0

    .line 1040
    if-lez v0, :cond_15

    .line 1041
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_1a

    .line 1042
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1044
    :cond_1a
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v5

    .line 1045
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1047
    :pswitch_6b
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1048
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->b(Ljava/util/List;)I

    move-result v0

    .line 1049
    if-lez v0, :cond_15

    .line 1050
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_1b

    .line 1051
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1053
    :cond_1b
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v5

    .line 1054
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1056
    :pswitch_6c
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1057
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->e(Ljava/util/List;)I

    move-result v0

    .line 1058
    if-lez v0, :cond_15

    .line 1059
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_1c

    .line 1060
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1062
    :cond_1c
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v5

    .line 1063
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1065
    :pswitch_6d
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1066
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->i(Ljava/util/List;)I

    move-result v0

    .line 1067
    if-lez v0, :cond_15

    .line 1068
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_1d

    .line 1069
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1071
    :cond_1d
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v5

    .line 1072
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1074
    :pswitch_6e
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1075
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->h(Ljava/util/List;)I

    move-result v0

    .line 1076
    if-lez v0, :cond_15

    .line 1077
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_1e

    .line 1078
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1080
    :cond_1e
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v5

    .line 1081
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1083
    :pswitch_6f
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1084
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->j(Ljava/util/List;)I

    move-result v0

    .line 1085
    if-lez v0, :cond_15

    .line 1086
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_1f

    .line 1087
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1089
    :cond_1f
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v5

    .line 1090
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1092
    :pswitch_70
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1093
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->f(Ljava/util/List;)I

    move-result v0

    .line 1094
    if-lez v0, :cond_15

    .line 1095
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_20

    .line 1096
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1098
    :cond_20
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v5

    .line 1099
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1101
    :pswitch_71
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1102
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->d(Ljava/util/List;)I

    move-result v0

    .line 1103
    if-lez v0, :cond_15

    .line 1104
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_21

    .line 1105
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1107
    :cond_21
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v5

    .line 1108
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1110
    :pswitch_72
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1111
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->h(Ljava/util/List;)I

    move-result v0

    .line 1112
    if-lez v0, :cond_15

    .line 1113
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_22

    .line 1114
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1116
    :cond_22
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v5

    .line 1117
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1119
    :pswitch_73
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1120
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->i(Ljava/util/List;)I

    move-result v0

    .line 1121
    if-lez v0, :cond_15

    .line 1122
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_23

    .line 1123
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1125
    :cond_23
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v5

    .line 1126
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1128
    :pswitch_74
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1129
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->g(Ljava/util/List;)I

    move-result v0

    .line 1130
    if-lez v0, :cond_15

    .line 1131
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_24

    .line 1132
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1134
    :cond_24
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v5

    .line 1135
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1137
    :pswitch_75
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1138
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dff;->c(Ljava/util/List;)I

    move-result v0

    .line 1139
    if-lez v0, :cond_15

    .line 1140
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dek;->k:Z

    if-eqz v5, :cond_25

    .line 1141
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1143
    :cond_25
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzebk;->e(I)I

    move-result v5

    .line 1144
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1146
    :pswitch_76
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1147
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v5

    .line 1148
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/dff;->b(ILjava/util/List;Lcom/google/android/gms/internal/ads/dfd;)I

    move-result v0

    add-int/2addr v4, v0

    .line 1149
    goto/16 :goto_6

    .line 1150
    :pswitch_77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    .line 1151
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dek;->b(I)Ljava/lang/Object;

    move-result-object v6

    .line 1152
    invoke-interface {v0, v9, v5, v6}, Lcom/google/android/gms/internal/ads/ddz;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v4, v0

    .line 1153
    goto/16 :goto_6

    .line 1154
    :pswitch_78
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1155
    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzebk;->b(ID)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1156
    :pswitch_79
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1157
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->b(IF)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1158
    :pswitch_7a
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1159
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzebk;->d(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1160
    :pswitch_7b
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1161
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzebk;->e(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1162
    :pswitch_7c
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1163
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->f(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1164
    :pswitch_7d
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1165
    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzebk;->g(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1166
    :pswitch_7e
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1167
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->i(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1168
    :pswitch_7f
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1169
    const/4 v0, 0x1

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->b(IZ)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1170
    :pswitch_80
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1171
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1172
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/dbi;

    if-eqz v5, :cond_26

    .line 1173
    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->c(ILcom/google/android/gms/internal/ads/dbi;)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1174
    :cond_26
    check-cast v0, Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v4, v0

    .line 1175
    goto/16 :goto_6

    .line 1176
    :pswitch_81
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1177
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1178
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v5

    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/dff;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/dfd;)I

    move-result v0

    add-int/2addr v4, v0

    .line 1179
    goto/16 :goto_6

    .line 1180
    :pswitch_82
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1182
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    .line 1183
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->c(ILcom/google/android/gms/internal/ads/dbi;)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1184
    :pswitch_83
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1185
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->g(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1186
    :pswitch_84
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1187
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->k(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1188
    :pswitch_85
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1189
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->j(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1190
    :pswitch_86
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1191
    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzebk;->h(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1192
    :pswitch_87
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1193
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/dek;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzebk;->h(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1194
    :pswitch_88
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1195
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/ads/dek;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzebk;->f(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1196
    :pswitch_89
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1198
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/deg;

    .line 1199
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v5

    .line 1200
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/ads/zzebk;->c(ILcom/google/android/gms/internal/ads/deg;Lcom/google/android/gms/internal/ads/dfd;)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1202
    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->q:Lcom/google/android/gms/internal/ads/dfv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dek;->a(Lcom/google/android/gms/internal/ads/dfv;Ljava/lang/Object;)I

    move-result v0

    add-int v3, v4, v0

    .line 1203
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dek;->h:Z

    if-eqz v0, :cond_2a

    .line 1204
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dck;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v4

    .line 1205
    const/4 v2, 0x0

    .line 1206
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dfe;->c()I

    move-result v0

    if-ge v1, v0, :cond_28

    .line 1207
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dfe;->b(I)Ljava/util/Map$Entry;

    move-result-object v5

    .line 1208
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcn;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/dcl;->a(Lcom/google/android/gms/internal/ads/dcn;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 1209
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1210
    :cond_28
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/dcl;->a:Lcom/google/android/gms/internal/ads/dfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dfe;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dcn;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcl;->a(Lcom/google/android/gms/internal/ads/dcn;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 1212
    goto :goto_8

    .line 1214
    :cond_29
    add-int v0, v3, v2

    goto/16 :goto_3

    :cond_2a
    move v0, v3

    goto/16 :goto_3

    :cond_2b
    move v6, v5

    goto/16 :goto_5

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
    .end packed-switch

    .line 904
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_88
        :pswitch_89
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 456
    if-nez p2, :cond_0

    .line 457
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 458
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 460
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dek;->d(I)I

    move-result v1

    .line 462
    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 465
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v4, v4, v0

    .line 468
    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    .line 469
    packed-switch v1, :pswitch_data_0

    .line 535
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 470
    :pswitch_0
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 471
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JD)V

    .line 472
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 473
    :pswitch_1
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->d(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JF)V

    .line 475
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 476
    :pswitch_2
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JJ)V

    .line 478
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 479
    :pswitch_3
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JJ)V

    .line 481
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 482
    :pswitch_4
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JI)V

    .line 484
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 485
    :pswitch_5
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JJ)V

    .line 487
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 488
    :pswitch_6
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JI)V

    .line 490
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 491
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->c(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JZ)V

    .line 493
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 494
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 496
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 497
    :pswitch_9
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 499
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 501
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 502
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JI)V

    .line 504
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 505
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JI)V

    .line 507
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 508
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JI)V

    .line 510
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 511
    :pswitch_e
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JJ)V

    .line 513
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 514
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JI)V

    .line 516
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 517
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JJ)V

    .line 519
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 520
    :pswitch_11
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 522
    :pswitch_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/ddp;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 524
    :pswitch_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/dff;->a(Lcom/google/android/gms/internal/ads/ddz;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 526
    :pswitch_14
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 528
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 529
    :pswitch_15
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 531
    :pswitch_16
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 533
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 534
    :pswitch_17
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/dek;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->q:Lcom/google/android/gms/internal/ads/dfv;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dff;->a(Lcom/google/android/gms/internal/ads/dfv;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 537
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dek;->h:Z

    if-eqz v0, :cond_3

    .line 538
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dff;->a(Lcom/google/android/gms/internal/ads/dck;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 539
    :cond_3
    return-void

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 3861
    iget v0, p0, Lcom/google/android/gms/internal/ads/dek;->m:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/dek;->n:I

    if-ge v0, v1, :cond_1

    .line 3862
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dek;->l:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dek;->d(I)I

    move-result v1

    .line 3863
    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v2, v1

    .line 3865
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 3866
    if-eqz v1, :cond_0

    .line 3867
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/ddz;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dgb;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3868
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3869
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->l:[I

    array-length v1, v0

    .line 3870
    iget v0, p0, Lcom/google/android/gms/internal/ads/dek;->n:I

    :goto_1
    if-ge v0, v1, :cond_2

    .line 3871
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dek;->p:Lcom/google/android/gms/internal/ads/ddp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dek;->l:[I

    aget v3, v3, v0

    int-to-long v4, v3

    invoke-virtual {v2, p1, v4, v5}, Lcom/google/android/gms/internal/ads/ddp;->b(Ljava/lang/Object;J)V

    .line 3872
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3873
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->q:Lcom/google/android/gms/internal/ads/dfv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dfv;->d(Ljava/lang/Object;)V

    .line 3874
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dek;->h:Z

    if-eqz v0, :cond_3

    .line 3875
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dck;->c(Ljava/lang/Object;)V

    .line 3876
    :cond_3
    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const v12, 0xfffff

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 3912
    const/4 v0, -0x1

    move v1, v2

    move v3, v2

    move v4, v0

    .line 3914
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dek;->m:I

    if-ge v1, v0, :cond_9

    .line 3915
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->l:[I

    aget v8, v0, v1

    .line 3917
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    aget v9, v0, v8

    .line 3919
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/dek;->d(I)I

    move-result v10

    .line 3921
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dek;->j:Z

    if-nez v0, :cond_c

    .line 3922
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->c:[I

    add-int/lit8 v5, v8, 0x2

    aget v0, v0, v5

    .line 3923
    and-int v7, v0, v12

    .line 3924
    ushr-int/lit8 v0, v0, 0x14

    shl-int v0, v6, v0

    .line 3925
    if-eq v7, v4, :cond_b

    .line 3927
    sget-object v3, Lcom/google/android/gms/internal/ads/dek;->b:Lsun/misc/Unsafe;

    int-to-long v4, v7

    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v5, v0

    move v4, v7

    .line 3929
    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v10

    if-eqz v0, :cond_1

    move v0, v6

    .line 3930
    :goto_2
    if-eqz v0, :cond_2

    .line 3931
    invoke-direct {p0, p1, v8, v3, v5}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3978
    :cond_0
    :goto_3
    return v2

    :cond_1
    move v0, v2

    .line 3929
    goto :goto_2

    .line 3934
    :cond_2
    const/high16 v0, 0xff00000

    and-int/2addr v0, v10

    ushr-int/lit8 v0, v0, 0x14

    .line 3935
    sparse-switch v0, :sswitch_data_0

    .line 3974
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3936
    :sswitch_0
    invoke-direct {p0, p1, v8, v3, v5}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3937
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v0

    invoke-static {p1, v10, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/dfd;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 3941
    :sswitch_1
    and-int v0, v10, v12

    int-to-long v10, v0

    .line 3942
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3943
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 3944
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v7

    move v5, v2

    .line 3945
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_5

    .line 3946
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 3947
    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/dfd;->d(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    move v0, v2

    .line 3951
    :goto_5
    if-nez v0, :cond_3

    goto :goto_3

    .line 3949
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    move v0, v6

    .line 3950
    goto :goto_5

    .line 3953
    :sswitch_2
    invoke-direct {p0, p1, v9, v8}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3954
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/dek;->a(I)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v0

    invoke-static {p1, v10, v0}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/dfd;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 3957
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    .line 3958
    and-int v5, v10, v12

    int-to-long v10, v5

    .line 3959
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/dgb;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/ddz;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 3960
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3961
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/dek;->b(I)Ljava/lang/Object;

    move-result-object v0

    .line 3962
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dek;->s:Lcom/google/android/gms/internal/ads/ddz;

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/ads/ddz;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ddx;

    move-result-object v0

    .line 3963
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ddx;->c:Lcom/google/android/gms/internal/ads/dgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dgi;->a()Lcom/google/android/gms/internal/ads/dgp;

    move-result-object v0

    sget-object v7, Lcom/google/android/gms/internal/ads/dgp;->i:Lcom/google/android/gms/internal/ads/dgp;

    if-ne v0, v7, :cond_8

    .line 3964
    const/4 v0, 0x0

    .line 3965
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 3966
    if-nez v0, :cond_7

    .line 3967
    invoke-static {}, Lcom/google/android/gms/internal/ads/der;->a()Lcom/google/android/gms/internal/ads/der;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/der;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/dfd;

    move-result-object v0

    .line 3968
    :cond_7
    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/ads/dfd;->d(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    move v0, v2

    .line 3972
    :goto_6
    if-nez v0, :cond_3

    goto/16 :goto_3

    :cond_8
    move v0, v6

    .line 3971
    goto :goto_6

    .line 3975
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dek;->h:Z

    if-eqz v0, :cond_a

    .line 3976
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dek;->r:Lcom/google/android/gms/internal/ads/dck;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dck;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dcl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcl;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    move v2, v6

    .line 3978
    goto/16 :goto_3

    :cond_b
    move v5, v0

    goto/16 :goto_1

    :cond_c
    move v5, v2

    goto/16 :goto_1

    .line 3935
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x11 -> :sswitch_0
        0x1b -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_3
        0x3c -> :sswitch_2
        0x44 -> :sswitch_2
    .end sparse-switch
.end method

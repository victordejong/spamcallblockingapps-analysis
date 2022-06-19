.class final Lcom/google/android/gms/internal/measurement/fr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/gd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/gd",
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

.field private final g:Lcom/google/android/gms/internal/measurement/fn;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:[I

.field private final m:I

.field private final n:I

.field private final o:Lcom/google/android/gms/internal/measurement/fw;

.field private final p:Lcom/google/android/gms/internal/measurement/ex;

.field private final q:Lcom/google/android/gms/internal/measurement/gv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/gv",
            "<**>;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/android/gms/internal/measurement/dr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/dr",
            "<*>;"
        }
    .end annotation
.end field

.field private final s:Lcom/google/android/gms/internal/measurement/fg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4104
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/fr;->a:[I

    .line 4105
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ha;->c()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/fr;->b:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/fn;ZZ[IIILcom/google/android/gms/internal/measurement/fw;Lcom/google/android/gms/internal/measurement/ex;Lcom/google/android/gms/internal/measurement/gv;Lcom/google/android/gms/internal/measurement/dr;Lcom/google/android/gms/internal/measurement/fg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/measurement/fn;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/measurement/fw;",
            "Lcom/google/android/gms/internal/measurement/ex;",
            "Lcom/google/android/gms/internal/measurement/gv",
            "<**>;",
            "Lcom/google/android/gms/internal/measurement/dr",
            "<*>;",
            "Lcom/google/android/gms/internal/measurement/fg;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/fr;->d:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/measurement/fr;->e:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/measurement/fr;->f:I

    .line 6
    instance-of v1, p5, Lcom/google/android/gms/internal/measurement/ed;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/fr;->i:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/measurement/fr;->j:Z

    .line 8
    if-eqz p14, :cond_0

    move-object/from16 v0, p14

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/measurement/dr;->a(Lcom/google/android/gms/internal/measurement/fn;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/fr;->h:Z

    .line 9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/measurement/fr;->l:[I

    .line 11
    iput p9, p0, Lcom/google/android/gms/internal/measurement/fr;->m:I

    .line 12
    iput p10, p0, Lcom/google/android/gms/internal/measurement/fr;->n:I

    .line 13
    iput-object p11, p0, Lcom/google/android/gms/internal/measurement/fr;->o:Lcom/google/android/gms/internal/measurement/fw;

    .line 14
    iput-object p12, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 15
    iput-object p13, p0, Lcom/google/android/gms/internal/measurement/fr;->q:Lcom/google/android/gms/internal/measurement/gv;

    .line 16
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    .line 17
    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/fr;->g:Lcom/google/android/gms/internal/measurement/fn;

    .line 18
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

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
    .line 4087
    iget v0, p0, Lcom/google/android/gms/internal/measurement/fr;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/fr;->f:I

    if-gt p1, v0, :cond_0

    .line 4088
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/fr;->b(II)I

    move-result v0

    .line 4089
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/gv;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/gv",
            "<TUT;TUB;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 1216
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/gv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1217
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/gv;->f(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private final a(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/cs;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/measurement/cs;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3432
    sget-object v8, Lcom/google/android/gms/internal/measurement/fr;->b:Lsun/misc/Unsafe;

    .line 3433
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    add-int/lit8 v3, p12, 0x2

    aget v2, v2, v3

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v10, v2

    .line 3434
    packed-switch p9, :pswitch_data_0

    .line 3525
    :cond_0
    :goto_0
    return p3

    .line 3435
    :pswitch_0
    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    .line 3436
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/measurement/cp;->c([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3437
    add-int/lit8 v2, p3, 0x8

    .line 3524
    :goto_1
    move/from16 v0, p6

    invoke-virtual {v8, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move p3, v2

    goto :goto_0

    .line 3439
    :pswitch_1
    const/4 v2, 0x5

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    .line 3440
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/measurement/cp;->d([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3441
    add-int/lit8 v2, p3, 0x4

    .line 3442
    goto :goto_1

    .line 3443
    :pswitch_2
    if-nez p7, :cond_0

    .line 3444
    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v2

    .line 3445
    move-object/from16 v0, p13

    iget-wide v4, v0, Lcom/google/android/gms/internal/measurement/cs;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 3447
    :pswitch_3
    if-nez p7, :cond_0

    .line 3448
    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v2

    .line 3449
    move-object/from16 v0, p13

    iget v3, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 3451
    :pswitch_4
    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    .line 3452
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/measurement/cp;->b([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3453
    add-int/lit8 v2, p3, 0x8

    .line 3454
    goto :goto_1

    .line 3455
    :pswitch_5
    const/4 v2, 0x5

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    .line 3456
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/measurement/cp;->a([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3457
    add-int/lit8 v2, p3, 0x4

    .line 3458
    goto :goto_1

    .line 3459
    :pswitch_6
    if-nez p7, :cond_0

    .line 3460
    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v3

    .line 3461
    move-object/from16 v0, p13

    iget-wide v4, v0, Lcom/google/android/gms/internal/measurement/cs;->b:J

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

    .line 3462
    goto/16 :goto_1

    .line 3461
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 3463
    :pswitch_7
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    .line 3464
    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v2

    .line 3465
    move-object/from16 v0, p13

    iget v3, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 3466
    if-nez v3, :cond_2

    .line 3467
    const-string/jumbo v3, ""

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3474
    :goto_3
    move/from16 v0, p6

    invoke-virtual {v8, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move p3, v2

    .line 3475
    goto/16 :goto_0

    .line 3468
    :cond_2
    const/high16 v4, 0x20000000

    and-int v4, v4, p8

    if-eqz v4, :cond_3

    add-int v4, v2, v3

    .line 3469
    invoke-static {p2, v2, v4}, Lcom/google/android/gms/internal/measurement/hd;->a([BII)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3470
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->h()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v2

    throw v2

    .line 3471
    :cond_3
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/measurement/ef;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, p2, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3472
    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3473
    add-int/2addr v2, v3

    goto :goto_3

    .line 3476
    :pswitch_8
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    .line 3478
    move/from16 v0, p12

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v2

    .line 3479
    move/from16 v0, p4

    move-object/from16 v1, p13

    invoke-static {v2, p2, p3, v0, v1}, Lcom/google/android/gms/internal/measurement/cp;->a(Lcom/google/android/gms/internal/measurement/gd;[BIILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3480
    invoke-virtual {v8, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move/from16 v0, p6

    if-ne v2, v0, :cond_4

    .line 3481
    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 3483
    :goto_4
    if-nez v2, :cond_5

    .line 3484
    move-object/from16 v0, p13

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3488
    :goto_5
    move/from16 v0, p6

    invoke-virtual {v8, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    .line 3482
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 3485
    :cond_5
    move-object/from16 v0, p13

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    .line 3486
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/ef;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3487
    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 3490
    :pswitch_9
    const/4 v2, 0x2

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    .line 3491
    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/measurement/cp;->e([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v2

    .line 3492
    move-object/from16 v0, p13

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 3494
    :pswitch_a
    if-nez p7, :cond_0

    .line 3495
    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v2

    .line 3496
    move-object/from16 v0, p13

    iget v3, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 3497
    move/from16 v0, p12

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/fr;->c(I)Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v4

    .line 3498
    if-eqz v4, :cond_6

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/measurement/ek;->a(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3499
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 3501
    :cond_7
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/gx;

    move-result-object v4

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v4, v0, v3}, Lcom/google/android/gms/internal/measurement/gx;->a(ILjava/lang/Object;)V

    move p3, v2

    .line 3502
    goto/16 :goto_0

    .line 3503
    :pswitch_b
    if-nez p7, :cond_0

    .line 3504
    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v2

    .line 3505
    move-object/from16 v0, p13

    iget v3, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/dg;->e(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 3507
    :pswitch_c
    if-nez p7, :cond_0

    .line 3508
    move-object/from16 v0, p13

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v2

    .line 3509
    move-object/from16 v0, p13

    iget-wide v4, v0, Lcom/google/android/gms/internal/measurement/cs;->b:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/dg;->a(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 3511
    :pswitch_d
    const/4 v2, 0x3

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    .line 3512
    and-int/lit8 v2, p5, -0x8

    or-int/lit8 v6, v2, 0x4

    .line 3514
    move/from16 v0, p12

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v2

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    .line 3515
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/cp;->a(Lcom/google/android/gms/internal/measurement/gd;[BIIILcom/google/android/gms/internal/measurement/cs;)I

    move-result v2

    .line 3516
    invoke-virtual {v8, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move/from16 v0, p6

    if-ne v3, v0, :cond_8

    .line 3517
    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3519
    :goto_6
    if-nez v3, :cond_9

    .line 3520
    move-object/from16 v0, p13

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 3518
    :cond_8
    const/4 v3, 0x0

    goto :goto_6

    .line 3521
    :cond_9
    move-object/from16 v0, p13

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    .line 3522
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ef;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3523
    move-wide/from16 v0, p10

    invoke-virtual {v8, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 3434
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

.method private final a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/cs;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/measurement/cs;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3055
    sget-object v4, Lcom/google/android/gms/internal/measurement/fr;->b:Lsun/misc/Unsafe;

    move-object/from16 v0, p1

    move-wide/from16 v1, p12

    invoke-virtual {v4, v0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/el;

    .line 3056
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/el;->a()Z

    move-result v5

    if-nez v5, :cond_2a

    .line 3057
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/el;->size()I

    move-result v5

    .line 3059
    if-nez v5, :cond_1

    const/16 v5, 0xa

    .line 3060
    :goto_0
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/measurement/el;->a(I)Lcom/google/android/gms/internal/measurement/el;

    move-result-object v8

    .line 3061
    sget-object v4, Lcom/google/android/gms/internal/measurement/fr;->b:Lsun/misc/Unsafe;

    move-object/from16 v0, p1

    move-wide/from16 v1, p12

    invoke-virtual {v4, v0, v1, v2, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3062
    :goto_1
    packed-switch p11, :pswitch_data_0

    .line 3386
    :cond_0
    :goto_2
    return p3

    .line 3059
    :cond_1
    shl-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3063
    :pswitch_0
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_3

    .line 3065
    check-cast v8, Lcom/google/android/gms/internal/measurement/dn;

    .line 3066
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3067
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    add-int v4, v4, p3

    .line 3068
    :goto_3
    move/from16 v0, p3

    if-ge v0, v4, :cond_2

    .line 3069
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/cp;->c([BI)D

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/measurement/dn;->a(D)V

    .line 3070
    add-int/lit8 p3, p3, 0x8

    goto :goto_3

    .line 3071
    :cond_2
    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    .line 3072
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->a()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3075
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 3077
    check-cast v8, Lcom/google/android/gms/internal/measurement/dn;

    .line 3078
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/cp;->c([BI)D

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/measurement/dn;->a(D)V

    .line 3079
    add-int/lit8 p3, p3, 0x8

    .line 3080
    :goto_4
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3081
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v4

    .line 3082
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3083
    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/measurement/cp;->c([BI)D

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/measurement/dn;->a(D)V

    .line 3084
    add-int/lit8 p3, v4, 0x8

    .line 3085
    goto :goto_4

    .line 3088
    :pswitch_1
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_5

    .line 3090
    check-cast v8, Lcom/google/android/gms/internal/measurement/ec;

    .line 3091
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3092
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    add-int v4, v4, p3

    .line 3093
    :goto_5
    move/from16 v0, p3

    if-ge v0, v4, :cond_4

    .line 3094
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/cp;->d([BI)F

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/ec;->a(F)V

    .line 3095
    add-int/lit8 p3, p3, 0x4

    goto :goto_5

    .line 3096
    :cond_4
    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    .line 3097
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->a()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3100
    :cond_5
    const/4 v4, 0x5

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 3102
    check-cast v8, Lcom/google/android/gms/internal/measurement/ec;

    .line 3103
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/cp;->d([BI)F

    move-result v4

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/ec;->a(F)V

    .line 3104
    add-int/lit8 p3, p3, 0x4

    .line 3105
    :goto_6
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3106
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v4

    .line 3107
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3108
    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/measurement/cp;->d([BI)F

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/ec;->a(F)V

    .line 3109
    add-int/lit8 p3, v4, 0x4

    .line 3110
    goto :goto_6

    .line 3113
    :pswitch_2
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_7

    .line 3115
    check-cast v8, Lcom/google/android/gms/internal/measurement/fb;

    .line 3116
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3117
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    add-int v4, v4, p3

    .line 3118
    :goto_7
    move/from16 v0, p3

    if-ge v0, v4, :cond_6

    .line 3119
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3120
    move-object/from16 v0, p14

    iget-wide v6, v0, Lcom/google/android/gms/internal/measurement/cs;->b:J

    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/measurement/fb;->a(J)V

    goto :goto_7

    .line 3121
    :cond_6
    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    .line 3122
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->a()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3125
    :cond_7
    if-nez p7, :cond_0

    .line 3127
    check-cast v8, Lcom/google/android/gms/internal/measurement/fb;

    .line 3128
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3129
    move-object/from16 v0, p14

    iget-wide v4, v0, Lcom/google/android/gms/internal/measurement/cs;->b:J

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/measurement/fb;->a(J)V

    .line 3130
    :goto_8
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3131
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v4

    .line 3132
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3133
    move-object/from16 v0, p2

    move-object/from16 v1, p14

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3134
    move-object/from16 v0, p14

    iget-wide v4, v0, Lcom/google/android/gms/internal/measurement/cs;->b:J

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/measurement/fb;->a(J)V

    goto :goto_8

    .line 3138
    :pswitch_3
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_8

    .line 3139
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/el;Lcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    goto/16 :goto_2

    .line 3140
    :cond_8
    if-nez p7, :cond_0

    move/from16 v4, p5

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p14

    .line 3141
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/measurement/cp;->a(I[BIILcom/google/android/gms/internal/measurement/el;Lcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    goto/16 :goto_2

    .line 3142
    :pswitch_4
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_a

    .line 3144
    check-cast v8, Lcom/google/android/gms/internal/measurement/fb;

    .line 3145
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3146
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    add-int v4, v4, p3

    .line 3147
    :goto_9
    move/from16 v0, p3

    if-ge v0, v4, :cond_9

    .line 3148
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/cp;->b([BI)J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/measurement/fb;->a(J)V

    .line 3149
    add-int/lit8 p3, p3, 0x8

    goto :goto_9

    .line 3150
    :cond_9
    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    .line 3151
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->a()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3154
    :cond_a
    const/4 v4, 0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 3156
    check-cast v8, Lcom/google/android/gms/internal/measurement/fb;

    .line 3157
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/cp;->b([BI)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/measurement/fb;->a(J)V

    .line 3158
    add-int/lit8 p3, p3, 0x8

    .line 3159
    :goto_a
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3160
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v4

    .line 3161
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3162
    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/measurement/cp;->b([BI)J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/measurement/fb;->a(J)V

    .line 3163
    add-int/lit8 p3, v4, 0x8

    .line 3164
    goto :goto_a

    .line 3167
    :pswitch_5
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_c

    .line 3169
    check-cast v8, Lcom/google/android/gms/internal/measurement/eg;

    .line 3170
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3171
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    add-int v4, v4, p3

    .line 3172
    :goto_b
    move/from16 v0, p3

    if-ge v0, v4, :cond_b

    .line 3173
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/cp;->a([BI)I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/eg;->d(I)V

    .line 3174
    add-int/lit8 p3, p3, 0x4

    goto :goto_b

    .line 3175
    :cond_b
    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    .line 3176
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->a()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3179
    :cond_c
    const/4 v4, 0x5

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 3181
    check-cast v8, Lcom/google/android/gms/internal/measurement/eg;

    .line 3182
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/cp;->a([BI)I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/eg;->d(I)V

    .line 3183
    add-int/lit8 p3, p3, 0x4

    .line 3184
    :goto_c
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3185
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v4

    .line 3186
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3187
    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/measurement/cp;->a([BI)I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/eg;->d(I)V

    .line 3188
    add-int/lit8 p3, v4, 0x4

    .line 3189
    goto :goto_c

    .line 3192
    :pswitch_6
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_f

    .line 3194
    check-cast v8, Lcom/google/android/gms/internal/measurement/cr;

    .line 3195
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3196
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    add-int v5, p3, v4

    .line 3197
    :goto_d
    move/from16 v0, p3

    if-ge v0, v5, :cond_e

    .line 3198
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3199
    move-object/from16 v0, p14

    iget-wide v6, v0, Lcom/google/android/gms/internal/measurement/cs;->b:J

    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    :goto_e
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/cr;->a(Z)V

    goto :goto_d

    :cond_d
    const/4 v4, 0x0

    goto :goto_e

    .line 3200
    :cond_e
    move/from16 v0, p3

    if-eq v0, v5, :cond_0

    .line 3201
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->a()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3204
    :cond_f
    if-nez p7, :cond_0

    .line 3206
    check-cast v8, Lcom/google/android/gms/internal/measurement/cr;

    .line 3207
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3208
    move-object/from16 v0, p14

    iget-wide v4, v0, Lcom/google/android/gms/internal/measurement/cs;->b:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    :goto_f
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/cr;->a(Z)V

    .line 3209
    :goto_10
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3210
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v4

    .line 3211
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3212
    move-object/from16 v0, p2

    move-object/from16 v1, p14

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3213
    move-object/from16 v0, p14

    iget-wide v4, v0, Lcom/google/android/gms/internal/measurement/cs;->b:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    :goto_11
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/cr;->a(Z)V

    goto :goto_10

    .line 3208
    :cond_10
    const/4 v4, 0x0

    goto :goto_f

    .line 3213
    :cond_11
    const/4 v4, 0x0

    goto :goto_11

    .line 3217
    :pswitch_7
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 3218
    const-wide/32 v4, 0x20000000

    and-long v4, v4, p9

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_16

    .line 3221
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3222
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 3223
    if-gez v4, :cond_12

    .line 3224
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->b()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3225
    :cond_12
    if-nez v4, :cond_13

    .line 3226
    const-string/jumbo v4, ""

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    .line 3230
    :goto_12
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3231
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v4

    .line 3232
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3233
    move-object/from16 v0, p2

    move-object/from16 v1, p14

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3234
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 3235
    if-gez v4, :cond_14

    .line 3236
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->b()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3227
    :cond_13
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/measurement/ef;->a:Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v5, v0, v1, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3228
    invoke-interface {v8, v5}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    .line 3229
    add-int p3, p3, v4

    goto :goto_12

    .line 3237
    :cond_14
    if-nez v4, :cond_15

    .line 3238
    const-string/jumbo v4, ""

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 3239
    :cond_15
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/measurement/ef;->a:Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v5, v0, v1, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3240
    invoke-interface {v8, v5}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    .line 3241
    add-int p3, p3, v4

    .line 3242
    goto :goto_12

    .line 3247
    :cond_16
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3248
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 3249
    if-gez v4, :cond_17

    .line 3250
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->b()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3251
    :cond_17
    if-nez v4, :cond_18

    .line 3252
    const-string/jumbo v4, ""

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    .line 3258
    :goto_13
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3259
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v4

    .line 3260
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3261
    move-object/from16 v0, p2

    move-object/from16 v1, p14

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3262
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 3263
    if-gez v4, :cond_1a

    .line 3264
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->b()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3253
    :cond_18
    add-int v5, p3, v4

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v5}, Lcom/google/android/gms/internal/measurement/hd;->a([BII)Z

    move-result v5

    if-nez v5, :cond_19

    .line 3254
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->h()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3255
    :cond_19
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/measurement/ef;->a:Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v5, v0, v1, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3256
    invoke-interface {v8, v5}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    .line 3257
    add-int p3, p3, v4

    goto :goto_13

    .line 3265
    :cond_1a
    if-nez v4, :cond_1b

    .line 3266
    const-string/jumbo v4, ""

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 3267
    :cond_1b
    add-int v5, p3, v4

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v5}, Lcom/google/android/gms/internal/measurement/hd;->a([BII)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 3268
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->h()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3269
    :cond_1c
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/measurement/ef;->a:Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v5, v0, v1, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3270
    invoke-interface {v8, v5}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    .line 3271
    add-int p3, p3, v4

    .line 3272
    goto :goto_13

    .line 3275
    :pswitch_8
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 3277
    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v9

    move/from16 v10, p5

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move-object v14, v8

    move-object/from16 v15, p14

    .line 3278
    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/measurement/cp;->a(Lcom/google/android/gms/internal/measurement/gd;I[BIILcom/google/android/gms/internal/measurement/el;Lcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    goto/16 :goto_2

    .line 3279
    :pswitch_9
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 3282
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3283
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 3284
    if-gez v4, :cond_1d

    .line 3285
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->b()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3286
    :cond_1d
    move-object/from16 v0, p2

    array-length v5, v0

    sub-int v5, v5, p3

    if-le v4, v5, :cond_1e

    .line 3287
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->a()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3288
    :cond_1e
    if-nez v4, :cond_1f

    .line 3289
    sget-object v4, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/ct;

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    .line 3292
    :goto_14
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3293
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v4

    .line 3294
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3295
    move-object/from16 v0, p2

    move-object/from16 v1, p14

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3296
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 3297
    if-gez v4, :cond_20

    .line 3298
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->b()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3290
    :cond_1f
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/ct;->a([BII)Lcom/google/android/gms/internal/measurement/ct;

    move-result-object v5

    invoke-interface {v8, v5}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    .line 3291
    add-int p3, p3, v4

    goto :goto_14

    .line 3299
    :cond_20
    move-object/from16 v0, p2

    array-length v5, v0

    sub-int v5, v5, p3

    if-le v4, v5, :cond_21

    .line 3300
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->a()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3301
    :cond_21
    if-nez v4, :cond_22

    .line 3302
    sget-object v4, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/ct;

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 3303
    :cond_22
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/ct;->a([BII)Lcom/google/android/gms/internal/measurement/ct;

    move-result-object v5

    invoke-interface {v8, v5}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    .line 3304
    add-int p3, p3, v4

    .line 3305
    goto :goto_14

    .line 3308
    :pswitch_a
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_24

    .line 3309
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/el;Lcom/google/android/gms/internal/measurement/cs;)I

    move-result v4

    move v5, v4

    :goto_15
    move-object/from16 v4, p1

    .line 3312
    check-cast v4, Lcom/google/android/gms/internal/measurement/ed;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/ed;->zzb:Lcom/google/android/gms/internal/measurement/gx;

    .line 3313
    invoke-static {}, Lcom/google/android/gms/internal/measurement/gx;->a()Lcom/google/android/gms/internal/measurement/gx;

    move-result-object v6

    if-ne v4, v6, :cond_23

    .line 3314
    const/4 v4, 0x0

    .line 3316
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/fr;->c(I)Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/fr;->q:Lcom/google/android/gms/internal/measurement/gv;

    .line 3317
    move/from16 v0, p6

    invoke-static {v0, v8, v6, v4, v7}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ek;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/gv;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/gx;

    .line 3318
    if-eqz v4, :cond_29

    .line 3319
    check-cast p1, Lcom/google/android/gms/internal/measurement/ed;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/ed;->zzb:Lcom/google/android/gms/internal/measurement/gx;

    move/from16 p3, v5

    goto/16 :goto_2

    .line 3310
    :cond_24
    if-nez p7, :cond_0

    move/from16 v4, p5

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p14

    .line 3311
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/measurement/cp;->a(I[BIILcom/google/android/gms/internal/measurement/el;Lcom/google/android/gms/internal/measurement/cs;)I

    move-result v4

    move v5, v4

    goto :goto_15

    .line 3320
    :pswitch_b
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_26

    .line 3322
    check-cast v8, Lcom/google/android/gms/internal/measurement/eg;

    .line 3323
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3324
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    add-int v4, v4, p3

    .line 3325
    :goto_16
    move/from16 v0, p3

    if-ge v0, v4, :cond_25

    .line 3326
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3327
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/dg;->e(I)I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/eg;->d(I)V

    goto :goto_16

    .line 3328
    :cond_25
    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    .line 3329
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->a()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3332
    :cond_26
    if-nez p7, :cond_0

    .line 3334
    check-cast v8, Lcom/google/android/gms/internal/measurement/eg;

    .line 3335
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3336
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/dg;->e(I)I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/eg;->d(I)V

    .line 3337
    :goto_17
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3338
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v4

    .line 3339
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3340
    move-object/from16 v0, p2

    move-object/from16 v1, p14

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3341
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/dg;->e(I)I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/measurement/eg;->d(I)V

    goto :goto_17

    .line 3345
    :pswitch_c
    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_28

    .line 3347
    check-cast v8, Lcom/google/android/gms/internal/measurement/fb;

    .line 3348
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3349
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    add-int v4, v4, p3

    .line 3350
    :goto_18
    move/from16 v0, p3

    if-ge v0, v4, :cond_27

    .line 3351
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3352
    move-object/from16 v0, p14

    iget-wide v6, v0, Lcom/google/android/gms/internal/measurement/cs;->b:J

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/dg;->a(J)J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Lcom/google/android/gms/internal/measurement/fb;->a(J)V

    goto :goto_18

    .line 3353
    :cond_27
    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    .line 3354
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->a()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3357
    :cond_28
    if-nez p7, :cond_0

    .line 3359
    check-cast v8, Lcom/google/android/gms/internal/measurement/fb;

    .line 3360
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3361
    move-object/from16 v0, p14

    iget-wide v4, v0, Lcom/google/android/gms/internal/measurement/cs;->b:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/dg;->a(J)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/measurement/fb;->a(J)V

    .line 3362
    :goto_19
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3363
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v4

    .line 3364
    move-object/from16 v0, p14

    iget v5, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 3365
    move-object/from16 v0, p2

    move-object/from16 v1, p14

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3366
    move-object/from16 v0, p14

    iget-wide v4, v0, Lcom/google/android/gms/internal/measurement/cs;->b:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/dg;->a(J)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/measurement/fb;->a(J)V

    goto :goto_19

    .line 3370
    :pswitch_d
    const/4 v4, 0x3

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 3372
    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v9

    .line 3375
    and-int/lit8 v4, p5, -0x8

    or-int/lit8 v13, v4, 0x4

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v14, p14

    .line 3376
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/measurement/cp;->a(Lcom/google/android/gms/internal/measurement/gd;[BIIILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3377
    move-object/from16 v0, p14

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    .line 3378
    :goto_1a
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 3379
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v11

    .line 3380
    move-object/from16 v0, p14

    iget v4, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move/from16 v0, p5

    if-ne v0, v4, :cond_0

    move-object/from16 v10, p2

    move/from16 v12, p4

    move-object/from16 v14, p14

    .line 3381
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/measurement/cp;->a(Lcom/google/android/gms/internal/measurement/gd;[BIIILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3382
    move-object/from16 v0, p14

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_29
    move/from16 p3, v5

    goto/16 :goto_2

    :cond_2a
    move-object v8, v4

    goto/16 :goto_1

    .line 3062
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

.method private final a(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/measurement/cs;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/measurement/cs;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3387
    sget-object v5, Lcom/google/android/gms/internal/measurement/fr;->b:Lsun/misc/Unsafe;

    .line 3388
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/fr;->b(I)Ljava/lang/Object;

    move-result-object v6

    .line 3389
    move-object/from16 v0, p1

    move-wide/from16 v1, p6

    invoke-virtual {v5, v0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/measurement/fg;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3392
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    invoke-interface {v3, v6}, Lcom/google/android/gms/internal/measurement/fg;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3393
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    invoke-interface {v7, v3, v4}, Lcom/google/android/gms/internal/measurement/fg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3394
    move-object/from16 v0, p1

    move-wide/from16 v1, p6

    invoke-virtual {v5, v0, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3395
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    .line 3396
    invoke-interface {v4, v6}, Lcom/google/android/gms/internal/measurement/fg;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/fe;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    .line 3397
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/measurement/fg;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v12

    .line 3399
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v5

    .line 3400
    move-object/from16 v0, p8

    iget v3, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 3401
    if-ltz v3, :cond_0

    sub-int v4, p4, v5

    if-le v3, v4, :cond_1

    .line 3402
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->a()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v3

    throw v3

    .line 3403
    :cond_1
    add-int v13, v5, v3

    .line 3404
    iget-object v4, v11, Lcom/google/android/gms/internal/measurement/fe;->b:Ljava/lang/Object;

    .line 3405
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/fe;->d:Ljava/lang/Object;

    move-object v9, v3

    move-object v10, v4

    .line 3406
    :goto_1
    if-ge v5, v13, :cond_4

    .line 3407
    add-int/lit8 v4, v5, 0x1

    aget-byte v3, p2, v5

    .line 3408
    if-gez v3, :cond_2

    .line 3409
    move-object/from16 v0, p2

    move-object/from16 v1, p8

    invoke-static {v3, v0, v4, v1}, Lcom/google/android/gms/internal/measurement/cp;->a(I[BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v4

    .line 3410
    move-object/from16 v0, p8

    iget v3, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 3411
    :cond_2
    ushr-int/lit8 v5, v3, 0x3

    .line 3412
    and-int/lit8 v6, v3, 0x7

    .line 3413
    packed-switch v5, :pswitch_data_0

    .line 3425
    :cond_3
    move-object/from16 v0, p2

    move/from16 v1, p4

    move-object/from16 v2, p8

    invoke-static {v3, v0, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a(I[BIILcom/google/android/gms/internal/measurement/cs;)I

    move-result v3

    move v5, v3

    .line 3426
    goto :goto_1

    .line 3414
    :pswitch_0
    iget-object v5, v11, Lcom/google/android/gms/internal/measurement/fe;->a:Lcom/google/android/gms/internal/measurement/hl;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/hl;->b()I

    move-result v5

    if-ne v6, v5, :cond_3

    .line 3415
    iget-object v6, v11, Lcom/google/android/gms/internal/measurement/fe;->a:Lcom/google/android/gms/internal/measurement/hl;

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v8, p8

    .line 3416
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/fr;->a([BIILcom/google/android/gms/internal/measurement/hl;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/cs;)I

    move-result v4

    .line 3417
    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    move-object v10, v3

    move v5, v4

    .line 3418
    goto :goto_1

    .line 3419
    :pswitch_1
    iget-object v5, v11, Lcom/google/android/gms/internal/measurement/fe;->c:Lcom/google/android/gms/internal/measurement/hl;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/hl;->b()I

    move-result v5

    if-ne v6, v5, :cond_3

    .line 3420
    iget-object v6, v11, Lcom/google/android/gms/internal/measurement/fe;->c:Lcom/google/android/gms/internal/measurement/hl;

    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/fe;->d:Ljava/lang/Object;

    .line 3421
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v8, p8

    .line 3422
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/fr;->a([BIILcom/google/android/gms/internal/measurement/hl;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/cs;)I

    move-result v4

    .line 3423
    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    move-object v9, v3

    move v5, v4

    .line 3424
    goto :goto_1

    .line 3427
    :cond_4
    if-eq v5, v13, :cond_5

    .line 3428
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->g()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v3

    throw v3

    .line 3429
    :cond_5
    invoke-interface {v12, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3431
    return v13

    :cond_6
    move-object v3, v4

    goto/16 :goto_0

    .line 3413
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a([BIILcom/google/android/gms/internal/measurement/hl;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/cs;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/measurement/hl;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/android/gms/internal/measurement/cs;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3018
    sget-object v0, Lcom/google/android/gms/internal/measurement/fq;->a:[I

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/hl;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3053
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3019
    :pswitch_0
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v1

    .line 3020
    iget-wide v2, p5, Lcom/google/android/gms/internal/measurement/cs;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p5, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    move v0, v1

    .line 3054
    :goto_1
    return v0

    .line 3020
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3022
    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/cp;->e([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    goto :goto_1

    .line 3024
    :pswitch_2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/cp;->c([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p5, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    .line 3025
    add-int/lit8 v0, p1, 0x8

    .line 3026
    goto :goto_1

    .line 3027
    :pswitch_3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/cp;->a([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p5, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    .line 3028
    add-int/lit8 v0, p1, 0x4

    .line 3029
    goto :goto_1

    .line 3030
    :pswitch_4
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/cp;->b([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p5, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    .line 3031
    add-int/lit8 v0, p1, 0x8

    .line 3032
    goto :goto_1

    .line 3033
    :pswitch_5
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/cp;->d([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p5, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    .line 3034
    add-int/lit8 v0, p1, 0x4

    .line 3035
    goto :goto_1

    .line 3036
    :pswitch_6
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    .line 3037
    iget v1, p5, Lcom/google/android/gms/internal/measurement/cs;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p5, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    goto :goto_1

    .line 3039
    :pswitch_7
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    .line 3040
    iget-wide v2, p5, Lcom/google/android/gms/internal/measurement/cs;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p5, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    goto :goto_1

    .line 3042
    :pswitch_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fz;->a()Lcom/google/android/gms/internal/measurement/fz;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/measurement/fz;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v0

    .line 3043
    invoke-static {v0, p0, p1, p2, p5}, Lcom/google/android/gms/internal/measurement/cp;->a(Lcom/google/android/gms/internal/measurement/gd;[BIILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    goto :goto_1

    .line 3045
    :pswitch_9
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    .line 3046
    iget v1, p5, Lcom/google/android/gms/internal/measurement/cs;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/dg;->e(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p5, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    goto :goto_1

    .line 3048
    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    .line 3049
    iget-wide v2, p5, Lcom/google/android/gms/internal/measurement/cs;->b:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/dg;->a(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p5, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    goto/16 :goto_1

    .line 3051
    :pswitch_b
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/cp;->d([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    goto/16 :goto_1

    .line 3018
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

.method static a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/fl;Lcom/google/android/gms/internal/measurement/fw;Lcom/google/android/gms/internal/measurement/ex;Lcom/google/android/gms/internal/measurement/gv;Lcom/google/android/gms/internal/measurement/dr;Lcom/google/android/gms/internal/measurement/fg;)Lcom/google/android/gms/internal/measurement/fr;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/android/gms/internal/measurement/fl;",
            "Lcom/google/android/gms/internal/measurement/fw;",
            "Lcom/google/android/gms/internal/measurement/ex;",
            "Lcom/google/android/gms/internal/measurement/gv",
            "<**>;",
            "Lcom/google/android/gms/internal/measurement/dr",
            "<*>;",
            "Lcom/google/android/gms/internal/measurement/fg;",
            ")",
            "Lcom/google/android/gms/internal/measurement/fr",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 20
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/gb;

    if-eqz v2, :cond_24

    .line 21
    check-cast p1, Lcom/google/android/gms/internal/measurement/gb;

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/gb;->a()I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/measurement/ed$e;->i:I

    if-ne v2, v3, :cond_0

    const/4 v8, 0x1

    .line 23
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/gb;->d()Ljava/lang/String;

    move-result-object v26

    .line 24
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v27

    .line 26
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 27
    const v3, 0xd800

    if-lt v2, v3, :cond_1

    .line 28
    and-int/lit16 v3, v2, 0x1fff

    .line 29
    const/16 v2, 0xd

    .line 30
    :goto_1
    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_2

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

    :cond_1
    move v5, v4

    .line 33
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 34
    const v3, 0xd800

    if-lt v2, v3, :cond_34

    .line 35
    and-int/lit16 v3, v2, 0x1fff

    .line 36
    const/16 v2, 0xd

    .line 37
    :goto_2
    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_3

    .line 38
    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    .line 39
    add-int/lit8 v2, v2, 0xd

    move v4, v5

    goto :goto_2

    .line 40
    :cond_3
    shl-int v2, v4, v2

    or-int/2addr v2, v3

    move v13, v5

    .line 42
    :goto_3
    if-nez v2, :cond_4

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v11, 0x0

    .line 49
    sget-object v10, Lcom/google/android/gms/internal/measurement/fr;->a:[I

    .line 50
    const/4 v2, 0x0

    move v12, v2

    move v14, v9

    move v15, v3

    .line 125
    :goto_4
    sget-object v28, Lcom/google/android/gms/internal/measurement/fr;->b:Lsun/misc/Unsafe;

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/gb;->e()[Ljava/lang/Object;

    move-result-object v29

    .line 127
    const/16 v18, 0x0

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/gb;->c()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    .line 129
    mul-int/lit8 v2, v7, 0x3

    new-array v3, v2, [I

    .line 130
    shl-int/lit8 v2, v7, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    .line 132
    add-int v19, v11, v14

    .line 133
    const/4 v2, 0x0

    move/from16 v25, v2

    move/from16 v17, v11

    move/from16 v16, v12

    .line 134
    :goto_5
    move/from16 v0, v27

    if-ge v13, v0, :cond_23

    .line 135
    add-int/lit8 v9, v13, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 136
    const v7, 0xd800

    if-lt v2, v7, :cond_2e

    .line 137
    and-int/lit16 v7, v2, 0x1fff

    .line 138
    const/16 v2, 0xd

    .line 139
    :goto_6
    add-int/lit8 v12, v9, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const v13, 0xd800

    if-lt v9, v13, :cond_10

    .line 140
    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v2

    or-int/2addr v7, v9

    .line 141
    add-int/lit8 v2, v2, 0xd

    move v9, v12

    goto :goto_6

    .line 51
    :cond_4
    add-int/lit8 v4, v13, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 52
    const v3, 0xd800

    if-lt v2, v3, :cond_33

    .line 53
    and-int/lit16 v3, v2, 0x1fff

    .line 54
    const/16 v2, 0xd

    .line 55
    :goto_7
    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_5

    .line 56
    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    .line 57
    add-int/lit8 v2, v2, 0xd

    move v4, v5

    goto :goto_7

    .line 58
    :cond_5
    shl-int v2, v4, v2

    or-int/2addr v2, v3

    .line 60
    :goto_8
    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 61
    const v4, 0xd800

    if-lt v3, v4, :cond_7

    .line 62
    and-int/lit16 v4, v3, 0x1fff

    .line 63
    const/16 v3, 0xd

    move v5, v6

    .line 64
    :goto_9
    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v7, 0xd800

    if-lt v5, v7, :cond_6

    .line 65
    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v3

    or-int/2addr v4, v5

    .line 66
    add-int/lit8 v3, v3, 0xd

    move v5, v6

    goto :goto_9

    .line 67
    :cond_6
    shl-int v3, v5, v3

    or-int/2addr v3, v4

    .line 69
    :cond_7
    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 70
    const v5, 0xd800

    if-lt v4, v5, :cond_9

    .line 71
    and-int/lit16 v5, v4, 0x1fff

    .line 72
    const/16 v4, 0xd

    move v6, v7

    .line 73
    :goto_a
    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v9, 0xd800

    if-lt v6, v9, :cond_8

    .line 74
    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    .line 75
    add-int/lit8 v4, v4, 0xd

    move v6, v7

    goto :goto_a

    .line 76
    :cond_8
    shl-int v4, v6, v4

    or-int/2addr v4, v5

    .line 78
    :cond_9
    add-int/lit8 v9, v7, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 79
    const v6, 0xd800

    if-lt v5, v6, :cond_32

    .line 80
    and-int/lit16 v6, v5, 0x1fff

    .line 81
    const/16 v5, 0xd

    move v7, v9

    .line 82
    :goto_b
    add-int/lit8 v9, v7, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v10, 0xd800

    if-lt v7, v10, :cond_a

    .line 83
    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v5

    or-int/2addr v6, v7

    .line 84
    add-int/lit8 v5, v5, 0xd

    move v7, v9

    goto :goto_b

    .line 85
    :cond_a
    shl-int v5, v7, v5

    or-int/2addr v5, v6

    move v6, v5

    .line 87
    :goto_c
    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 88
    const v7, 0xd800

    if-lt v5, v7, :cond_31

    .line 89
    and-int/lit16 v7, v5, 0x1fff

    .line 90
    const/16 v5, 0xd

    move v9, v10

    .line 91
    :goto_d
    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const v11, 0xd800

    if-lt v9, v11, :cond_b

    .line 92
    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v5

    or-int/2addr v7, v9

    .line 93
    add-int/lit8 v5, v5, 0xd

    move v9, v10

    goto :goto_d

    .line 94
    :cond_b
    shl-int v5, v9, v5

    or-int/2addr v5, v7

    move v7, v5

    .line 96
    :goto_e
    add-int/lit8 v11, v10, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 97
    const v9, 0xd800

    if-lt v5, v9, :cond_30

    .line 98
    and-int/lit16 v9, v5, 0x1fff

    .line 99
    const/16 v5, 0xd

    move v10, v11

    .line 100
    :goto_f
    add-int/lit8 v11, v10, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v12, 0xd800

    if-lt v10, v12, :cond_c

    .line 101
    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v5

    or-int/2addr v9, v10

    .line 102
    add-int/lit8 v5, v5, 0xd

    move v10, v11

    goto :goto_f

    .line 103
    :cond_c
    shl-int v5, v10, v5

    or-int/2addr v5, v9

    move v9, v5

    .line 105
    :goto_10
    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 106
    const v10, 0xd800

    if-lt v5, v10, :cond_e

    .line 107
    and-int/lit16 v10, v5, 0x1fff

    .line 108
    const/16 v5, 0xd

    move v11, v12

    .line 109
    :goto_11
    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const v13, 0xd800

    if-lt v11, v13, :cond_d

    .line 110
    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v5

    or-int/2addr v10, v11

    .line 111
    add-int/lit8 v5, v5, 0xd

    move v11, v12

    goto :goto_11

    .line 112
    :cond_d
    shl-int v5, v11, v5

    or-int/2addr v5, v10

    .line 114
    :cond_e
    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 115
    const v11, 0xd800

    if-lt v10, v11, :cond_2f

    .line 116
    and-int/lit16 v11, v10, 0x1fff

    .line 117
    const/16 v10, 0xd

    move v12, v13

    .line 118
    :goto_12
    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v14, 0xd800

    if-lt v12, v14, :cond_f

    .line 119
    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v10

    or-int/2addr v11, v12

    .line 120
    add-int/lit8 v10, v10, 0xd

    move v12, v13

    goto :goto_12

    .line 121
    :cond_f
    shl-int v10, v12, v10

    or-int/2addr v10, v11

    move v11, v10

    .line 123
    :goto_13
    add-int v10, v11, v9

    add-int/2addr v5, v10

    new-array v10, v5, [I

    .line 124
    shl-int/lit8 v5, v2, 0x1

    add-int/2addr v3, v5

    move v12, v3

    move v14, v9

    move v5, v4

    move v15, v2

    goto/16 :goto_4

    .line 142
    :cond_10
    shl-int v2, v9, v2

    or-int/2addr v2, v7

    move v7, v2

    .line 144
    :goto_14
    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 145
    const v9, 0xd800

    if-lt v2, v9, :cond_2d

    .line 146
    and-int/lit16 v9, v2, 0x1fff

    .line 147
    const/16 v2, 0xd

    move v12, v13

    .line 148
    :goto_15
    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v20, 0xd800

    move/from16 v0, v20

    if-lt v12, v0, :cond_11

    .line 149
    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v2

    or-int/2addr v9, v12

    .line 150
    add-int/lit8 v2, v2, 0xd

    move v12, v13

    goto :goto_15

    .line 151
    :cond_11
    shl-int v2, v12, v2

    or-int/2addr v2, v9

    move/from16 v24, v2

    move/from16 v22, v13

    .line 153
    :goto_16
    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    .line 154
    move/from16 v0, v24

    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_2c

    .line 155
    add-int/lit8 v2, v18, 0x1

    aput v25, v10, v18

    move/from16 v23, v2

    .line 156
    :goto_17
    const/16 v2, 0x33

    move/from16 v0, v31

    if-lt v0, v2, :cond_17

    .line 157
    add-int/lit8 v12, v22, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 158
    const v9, 0xd800

    if-lt v2, v9, :cond_2b

    .line 159
    and-int/lit16 v9, v2, 0x1fff

    .line 160
    const/16 v2, 0xd

    .line 161
    :goto_18
    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v18, 0xd800

    move/from16 v0, v18

    if-lt v12, v0, :cond_12

    .line 162
    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v2

    or-int/2addr v9, v12

    .line 163
    add-int/lit8 v2, v2, 0xd

    move v12, v13

    goto :goto_18

    .line 164
    :cond_12
    shl-int v2, v12, v2

    or-int/2addr v2, v9

    move/from16 v20, v2

    move/from16 v18, v13

    .line 166
    :goto_19
    add-int/lit8 v2, v31, -0x33

    .line 167
    const/16 v9, 0x9

    if-eq v2, v9, :cond_13

    const/16 v9, 0x11

    if-ne v2, v9, :cond_14

    .line 168
    :cond_13
    div-int/lit8 v2, v25, 0x3

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v2, 0x1

    add-int/lit8 v2, v16, 0x1

    aget-object v12, v29, v16

    aput-object v12, v4, v9

    move v9, v2

    .line 172
    :goto_1a
    shl-int/lit8 v12, v20, 0x1

    .line 173
    aget-object v2, v29, v12

    .line 174
    instance-of v13, v2, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_15

    .line 175
    check-cast v2, Ljava/lang/reflect/Field;

    .line 178
    :goto_1b
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v16, v0

    .line 179
    add-int/lit8 v12, v12, 0x1

    .line 180
    aget-object v2, v29, v12

    .line 181
    instance-of v13, v2, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_16

    .line 182
    check-cast v2, Ljava/lang/reflect/Field;

    .line 185
    :goto_1c
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v12

    long-to-int v2, v12

    .line 186
    const/4 v12, 0x0

    move v13, v12

    move/from16 v20, v17

    move/from16 v21, v9

    move/from16 v22, v18

    .line 226
    :goto_1d
    add-int/lit8 v12, v25, 0x1

    aput v7, v3, v25

    .line 227
    add-int/lit8 v17, v12, 0x1

    .line 228
    move/from16 v0, v24

    and-int/lit16 v7, v0, 0x200

    if-eqz v7, :cond_21

    const/high16 v7, 0x20000000

    move v9, v7

    .line 229
    :goto_1e
    move/from16 v0, v24

    and-int/lit16 v7, v0, 0x100

    if-eqz v7, :cond_22

    const/high16 v7, 0x10000000

    :goto_1f
    or-int/2addr v7, v9

    shl-int/lit8 v9, v31, 0x14

    or-int/2addr v7, v9

    or-int v7, v7, v16

    aput v7, v3, v12

    .line 230
    add-int/lit8 v7, v17, 0x1

    shl-int/lit8 v9, v13, 0x14

    or-int/2addr v2, v9

    aput v2, v3, v17

    move/from16 v25, v7

    move/from16 v17, v20

    move/from16 v18, v23

    move/from16 v16, v21

    move/from16 v13, v22

    .line 231
    goto/16 :goto_5

    .line 169
    :cond_14
    const/16 v9, 0xc

    if-ne v2, v9, :cond_2a

    .line 170
    if-nez v8, :cond_2a

    .line 171
    div-int/lit8 v2, v25, 0x3

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v2, 0x1

    add-int/lit8 v2, v16, 0x1

    aget-object v12, v29, v16

    aput-object v12, v4, v9

    move v9, v2

    goto :goto_1a

    .line 176
    :cond_15
    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 177
    aput-object v2, v29, v12

    goto :goto_1b

    .line 183
    :cond_16
    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 184
    aput-object v2, v29, v12

    goto :goto_1c

    .line 188
    :cond_17
    add-int/lit8 v12, v16, 0x1

    aget-object v2, v29, v16

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v16

    .line 189
    const/16 v2, 0x9

    move/from16 v0, v31

    if-eq v0, v2, :cond_18

    const/16 v2, 0x11

    move/from16 v0, v31

    if-ne v0, v2, :cond_19

    .line 190
    :cond_18
    div-int/lit8 v2, v25, 0x3

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v4, v2

    move/from16 v9, v17

    .line 201
    :goto_20
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v18, v0

    .line 202
    move/from16 v0, v24

    and-int/lit16 v2, v0, 0x1000

    const/16 v13, 0x1000

    if-ne v2, v13, :cond_20

    .line 203
    const/16 v2, 0x11

    move/from16 v0, v31

    if-gt v0, v2, :cond_20

    .line 204
    add-int/lit8 v16, v22, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 205
    const v13, 0xd800

    if-lt v2, v13, :cond_27

    .line 206
    and-int/lit16 v13, v2, 0x1fff

    .line 207
    const/16 v2, 0xd

    .line 208
    :goto_21
    add-int/lit8 v17, v16, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const v20, 0xd800

    move/from16 v0, v16

    move/from16 v1, v20

    if-lt v0, v1, :cond_1e

    .line 209
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x1fff

    move/from16 v16, v0

    shl-int v16, v16, v2

    or-int v13, v13, v16

    .line 210
    add-int/lit8 v2, v2, 0xd

    move/from16 v16, v17

    goto :goto_21

    .line 191
    :cond_19
    const/16 v2, 0x1b

    move/from16 v0, v31

    if-eq v0, v2, :cond_1a

    const/16 v2, 0x31

    move/from16 v0, v31

    if-ne v0, v2, :cond_1b

    .line 192
    :cond_1a
    div-int/lit8 v2, v25, 0x3

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v2, 0x1

    add-int/lit8 v2, v12, 0x1

    aget-object v12, v29, v12

    aput-object v12, v4, v9

    move/from16 v9, v17

    move v12, v2

    goto :goto_20

    .line 193
    :cond_1b
    const/16 v2, 0xc

    move/from16 v0, v31

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x1e

    move/from16 v0, v31

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x2c

    move/from16 v0, v31

    if-ne v0, v2, :cond_1d

    .line 194
    :cond_1c
    if-nez v8, :cond_29

    .line 195
    div-int/lit8 v2, v25, 0x3

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v2, 0x1

    add-int/lit8 v2, v12, 0x1

    aget-object v12, v29, v12

    aput-object v12, v4, v9

    move/from16 v9, v17

    move v12, v2

    goto/16 :goto_20

    .line 196
    :cond_1d
    const/16 v2, 0x32

    move/from16 v0, v31

    if-ne v0, v2, :cond_29

    .line 197
    add-int/lit8 v2, v17, 0x1

    aput v25, v10, v17

    .line 198
    div-int/lit8 v9, v25, 0x3

    shl-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v12, 0x1

    aget-object v12, v29, v12

    aput-object v12, v4, v9

    .line 199
    move/from16 v0, v24

    and-int/lit16 v9, v0, 0x800

    if-eqz v9, :cond_28

    .line 200
    div-int/lit8 v9, v25, 0x3

    shl-int/lit8 v9, v9, 0x1

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v12, v13, 0x1

    aget-object v13, v29, v13

    aput-object v13, v4, v9

    move v9, v2

    goto/16 :goto_20

    .line 211
    :cond_1e
    shl-int v2, v16, v2

    or-int/2addr v2, v13

    move v13, v2

    .line 213
    :goto_22
    shl-int/lit8 v2, v15, 0x1

    div-int/lit8 v16, v13, 0x20

    add-int v16, v16, v2

    .line 214
    aget-object v2, v29, v16

    .line 215
    instance-of v0, v2, Ljava/lang/reflect/Field;

    move/from16 v20, v0

    if-eqz v20, :cond_1f

    .line 216
    check-cast v2, Ljava/lang/reflect/Field;

    .line 219
    :goto_23
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v2, v0

    .line 220
    rem-int/lit8 v13, v13, 0x20

    move/from16 v22, v17

    .line 224
    :goto_24
    const/16 v16, 0x12

    move/from16 v0, v31

    move/from16 v1, v16

    if-lt v0, v1, :cond_26

    const/16 v16, 0x31

    move/from16 v0, v31

    move/from16 v1, v16

    if-gt v0, v1, :cond_26

    .line 225
    add-int/lit8 v17, v19, 0x1

    aput v18, v10, v19

    move/from16 v16, v18

    move/from16 v19, v17

    move/from16 v20, v9

    move/from16 v21, v12

    goto/16 :goto_1d

    .line 217
    :cond_1f
    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 218
    aput-object v2, v29, v16

    goto :goto_23

    .line 222
    :cond_20
    const v2, 0xfffff

    .line 223
    const/4 v13, 0x0

    goto :goto_24

    .line 228
    :cond_21
    const/4 v7, 0x0

    move v9, v7

    goto/16 :goto_1e

    .line 229
    :cond_22
    const/4 v7, 0x0

    goto/16 :goto_1f

    .line 232
    :cond_23
    new-instance v2, Lcom/google/android/gms/internal/measurement/fr;

    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/gb;->c()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v7

    const/4 v9, 0x0

    add-int v12, v11, v14

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/internal/measurement/fr;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/fn;ZZ[IIILcom/google/android/gms/internal/measurement/fw;Lcom/google/android/gms/internal/measurement/ex;Lcom/google/android/gms/internal/measurement/gv;Lcom/google/android/gms/internal/measurement/dr;Lcom/google/android/gms/internal/measurement/fg;)V

    .line 234
    return-object v2

    .line 235
    :cond_24
    check-cast p1, Lcom/google/android/gms/internal/measurement/gs;

    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/gs;->a()I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/measurement/ed$e;->i:I

    if-ne v2, v3, :cond_25

    .line 237
    :cond_25
    new-instance v2, Ljava/lang/NoSuchMethodError;

    invoke-direct {v2}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v2

    :cond_26
    move/from16 v16, v18

    move/from16 v20, v9

    move/from16 v21, v12

    goto/16 :goto_1d

    :cond_27
    move v13, v2

    move/from16 v17, v16

    goto/16 :goto_22

    :cond_28
    move v9, v2

    move v12, v13

    goto/16 :goto_20

    :cond_29
    move/from16 v9, v17

    goto/16 :goto_20

    :cond_2a
    move/from16 v9, v16

    goto/16 :goto_1a

    :cond_2b
    move/from16 v20, v2

    move/from16 v18, v12

    goto/16 :goto_19

    :cond_2c
    move/from16 v23, v18

    goto/16 :goto_17

    :cond_2d
    move/from16 v24, v2

    move/from16 v22, v13

    goto/16 :goto_16

    :cond_2e
    move v7, v2

    move v12, v9

    goto/16 :goto_14

    :cond_2f
    move v11, v10

    goto/16 :goto_13

    :cond_30
    move v9, v5

    goto/16 :goto_10

    :cond_31
    move v7, v5

    goto/16 :goto_e

    :cond_32
    move v6, v5

    goto/16 :goto_c

    :cond_33
    move v5, v4

    goto/16 :goto_8

    :cond_34
    move v13, v4

    goto/16 :goto_3
.end method

.method private final a(I)Lcom/google/android/gms/internal/measurement/gd;
    .locals 4

    .prologue
    .line 3526
    div-int/lit8 v0, p1, 0x3

    shl-int/lit8 v1, v0, 0x1

    .line 3527
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->d:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/android/gms/internal/measurement/gd;

    .line 3528
    if-eqz v0, :cond_0

    .line 3532
    :goto_0
    return-object v0

    .line 3530
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fz;->a()Lcom/google/android/gms/internal/measurement/fz;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->d:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/fz;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v0

    .line 3531
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->d:[Ljava/lang/Object;

    aput-object v0, v2, v1

    goto :goto_0
.end method

.method private final a(IILjava/util/Map;Lcom/google/android/gms/internal/measurement/ek;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/gv;)Ljava/lang/Object;
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
            "Lcom/google/android/gms/internal/measurement/ek;",
            "TUB;",
            "Lcom/google/android/gms/internal/measurement/gv",
            "<TUT;TUB;>;)TUB;"
        }
    .end annotation

    .prologue
    .line 3917
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    .line 3918
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/fr;->b(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/fg;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/fe;

    move-result-object v2

    .line 3919
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3920
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3921
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/android/gms/internal/measurement/ek;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3922
    if-nez p5, :cond_1

    .line 3923
    invoke-virtual {p6}, Lcom/google/android/gms/internal/measurement/gv;->a()Ljava/lang/Object;

    move-result-object p5

    .line 3925
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/google/android/gms/internal/measurement/ff;->a(Lcom/google/android/gms/internal/measurement/fe;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 3926
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/ct;->c(I)Lcom/google/android/gms/internal/measurement/dc;

    move-result-object v1

    .line 3927
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/dc;->b()Lcom/google/android/gms/internal/measurement/zzes;

    move-result-object v4

    .line 3928
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v2, v5, v0}, Lcom/google/android/gms/internal/measurement/ff;->a(Lcom/google/android/gms/internal/measurement/zzes;Lcom/google/android/gms/internal/measurement/fe;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3932
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/dc;->a()Lcom/google/android/gms/internal/measurement/ct;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/android/gms/internal/measurement/gv;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/ct;)V

    .line 3933
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 3930
    :catch_0
    move-exception v0

    .line 3931
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3935
    :cond_2
    return-object p5
.end method

.method private final a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gv;)Ljava/lang/Object;
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
            "Lcom/google/android/gms/internal/measurement/gv",
            "<TUT;TUB;>;)TUB;"
        }
    .end annotation

    .prologue
    .line 3901
    .line 3902
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v2, v0, p2

    .line 3904
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/fr;->d(I)I

    move-result v0

    .line 3905
    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 3907
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 3908
    if-nez v0, :cond_1

    .line 3916
    :cond_0
    :goto_0
    return-object p3

    .line 3910
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/fr;->c(I)Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v4

    .line 3911
    if-eqz v4, :cond_0

    .line 3913
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/fg;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    move v1, p2

    move-object v5, p3

    move-object v6, p4

    .line 3915
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/fr;->a(IILjava/util/Map;Lcom/google/android/gms/internal/measurement/ek;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/gv;)Ljava/lang/Object;

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
    .line 238
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 243
    :cond_0
    return-object v0

    .line 240
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 241
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 242
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 244
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 245
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 247
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
    .line 1218
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/hr;)V
    .locals 1

    .prologue
    .line 4006
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4007
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/hr;->a(ILjava/lang/String;)V

    .line 4009
    :goto_0
    return-void

    .line 4008
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/ct;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/hr;->a(ILcom/google/android/gms/internal/measurement/ct;)V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/gv;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/hr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/gv",
            "<TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/measurement/hr;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2498
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/gv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/gv;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/hr;)V

    .line 2499
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/hr;ILjava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/hr;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 2492
    if-eqz p3, :cond_0

    .line 2493
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    .line 2494
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/measurement/fr;->b(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/fg;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/fe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    .line 2495
    invoke-interface {v1, p3}, Lcom/google/android/gms/internal/measurement/fg;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 2496
    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(ILcom/google/android/gms/internal/measurement/fe;Ljava/util/Map;)V

    .line 2497
    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/ge;)V
    .locals 3

    .prologue
    const v1, 0xfffff

    .line 4010
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/fr;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4012
    and-int v0, p2, v1

    int-to-long v0, v0

    .line 4013
    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/ge;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4021
    :goto_0
    return-void

    .line 4014
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fr;->i:Z

    if-eqz v0, :cond_1

    .line 4016
    and-int v0, p2, v1

    int-to-long v0, v0

    .line 4017
    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/ge;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 4019
    :cond_1
    and-int v0, p2, v1

    int-to-long v0, v0

    .line 4020
    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/ge;->n()Lcom/google/android/gms/internal/measurement/ct;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

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
    .line 539
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/fr;->d(I)I

    move-result v0

    .line 540
    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 542
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 545
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 546
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 547
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/ef;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 548
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 549
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto :goto_0

    .line 550
    :cond_2
    if-eqz v3, :cond_0

    .line 551
    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 552
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private final a(Ljava/lang/Object;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .prologue
    const v10, 0xfffff

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4034
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/fr;->e(I)I

    move-result v0

    .line 4035
    and-int v3, v0, v10

    int-to-long v4, v3

    .line 4036
    const-wide/32 v6, 0xfffff

    cmp-long v3, v4, v6

    if-nez v3, :cond_14

    .line 4037
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/fr;->d(I)I

    move-result v0

    .line 4039
    and-int v3, v0, v10

    int-to-long v4, v3

    .line 4042
    const/high16 v3, 0xff00000

    and-int/2addr v0, v3

    ushr-int/lit8 v0, v0, 0x14

    .line 4043
    packed-switch v0, :pswitch_data_0

    .line 4067
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4044
    :pswitch_0
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_0

    move v0, v1

    .line 4069
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 4044
    goto :goto_0

    .line 4045
    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->d(Ljava/lang/Object;J)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 4046
    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 4047
    :pswitch_3
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 4048
    :pswitch_4
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    .line 4049
    :pswitch_5
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    .line 4050
    :pswitch_6
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    .line 4051
    :pswitch_7
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->c(Ljava/lang/Object;J)Z

    move-result v0

    goto :goto_0

    .line 4052
    :pswitch_8
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 4053
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 4054
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0

    .line 4055
    :cond_8
    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/ct;

    if-eqz v3, :cond_a

    .line 4056
    sget-object v3, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/ct;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/ct;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    move v0, v2

    goto :goto_0

    .line 4057
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4058
    :pswitch_9
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    move v0, v2

    goto :goto_0

    .line 4059
    :pswitch_a
    sget-object v0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/ct;

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/ct;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto/16 :goto_0

    .line 4060
    :pswitch_b
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto/16 :goto_0

    .line 4061
    :pswitch_c
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    goto/16 :goto_0

    :cond_e
    move v0, v2

    goto/16 :goto_0

    .line 4062
    :pswitch_d
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_f
    move v0, v2

    goto/16 :goto_0

    .line 4063
    :pswitch_e
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-eqz v0, :cond_10

    move v0, v1

    goto/16 :goto_0

    :cond_10
    move v0, v2

    goto/16 :goto_0

    .line 4064
    :pswitch_f
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    goto/16 :goto_0

    :cond_11
    move v0, v2

    goto/16 :goto_0

    .line 4065
    :pswitch_10
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-eqz v0, :cond_12

    move v0, v1

    goto/16 :goto_0

    :cond_12
    move v0, v2

    goto/16 :goto_0

    .line 4066
    :pswitch_11
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    move v0, v1

    goto/16 :goto_0

    :cond_13
    move v0, v2

    goto/16 :goto_0

    .line 4068
    :cond_14
    ushr-int/lit8 v3, v0, 0x14

    shl-int v3, v1, v3

    .line 4069
    and-int/2addr v0, v10

    int-to-long v4, v0

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    and-int/2addr v0, v3

    if-eqz v0, :cond_15

    move v0, v1

    goto/16 :goto_0

    :cond_15
    move v0, v2

    goto/16 :goto_0

    .line 4043
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
    .line 4079
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/fr;->e(I)I

    move-result v0

    .line 4080
    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final a(Ljava/lang/Object;IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    .prologue
    .line 4031
    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 4032
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    .line 4033
    :goto_0
    return v0

    :cond_0
    and-int v0, p4, p5

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/gd;)Z
    .locals 2

    .prologue
    .line 4002
    .line 4003
    const v0, 0xfffff

    and-int/2addr v0, p1

    int-to-long v0, v0

    .line 4004
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 4005
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/gd;->d(Ljava/lang/Object;)Z

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
    .line 4025
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private final b(II)I
    .locals 4

    .prologue
    .line 4090
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 4091
    :goto_0
    if-gt p2, v1, :cond_2

    .line 4092
    add-int v0, v1, p2

    ushr-int/lit8 v2, v0, 0x1

    .line 4093
    mul-int/lit8 v0, v2, 0x3

    .line 4095
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v3, v3, v0

    .line 4097
    if-ne p1, v3, :cond_0

    .line 4103
    :goto_1
    return v0

    .line 4099
    :cond_0
    if-ge p1, v3, :cond_1

    .line 4100
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    goto :goto_0

    .line 4101
    :cond_1
    add-int/lit8 p2, v2, 0x1

    .line 4102
    goto :goto_0

    .line 4103
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private final b(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3533
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->d:[Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3

    shl-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private final b(Ljava/lang/Object;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 4070
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/fr;->e(I)I

    move-result v0

    .line 4071
    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v2, v1

    .line 4072
    const-wide/32 v4, 0xfffff

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 4078
    :goto_0
    return-void

    .line 4074
    :cond_0
    const/4 v1, 0x1

    ushr-int/lit8 v0, v0, 0x14

    shl-int v0, v1, v0

    .line 4076
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v1

    or-int/2addr v0, v1

    .line 4077
    invoke-static {p1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JI)V

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
    .line 4081
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/fr;->e(I)I

    move-result v0

    .line 4082
    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JI)V

    .line 4083
    return-void
.end method

.method private final b(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/hr;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/hr;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2166
    const/4 v5, 0x0

    .line 2167
    const/4 v4, 0x0

    .line 2168
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/gms/internal/measurement/fr;->h:Z

    if-eqz v6, :cond_0

    .line 2169
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/dr;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/dw;

    move-result-object v6

    .line 2171
    iget-object v7, v6, Lcom/google/android/gms/internal/measurement/dw;->a:Lcom/google/android/gms/internal/measurement/gi;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/gi;->isEmpty()Z

    move-result v7

    .line 2172
    if-nez v7, :cond_0

    .line 2173
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/dw;->d()Ljava/util/Iterator;

    move-result-object v5

    .line 2174
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2175
    :cond_0
    const v8, 0xfffff

    .line 2176
    const/4 v6, 0x0

    .line 2177
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    array-length v13, v7

    .line 2178
    sget-object v14, Lcom/google/android/gms/internal/measurement/fr;->b:Lsun/misc/Unsafe;

    .line 2179
    const/4 v7, 0x0

    move v12, v7

    move-object v9, v4

    :goto_0
    if-ge v12, v13, :cond_8

    .line 2180
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/fr;->d(I)I

    move-result v15

    .line 2182
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v16, v4, v12

    .line 2185
    const/high16 v4, 0xff00000

    and-int/2addr v4, v15

    ushr-int/lit8 v17, v4, 0x14

    .line 2187
    const/4 v4, 0x0

    .line 2188
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/android/gms/internal/measurement/fr;->j:Z

    if-nez v7, :cond_7

    const/16 v7, 0x11

    move/from16 v0, v17

    if-gt v0, v7, :cond_7

    .line 2189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    add-int/lit8 v7, v12, 0x2

    aget v10, v4, v7

    .line 2190
    const v4, 0xfffff

    and-int v7, v10, v4

    .line 2191
    if-eq v7, v8, :cond_6

    .line 2193
    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v14, v0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    .line 2194
    :goto_1
    const/4 v6, 0x1

    ushr-int/lit8 v8, v10, 0x14

    shl-int/2addr v6, v8

    move v10, v6

    move v11, v4

    move v8, v7

    .line 2195
    :goto_2
    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/dr;->a(Ljava/util/Map$Entry;)I

    move-result v4

    move/from16 v0, v16

    if-gt v4, v0, :cond_2

    .line 2196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v9}, Lcom/google/android/gms/internal/measurement/dr;->a(Lcom/google/android/gms/internal/measurement/hr;Ljava/util/Map$Entry;)V

    .line 2197
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

    .line 2199
    :cond_2
    const v4, 0xfffff

    and-int/2addr v4, v15

    int-to-long v6, v4

    .line 2201
    packed-switch v17, :pswitch_data_0

    .line 2486
    :cond_3
    :goto_4
    add-int/lit8 v4, v12, 0x3

    move v12, v4

    move v6, v11

    goto :goto_0

    .line 2202
    :pswitch_0
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2204
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->e(Ljava/lang/Object;J)D

    move-result-wide v6

    .line 2205
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(ID)V

    goto :goto_4

    .line 2206
    :pswitch_1
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2208
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->d(Ljava/lang/Object;J)F

    move-result v4

    .line 2209
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(IF)V

    goto :goto_4

    .line 2210
    :pswitch_2
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2211
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(IJ)V

    goto :goto_4

    .line 2212
    :pswitch_3
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2213
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->c(IJ)V

    goto :goto_4

    .line 2214
    :pswitch_4
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2215
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->c(II)V

    goto :goto_4

    .line 2216
    :pswitch_5
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2217
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->d(IJ)V

    goto :goto_4

    .line 2218
    :pswitch_6
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2219
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->d(II)V

    goto/16 :goto_4

    .line 2220
    :pswitch_7
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2222
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->c(Ljava/lang/Object;J)Z

    move-result v4

    .line 2223
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(IZ)V

    goto/16 :goto_4

    .line 2224
    :pswitch_8
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2225
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/hr;)V

    goto/16 :goto_4

    .line 2226
    :pswitch_9
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2227
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2228
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gd;)V

    goto/16 :goto_4

    .line 2230
    :pswitch_a
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2231
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ct;

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(ILcom/google/android/gms/internal/measurement/ct;)V

    goto/16 :goto_4

    .line 2232
    :pswitch_b
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2233
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->e(II)V

    goto/16 :goto_4

    .line 2234
    :pswitch_c
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2235
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->b(II)V

    goto/16 :goto_4

    .line 2236
    :pswitch_d
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2237
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(II)V

    goto/16 :goto_4

    .line 2238
    :pswitch_e
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2239
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->b(IJ)V

    goto/16 :goto_4

    .line 2240
    :pswitch_f
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2241
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->f(II)V

    goto/16 :goto_4

    .line 2242
    :pswitch_10
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2243
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->e(IJ)V

    goto/16 :goto_4

    .line 2244
    :pswitch_11
    and-int v4, v11, v10

    if-eqz v4, :cond_3

    .line 2246
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v6

    .line 2247
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4, v6}, Lcom/google/android/gms/internal/measurement/hr;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gd;)V

    goto/16 :goto_4

    .line 2250
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2251
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2252
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2256
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2257
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2258
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2262
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2263
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2264
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2268
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2269
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2270
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->d(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2274
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2275
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2276
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2280
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2281
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2282
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2286
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2287
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2288
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2292
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2293
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2294
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2298
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2299
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2300
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;)V

    goto/16 :goto_4

    .line 2304
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2306
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2307
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v6

    .line 2308
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Lcom/google/android/gms/internal/measurement/gd;)V

    goto/16 :goto_4

    .line 2312
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2313
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2314
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0}, Lcom/google/android/gms/internal/measurement/gf;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;)V

    goto/16 :goto_4

    .line 2318
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2319
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2320
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2324
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2325
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2326
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2330
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2331
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2332
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2336
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2337
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2338
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2342
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2343
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2344
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2348
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2349
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 2350
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2354
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2355
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2356
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2360
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2361
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2362
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2366
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2367
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2368
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2372
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2373
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2374
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->d(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2378
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2379
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2380
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2384
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2385
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2386
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2390
    :pswitch_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2391
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2392
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2396
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2397
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2398
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2402
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2403
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2404
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2408
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2409
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2410
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2414
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2415
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2416
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2420
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2421
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2422
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2426
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2427
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2428
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2432
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2433
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x1

    .line 2434
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_4

    .line 2438
    :pswitch_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v4, v12

    .line 2440
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2441
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v6

    .line 2442
    move-object/from16 v0, p2

    invoke-static {v10, v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gf;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Lcom/google/android/gms/internal/measurement/gd;)V

    goto/16 :goto_4

    .line 2444
    :pswitch_32
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v4, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Lcom/google/android/gms/internal/measurement/hr;ILjava/lang/Object;I)V

    goto/16 :goto_4

    .line 2446
    :pswitch_33
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2447
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;J)D

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(ID)V

    goto/16 :goto_4

    .line 2448
    :pswitch_34
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2449
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;J)F

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(IF)V

    goto/16 :goto_4

    .line 2450
    :pswitch_35
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2451
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(IJ)V

    goto/16 :goto_4

    .line 2452
    :pswitch_36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2453
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->c(IJ)V

    goto/16 :goto_4

    .line 2454
    :pswitch_37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2455
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->c(II)V

    goto/16 :goto_4

    .line 2456
    :pswitch_38
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2457
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->d(IJ)V

    goto/16 :goto_4

    .line 2458
    :pswitch_39
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2459
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->d(II)V

    goto/16 :goto_4

    .line 2460
    :pswitch_3a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2461
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->f(Ljava/lang/Object;J)Z

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(IZ)V

    goto/16 :goto_4

    .line 2462
    :pswitch_3b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2463
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/hr;)V

    goto/16 :goto_4

    .line 2464
    :pswitch_3c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2465
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2466
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gd;)V

    goto/16 :goto_4

    .line 2468
    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2469
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ct;

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(ILcom/google/android/gms/internal/measurement/ct;)V

    goto/16 :goto_4

    .line 2470
    :pswitch_3e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2471
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->e(II)V

    goto/16 :goto_4

    .line 2472
    :pswitch_3f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2473
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->b(II)V

    goto/16 :goto_4

    .line 2474
    :pswitch_40
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2475
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(II)V

    goto/16 :goto_4

    .line 2476
    :pswitch_41
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2477
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->b(IJ)V

    goto/16 :goto_4

    .line 2478
    :pswitch_42
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2479
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->f(II)V

    goto/16 :goto_4

    .line 2480
    :pswitch_43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2481
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->e(IJ)V

    goto/16 :goto_4

    .line 2482
    :pswitch_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2484
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v6

    .line 2485
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v4, v6}, Lcom/google/android/gms/internal/measurement/hr;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gd;)V

    goto/16 :goto_4

    .line 2489
    :cond_4
    const/4 v4, 0x0

    .line 2487
    :goto_5
    if-eqz v4, :cond_5

    .line 2488
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v4}, Lcom/google/android/gms/internal/measurement/dr;->a(Lcom/google/android/gms/internal/measurement/hr;Ljava/util/Map$Entry;)V

    .line 2489
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    goto :goto_5

    .line 2490
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->q:Lcom/google/android/gms/internal/measurement/gv;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Lcom/google/android/gms/internal/measurement/gv;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/hr;)V

    .line 2491
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

    .line 2201
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
    .line 554
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/fr;->d(I)I

    move-result v0

    .line 556
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v1, v1, p3

    .line 559
    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 561
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 564
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 565
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 566
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/measurement/ef;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 567
    invoke-static {p1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 568
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto :goto_0

    .line 569
    :cond_2
    if-eqz v4, :cond_0

    .line 570
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 571
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

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
    .line 4026
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private final c(I)Lcom/google/android/gms/internal/measurement/ek;
    .locals 2

    .prologue
    .line 3534
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->d:[Ljava/lang/Object;

    div-int/lit8 v1, p1, 0x3

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/android/gms/internal/measurement/ek;

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
    .line 4030
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

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
    .line 4022
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

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
    .line 4027
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private final e(I)I
    .locals 2

    .prologue
    .line 4023
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

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
    .line 4028
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static e(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/gx;
    .locals 2

    .prologue
    .line 3013
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ed;->zzb:Lcom/google/android/gms/internal/measurement/gx;

    .line 3014
    invoke-static {}, Lcom/google/android/gms/internal/measurement/gx;->a()Lcom/google/android/gms/internal/measurement/gx;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3015
    invoke-static {}, Lcom/google/android/gms/internal/measurement/gx;->b()Lcom/google/android/gms/internal/measurement/gx;

    move-result-object v0

    .line 3016
    check-cast p0, Lcom/google/android/gms/internal/measurement/ed;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ed;->zzb:Lcom/google/android/gms/internal/measurement/gx;

    .line 3017
    :cond_0
    return-object v0
.end method

.method private static f(I)Z
    .locals 1

    .prologue
    .line 4024
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
    .line 4029
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final g(I)I
    .locals 1

    .prologue
    .line 4084
    iget v0, p0, Lcom/google/android/gms/internal/measurement/fr;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/fr;->f:I

    if-gt p1, v0, :cond_0

    .line 4085
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(II)I

    move-result v0

    .line 4086
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

    .line 346
    .line 347
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    array-length v4, v2

    move v3, v0

    move v2, v0

    .line 348
    :goto_0
    if-ge v3, v4, :cond_1

    .line 349
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/fr;->d(I)I

    move-result v0

    .line 351
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v5, v3

    .line 354
    const v6, 0xfffff

    and-int/2addr v6, v0

    int-to-long v6, v6

    .line 357
    const/high16 v8, 0xff00000

    and-int/2addr v0, v8

    ushr-int/lit8 v0, v0, 0x14

    .line 358
    packed-switch v0, :pswitch_data_0

    :cond_0
    move v0, v2

    .line 450
    :goto_1
    add-int/lit8 v3, v3, 0x3

    move v2, v0

    goto :goto_0

    .line 359
    :pswitch_0
    mul-int/lit8 v0, v2, 0x35

    .line 360
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->e(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 361
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/ef;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 362
    goto :goto_1

    .line 363
    :pswitch_1
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->d(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 364
    goto :goto_1

    .line 365
    :pswitch_2
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/ef;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 366
    goto :goto_1

    .line 367
    :pswitch_3
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/ef;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 368
    goto :goto_1

    .line 369
    :pswitch_4
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    .line 370
    goto :goto_1

    .line 371
    :pswitch_5
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/ef;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 372
    goto :goto_1

    .line 373
    :pswitch_6
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    .line 374
    goto :goto_1

    .line 375
    :pswitch_7
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->c(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/ef;->a(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 376
    goto :goto_1

    .line 377
    :pswitch_8
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    .line 378
    goto :goto_1

    .line 380
    :pswitch_9
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_4

    .line 382
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 383
    :goto_2
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v0, v2

    .line 384
    goto :goto_1

    .line 385
    :pswitch_a
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 386
    goto/16 :goto_1

    .line 387
    :pswitch_b
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    .line 388
    goto/16 :goto_1

    .line 389
    :pswitch_c
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    .line 390
    goto/16 :goto_1

    .line 391
    :pswitch_d
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    .line 392
    goto/16 :goto_1

    .line 393
    :pswitch_e
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/ef;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 394
    goto/16 :goto_1

    .line 395
    :pswitch_f
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    .line 396
    goto/16 :goto_1

    .line 397
    :pswitch_10
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/ef;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 398
    goto/16 :goto_1

    .line 400
    :pswitch_11
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_3

    .line 402
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 403
    :goto_3
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v0, v2

    .line 404
    goto/16 :goto_1

    .line 405
    :pswitch_12
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 406
    goto/16 :goto_1

    .line 407
    :pswitch_13
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 408
    goto/16 :goto_1

    .line 409
    :pswitch_14
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    mul-int/lit8 v0, v2, 0x35

    .line 411
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/ef;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 412
    :pswitch_15
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 414
    :pswitch_16
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/ef;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 416
    :pswitch_17
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/ef;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 418
    :pswitch_18
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 420
    :pswitch_19
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/ef;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 422
    :pswitch_1a
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 424
    :pswitch_1b
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->f(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/ef;->a(Z)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 426
    :pswitch_1c
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    mul-int/lit8 v2, v2, 0x35

    .line 428
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 429
    :pswitch_1d
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 431
    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    .line 432
    goto/16 :goto_1

    .line 433
    :pswitch_1e
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 435
    :pswitch_1f
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 437
    :pswitch_20
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 439
    :pswitch_21
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 441
    :pswitch_22
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/ef;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 443
    :pswitch_23
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 445
    :pswitch_24
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    mul-int/lit8 v0, v2, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/ef;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 447
    :pswitch_25
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 449
    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 451
    :cond_1
    mul-int/lit8 v0, v2, 0x35

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->q:Lcom/google/android/gms/internal/measurement/gv;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/gv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 452
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/fr;->h:Z

    if-eqz v1, :cond_2

    .line 453
    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/dr;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/dw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/dw;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 454
    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto/16 :goto_3

    :cond_4
    move v0, v1

    goto/16 :goto_2

    .line 358
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

.method final a(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/cs;)I
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/measurement/cs;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3535
    sget-object v4, Lcom/google/android/gms/internal/measurement/fr;->b:Lsun/misc/Unsafe;

    .line 3536
    const v39, 0xfffff

    .line 3537
    const/16 v38, 0x0

    .line 3538
    const/16 v17, 0x0

    .line 3539
    const/16 v18, -0x1

    .line 3540
    const/16 v20, 0x0

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3541
    :goto_0
    move/from16 v0, p4

    if-ge v7, v0, :cond_1e

    .line 3542
    add-int/lit8 v10, v7, 0x1

    aget-byte v17, p2, v7

    .line 3543
    if-gez v17, :cond_0

    .line 3544
    move/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-static {v0, v1, v10, v2}, Lcom/google/android/gms/internal/measurement/cp;->a(I[BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v10

    .line 3545
    move-object/from16 v0, p6

    iget v0, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move/from16 v17, v0

    .line 3546
    :cond_0
    ushr-int/lit8 v18, v17, 0x3

    .line 3547
    and-int/lit8 v19, v17, 0x7

    .line 3548
    move/from16 v0, v18

    if-le v0, v6, :cond_2

    .line 3549
    div-int/lit8 v5, v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/measurement/fr;->a(II)I

    move-result v20

    .line 3552
    :goto_1
    const/4 v5, -0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_3

    .line 3553
    const/16 v20, 0x0

    move/from16 v11, v38

    move/from16 v12, v39

    move v7, v10

    .line 3694
    :goto_2
    move/from16 v0, v17

    move/from16 v1, p5

    if-ne v0, v1, :cond_1

    if-nez p5, :cond_14

    .line 3695
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/gms/internal/measurement/fr;->h:Z

    if-eqz v5, :cond_13

    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/cs;->d:Lcom/google/android/gms/internal/measurement/dp;

    .line 3696
    invoke-static {}, Lcom/google/android/gms/internal/measurement/dp;->a()Lcom/google/android/gms/internal/measurement/dp;

    move-result-object v6

    if-eq v5, v6, :cond_13

    .line 3697
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/fr;->g:Lcom/google/android/gms/internal/measurement/fn;

    .line 3698
    ushr-int/lit8 v6, v17, 0x3

    .line 3699
    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/cs;->d:Lcom/google/android/gms/internal/measurement/dp;

    .line 3700
    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/measurement/dp;->a(Lcom/google/android/gms/internal/measurement/fn;I)Lcom/google/android/gms/internal/measurement/ed$f;

    move-result-object v5

    .line 3701
    if-nez v5, :cond_12

    .line 3703
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/gx;

    move-result-object v9

    move/from16 v5, v17

    move-object/from16 v6, p2

    move/from16 v8, p4

    move-object/from16 v10, p6

    .line 3704
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/measurement/cp;->a(I[BIILcom/google/android/gms/internal/measurement/gx;Lcom/google/android/gms/internal/measurement/cs;)I

    move-result v7

    move/from16 v6, v18

    move/from16 v38, v11

    move/from16 v39, v12

    .line 3709
    goto :goto_0

    .line 3550
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/fr;->g(I)I

    move-result v20

    goto :goto_1

    .line 3554
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    add-int/lit8 v6, v20, 0x1

    aget v32, v5, v6

    .line 3556
    const/high16 v5, 0xff00000

    and-int v5, v5, v32

    ushr-int/lit8 v23, v5, 0x14

    .line 3559
    const v5, 0xfffff

    and-int v5, v5, v32

    int-to-long v6, v5

    .line 3561
    const/16 v5, 0x11

    move/from16 v0, v23

    if-gt v0, v5, :cond_d

    .line 3562
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    add-int/lit8 v8, v20, 0x2

    aget v5, v5, v8

    .line 3563
    const/4 v8, 0x1

    ushr-int/lit8 v9, v5, 0x14

    shl-int v14, v8, v9

    .line 3564
    const v8, 0xfffff

    and-int/2addr v5, v8

    .line 3565
    move/from16 v0, v39

    if-eq v5, v0, :cond_5

    .line 3566
    const v8, 0xfffff

    move/from16 v0, v39

    if-eq v0, v8, :cond_4

    .line 3567
    move/from16 v0, v39

    int-to-long v8, v0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v4, v0, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3569
    :cond_4
    int-to-long v8, v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v38

    move/from16 v39, v5

    .line 3570
    :cond_5
    packed-switch v23, :pswitch_data_0

    :cond_6
    move/from16 v11, v38

    move/from16 v12, v39

    move v7, v10

    .line 3666
    goto/16 :goto_2

    .line 3571
    :pswitch_0
    const/4 v5, 0x1

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    .line 3572
    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/measurement/cp;->c([BI)D

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JD)V

    .line 3573
    add-int/lit8 v7, v10, 0x8

    .line 3574
    or-int v38, v38, v14

    move/from16 v6, v18

    .line 3575
    goto/16 :goto_0

    .line 3576
    :pswitch_1
    const/4 v5, 0x5

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    .line 3577
    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/measurement/cp;->d([BI)F

    move-result v5

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7, v5}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JF)V

    .line 3578
    add-int/lit8 v7, v10, 0x4

    .line 3579
    or-int v38, v38, v14

    move/from16 v6, v18

    .line 3580
    goto/16 :goto_0

    .line 3581
    :pswitch_2
    if-nez v19, :cond_6

    .line 3582
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3583
    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/google/android/gms/internal/measurement/cs;->b:J

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 3584
    or-int v38, v38, v14

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3585
    goto/16 :goto_0

    .line 3586
    :pswitch_3
    if-nez v19, :cond_6

    .line 3587
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3588
    move-object/from16 v0, p6

    iget v5, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3589
    or-int v38, v38, v14

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3590
    goto/16 :goto_0

    .line 3591
    :pswitch_4
    const/4 v5, 0x1

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    .line 3592
    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/measurement/cp;->b([BI)J

    move-result-wide v8

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 3593
    add-int/lit8 v7, v10, 0x8

    .line 3594
    or-int v38, v38, v14

    move/from16 v6, v18

    .line 3595
    goto/16 :goto_0

    .line 3596
    :pswitch_5
    const/4 v5, 0x5

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    .line 3597
    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/measurement/cp;->a([BI)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3598
    add-int/lit8 v7, v10, 0x4

    .line 3599
    or-int v38, v38, v14

    move/from16 v6, v18

    .line 3600
    goto/16 :goto_0

    .line 3601
    :pswitch_6
    if-nez v19, :cond_6

    .line 3602
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3603
    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/google/android/gms/internal/measurement/cs;->b:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7, v5}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JZ)V

    .line 3604
    or-int v38, v38, v14

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3605
    goto/16 :goto_0

    .line 3603
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 3606
    :pswitch_7
    const/4 v5, 0x2

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    .line 3607
    const/high16 v5, 0x20000000

    and-int v5, v5, v32

    if-nez v5, :cond_8

    .line 3608
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lcom/google/android/gms/internal/measurement/cp;->c([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v5

    .line 3610
    :goto_4
    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3611
    or-int v38, v38, v14

    move/from16 v6, v18

    move v7, v5

    .line 3612
    goto/16 :goto_0

    .line 3609
    :cond_8
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lcom/google/android/gms/internal/measurement/cp;->d([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v5

    goto :goto_4

    .line 3613
    :pswitch_8
    const/4 v5, 0x2

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    .line 3615
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v5

    .line 3616
    move-object/from16 v0, p2

    move/from16 v1, p4

    move-object/from16 v2, p6

    invoke-static {v5, v0, v10, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a(Lcom/google/android/gms/internal/measurement/gd;[BIILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3617
    and-int v5, v38, v14

    if-nez v5, :cond_9

    .line 3618
    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3623
    :goto_5
    or-int v38, v38, v14

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3624
    goto/16 :goto_0

    .line 3620
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    .line 3621
    invoke-static {v5, v8}, Lcom/google/android/gms/internal/measurement/ef;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3622
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 3625
    :pswitch_9
    const/4 v5, 0x2

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    .line 3626
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lcom/google/android/gms/internal/measurement/cp;->e([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3627
    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3628
    or-int v38, v38, v14

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3629
    goto/16 :goto_0

    .line 3630
    :pswitch_a
    if-nez v19, :cond_6

    .line 3631
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3632
    move-object/from16 v0, p6

    iget v5, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 3633
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/fr;->c(I)Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v8

    .line 3634
    if-eqz v8, :cond_a

    invoke-interface {v8, v5}, Lcom/google/android/gms/internal/measurement/ek;->a(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 3635
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3636
    or-int v38, v38, v14

    move/from16 v6, v18

    move/from16 v7, p3

    goto/16 :goto_0

    .line 3637
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/gx;

    move-result-object v6

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v6, v0, v5}, Lcom/google/android/gms/internal/measurement/gx;->a(ILjava/lang/Object;)V

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3638
    goto/16 :goto_0

    .line 3639
    :pswitch_b
    if-nez v19, :cond_6

    .line 3640
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3641
    move-object/from16 v0, p6

    iget v5, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 3642
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/dg;->e(I)I

    move-result v5

    .line 3643
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3644
    or-int v38, v38, v14

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3645
    goto/16 :goto_0

    .line 3646
    :pswitch_c
    if-nez v19, :cond_6

    .line 3647
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3648
    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/google/android/gms/internal/measurement/cs;->b:J

    .line 3649
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/dg;->a(J)J

    move-result-wide v8

    move-object/from16 v5, p1

    .line 3650
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 3651
    or-int v38, v38, v14

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3652
    goto/16 :goto_0

    .line 3653
    :pswitch_d
    const/4 v5, 0x3

    move/from16 v0, v19

    if-ne v0, v5, :cond_6

    .line 3654
    shl-int/lit8 v5, v18, 0x3

    or-int/lit8 v12, v5, 0x4

    .line 3656
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v8

    move-object/from16 v9, p2

    move/from16 v11, p4

    move-object/from16 v13, p6

    .line 3657
    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/cp;->a(Lcom/google/android/gms/internal/measurement/gd;[BIIILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3658
    and-int v5, v38, v14

    if-nez v5, :cond_c

    .line 3659
    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3664
    :goto_6
    or-int v38, v38, v14

    move/from16 v6, v18

    move/from16 v7, p3

    .line 3665
    goto/16 :goto_0

    .line 3661
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    .line 3662
    invoke-static {v5, v8}, Lcom/google/android/gms/internal/measurement/ef;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3663
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    .line 3666
    :cond_d
    const/16 v5, 0x1b

    move/from16 v0, v23

    if-ne v0, v5, :cond_f

    .line 3667
    const/4 v5, 0x2

    move/from16 v0, v19

    if-ne v0, v5, :cond_1c

    .line 3668
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/el;

    .line 3669
    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/el;->a()Z

    move-result v8

    if-nez v8, :cond_1d

    .line 3670
    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/el;->size()I

    move-result v8

    .line 3672
    if-nez v8, :cond_e

    const/16 v8, 0xa

    .line 3673
    :goto_7
    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/measurement/el;->a(I)Lcom/google/android/gms/internal/measurement/el;

    move-result-object v12

    .line 3674
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3676
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v7

    move/from16 v8, v17

    move-object/from16 v9, p2

    move/from16 v11, p4

    move-object/from16 v13, p6

    .line 3677
    invoke-static/range {v7 .. v13}, Lcom/google/android/gms/internal/measurement/cp;->a(Lcom/google/android/gms/internal/measurement/gd;I[BIILcom/google/android/gms/internal/measurement/el;Lcom/google/android/gms/internal/measurement/cs;)I

    move-result v7

    move/from16 v6, v18

    .line 3678
    goto/16 :goto_0

    .line 3672
    :cond_e
    shl-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 3679
    :cond_f
    const/16 v5, 0x31

    move/from16 v0, v23

    if-gt v0, v5, :cond_10

    .line 3681
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

    .line 3682
    invoke-direct/range {v12 .. v26}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/cs;)I

    move-result v7

    .line 3683
    if-ne v7, v10, :cond_1b

    move/from16 v11, v38

    move/from16 v12, v39

    .line 3684
    goto/16 :goto_2

    :cond_10
    const/16 v5, 0x32

    move/from16 v0, v23

    if-ne v0, v5, :cond_11

    .line 3685
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

    .line 3687
    invoke-direct/range {v22 .. v30}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/measurement/cs;)I

    move-result v7

    .line 3688
    if-ne v7, v10, :cond_1b

    move/from16 v11, v38

    move/from16 v12, v39

    .line 3689
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

    .line 3692
    invoke-direct/range {v24 .. v37}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/cs;)I

    move-result v7

    .line 3693
    if-ne v7, v10, :cond_1b

    move/from16 v11, v38

    move/from16 v12, v39

    goto/16 :goto_2

    :cond_12
    move-object/from16 v4, p1

    .line 3705
    check-cast v4, Lcom/google/android/gms/internal/measurement/ed$d;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ed$d;->a()Lcom/google/android/gms/internal/measurement/dw;

    .line 3706
    check-cast p1, Lcom/google/android/gms/internal/measurement/ed$d;

    .line 3707
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/ed$d;->zzc:Lcom/google/android/gms/internal/measurement/dw;

    .line 3708
    new-instance v4, Ljava/lang/NoSuchMethodError;

    invoke-direct {v4}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v4

    .line 3711
    :cond_13
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/gx;

    move-result-object v9

    move/from16 v5, v17

    move-object/from16 v6, p2

    move/from16 v8, p4

    move-object/from16 v10, p6

    .line 3712
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/measurement/cp;->a(I[BIILcom/google/android/gms/internal/measurement/gx;Lcom/google/android/gms/internal/measurement/cs;)I

    move-result v7

    move/from16 v6, v18

    move/from16 v38, v11

    move/from16 v39, v12

    .line 3713
    goto/16 :goto_0

    :cond_14
    move v5, v11

    move v6, v12

    .line 3714
    :goto_9
    const v8, 0xfffff

    if-eq v6, v8, :cond_15

    .line 3715
    int-to-long v8, v6

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3716
    :cond_15
    const/4 v6, 0x0

    .line 3717
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/measurement/fr;->m:I

    move v5, v4

    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/measurement/fr;->n:I

    if-ge v5, v4, :cond_16

    .line 3718
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->l:[I

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/fr;->q:Lcom/google/android/gms/internal/measurement/gv;

    .line 3719
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v6, v8}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gv;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/gx;

    .line 3720
    add-int/lit8 v5, v5, 0x1

    move-object v6, v4

    goto :goto_a

    .line 3721
    :cond_16
    if-eqz v6, :cond_17

    .line 3722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/fr;->q:Lcom/google/android/gms/internal/measurement/gv;

    .line 3723
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Lcom/google/android/gms/internal/measurement/gv;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3724
    :cond_17
    if-nez p5, :cond_18

    .line 3725
    move/from16 v0, p4

    if-eq v7, v0, :cond_1a

    .line 3726
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->g()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3727
    :cond_18
    move/from16 v0, p4

    if-gt v7, v0, :cond_19

    move/from16 v0, v17

    move/from16 v1, p5

    if-eq v0, v1, :cond_1a

    .line 3728
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->g()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3729
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

    .line 3570
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
    .line 248
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->o:Lcom/google/android/gms/internal/measurement/fw;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->g:Lcom/google/android/gms/internal/measurement/fn;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/fw;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/ge;Lcom/google/android/gms/internal/measurement/dp;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/ge;",
            "Lcom/google/android/gms/internal/measurement/dp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2500
    if-nez p3, :cond_0

    .line 2501
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2502
    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/fr;->q:Lcom/google/android/gms/internal/measurement/gv;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    .line 2503
    const/4 v5, 0x0

    .line 2504
    const/4 v4, 0x0

    .line 2505
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->a()I

    move-result v1

    .line 2506
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fr;->g(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2507
    if-gez v2, :cond_8

    .line 2508
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_3

    .line 2509
    iget v0, p0, Lcom/google/android/gms/internal/measurement/fr;->m:I

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/measurement/fr;->n:I

    if-ge v0, v1, :cond_1

    .line 2510
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->l:[I

    aget v1, v1, v0

    .line 2511
    invoke-direct {p0, p1, v1, v5, v6}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gv;)Ljava/lang/Object;

    move-result-object v5

    .line 2512
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2513
    :cond_1
    if-eqz v5, :cond_2

    .line 2514
    invoke-virtual {v6, p1, v5}, Lcom/google/android/gms/internal/measurement/gv;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3004
    :cond_2
    :goto_2
    return-void

    .line 2516
    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/fr;->h:Z

    if-nez v2, :cond_5

    .line 2517
    const/4 v2, 0x0

    .line 2519
    :goto_3
    if-eqz v2, :cond_6

    .line 2520
    if-nez v4, :cond_4

    .line 2521
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/dr;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/dw;

    move-result-object v4

    :cond_4
    move-object v1, p2

    move-object v3, p3

    .line 2523
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/dr;->a(Lcom/google/android/gms/internal/measurement/ge;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/dp;Lcom/google/android/gms/internal/measurement/dw;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/gv;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 2518
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->g:Lcom/google/android/gms/internal/measurement/fn;

    invoke-virtual {v0, p3, v2, v1}, Lcom/google/android/gms/internal/measurement/dr;->a(Lcom/google/android/gms/internal/measurement/dp;Lcom/google/android/gms/internal/measurement/fn;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 2525
    :cond_6
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/measurement/gv;->a(Lcom/google/android/gms/internal/measurement/ge;)Z

    .line 2526
    if-nez v5, :cond_1c

    .line 2527
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/measurement/gv;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 2528
    :goto_4
    :try_start_2
    invoke-virtual {v6, v1, p2}, Lcom/google/android/gms/internal/measurement/gv;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/ge;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_1b

    .line 2529
    iget v0, p0, Lcom/google/android/gms/internal/measurement/fr;->m:I

    :goto_5
    iget v2, p0, Lcom/google/android/gms/internal/measurement/fr;->n:I

    if-ge v0, v2, :cond_7

    .line 2530
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->l:[I

    aget v2, v2, v0

    .line 2531
    invoke-direct {p0, p1, v2, v1, v6}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gv;)Ljava/lang/Object;

    move-result-object v1

    .line 2532
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2533
    :cond_7
    if-eqz v1, :cond_2

    .line 2534
    invoke-virtual {v6, p1, v1}, Lcom/google/android/gms/internal/measurement/gv;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 2536
    :cond_8
    :try_start_3
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->d(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    .line 2538
    const/high16 v7, 0xff00000

    and-int/2addr v7, v3

    ushr-int/lit8 v7, v7, 0x14

    .line 2539
    packed-switch v7, :pswitch_data_0

    .line 2982
    if-nez v5, :cond_19

    .line 2983
    :try_start_4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/gv;->a()Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/android/gms/internal/measurement/zzfs; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 2984
    :goto_6
    :try_start_5
    invoke-virtual {v6, v1, p2}, Lcom/google/android/gms/internal/measurement/gv;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/ge;)Z
    :try_end_5
    .catch Lcom/google/android/gms/internal/measurement/zzfs; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v2

    if-nez v2, :cond_13

    .line 2985
    iget v0, p0, Lcom/google/android/gms/internal/measurement/fr;->m:I

    :goto_7
    iget v2, p0, Lcom/google/android/gms/internal/measurement/fr;->n:I

    if-ge v0, v2, :cond_12

    .line 2986
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->l:[I

    aget v2, v2, v0

    .line 2987
    invoke-direct {p0, p1, v2, v1, v6}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gv;)Ljava/lang/Object;

    move-result-object v1

    .line 2988
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2541
    :pswitch_0
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2542
    :try_start_6
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->d()D

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JD)V

    .line 2543
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V
    :try_end_6
    .catch Lcom/google/android/gms/internal/measurement/zzfs; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 2994
    :catch_0
    move-exception v1

    :goto_8
    :try_start_7
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/measurement/gv;->a(Lcom/google/android/gms/internal/measurement/ge;)Z

    .line 2995
    if-nez v5, :cond_18

    .line 2996
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/measurement/gv;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    .line 2997
    :goto_9
    :try_start_8
    invoke-virtual {v6, v1, p2}, Lcom/google/android/gms/internal/measurement/gv;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/ge;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v2

    if-nez v2, :cond_15

    .line 2998
    iget v0, p0, Lcom/google/android/gms/internal/measurement/fr;->m:I

    :goto_a
    iget v2, p0, Lcom/google/android/gms/internal/measurement/fr;->n:I

    if-ge v0, v2, :cond_14

    .line 2999
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->l:[I

    aget v2, v2, v0

    .line 3000
    invoke-direct {p0, p1, v2, v1, v6}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gv;)Ljava/lang/Object;

    move-result-object v1

    .line 3001
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2546
    :pswitch_1
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2547
    :try_start_9
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->e()F

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JF)V

    .line 2548
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V
    :try_end_9
    .catch Lcom/google/android/gms/internal/measurement/zzfs; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 3006
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v1, v5

    :goto_b
    iget v0, p0, Lcom/google/android/gms/internal/measurement/fr;->m:I

    :goto_c
    iget v3, p0, Lcom/google/android/gms/internal/measurement/fr;->n:I

    if-ge v0, v3, :cond_16

    .line 3007
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/fr;->l:[I

    aget v3, v3, v0

    .line 3008
    invoke-direct {p0, p1, v3, v1, v6}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gv;)Ljava/lang/Object;

    move-result-object v1

    .line 3009
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2551
    :pswitch_2
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2552
    :try_start_a
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->g()J

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JJ)V

    .line 2553
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2556
    :pswitch_3
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2557
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->f()J

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JJ)V

    .line 2558
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2561
    :pswitch_4
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2562
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->h()I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JI)V

    .line 2563
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2566
    :pswitch_5
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2567
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->i()J

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JJ)V

    .line 2568
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2571
    :pswitch_6
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2572
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->j()I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JI)V

    .line 2573
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2576
    :pswitch_7
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2577
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->k()Z

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JZ)V

    .line 2578
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2580
    :pswitch_8
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/ge;)V

    .line 2581
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2583
    :pswitch_9
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2585
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2586
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 2587
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v2

    .line 2588
    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/measurement/ge;->a(Lcom/google/android/gms/internal/measurement/gd;Lcom/google/android/gms/internal/measurement/dp;)Ljava/lang/Object;

    move-result-object v2

    .line 2589
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/ef;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2591
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2592
    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    .line 2595
    :cond_9
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2597
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v1

    .line 2598
    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/measurement/ge;->a(Lcom/google/android/gms/internal/measurement/gd;Lcom/google/android/gms/internal/measurement/dp;)Ljava/lang/Object;

    move-result-object v1

    .line 2599
    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2600
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2603
    :pswitch_a
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2604
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->n()Lcom/google/android/gms/internal/measurement/ct;

    move-result-object v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2605
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2608
    :pswitch_b
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2609
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->o()I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JI)V

    .line 2610
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2612
    :pswitch_c
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->p()I

    move-result v7

    .line 2613
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->c(I)Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v8

    .line 2614
    if-eqz v8, :cond_a

    invoke-interface {v8, v7}, Lcom/google/android/gms/internal/measurement/ek;->a(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2616
    :cond_a
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2617
    invoke-static {p1, v8, v9, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JI)V

    .line 2618
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2620
    :cond_b
    invoke-static {v1, v7, v5, v6}, Lcom/google/android/gms/internal/measurement/gf;->a(IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gv;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 2623
    :pswitch_d
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2624
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->q()I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JI)V

    .line 2625
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2628
    :pswitch_e
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2629
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->r()J

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JJ)V

    .line 2630
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2633
    :pswitch_f
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2634
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->s()I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JI)V

    .line 2635
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2638
    :pswitch_10
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2639
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->t()J

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JJ)V

    .line 2640
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2642
    :pswitch_11
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2644
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2645
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 2646
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v2

    .line 2647
    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/measurement/ge;->b(Lcom/google/android/gms/internal/measurement/gd;Lcom/google/android/gms/internal/measurement/dp;)Ljava/lang/Object;

    move-result-object v2

    .line 2648
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/ef;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2650
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2651
    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    .line 2654
    :cond_c
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2656
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v1

    .line 2657
    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/measurement/ge;->b(Lcom/google/android/gms/internal/measurement/gd;Lcom/google/android/gms/internal/measurement/dp;)Ljava/lang/Object;

    move-result-object v1

    .line 2658
    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2659
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2661
    :pswitch_12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2662
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2663
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2664
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2666
    :pswitch_13
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2667
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2668
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2669
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2671
    :pswitch_14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2672
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2673
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2674
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->d(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2676
    :pswitch_15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2677
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2678
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2679
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->c(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2681
    :pswitch_16
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2682
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2683
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2684
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->e(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2686
    :pswitch_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2687
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2688
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2689
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->f(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2691
    :pswitch_18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2692
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2693
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2694
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->g(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2696
    :pswitch_19
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2697
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2698
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2699
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->h(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2702
    :pswitch_1a
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/fr;->f(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2703
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2704
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2705
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2706
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->j(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2707
    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2708
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2709
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->i(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2712
    :pswitch_1b
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v1

    .line 2715
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2717
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2718
    invoke-virtual {v7, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2719
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/measurement/ge;->a(Ljava/util/List;Lcom/google/android/gms/internal/measurement/gd;Lcom/google/android/gms/internal/measurement/dp;)V

    goto/16 :goto_0

    .line 2721
    :pswitch_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2722
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2723
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2724
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->k(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2726
    :pswitch_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2727
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2728
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2729
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->l(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2731
    :pswitch_1e
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2732
    const v8, 0xfffff

    and-int/2addr v3, v8

    int-to-long v8, v3

    .line 2733
    invoke-virtual {v7, p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 2734
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/measurement/ge;->m(Ljava/util/List;)V

    .line 2736
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->c(I)Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v2

    .line 2737
    invoke-static {v1, v3, v2, v5, v6}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ek;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/gv;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 2739
    :pswitch_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2740
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2741
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2742
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->n(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2744
    :pswitch_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2745
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2746
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2747
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->o(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2749
    :pswitch_21
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2750
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2751
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2752
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->p(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2754
    :pswitch_22
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2755
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2756
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2757
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->q(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2759
    :pswitch_23
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2760
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2761
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2762
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2764
    :pswitch_24
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2765
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2766
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2767
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2769
    :pswitch_25
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2770
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2771
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2772
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->d(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2774
    :pswitch_26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2775
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2776
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2777
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->c(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2779
    :pswitch_27
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2780
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2781
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2782
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->e(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2784
    :pswitch_28
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2785
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2786
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2787
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->f(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2789
    :pswitch_29
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2790
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2791
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2792
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->g(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2794
    :pswitch_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2795
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2796
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2797
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->h(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2799
    :pswitch_2b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2800
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2801
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2802
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->l(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2804
    :pswitch_2c
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2805
    const v8, 0xfffff

    and-int/2addr v3, v8

    int-to-long v8, v3

    .line 2806
    invoke-virtual {v7, p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 2807
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/measurement/ge;->m(Ljava/util/List;)V

    .line 2809
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->c(I)Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v2

    .line 2810
    invoke-static {v1, v3, v2, v5, v6}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ek;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/gv;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 2812
    :pswitch_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2813
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2814
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2815
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->n(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2817
    :pswitch_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2818
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2819
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2820
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->o(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2822
    :pswitch_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2823
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2824
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2825
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->p(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2827
    :pswitch_30
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2828
    const v2, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 2829
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2830
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/ge;->q(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2833
    :pswitch_31
    const v1, 0xfffff

    and-int/2addr v1, v3

    int-to-long v8, v1

    .line 2835
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v1

    .line 2837
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    .line 2838
    invoke-virtual {v2, p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2839
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/measurement/ge;->b(Ljava/util/List;Lcom/google/android/gms/internal/measurement/gd;Lcom/google/android/gms/internal/measurement/dp;)V

    goto/16 :goto_0

    .line 2841
    :pswitch_32
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(I)Ljava/lang/Object;

    move-result-object v3

    .line 2842
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->d(I)I

    move-result v1

    .line 2843
    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v8, v1

    .line 2845
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 2846
    if-nez v2, :cond_e

    .line 2847
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/measurement/fg;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2848
    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2854
    :goto_d
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    .line 2855
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/measurement/fg;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    .line 2856
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/fg;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/fe;

    move-result-object v2

    .line 2857
    invoke-interface {p2, v1, v2, p3}, Lcom/google/android/gms/internal/measurement/ge;->a(Ljava/util/Map;Lcom/google/android/gms/internal/measurement/fe;Lcom/google/android/gms/internal/measurement/dp;)V

    goto/16 :goto_0

    .line 2849
    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/measurement/fg;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2851
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/measurement/fg;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2852
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    invoke-interface {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/fg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2853
    invoke-static {p1, v8, v9, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d

    .line 2860
    :pswitch_33
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2861
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->d()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 2862
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2863
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2866
    :pswitch_34
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2867
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->e()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 2868
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2869
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2872
    :pswitch_35
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2873
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->g()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2874
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2875
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2878
    :pswitch_36
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2879
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->f()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2880
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2881
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2884
    :pswitch_37
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2885
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2886
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2887
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2890
    :pswitch_38
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2891
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->i()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2892
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2893
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2896
    :pswitch_39
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2897
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->j()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2898
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2899
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2902
    :pswitch_3a
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2903
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->k()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2904
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2905
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2907
    :pswitch_3b
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/ge;)V

    .line 2908
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2910
    :pswitch_3c
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 2912
    const v7, 0xfffff

    and-int/2addr v7, v3

    int-to-long v8, v7

    .line 2913
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 2914
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v8

    .line 2915
    invoke-interface {p2, v8, p3}, Lcom/google/android/gms/internal/measurement/ge;->a(Lcom/google/android/gms/internal/measurement/gd;Lcom/google/android/gms/internal/measurement/dp;)Ljava/lang/Object;

    move-result-object v8

    .line 2916
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/ef;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 2918
    const v8, 0xfffff

    and-int/2addr v3, v8

    int-to-long v8, v3

    .line 2919
    invoke-static {p1, v8, v9, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2928
    :goto_e
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2922
    :cond_f
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2924
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v3

    .line 2925
    invoke-interface {p2, v3, p3}, Lcom/google/android/gms/internal/measurement/ge;->a(Lcom/google/android/gms/internal/measurement/gd;Lcom/google/android/gms/internal/measurement/dp;)Ljava/lang/Object;

    move-result-object v3

    .line 2926
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2927
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto :goto_e

    .line 2931
    :pswitch_3d
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2932
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->n()Lcom/google/android/gms/internal/measurement/ct;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2933
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2936
    :pswitch_3e
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2937
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2938
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2939
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2941
    :pswitch_3f
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->p()I

    move-result v7

    .line 2942
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->c(I)Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v8

    .line 2943
    if-eqz v8, :cond_10

    invoke-interface {v8, v7}, Lcom/google/android/gms/internal/measurement/ek;->a(I)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 2945
    :cond_10
    const v8, 0xfffff

    and-int/2addr v3, v8

    int-to-long v8, v3

    .line 2946
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2947
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2949
    :cond_11
    invoke-static {v1, v7, v5, v6}, Lcom/google/android/gms/internal/measurement/gf;->a(IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gv;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 2952
    :pswitch_40
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2953
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->q()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2954
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2955
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2958
    :pswitch_41
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2959
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->r()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2960
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2961
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2964
    :pswitch_42
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2965
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->s()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2966
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2967
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2970
    :pswitch_43
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2971
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/ge;->t()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2972
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2973
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2976
    :pswitch_44
    const v7, 0xfffff

    and-int/2addr v3, v7

    int-to-long v8, v3

    .line 2978
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v3

    invoke-interface {p2, v3, p3}, Lcom/google/android/gms/internal/measurement/ge;->b(Lcom/google/android/gms/internal/measurement/gd;Lcom/google/android/gms/internal/measurement/dp;)Ljava/lang/Object;

    move-result-object v3

    .line 2979
    invoke-static {p1, v8, v9, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2980
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V
    :try_end_a
    .catch Lcom/google/android/gms/internal/measurement/zzfs; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 2989
    :cond_12
    if-eqz v1, :cond_2

    .line 2990
    invoke-virtual {v6, p1, v1}, Lcom/google/android/gms/internal/measurement/gv;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_13
    move-object v5, v1

    .line 2992
    goto/16 :goto_0

    .line 3002
    :cond_14
    if-eqz v1, :cond_2

    .line 3003
    invoke-virtual {v6, p1, v1}, Lcom/google/android/gms/internal/measurement/gv;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_15
    move-object v5, v1

    .line 3005
    goto/16 :goto_0

    .line 3010
    :cond_16
    if-eqz v1, :cond_17

    .line 3011
    invoke-virtual {v6, p1, v1}, Lcom/google/android/gms/internal/measurement/gv;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3012
    :cond_17
    throw v2

    .line 3006
    :catchall_1
    move-exception v0

    move-object v2, v0

    goto/16 :goto_b

    .line 2994
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

    .line 2539
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

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/hr;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/hr;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1219
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/hr;->a()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/measurement/ed$e;->k:I

    if-ne v0, v1, :cond_6

    .line 1221
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->q:Lcom/google/android/gms/internal/measurement/gv;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/fr;->a(Lcom/google/android/gms/internal/measurement/gv;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/hr;)V

    .line 1222
    const/4 v1, 0x0

    .line 1223
    const/4 v0, 0x0

    .line 1224
    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/fr;->h:Z

    if-eqz v2, :cond_0

    .line 1225
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/measurement/dr;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/dw;

    move-result-object v2

    .line 1227
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/dw;->a:Lcom/google/android/gms/internal/measurement/gi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/gi;->isEmpty()Z

    move-result v3

    .line 1228
    if-nez v3, :cond_0

    .line 1229
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/dw;->e()Ljava/util/Iterator;

    move-result-object v1

    .line 1230
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1231
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x3

    move v3, v2

    :goto_0
    if-ltz v3, :cond_5

    .line 1232
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/fr;->d(I)I

    move-result v4

    .line 1234
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v2, v3

    move-object v2, v0

    .line 1236
    :goto_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/dr;->a(Ljava/util/Map$Entry;)I

    move-result v0

    if-le v0, v5, :cond_2

    .line 1237
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    invoke-virtual {v0, p2, v2}, Lcom/google/android/gms/internal/measurement/dr;->a(Lcom/google/android/gms/internal/measurement/hr;Ljava/util/Map$Entry;)V

    .line 1238
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

    .line 1240
    :cond_2
    const/high16 v0, 0xff00000

    and-int/2addr v0, v4

    ushr-int/lit8 v0, v0, 0x14

    .line 1241
    packed-switch v0, :pswitch_data_0

    .line 1686
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, -0x3

    move-object v0, v2

    goto :goto_0

    .line 1242
    :pswitch_0
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1244
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1246
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->e(Ljava/lang/Object;J)D

    move-result-wide v6

    .line 1247
    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(ID)V

    goto :goto_3

    .line 1248
    :pswitch_1
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1250
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1252
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->d(Ljava/lang/Object;J)F

    move-result v0

    .line 1253
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(IF)V

    goto :goto_3

    .line 1254
    :pswitch_2
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1256
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1258
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    .line 1259
    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(IJ)V

    goto :goto_3

    .line 1260
    :pswitch_3
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1262
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1264
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    .line 1265
    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->c(IJ)V

    goto :goto_3

    .line 1266
    :pswitch_4
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1268
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1270
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1271
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/measurement/hr;->c(II)V

    goto :goto_3

    .line 1272
    :pswitch_5
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1274
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1276
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    .line 1277
    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->d(IJ)V

    goto :goto_3

    .line 1278
    :pswitch_6
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1280
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1282
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1283
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/measurement/hr;->d(II)V

    goto/16 :goto_3

    .line 1284
    :pswitch_7
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1286
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1288
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->c(Ljava/lang/Object;J)Z

    move-result v0

    .line 1289
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(IZ)V

    goto/16 :goto_3

    .line 1290
    :pswitch_8
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1292
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1293
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0, p2}, Lcom/google/android/gms/internal/measurement/fr;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/hr;)V

    goto/16 :goto_3

    .line 1294
    :pswitch_9
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1296
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1297
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1298
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v4

    invoke-interface {p2, v5, v0, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gd;)V

    goto/16 :goto_3

    .line 1300
    :pswitch_a
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1302
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1303
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ct;

    .line 1304
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(ILcom/google/android/gms/internal/measurement/ct;)V

    goto/16 :goto_3

    .line 1305
    :pswitch_b
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1307
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1309
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1310
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/measurement/hr;->e(II)V

    goto/16 :goto_3

    .line 1311
    :pswitch_c
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1313
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1315
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1316
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(II)V

    goto/16 :goto_3

    .line 1317
    :pswitch_d
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1319
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1321
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1322
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(II)V

    goto/16 :goto_3

    .line 1323
    :pswitch_e
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1325
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1327
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    .line 1328
    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->b(IJ)V

    goto/16 :goto_3

    .line 1329
    :pswitch_f
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1331
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1333
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1334
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/measurement/hr;->f(II)V

    goto/16 :goto_3

    .line 1335
    :pswitch_10
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1337
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1339
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    .line 1340
    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->e(IJ)V

    goto/16 :goto_3

    .line 1341
    :pswitch_11
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1343
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1344
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1345
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v4

    .line 1346
    invoke-interface {p2, v5, v0, v4}, Lcom/google/android/gms/internal/measurement/hr;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gd;)V

    goto/16 :goto_3

    .line 1349
    :pswitch_12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1351
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1352
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1353
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1357
    :pswitch_13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1359
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1360
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1361
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1365
    :pswitch_14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1367
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1368
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1369
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1373
    :pswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1375
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1376
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1377
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->d(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1381
    :pswitch_16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1383
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1384
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1385
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1389
    :pswitch_17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1391
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1392
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1393
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1397
    :pswitch_18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1399
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1400
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1401
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1405
    :pswitch_19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1407
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1408
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1409
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1413
    :pswitch_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1415
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1416
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1417
    invoke-static {v5, v0, p2}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;)V

    goto/16 :goto_3

    .line 1421
    :pswitch_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1423
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1424
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1425
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v4

    .line 1426
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Lcom/google/android/gms/internal/measurement/gd;)V

    goto/16 :goto_3

    .line 1430
    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1432
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1433
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1434
    invoke-static {v5, v0, p2}, Lcom/google/android/gms/internal/measurement/gf;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;)V

    goto/16 :goto_3

    .line 1438
    :pswitch_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1440
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1441
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1442
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1446
    :pswitch_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1448
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1449
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1450
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1454
    :pswitch_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1456
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1457
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1458
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1462
    :pswitch_20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1464
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1465
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1466
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1470
    :pswitch_21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1472
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1473
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1474
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1478
    :pswitch_22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1480
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1481
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    .line 1482
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1486
    :pswitch_23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1488
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1489
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1490
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1494
    :pswitch_24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1496
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1497
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1498
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1502
    :pswitch_25
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1504
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1505
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1506
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1510
    :pswitch_26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1512
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1513
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1514
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->d(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1518
    :pswitch_27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1520
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1521
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1522
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1526
    :pswitch_28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1528
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1529
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1530
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1534
    :pswitch_29
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1536
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1537
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1538
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1542
    :pswitch_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1544
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1545
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1546
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1550
    :pswitch_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1552
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1553
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1554
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1558
    :pswitch_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1560
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1561
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1562
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1566
    :pswitch_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1568
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1569
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1570
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1574
    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1576
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1577
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1578
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1582
    :pswitch_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1584
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1585
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1586
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1590
    :pswitch_30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1592
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1593
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x1

    .line 1594
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_3

    .line 1598
    :pswitch_31
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v5, v0, v3

    .line 1600
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1601
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1602
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v4

    .line 1603
    invoke-static {v5, v0, p2, v4}, Lcom/google/android/gms/internal/measurement/gf;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Lcom/google/android/gms/internal/measurement/gd;)V

    goto/16 :goto_3

    .line 1606
    :pswitch_32
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1607
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v5, v0, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Lcom/google/android/gms/internal/measurement/hr;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 1609
    :pswitch_33
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1611
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1612
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(ID)V

    goto/16 :goto_3

    .line 1613
    :pswitch_34
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1615
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1616
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(IF)V

    goto/16 :goto_3

    .line 1617
    :pswitch_35
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1619
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1620
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(IJ)V

    goto/16 :goto_3

    .line 1621
    :pswitch_36
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1623
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1624
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->c(IJ)V

    goto/16 :goto_3

    .line 1625
    :pswitch_37
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1627
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1628
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/measurement/hr;->c(II)V

    goto/16 :goto_3

    .line 1629
    :pswitch_38
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1631
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1632
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->d(IJ)V

    goto/16 :goto_3

    .line 1633
    :pswitch_39
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1635
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1636
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/measurement/hr;->d(II)V

    goto/16 :goto_3

    .line 1637
    :pswitch_3a
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1639
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1640
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->f(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(IZ)V

    goto/16 :goto_3

    .line 1641
    :pswitch_3b
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1643
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1644
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0, p2}, Lcom/google/android/gms/internal/measurement/fr;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/hr;)V

    goto/16 :goto_3

    .line 1645
    :pswitch_3c
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1647
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1648
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1649
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v4

    invoke-interface {p2, v5, v0, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gd;)V

    goto/16 :goto_3

    .line 1651
    :pswitch_3d
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1653
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1654
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ct;

    .line 1655
    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(ILcom/google/android/gms/internal/measurement/ct;)V

    goto/16 :goto_3

    .line 1656
    :pswitch_3e
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1658
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1659
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/measurement/hr;->e(II)V

    goto/16 :goto_3

    .line 1660
    :pswitch_3f
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1662
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1663
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(II)V

    goto/16 :goto_3

    .line 1664
    :pswitch_40
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1666
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1667
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(II)V

    goto/16 :goto_3

    .line 1668
    :pswitch_41
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1670
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1671
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->b(IJ)V

    goto/16 :goto_3

    .line 1672
    :pswitch_42
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1674
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1675
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/google/android/gms/internal/measurement/hr;->f(II)V

    goto/16 :goto_3

    .line 1676
    :pswitch_43
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1678
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1679
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->e(IJ)V

    goto/16 :goto_3

    .line 1680
    :pswitch_44
    invoke-direct {p0, p1, v5, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1682
    const v0, 0xfffff

    and-int/2addr v0, v4

    int-to-long v6, v0

    .line 1683
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1684
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v4

    .line 1685
    invoke-interface {p2, v5, v0, v4}, Lcom/google/android/gms/internal/measurement/hr;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gd;)V

    goto/16 :goto_3

    .line 1689
    :cond_4
    const/4 v0, 0x0

    .line 1687
    :cond_5
    :goto_4
    if-eqz v0, :cond_e

    .line 1688
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    invoke-virtual {v2, p2, v0}, Lcom/google/android/gms/internal/measurement/dr;->a(Lcom/google/android/gms/internal/measurement/hr;Ljava/util/Map$Entry;)V

    .line 1689
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_4

    .line 1691
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fr;->j:Z

    if-eqz v0, :cond_f

    .line 1693
    const/4 v1, 0x0

    .line 1694
    const/4 v0, 0x0

    .line 1695
    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/fr;->h:Z

    if-eqz v2, :cond_7

    .line 1696
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/measurement/dr;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/dw;

    move-result-object v2

    .line 1698
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/dw;->a:Lcom/google/android/gms/internal/measurement/gi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/gi;->isEmpty()Z

    move-result v3

    .line 1699
    if-nez v3, :cond_7

    .line 1700
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/dw;->d()Ljava/util/Iterator;

    move-result-object v1

    .line 1701
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1702
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    array-length v4, v2

    .line 1703
    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v4, :cond_c

    .line 1704
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/fr;->d(I)I

    move-result v5

    .line 1706
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v2, v3

    move-object v2, v0

    .line 1708
    :goto_6
    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/dr;->a(Ljava/util/Map$Entry;)I

    move-result v0

    if-gt v0, v6, :cond_9

    .line 1709
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    invoke-virtual {v0, p2, v2}, Lcom/google/android/gms/internal/measurement/dr;->a(Lcom/google/android/gms/internal/measurement/hr;Ljava/util/Map$Entry;)V

    .line 1710
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

    .line 1712
    :cond_9
    const/high16 v0, 0xff00000

    and-int/2addr v0, v5

    ushr-int/lit8 v0, v0, 0x14

    .line 1713
    packed-switch v0, :pswitch_data_1

    .line 2158
    :cond_a
    :goto_8
    add-int/lit8 v3, v3, 0x3

    move-object v0, v2

    goto :goto_5

    .line 1714
    :pswitch_45
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1716
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1718
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->e(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 1719
    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/measurement/hr;->a(ID)V

    goto :goto_8

    .line 1720
    :pswitch_46
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1722
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1724
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->d(Ljava/lang/Object;J)F

    move-result v0

    .line 1725
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(IF)V

    goto :goto_8

    .line 1726
    :pswitch_47
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1728
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1730
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1731
    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/measurement/hr;->a(IJ)V

    goto :goto_8

    .line 1732
    :pswitch_48
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1734
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1736
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1737
    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/measurement/hr;->c(IJ)V

    goto :goto_8

    .line 1738
    :pswitch_49
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1740
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1742
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1743
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->c(II)V

    goto :goto_8

    .line 1744
    :pswitch_4a
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1746
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1748
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1749
    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/measurement/hr;->d(IJ)V

    goto :goto_8

    .line 1750
    :pswitch_4b
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1752
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1754
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1755
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->d(II)V

    goto/16 :goto_8

    .line 1756
    :pswitch_4c
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1758
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1760
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->c(Ljava/lang/Object;J)Z

    move-result v0

    .line 1761
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(IZ)V

    goto/16 :goto_8

    .line 1762
    :pswitch_4d
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1764
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1765
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0, p2}, Lcom/google/android/gms/internal/measurement/fr;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/hr;)V

    goto/16 :goto_8

    .line 1766
    :pswitch_4e
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1768
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1769
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1770
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v5

    invoke-interface {p2, v6, v0, v5}, Lcom/google/android/gms/internal/measurement/hr;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gd;)V

    goto/16 :goto_8

    .line 1772
    :pswitch_4f
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1774
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1775
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ct;

    .line 1776
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(ILcom/google/android/gms/internal/measurement/ct;)V

    goto/16 :goto_8

    .line 1777
    :pswitch_50
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1779
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1781
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1782
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->e(II)V

    goto/16 :goto_8

    .line 1783
    :pswitch_51
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1785
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1787
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1788
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(II)V

    goto/16 :goto_8

    .line 1789
    :pswitch_52
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1791
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1793
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1794
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(II)V

    goto/16 :goto_8

    .line 1795
    :pswitch_53
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1797
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1799
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1800
    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/measurement/hr;->b(IJ)V

    goto/16 :goto_8

    .line 1801
    :pswitch_54
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1803
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1805
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 1806
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->f(II)V

    goto/16 :goto_8

    .line 1807
    :pswitch_55
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1809
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1811
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1812
    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/measurement/hr;->e(IJ)V

    goto/16 :goto_8

    .line 1813
    :pswitch_56
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1815
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1816
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1817
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v5

    .line 1818
    invoke-interface {p2, v6, v0, v5}, Lcom/google/android/gms/internal/measurement/hr;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gd;)V

    goto/16 :goto_8

    .line 1821
    :pswitch_57
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1823
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1824
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1825
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1829
    :pswitch_58
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1831
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1832
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1833
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1837
    :pswitch_59
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1839
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1840
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1841
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1845
    :pswitch_5a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1847
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1848
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1849
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->d(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1853
    :pswitch_5b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1855
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1856
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1857
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1861
    :pswitch_5c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1863
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1864
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1865
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1869
    :pswitch_5d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1871
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1872
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1873
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1877
    :pswitch_5e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1879
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1880
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1881
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1885
    :pswitch_5f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1887
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1888
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1889
    invoke-static {v6, v0, p2}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;)V

    goto/16 :goto_8

    .line 1893
    :pswitch_60
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1895
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1896
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1897
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v5

    .line 1898
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Lcom/google/android/gms/internal/measurement/gd;)V

    goto/16 :goto_8

    .line 1902
    :pswitch_61
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1904
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1905
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1906
    invoke-static {v6, v0, p2}, Lcom/google/android/gms/internal/measurement/gf;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;)V

    goto/16 :goto_8

    .line 1910
    :pswitch_62
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1912
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1913
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1914
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1918
    :pswitch_63
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1920
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1921
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1922
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1926
    :pswitch_64
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1928
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1929
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1930
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1934
    :pswitch_65
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1936
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1937
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1938
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1942
    :pswitch_66
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1944
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1945
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1946
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1950
    :pswitch_67
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1952
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1953
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1954
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1958
    :pswitch_68
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1960
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1961
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 1962
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1966
    :pswitch_69
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1968
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1969
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 1970
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1974
    :pswitch_6a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1976
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1977
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 1978
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1982
    :pswitch_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1984
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1985
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 1986
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->d(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1990
    :pswitch_6c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 1992
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 1993
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 1994
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 1998
    :pswitch_6d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 2000
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2001
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 2002
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 2006
    :pswitch_6e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 2008
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2009
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 2010
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 2014
    :pswitch_6f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 2016
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2017
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 2018
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 2022
    :pswitch_70
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 2024
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2025
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 2026
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 2030
    :pswitch_71
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 2032
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2033
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 2034
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 2038
    :pswitch_72
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 2040
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2041
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 2042
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 2046
    :pswitch_73
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 2048
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2049
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 2050
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 2054
    :pswitch_74
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 2056
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2057
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 2058
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 2062
    :pswitch_75
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 2064
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2065
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    .line 2066
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Z)V

    goto/16 :goto_8

    .line 2070
    :pswitch_76
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v0, v3

    .line 2072
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2073
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2074
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v5

    .line 2075
    invoke-static {v6, v0, p2, v5}, Lcom/google/android/gms/internal/measurement/gf;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/hr;Lcom/google/android/gms/internal/measurement/gd;)V

    goto/16 :goto_8

    .line 2078
    :pswitch_77
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2079
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v6, v0, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Lcom/google/android/gms/internal/measurement/hr;ILjava/lang/Object;I)V

    goto/16 :goto_8

    .line 2081
    :pswitch_78
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2083
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2084
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/measurement/hr;->a(ID)V

    goto/16 :goto_8

    .line 2085
    :pswitch_79
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2087
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2088
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(IF)V

    goto/16 :goto_8

    .line 2089
    :pswitch_7a
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2091
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2092
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/measurement/hr;->a(IJ)V

    goto/16 :goto_8

    .line 2093
    :pswitch_7b
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2095
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2096
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/measurement/hr;->c(IJ)V

    goto/16 :goto_8

    .line 2097
    :pswitch_7c
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2099
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2100
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->c(II)V

    goto/16 :goto_8

    .line 2101
    :pswitch_7d
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2103
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2104
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/measurement/hr;->d(IJ)V

    goto/16 :goto_8

    .line 2105
    :pswitch_7e
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2107
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2108
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->d(II)V

    goto/16 :goto_8

    .line 2109
    :pswitch_7f
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2111
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2112
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->f(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(IZ)V

    goto/16 :goto_8

    .line 2113
    :pswitch_80
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2115
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2116
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0, p2}, Lcom/google/android/gms/internal/measurement/fr;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/hr;)V

    goto/16 :goto_8

    .line 2117
    :pswitch_81
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2119
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2120
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 2121
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v5

    invoke-interface {p2, v6, v0, v5}, Lcom/google/android/gms/internal/measurement/hr;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gd;)V

    goto/16 :goto_8

    .line 2123
    :pswitch_82
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2125
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2126
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ct;

    .line 2127
    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(ILcom/google/android/gms/internal/measurement/ct;)V

    goto/16 :goto_8

    .line 2128
    :pswitch_83
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2130
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2131
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->e(II)V

    goto/16 :goto_8

    .line 2132
    :pswitch_84
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2134
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2135
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(II)V

    goto/16 :goto_8

    .line 2136
    :pswitch_85
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2138
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2139
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(II)V

    goto/16 :goto_8

    .line 2140
    :pswitch_86
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2142
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2143
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/measurement/hr;->b(IJ)V

    goto/16 :goto_8

    .line 2144
    :pswitch_87
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2146
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2147
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->f(II)V

    goto/16 :goto_8

    .line 2148
    :pswitch_88
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2150
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2151
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v6, v8, v9}, Lcom/google/android/gms/internal/measurement/hr;->e(IJ)V

    goto/16 :goto_8

    .line 2152
    :pswitch_89
    invoke-direct {p0, p1, v6, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2154
    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v8, v0

    .line 2155
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 2156
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v5

    .line 2157
    invoke-interface {p2, v6, v0, v5}, Lcom/google/android/gms/internal/measurement/hr;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gd;)V

    goto/16 :goto_8

    .line 2161
    :cond_b
    const/4 v0, 0x0

    .line 2159
    :cond_c
    :goto_9
    if-eqz v0, :cond_d

    .line 2160
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    invoke-virtual {v2, p2, v0}, Lcom/google/android/gms/internal/measurement/dr;->a(Lcom/google/android/gms/internal/measurement/hr;Ljava/util/Map$Entry;)V

    .line 2161
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_9

    .line 2162
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->q:Lcom/google/android/gms/internal/measurement/gv;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/fr;->a(Lcom/google/android/gms/internal/measurement/gv;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/hr;)V

    .line 2165
    :cond_e
    :goto_a
    return-void

    .line 2164
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/hr;)V

    goto :goto_a

    .line 1241
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

    .line 1713
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

.method public final a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/cs;)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/measurement/cs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3730
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/measurement/fr;->j:Z

    if-eqz v4, :cond_f

    .line 3732
    sget-object v4, Lcom/google/android/gms/internal/measurement/fr;->b:Lsun/misc/Unsafe;

    .line 3733
    const v10, 0xfffff

    .line 3734
    const/16 v34, 0x0

    .line 3735
    const/4 v14, -0x1

    .line 3736
    const/16 v16, 0x0

    move v6, v14

    move/from16 v35, v10

    move/from16 v7, p3

    .line 3737
    :goto_0
    move/from16 v0, p4

    if-ge v7, v0, :cond_d

    .line 3738
    add-int/lit8 v11, v7, 0x1

    aget-byte v13, p2, v7

    .line 3739
    if-gez v13, :cond_0

    .line 3740
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v13, v0, v11, v1}, Lcom/google/android/gms/internal/measurement/cp;->a(I[BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v11

    .line 3741
    move-object/from16 v0, p5

    iget v13, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 3742
    :cond_0
    ushr-int/lit8 v14, v13, 0x3

    .line 3743
    and-int/lit8 v15, v13, 0x7

    .line 3744
    if-le v14, v6, :cond_1

    .line 3745
    div-int/lit8 v5, v16, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Lcom/google/android/gms/internal/measurement/fr;->a(II)I

    move-result v16

    .line 3748
    :goto_1
    const/4 v5, -0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_2

    .line 3749
    const/16 v16, 0x0

    move/from16 v12, v35

    move v7, v11

    .line 3875
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/gx;

    move-result-object v9

    move v5, v13

    move-object/from16 v6, p2

    move/from16 v8, p4

    move-object/from16 v10, p5

    .line 3876
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/measurement/cp;->a(I[BIILcom/google/android/gms/internal/measurement/gx;Lcom/google/android/gms/internal/measurement/cs;)I

    move-result v7

    move v6, v14

    move/from16 v35, v12

    .line 3877
    goto :goto_0

    .line 3746
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/measurement/fr;->g(I)I

    move-result v16

    goto :goto_1

    .line 3750
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    add-int/lit8 v6, v16, 0x1

    aget v28, v5, v6

    .line 3752
    const/high16 v5, 0xff00000

    and-int v5, v5, v28

    ushr-int/lit8 v19, v5, 0x14

    .line 3755
    const v5, 0xfffff

    and-int v5, v5, v28

    int-to-long v6, v5

    .line 3757
    const/16 v5, 0x11

    move/from16 v0, v19

    if-gt v0, v5, :cond_8

    .line 3758
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    add-int/lit8 v8, v16, 0x2

    aget v5, v5, v8

    .line 3759
    const/4 v8, 0x1

    ushr-int/lit8 v9, v5, 0x14

    shl-int v12, v8, v9

    .line 3760
    const v8, 0xfffff

    and-int v10, v5, v8

    .line 3761
    move/from16 v0, v35

    if-eq v10, v0, :cond_15

    .line 3762
    const v5, 0xfffff

    move/from16 v0, v35

    if-eq v0, v5, :cond_3

    .line 3763
    move/from16 v0, v35

    int-to-long v8, v0

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v4, v0, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3764
    :cond_3
    const v5, 0xfffff

    if-eq v10, v5, :cond_14

    .line 3765
    int-to-long v8, v10

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    :goto_3
    move/from16 v34, v5

    .line 3767
    :goto_4
    packed-switch v19, :pswitch_data_0

    :cond_4
    move v12, v10

    move v7, v11

    .line 3846
    goto :goto_2

    .line 3768
    :pswitch_0
    const/4 v5, 0x1

    if-ne v15, v5, :cond_4

    .line 3769
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/measurement/cp;->c([BI)D

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JD)V

    .line 3770
    add-int/lit8 v7, v11, 0x8

    .line 3771
    or-int v34, v34, v12

    move v6, v14

    move/from16 v35, v10

    .line 3772
    goto/16 :goto_0

    .line 3773
    :pswitch_1
    const/4 v5, 0x5

    if-ne v15, v5, :cond_4

    .line 3774
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/measurement/cp;->d([BI)F

    move-result v5

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7, v5}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JF)V

    .line 3775
    add-int/lit8 v7, v11, 0x4

    .line 3776
    or-int v34, v34, v12

    move v6, v14

    move/from16 v35, v10

    .line 3777
    goto/16 :goto_0

    .line 3778
    :pswitch_2
    if-nez v15, :cond_4

    .line 3779
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3780
    move-object/from16 v0, p5

    iget-wide v8, v0, Lcom/google/android/gms/internal/measurement/cs;->b:J

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 3781
    or-int v34, v34, v12

    move v6, v14

    move/from16 v35, v10

    move/from16 v7, p3

    .line 3782
    goto/16 :goto_0

    .line 3783
    :pswitch_3
    if-nez v15, :cond_4

    .line 3784
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3785
    move-object/from16 v0, p5

    iget v5, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3786
    or-int v34, v34, v12

    move v6, v14

    move/from16 v35, v10

    move/from16 v7, p3

    .line 3787
    goto/16 :goto_0

    .line 3788
    :pswitch_4
    const/4 v5, 0x1

    if-ne v15, v5, :cond_4

    .line 3789
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/measurement/cp;->b([BI)J

    move-result-wide v8

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 3790
    add-int/lit8 v7, v11, 0x8

    .line 3791
    or-int v34, v34, v12

    move v6, v14

    move/from16 v35, v10

    .line 3792
    goto/16 :goto_0

    .line 3793
    :pswitch_5
    const/4 v5, 0x5

    if-ne v15, v5, :cond_4

    .line 3794
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/measurement/cp;->a([BI)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3795
    add-int/lit8 v7, v11, 0x4

    .line 3796
    or-int v34, v34, v12

    move v6, v14

    move/from16 v35, v10

    .line 3797
    goto/16 :goto_0

    .line 3798
    :pswitch_6
    if-nez v15, :cond_4

    .line 3799
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3800
    move-object/from16 v0, p5

    iget-wide v8, v0, Lcom/google/android/gms/internal/measurement/cs;->b:J

    const-wide/16 v18, 0x0

    cmp-long v5, v8, v18

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_5
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7, v5}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JZ)V

    .line 3801
    or-int v34, v34, v12

    move v6, v14

    move/from16 v35, v10

    move/from16 v7, p3

    .line 3802
    goto/16 :goto_0

    .line 3800
    :cond_5
    const/4 v5, 0x0

    goto :goto_5

    .line 3803
    :pswitch_7
    const/4 v5, 0x2

    if-ne v15, v5, :cond_4

    .line 3804
    const/high16 v5, 0x20000000

    and-int v5, v5, v28

    if-nez v5, :cond_6

    .line 3805
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/google/android/gms/internal/measurement/cp;->c([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v5

    .line 3807
    :goto_6
    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3808
    or-int v34, v34, v12

    move v6, v14

    move/from16 v35, v10

    move v7, v5

    .line 3809
    goto/16 :goto_0

    .line 3806
    :cond_6
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/google/android/gms/internal/measurement/cp;->d([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v5

    goto :goto_6

    .line 3810
    :pswitch_8
    const/4 v5, 0x2

    if-ne v15, v5, :cond_4

    .line 3812
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v5

    .line 3813
    move-object/from16 v0, p2

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v5, v0, v11, v1, v2}, Lcom/google/android/gms/internal/measurement/cp;->a(Lcom/google/android/gms/internal/measurement/gd;[BIILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3814
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 3815
    if-nez v5, :cond_7

    .line 3816
    move-object/from16 v0, p5

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3820
    :goto_7
    or-int v34, v34, v12

    move v6, v14

    move/from16 v35, v10

    move/from16 v7, p3

    .line 3821
    goto/16 :goto_0

    .line 3817
    :cond_7
    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    .line 3818
    invoke-static {v5, v8}, Lcom/google/android/gms/internal/measurement/ef;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3819
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    .line 3822
    :pswitch_9
    const/4 v5, 0x2

    if-ne v15, v5, :cond_4

    .line 3823
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/google/android/gms/internal/measurement/cp;->e([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3824
    move-object/from16 v0, p5

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3825
    or-int v34, v34, v12

    move v6, v14

    move/from16 v35, v10

    move/from16 v7, p3

    .line 3826
    goto/16 :goto_0

    .line 3827
    :pswitch_a
    if-nez v15, :cond_4

    .line 3828
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3829
    move-object/from16 v0, p5

    iget v5, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3830
    or-int v34, v34, v12

    move v6, v14

    move/from16 v35, v10

    move/from16 v7, p3

    .line 3831
    goto/16 :goto_0

    .line 3832
    :pswitch_b
    if-nez v15, :cond_4

    .line 3833
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3834
    move-object/from16 v0, p5

    iget v5, v0, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 3835
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/dg;->e(I)I

    move-result v5

    .line 3836
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3837
    or-int v34, v34, v12

    move v6, v14

    move/from16 v35, v10

    move/from16 v7, p3

    .line 3838
    goto/16 :goto_0

    .line 3839
    :pswitch_c
    if-nez v15, :cond_4

    .line 3840
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result p3

    .line 3841
    move-object/from16 v0, p5

    iget-wide v8, v0, Lcom/google/android/gms/internal/measurement/cs;->b:J

    .line 3842
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/dg;->a(J)J

    move-result-wide v8

    move-object/from16 v5, p1

    .line 3843
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 3844
    or-int v34, v34, v12

    move v6, v14

    move/from16 v35, v10

    move/from16 v7, p3

    .line 3845
    goto/16 :goto_0

    .line 3846
    :cond_8
    const/16 v5, 0x1b

    move/from16 v0, v19

    if-ne v0, v5, :cond_a

    .line 3847
    const/4 v5, 0x2

    if-ne v15, v5, :cond_12

    .line 3848
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/el;

    .line 3849
    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/el;->a()Z

    move-result v8

    if-nez v8, :cond_13

    .line 3850
    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/el;->size()I

    move-result v8

    .line 3852
    if-nez v8, :cond_9

    const/16 v8, 0xa

    .line 3853
    :goto_8
    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/measurement/el;->a(I)Lcom/google/android/gms/internal/measurement/el;

    move-result-object v10

    .line 3854
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6, v7, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3856
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v5

    move v6, v13

    move-object/from16 v7, p2

    move v8, v11

    move/from16 v9, p4

    move-object/from16 v11, p5

    .line 3857
    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/measurement/cp;->a(Lcom/google/android/gms/internal/measurement/gd;I[BIILcom/google/android/gms/internal/measurement/el;Lcom/google/android/gms/internal/measurement/cs;)I

    move-result v7

    move v6, v14

    .line 3858
    goto/16 :goto_0

    .line 3852
    :cond_9
    shl-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 3859
    :cond_a
    const/16 v5, 0x31

    move/from16 v0, v19

    if-gt v0, v5, :cond_b

    .line 3861
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v12, p4

    move-wide/from16 v20, v6

    move-object/from16 v22, p5

    .line 3862
    invoke-direct/range {v8 .. v22}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/cs;)I

    move-result v7

    .line 3863
    if-ne v7, v11, :cond_11

    move/from16 v12, v35

    .line 3864
    goto/16 :goto_2

    :cond_b
    const/16 v5, 0x32

    move/from16 v0, v19

    if-ne v0, v5, :cond_c

    .line 3865
    const/4 v5, 0x2

    if-ne v15, v5, :cond_12

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move/from16 v21, v11

    move/from16 v22, p4

    move/from16 v23, v16

    move-wide/from16 v24, v6

    move-object/from16 v26, p5

    .line 3867
    invoke-direct/range {v18 .. v26}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/measurement/cs;)I

    move-result v7

    .line 3868
    if-ne v7, v11, :cond_11

    move/from16 v12, v35

    .line 3869
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

    .line 3872
    invoke-direct/range {v20 .. v33}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/cs;)I

    move-result v7

    .line 3873
    if-ne v7, v11, :cond_11

    move/from16 v12, v35

    goto/16 :goto_2

    .line 3878
    :cond_d
    const v5, 0xfffff

    move/from16 v0, v35

    if-eq v0, v5, :cond_e

    .line 3879
    move/from16 v0, v35

    int-to-long v8, v0

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v4, v0, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3880
    :cond_e
    move/from16 v0, p4

    if-eq v7, v0, :cond_10

    .line 3881
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->g()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v4

    throw v4

    .line 3883
    :cond_f
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/cs;)I

    .line 3884
    :cond_10
    return-void

    :cond_11
    move v6, v14

    goto/16 :goto_0

    :cond_12
    move/from16 v12, v35

    move v7, v11

    goto/16 :goto_2

    :cond_13
    move-object v10, v5

    goto/16 :goto_9

    :cond_14
    move/from16 v5, v34

    goto/16 :goto_3

    :cond_15
    move/from16 v10, v35

    goto/16 :goto_4

    .line 3767
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

    .line 249
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    array-length v4, v2

    move v3, v0

    .line 250
    :goto_0
    if-ge v3, v4, :cond_16

    .line 252
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/fr;->d(I)I

    move-result v2

    .line 254
    and-int v5, v2, v10

    int-to-long v6, v5

    .line 257
    const/high16 v5, 0xff00000

    and-int/2addr v2, v5

    ushr-int/lit8 v2, v2, 0x14

    .line 258
    packed-switch v2, :pswitch_data_0

    :cond_0
    move v2, v1

    .line 334
    :goto_1
    if-nez v2, :cond_15

    .line 345
    :cond_1
    :goto_2
    return v0

    .line 259
    :pswitch_0
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->e(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    .line 261
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->e(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-eqz v2, :cond_0

    :cond_2
    move v2, v0

    .line 262
    goto :goto_1

    .line 263
    :pswitch_1
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 264
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->d(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 265
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->d(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v2, v5, :cond_0

    :cond_3
    move v2, v0

    .line 266
    goto :goto_1

    .line 267
    :pswitch_2
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 268
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-eqz v2, :cond_0

    :cond_4
    move v2, v0

    .line 269
    goto :goto_1

    .line 270
    :pswitch_3
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 271
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-eqz v2, :cond_0

    :cond_5
    move v2, v0

    .line 272
    goto :goto_1

    .line 273
    :pswitch_4
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 274
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_0

    :cond_6
    move v2, v0

    .line 275
    goto :goto_1

    .line 276
    :pswitch_5
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 277
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-eqz v2, :cond_0

    :cond_7
    move v2, v0

    .line 278
    goto/16 :goto_1

    .line 279
    :pswitch_6
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 280
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_0

    :cond_8
    move v2, v0

    .line 281
    goto/16 :goto_1

    .line 282
    :pswitch_7
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 283
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->c(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->c(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v2, v5, :cond_0

    :cond_9
    move v2, v0

    .line 284
    goto/16 :goto_1

    .line 285
    :pswitch_8
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 286
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 287
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/measurement/gf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_a
    move v2, v0

    .line 288
    goto/16 :goto_1

    .line 289
    :pswitch_9
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 290
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 291
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/measurement/gf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_b
    move v2, v0

    .line 292
    goto/16 :goto_1

    .line 293
    :pswitch_a
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 294
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 295
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/measurement/gf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_c
    move v2, v0

    .line 296
    goto/16 :goto_1

    .line 297
    :pswitch_b
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 298
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_0

    :cond_d
    move v2, v0

    .line 299
    goto/16 :goto_1

    .line 300
    :pswitch_c
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 301
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_0

    :cond_e
    move v2, v0

    .line 302
    goto/16 :goto_1

    .line 303
    :pswitch_d
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 304
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_0

    :cond_f
    move v2, v0

    .line 305
    goto/16 :goto_1

    .line 306
    :pswitch_e
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 307
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-eqz v2, :cond_0

    :cond_10
    move v2, v0

    .line 308
    goto/16 :goto_1

    .line 309
    :pswitch_f
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 310
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v5

    if-eq v2, v5, :cond_0

    :cond_11
    move v2, v0

    .line 311
    goto/16 :goto_1

    .line 312
    :pswitch_10
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 313
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v2, v8, v6

    if-eqz v2, :cond_0

    :cond_12
    move v2, v0

    .line 314
    goto/16 :goto_1

    .line 315
    :pswitch_11
    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 316
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 317
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/measurement/gf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_13
    move v2, v0

    .line 318
    goto/16 :goto_1

    .line 320
    :pswitch_12
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 321
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/measurement/gf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_1

    .line 323
    :pswitch_13
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 324
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/measurement/gf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_1

    .line 326
    :pswitch_14
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/fr;->e(I)I

    move-result v2

    .line 327
    and-int v5, v2, v10

    int-to-long v8, v5

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v5

    and-int/2addr v2, v10

    int-to-long v8, v2

    .line 328
    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v2

    if-ne v5, v2, :cond_14

    .line 330
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 331
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/measurement/gf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_14
    move v2, v0

    .line 332
    goto/16 :goto_1

    .line 336
    :cond_15
    add-int/lit8 v2, v3, 0x3

    move v3, v2

    goto/16 :goto_0

    .line 337
    :cond_16
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->q:Lcom/google/android/gms/internal/measurement/gv;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/measurement/gv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 338
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/fr;->q:Lcom/google/android/gms/internal/measurement/gv;

    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/measurement/gv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 339
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fr;->h:Z

    if-eqz v0, :cond_17

    .line 342
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/dr;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/dw;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/measurement/dr;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/dw;

    move-result-object v1

    .line 344
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/dw;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_2

    :cond_17
    move v0, v1

    .line 345
    goto/16 :goto_2

    .line 258
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
    .line 573
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fr;->j:Z

    if-eqz v0, :cond_13

    .line 574
    sget-object v4, Lcom/google/android/gms/internal/measurement/fr;->b:Lsun/misc/Unsafe;

    .line 575
    const/4 v2, 0x0

    .line 576
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    array-length v0, v0

    if-ge v1, v0, :cond_12

    .line 577
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fr;->d(I)I

    move-result v0

    .line 579
    const/high16 v3, 0xff00000

    and-int/2addr v3, v0

    ushr-int/lit8 v5, v3, 0x14

    .line 582
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v6, v3, v1

    .line 585
    const v3, 0xfffff

    and-int/2addr v0, v3

    int-to-long v8, v0

    .line 587
    sget-object v0, Lcom/google/android/gms/internal/measurement/dx;->a:Lcom/google/android/gms/internal/measurement/dx;

    .line 588
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->a()I

    move-result v0

    if-lt v5, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/measurement/dx;->b:Lcom/google/android/gms/internal/measurement/dx;

    .line 589
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->a()I

    move-result v0

    if-gt v5, v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    add-int/lit8 v3, v1, 0x2

    aget v0, v0, v3

    const v3, 0xfffff

    and-int/2addr v0, v3

    move v3, v0

    .line 592
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 872
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x3

    move v1, v0

    goto :goto_0

    .line 591
    :cond_1
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    .line 593
    :pswitch_0
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzes;->b(ID)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    .line 595
    :pswitch_1
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->b(IF)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    .line 597
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzes;->d(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    .line 599
    :pswitch_3
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzes;->e(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    .line 602
    :pswitch_4
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->f(II)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    .line 604
    :pswitch_5
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzes;->g(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    .line 606
    :pswitch_6
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->i(II)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    .line 608
    :pswitch_7
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->b(IZ)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    .line 610
    :pswitch_8
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 612
    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/ct;

    if-eqz v3, :cond_2

    .line 613
    check-cast v0, Lcom/google/android/gms/internal/measurement/ct;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->c(ILcom/google/android/gms/internal/measurement/ct;)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 614
    :cond_2
    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 615
    goto/16 :goto_2

    .line 616
    :pswitch_9
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 618
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v3

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gd;)I

    move-result v0

    add-int/2addr v2, v0

    .line 619
    goto/16 :goto_2

    .line 620
    :pswitch_a
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ct;

    .line 622
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->c(ILcom/google/android/gms/internal/measurement/ct;)I

    move-result v0

    add-int/2addr v2, v0

    .line 623
    goto/16 :goto_2

    .line 624
    :pswitch_b
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 626
    :pswitch_c
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->k(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 628
    :pswitch_d
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->j(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 630
    :pswitch_e
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzes;->h(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 632
    :pswitch_f
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->h(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 634
    :pswitch_10
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzes;->f(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 637
    :pswitch_11
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/fn;

    .line 640
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v3

    .line 641
    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/zzes;->c(ILcom/google/android/gms/internal/measurement/fn;Lcom/google/android/gms/internal/measurement/gd;)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 642
    :pswitch_12
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/gf;->i(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 643
    goto/16 :goto_2

    .line 644
    :pswitch_13
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/gf;->h(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 645
    goto/16 :goto_2

    .line 647
    :pswitch_14
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 648
    goto/16 :goto_2

    .line 650
    :pswitch_15
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/gf;->b(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 651
    goto/16 :goto_2

    .line 653
    :pswitch_16
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    .line 654
    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/gf;->e(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 655
    goto/16 :goto_2

    .line 656
    :pswitch_17
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/gf;->i(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 657
    goto/16 :goto_2

    .line 658
    :pswitch_18
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/gf;->h(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 659
    goto/16 :goto_2

    .line 660
    :pswitch_19
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/gf;->j(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 661
    goto/16 :goto_2

    .line 662
    :pswitch_1a
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;)I

    move-result v0

    add-int/2addr v2, v0

    .line 663
    goto/16 :goto_2

    .line 665
    :pswitch_1b
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v3

    .line 666
    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/gd;)I

    move-result v0

    add-int/2addr v2, v0

    .line 667
    goto/16 :goto_2

    .line 669
    :pswitch_1c
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 670
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/gf;->b(ILjava/util/List;)I

    move-result v0

    add-int/2addr v2, v0

    .line 671
    goto/16 :goto_2

    .line 673
    :pswitch_1d
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    .line 674
    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/gf;->f(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 675
    goto/16 :goto_2

    .line 677
    :pswitch_1e
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    .line 678
    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/gf;->d(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 679
    goto/16 :goto_2

    .line 680
    :pswitch_1f
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/gf;->h(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 681
    goto/16 :goto_2

    .line 682
    :pswitch_20
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/gf;->i(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 683
    goto/16 :goto_2

    .line 685
    :pswitch_21
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    .line 686
    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/gf;->g(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 687
    goto/16 :goto_2

    .line 689
    :pswitch_22
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/gf;->c(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v2, v0

    .line 690
    goto/16 :goto_2

    .line 692
    :pswitch_23
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 693
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->i(Ljava/util/List;)I

    move-result v0

    .line 694
    if-lez v0, :cond_0

    .line 695
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_3

    .line 696
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 698
    :cond_3
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v3

    .line 699
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 701
    :pswitch_24
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 702
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->h(Ljava/util/List;)I

    move-result v0

    .line 703
    if-lez v0, :cond_0

    .line 704
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_4

    .line 705
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 707
    :cond_4
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v3

    .line 708
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 710
    :pswitch_25
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 711
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->a(Ljava/util/List;)I

    move-result v0

    .line 712
    if-lez v0, :cond_0

    .line 713
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_5

    .line 714
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 716
    :cond_5
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v3

    .line 717
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 719
    :pswitch_26
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 720
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->b(Ljava/util/List;)I

    move-result v0

    .line 721
    if-lez v0, :cond_0

    .line 722
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_6

    .line 723
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 725
    :cond_6
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v3

    .line 726
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 728
    :pswitch_27
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 729
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->e(Ljava/util/List;)I

    move-result v0

    .line 730
    if-lez v0, :cond_0

    .line 731
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_7

    .line 732
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 734
    :cond_7
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v3

    .line 735
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 737
    :pswitch_28
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 738
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->i(Ljava/util/List;)I

    move-result v0

    .line 739
    if-lez v0, :cond_0

    .line 740
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_8

    .line 741
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 743
    :cond_8
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v3

    .line 744
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 746
    :pswitch_29
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 747
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->h(Ljava/util/List;)I

    move-result v0

    .line 748
    if-lez v0, :cond_0

    .line 749
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_9

    .line 750
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 752
    :cond_9
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v3

    .line 753
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 755
    :pswitch_2a
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 756
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->j(Ljava/util/List;)I

    move-result v0

    .line 757
    if-lez v0, :cond_0

    .line 758
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_a

    .line 759
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 761
    :cond_a
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v3

    .line 762
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 764
    :pswitch_2b
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 765
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->f(Ljava/util/List;)I

    move-result v0

    .line 766
    if-lez v0, :cond_0

    .line 767
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_b

    .line 768
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 770
    :cond_b
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v3

    .line 771
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 773
    :pswitch_2c
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 774
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->d(Ljava/util/List;)I

    move-result v0

    .line 775
    if-lez v0, :cond_0

    .line 776
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_c

    .line 777
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 779
    :cond_c
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v3

    .line 780
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 782
    :pswitch_2d
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 783
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->h(Ljava/util/List;)I

    move-result v0

    .line 784
    if-lez v0, :cond_0

    .line 785
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_d

    .line 786
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 788
    :cond_d
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v3

    .line 789
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 791
    :pswitch_2e
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 792
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->i(Ljava/util/List;)I

    move-result v0

    .line 793
    if-lez v0, :cond_0

    .line 794
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_e

    .line 795
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 797
    :cond_e
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v3

    .line 798
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 800
    :pswitch_2f
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 801
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->g(Ljava/util/List;)I

    move-result v0

    .line 802
    if-lez v0, :cond_0

    .line 803
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_f

    .line 804
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 806
    :cond_f
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v3

    .line 807
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 809
    :pswitch_30
    invoke-virtual {v4, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 810
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->c(Ljava/util/List;)I

    move-result v0

    .line 811
    if-lez v0, :cond_0

    .line 812
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_10

    .line 813
    int-to-long v8, v3

    invoke-virtual {v4, p1, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 815
    :cond_10
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v3

    .line 816
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 818
    :pswitch_31
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v3

    .line 819
    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/gf;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/gd;)I

    move-result v0

    add-int/2addr v2, v0

    .line 820
    goto/16 :goto_2

    .line 821
    :pswitch_32
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    .line 822
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fr;->b(I)Ljava/lang/Object;

    move-result-object v5

    .line 823
    invoke-interface {v0, v6, v3, v5}, Lcom/google/android/gms/internal/measurement/fg;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 824
    goto/16 :goto_2

    .line 825
    :pswitch_33
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzes;->b(ID)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 827
    :pswitch_34
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->b(IF)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 829
    :pswitch_35
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzes;->d(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 831
    :pswitch_36
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzes;->e(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 833
    :pswitch_37
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->f(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 835
    :pswitch_38
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzes;->g(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 837
    :pswitch_39
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->i(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 839
    :pswitch_3a
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->b(IZ)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 841
    :pswitch_3b
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 843
    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/ct;

    if-eqz v3, :cond_11

    .line 844
    check-cast v0, Lcom/google/android/gms/internal/measurement/ct;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->c(ILcom/google/android/gms/internal/measurement/ct;)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 845
    :cond_11
    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 846
    goto/16 :goto_2

    .line 847
    :pswitch_3c
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 849
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v3

    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gd;)I

    move-result v0

    add-int/2addr v2, v0

    .line 850
    goto/16 :goto_2

    .line 851
    :pswitch_3d
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ct;

    .line 854
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->c(ILcom/google/android/gms/internal/measurement/ct;)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 855
    :pswitch_3e
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 857
    :pswitch_3f
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->k(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 859
    :pswitch_40
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->j(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 861
    :pswitch_41
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzes;->h(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 863
    :pswitch_42
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/zzes;->h(II)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 865
    :pswitch_43
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzes;->f(IJ)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 867
    :pswitch_44
    invoke-direct {p0, p1, v6, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/fn;

    .line 870
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v3

    .line 871
    invoke-static {v6, v0, v3}, Lcom/google/android/gms/internal/measurement/zzes;->c(ILcom/google/android/gms/internal/measurement/fn;Lcom/google/android/gms/internal/measurement/gd;)I

    move-result v0

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 873
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->q:Lcom/google/android/gms/internal/measurement/gv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/fr;->a(Lcom/google/android/gms/internal/measurement/gv;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1215
    :goto_3
    return v0

    .line 875
    :cond_13
    const/4 v4, 0x0

    .line 876
    sget-object v7, Lcom/google/android/gms/internal/measurement/fr;->b:Lsun/misc/Unsafe;

    .line 877
    const v3, 0xfffff

    .line 878
    const/4 v2, 0x0

    .line 879
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    array-length v0, v0

    if-ge v1, v0, :cond_27

    .line 880
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fr;->d(I)I

    move-result v8

    .line 882
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v9, v0, v1

    .line 885
    const/high16 v0, 0xff00000

    and-int/2addr v0, v8

    ushr-int/lit8 v10, v0, 0x14

    .line 887
    const/4 v5, 0x0

    .line 888
    const/4 v0, 0x0

    .line 889
    const/16 v6, 0x11

    if-gt v10, v6, :cond_16

    .line 890
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    add-int/lit8 v5, v1, 0x2

    aget v6, v0, v5

    .line 891
    const v0, 0xfffff

    and-int/2addr v0, v6

    .line 892
    const/4 v5, 0x1

    ushr-int/lit8 v11, v6, 0x14

    shl-int/2addr v5, v11

    .line 893
    if-eq v0, v3, :cond_14

    .line 895
    int-to-long v2, v0

    invoke-virtual {v7, p1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move v3, v0

    :cond_14
    move v0, v5

    .line 901
    :goto_5
    const v5, 0xfffff

    and-int/2addr v5, v8

    int-to-long v12, v5

    .line 903
    packed-switch v10, :pswitch_data_1

    .line 1200
    :cond_15
    :goto_6
    add-int/lit8 v0, v1, 0x3

    move v1, v0

    goto :goto_4

    .line 896
    :cond_16
    iget-boolean v6, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v6, :cond_2b

    sget-object v6, Lcom/google/android/gms/internal/measurement/dx;->a:Lcom/google/android/gms/internal/measurement/dx;

    .line 897
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/dx;->a()I

    move-result v6

    if-lt v10, v6, :cond_2b

    sget-object v6, Lcom/google/android/gms/internal/measurement/dx;->b:Lcom/google/android/gms/internal/measurement/dx;

    .line 898
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/dx;->a()I

    move-result v6

    if-gt v10, v6, :cond_2b

    .line 899
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    add-int/lit8 v6, v1, 0x2

    aget v5, v5, v6

    const v6, 0xfffff

    and-int/2addr v5, v6

    move v6, v5

    goto :goto_5

    .line 904
    :pswitch_45
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 905
    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzes;->b(ID)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_6

    .line 906
    :pswitch_46
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 907
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->b(IF)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_6

    .line 908
    :pswitch_47
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 909
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzes;->d(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_6

    .line 910
    :pswitch_48
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 911
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzes;->e(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_6

    .line 912
    :pswitch_49
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 913
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->f(II)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_6

    .line 914
    :pswitch_4a
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 915
    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzes;->g(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_6

    .line 916
    :pswitch_4b
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 917
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->i(II)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_6

    .line 918
    :pswitch_4c
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 919
    const/4 v0, 0x1

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->b(IZ)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_6

    .line 920
    :pswitch_4d
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 921
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 922
    instance-of v5, v0, Lcom/google/android/gms/internal/measurement/ct;

    if-eqz v5, :cond_17

    .line 923
    check-cast v0, Lcom/google/android/gms/internal/measurement/ct;

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->c(ILcom/google/android/gms/internal/measurement/ct;)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 924
    :cond_17
    check-cast v0, Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v4, v0

    .line 925
    goto/16 :goto_6

    .line 926
    :pswitch_4e
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 927
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 928
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v5

    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gd;)I

    move-result v0

    add-int/2addr v4, v0

    .line 929
    goto/16 :goto_6

    .line 930
    :pswitch_4f
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 931
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ct;

    .line 932
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->c(ILcom/google/android/gms/internal/measurement/ct;)I

    move-result v0

    add-int/2addr v4, v0

    .line 933
    goto/16 :goto_6

    .line 934
    :pswitch_50
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 935
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 936
    :pswitch_51
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 937
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->k(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 938
    :pswitch_52
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 939
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->j(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 940
    :pswitch_53
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 941
    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzes;->h(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 942
    :pswitch_54
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 943
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->h(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 944
    :pswitch_55
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 945
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzes;->f(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 946
    :pswitch_56
    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 948
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/fn;

    .line 949
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v5

    .line 950
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/zzes;->c(ILcom/google/android/gms/internal/measurement/fn;Lcom/google/android/gms/internal/measurement/gd;)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 952
    :pswitch_57
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 953
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/gf;->i(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 954
    goto/16 :goto_6

    .line 956
    :pswitch_58
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 957
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/gf;->h(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 958
    goto/16 :goto_6

    .line 960
    :pswitch_59
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 961
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 962
    goto/16 :goto_6

    .line 964
    :pswitch_5a
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 965
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/gf;->b(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 966
    goto/16 :goto_6

    .line 968
    :pswitch_5b
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 969
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/gf;->e(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 970
    goto/16 :goto_6

    .line 972
    :pswitch_5c
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 973
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/gf;->i(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 974
    goto/16 :goto_6

    .line 976
    :pswitch_5d
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 977
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/gf;->h(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 978
    goto/16 :goto_6

    .line 980
    :pswitch_5e
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 981
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/gf;->j(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 982
    goto/16 :goto_6

    .line 984
    :pswitch_5f
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;)I

    move-result v0

    add-int/2addr v4, v0

    .line 985
    goto/16 :goto_6

    .line 987
    :pswitch_60
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v5

    .line 988
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/gd;)I

    move-result v0

    add-int/2addr v4, v0

    .line 989
    goto/16 :goto_6

    .line 991
    :pswitch_61
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 992
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/gf;->b(ILjava/util/List;)I

    move-result v0

    add-int/2addr v4, v0

    .line 993
    goto/16 :goto_6

    .line 995
    :pswitch_62
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 996
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/gf;->f(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 997
    goto/16 :goto_6

    .line 999
    :pswitch_63
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1000
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/gf;->d(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 1001
    goto/16 :goto_6

    .line 1003
    :pswitch_64
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1004
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/gf;->h(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 1005
    goto/16 :goto_6

    .line 1007
    :pswitch_65
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1008
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/gf;->i(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 1009
    goto/16 :goto_6

    .line 1011
    :pswitch_66
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1012
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/gf;->g(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 1013
    goto/16 :goto_6

    .line 1015
    :pswitch_67
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    .line 1016
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/gf;->c(ILjava/util/List;Z)I

    move-result v0

    add-int/2addr v4, v0

    .line 1017
    goto/16 :goto_6

    .line 1019
    :pswitch_68
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1020
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->i(Ljava/util/List;)I

    move-result v0

    .line 1021
    if-lez v0, :cond_15

    .line 1022
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_18

    .line 1023
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1025
    :cond_18
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v5

    .line 1026
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1028
    :pswitch_69
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1029
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->h(Ljava/util/List;)I

    move-result v0

    .line 1030
    if-lez v0, :cond_15

    .line 1031
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_19

    .line 1032
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1034
    :cond_19
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v5

    .line 1035
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1037
    :pswitch_6a
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1038
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->a(Ljava/util/List;)I

    move-result v0

    .line 1039
    if-lez v0, :cond_15

    .line 1040
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_1a

    .line 1041
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1043
    :cond_1a
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v5

    .line 1044
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1046
    :pswitch_6b
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1047
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->b(Ljava/util/List;)I

    move-result v0

    .line 1048
    if-lez v0, :cond_15

    .line 1049
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_1b

    .line 1050
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1052
    :cond_1b
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v5

    .line 1053
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1055
    :pswitch_6c
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1056
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->e(Ljava/util/List;)I

    move-result v0

    .line 1057
    if-lez v0, :cond_15

    .line 1058
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_1c

    .line 1059
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1061
    :cond_1c
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v5

    .line 1062
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1064
    :pswitch_6d
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1065
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->i(Ljava/util/List;)I

    move-result v0

    .line 1066
    if-lez v0, :cond_15

    .line 1067
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_1d

    .line 1068
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1070
    :cond_1d
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v5

    .line 1071
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1073
    :pswitch_6e
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1074
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->h(Ljava/util/List;)I

    move-result v0

    .line 1075
    if-lez v0, :cond_15

    .line 1076
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_1e

    .line 1077
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1079
    :cond_1e
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v5

    .line 1080
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1082
    :pswitch_6f
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1083
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->j(Ljava/util/List;)I

    move-result v0

    .line 1084
    if-lez v0, :cond_15

    .line 1085
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_1f

    .line 1086
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1088
    :cond_1f
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v5

    .line 1089
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1091
    :pswitch_70
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1092
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->f(Ljava/util/List;)I

    move-result v0

    .line 1093
    if-lez v0, :cond_15

    .line 1094
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_20

    .line 1095
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1097
    :cond_20
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v5

    .line 1098
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1100
    :pswitch_71
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1101
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->d(Ljava/util/List;)I

    move-result v0

    .line 1102
    if-lez v0, :cond_15

    .line 1103
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_21

    .line 1104
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1106
    :cond_21
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v5

    .line 1107
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1109
    :pswitch_72
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1110
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->h(Ljava/util/List;)I

    move-result v0

    .line 1111
    if-lez v0, :cond_15

    .line 1112
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_22

    .line 1113
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1115
    :cond_22
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v5

    .line 1116
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1118
    :pswitch_73
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1119
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->i(Ljava/util/List;)I

    move-result v0

    .line 1120
    if-lez v0, :cond_15

    .line 1121
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_23

    .line 1122
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1124
    :cond_23
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v5

    .line 1125
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1127
    :pswitch_74
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1128
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->g(Ljava/util/List;)I

    move-result v0

    .line 1129
    if-lez v0, :cond_15

    .line 1130
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_24

    .line 1131
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1133
    :cond_24
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v5

    .line 1134
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1136
    :pswitch_75
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1137
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gf;->c(Ljava/util/List;)I

    move-result v0

    .line 1138
    if-lez v0, :cond_15

    .line 1139
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/fr;->k:Z

    if-eqz v5, :cond_25

    .line 1140
    int-to-long v10, v6

    invoke-virtual {v7, p1, v10, v11, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1142
    :cond_25
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzes;->e(I)I

    move-result v5

    .line 1143
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1145
    :pswitch_76
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1146
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v5

    .line 1147
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/gf;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/gd;)I

    move-result v0

    add-int/2addr v4, v0

    .line 1148
    goto/16 :goto_6

    .line 1149
    :pswitch_77
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    .line 1150
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fr;->b(I)Ljava/lang/Object;

    move-result-object v6

    .line 1151
    invoke-interface {v0, v9, v5, v6}, Lcom/google/android/gms/internal/measurement/fg;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v4, v0

    .line 1152
    goto/16 :goto_6

    .line 1153
    :pswitch_78
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1154
    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzes;->b(ID)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1155
    :pswitch_79
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1156
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->b(IF)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1157
    :pswitch_7a
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1158
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzes;->d(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1159
    :pswitch_7b
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1160
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzes;->e(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1161
    :pswitch_7c
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1162
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->f(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1163
    :pswitch_7d
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1164
    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzes;->g(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1165
    :pswitch_7e
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1166
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->i(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1167
    :pswitch_7f
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1168
    const/4 v0, 0x1

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->b(IZ)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1169
    :pswitch_80
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1170
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1171
    instance-of v5, v0, Lcom/google/android/gms/internal/measurement/ct;

    if-eqz v5, :cond_26

    .line 1172
    check-cast v0, Lcom/google/android/gms/internal/measurement/ct;

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->c(ILcom/google/android/gms/internal/measurement/ct;)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1173
    :cond_26
    check-cast v0, Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v4, v0

    .line 1174
    goto/16 :goto_6

    .line 1175
    :pswitch_81
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1176
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1177
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v5

    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/gf;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/gd;)I

    move-result v0

    add-int/2addr v4, v0

    .line 1178
    goto/16 :goto_6

    .line 1179
    :pswitch_82
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1181
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ct;

    .line 1182
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->c(ILcom/google/android/gms/internal/measurement/ct;)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1183
    :pswitch_83
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1184
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->g(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1185
    :pswitch_84
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1186
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->k(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1187
    :pswitch_85
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1188
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->j(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1189
    :pswitch_86
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1190
    const-wide/16 v10, 0x0

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzes;->h(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1191
    :pswitch_87
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1192
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/fr;->d(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/measurement/zzes;->h(II)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1193
    :pswitch_88
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1194
    invoke-static {p1, v12, v13}, Lcom/google/android/gms/internal/measurement/fr;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzes;->f(IJ)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1195
    :pswitch_89
    invoke-direct {p0, p1, v9, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1197
    invoke-virtual {v7, p1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/fn;

    .line 1198
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v5

    .line 1199
    invoke-static {v9, v0, v5}, Lcom/google/android/gms/internal/measurement/zzes;->c(ILcom/google/android/gms/internal/measurement/fn;Lcom/google/android/gms/internal/measurement/gd;)I

    move-result v0

    add-int/2addr v4, v0

    goto/16 :goto_6

    .line 1201
    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->q:Lcom/google/android/gms/internal/measurement/gv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/fr;->a(Lcom/google/android/gms/internal/measurement/gv;Ljava/lang/Object;)I

    move-result v0

    add-int v3, v4, v0

    .line 1202
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fr;->h:Z

    if-eqz v0, :cond_2a

    .line 1203
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/dr;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/dw;

    move-result-object v4

    .line 1204
    const/4 v2, 0x0

    .line 1205
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/dw;->a:Lcom/google/android/gms/internal/measurement/gi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/gi;->c()I

    move-result v0

    if-ge v1, v0, :cond_28

    .line 1206
    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/dw;->a:Lcom/google/android/gms/internal/measurement/gi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/gi;->b(I)Ljava/util/Map$Entry;

    move-result-object v5

    .line 1207
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/dy;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/measurement/dw;->a(Lcom/google/android/gms/internal/measurement/dy;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 1208
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1209
    :cond_28
    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/dw;->a:Lcom/google/android/gms/internal/measurement/gi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/gi;->d()Ljava/lang/Iterable;

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

    .line 1210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/dy;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/dw;->a(Lcom/google/android/gms/internal/measurement/dy;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 1211
    goto :goto_8

    .line 1213
    :cond_29
    add-int v0, v3, v2

    goto/16 :goto_3

    :cond_2a
    move v0, v3

    goto/16 :goto_3

    :cond_2b
    move v6, v5

    goto/16 :goto_5

    .line 592
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

    .line 903
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
    .line 455
    if-nez p2, :cond_0

    .line 456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 457
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 459
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/fr;->d(I)I

    move-result v1

    .line 461
    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 464
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v4, v4, v0

    .line 467
    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    .line 468
    packed-switch v1, :pswitch_data_0

    .line 534
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 469
    :pswitch_0
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JD)V

    .line 471
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 472
    :pswitch_1
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->d(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JF)V

    .line 474
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 475
    :pswitch_2
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JJ)V

    .line 477
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 478
    :pswitch_3
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JJ)V

    .line 480
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 481
    :pswitch_4
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JI)V

    .line 483
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 484
    :pswitch_5
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JJ)V

    .line 486
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 487
    :pswitch_6
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JI)V

    .line 489
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 490
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->c(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JZ)V

    .line 492
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 493
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 495
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 496
    :pswitch_9
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 498
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 500
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 501
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JI)V

    .line 503
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 504
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JI)V

    .line 506
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 507
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JI)V

    .line 509
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 510
    :pswitch_e
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JJ)V

    .line 512
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 513
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JI)V

    .line 515
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 516
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JJ)V

    .line 518
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 519
    :pswitch_11
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 521
    :pswitch_12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ex;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 523
    :pswitch_13
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/measurement/gf;->a(Lcom/google/android/gms/internal/measurement/fg;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 525
    :pswitch_14
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 527
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 528
    :pswitch_15
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 530
    :pswitch_16
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 532
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 533
    :pswitch_17
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/fr;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 535
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->q:Lcom/google/android/gms/internal/measurement/gv;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/gf;->a(Lcom/google/android/gms/internal/measurement/gv;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 536
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fr;->h:Z

    if-eqz v0, :cond_3

    .line 537
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/gf;->a(Lcom/google/android/gms/internal/measurement/dr;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 538
    :cond_3
    return-void

    .line 468
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
    .line 3885
    iget v0, p0, Lcom/google/android/gms/internal/measurement/fr;->m:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/fr;->n:I

    if-ge v0, v1, :cond_1

    .line 3886
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fr;->l:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/fr;->d(I)I

    move-result v1

    .line 3887
    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v2, v1

    .line 3889
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 3890
    if-eqz v1, :cond_0

    .line 3891
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/measurement/fg;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3892
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3893
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->l:[I

    array-length v1, v0

    .line 3894
    iget v0, p0, Lcom/google/android/gms/internal/measurement/fr;->n:I

    :goto_1
    if-ge v0, v1, :cond_2

    .line 3895
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->p:Lcom/google/android/gms/internal/measurement/ex;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/fr;->l:[I

    aget v3, v3, v0

    int-to-long v4, v3

    invoke-virtual {v2, p1, v4, v5}, Lcom/google/android/gms/internal/measurement/ex;->b(Ljava/lang/Object;J)V

    .line 3896
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3897
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->q:Lcom/google/android/gms/internal/measurement/gv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/gv;->d(Ljava/lang/Object;)V

    .line 3898
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fr;->h:Z

    if-eqz v0, :cond_3

    .line 3899
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/dr;->c(Ljava/lang/Object;)V

    .line 3900
    :cond_3
    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const v8, 0xfffff

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 3936
    move v6, v7

    move v4, v7

    move v3, v8

    .line 3938
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/fr;->m:I

    if-ge v6, v0, :cond_a

    .line 3939
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->l:[I

    aget v2, v0, v6

    .line 3941
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    aget v10, v0, v2

    .line 3943
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->d(I)I

    move-result v11

    .line 3944
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->c:[I

    add-int/lit8 v1, v2, 0x2

    aget v1, v0, v1

    .line 3945
    and-int v0, v1, v8

    .line 3946
    ushr-int/lit8 v1, v1, 0x14

    shl-int v5, v9, v1

    .line 3947
    if-eq v0, v3, :cond_0

    .line 3949
    if-eq v0, v8, :cond_c

    .line 3950
    sget-object v1, Lcom/google/android/gms/internal/measurement/fr;->b:Lsun/misc/Unsafe;

    int-to-long v12, v0

    invoke-virtual {v1, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move v3, v0

    .line 3952
    :cond_0
    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v11

    if-eqz v0, :cond_2

    move v0, v9

    .line 3953
    :goto_2
    if-eqz v0, :cond_3

    move-object v0, p0

    move-object v1, p1

    .line 3954
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4001
    :cond_1
    :goto_3
    return v7

    :cond_2
    move v0, v7

    .line 3952
    goto :goto_2

    .line 3957
    :cond_3
    const/high16 v0, 0xff00000

    and-int/2addr v0, v11

    ushr-int/lit8 v0, v0, 0x14

    .line 3958
    sparse-switch v0, :sswitch_data_0

    .line 3997
    :cond_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :sswitch_0
    move-object v0, p0

    move-object v1, p1

    .line 3959
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3960
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v0

    invoke-static {p1, v11, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/gd;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 3964
    :sswitch_1
    and-int v0, v11, v8

    int-to-long v0, v0

    .line 3965
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3966
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3967
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v2

    move v1, v7

    .line 3968
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 3969
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 3970
    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/measurement/gd;->d(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move v0, v7

    .line 3974
    :goto_5
    if-nez v0, :cond_4

    goto :goto_3

    .line 3972
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    move v0, v9

    .line 3973
    goto :goto_5

    .line 3976
    :sswitch_2
    invoke-direct {p0, p1, v10, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3977
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->a(I)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v0

    invoke-static {p1, v11, v0}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/gd;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 3980
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    .line 3981
    and-int v1, v11, v8

    int-to-long v10, v1

    .line 3982
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/ha;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/fg;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 3983
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3984
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/fr;->b(I)Ljava/lang/Object;

    move-result-object v0

    .line 3985
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/fr;->s:Lcom/google/android/gms/internal/measurement/fg;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/measurement/fg;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/fe;

    move-result-object v0

    .line 3986
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/fe;->c:Lcom/google/android/gms/internal/measurement/hl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/hl;->a()Lcom/google/android/gms/internal/measurement/ho;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/ho;->i:Lcom/google/android/gms/internal/measurement/ho;

    if-ne v0, v2, :cond_9

    .line 3987
    const/4 v0, 0x0

    .line 3988
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3989
    if-nez v0, :cond_8

    .line 3990
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fz;->a()Lcom/google/android/gms/internal/measurement/fz;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/fz;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v0

    .line 3991
    :cond_8
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/measurement/gd;->d(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v7

    .line 3995
    :goto_6
    if-nez v0, :cond_4

    goto/16 :goto_3

    :cond_9
    move v0, v9

    .line 3994
    goto :goto_6

    .line 3998
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/fr;->h:Z

    if-eqz v0, :cond_b

    .line 3999
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fr;->r:Lcom/google/android/gms/internal/measurement/dr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/dr;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dw;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_b
    move v7, v9

    .line 4001
    goto/16 :goto_3

    :cond_c
    move v3, v0

    goto/16 :goto_1

    .line 3958
    nop

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

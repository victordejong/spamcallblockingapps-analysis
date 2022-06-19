.class public final Lcom/google/android/gms/measurement/internal/jw;
.super Lcom/google/android/gms/measurement/internal/fy;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Ljava/security/SecureRandom;

.field private final d:Ljava/util/concurrent/atomic/AtomicLong;

.field private e:I

.field private f:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 907
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "firebase_"

    aput-object v1, v0, v3

    const-string/jumbo v1, "google_"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "ga_"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/internal/jw;->a:[Ljava/lang/String;

    .line 908
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_err"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/measurement/internal/jw;->b:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/fd;)V
    .locals 4

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/fy;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jw;->f:Ljava/lang/Integer;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jw;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)I"
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 350
    const/4 v1, 0x0

    .line 351
    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->aI:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 352
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 353
    if-eqz p8, :cond_9

    .line 354
    sget-object v2, Lcom/google/android/gms/measurement/internal/gc;->c:[Ljava/lang/String;

    invoke-static {p3, v2}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 355
    const/16 v8, 0x14

    .line 422
    :cond_0
    :goto_0
    return v8

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jw;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->t()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/hu;->I()Z

    move-result v2

    if-nez v2, :cond_2

    .line 357
    const/16 v8, 0x19

    goto :goto_0

    .line 358
    :cond_2
    const-string/jumbo v2, "param"

    .line 359
    const/16 v3, 0xc8

    .line 360
    move-object/from16 v0, p4

    invoke-direct {p0, v2, p3, v3, v0}, Lcom/google/android/gms/measurement/internal/jw;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 361
    const/16 v2, 0x11

    .line 365
    move-object/from16 v0, p4

    instance-of v1, v0, [Landroid/os/Parcelable;

    if-eqz v1, :cond_7

    move-object/from16 v1, p4

    .line 366
    check-cast v1, [Landroid/os/Parcelable;

    array-length v1, v1

    const/16 v3, 0xc8

    if-le v1, v3, :cond_8

    move-object/from16 v1, p4

    .line 367
    check-cast v1, [Landroid/os/Parcelable;

    const/16 v3, 0xc8

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    move-object/from16 v0, p5

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    move v8, v2

    .line 378
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->Q:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 379
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/jw;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 380
    :cond_3
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/jw;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 381
    :cond_4
    const/16 v1, 0x100

    .line 383
    :goto_2
    const-string/jumbo v2, "param"

    move-object/from16 v0, p4

    invoke-virtual {p0, v2, p3, v1, v0}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    if-eqz p8, :cond_6

    .line 387
    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 388
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->aH:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    move v9, v1

    .line 389
    :goto_3
    move-object/from16 v0, p4

    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_d

    .line 390
    if-eqz v9, :cond_5

    move-object/from16 v5, p4

    .line 391
    check-cast v5, Landroid/os/Bundle;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    .line 392
    :cond_5
    const/4 v1, 0x1

    .line 420
    :goto_4
    if-nez v1, :cond_0

    .line 422
    :cond_6
    const/4 v8, 0x4

    goto/16 :goto_0

    .line 368
    :cond_7
    move-object/from16 v0, p4

    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    move-object/from16 v1, p4

    .line 369
    check-cast v1, Ljava/util/ArrayList;

    .line 370
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xc8

    if-le v3, v4, :cond_8

    .line 371
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/16 v5, 0xc8

    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, p3, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_8
    move v8, v2

    .line 372
    goto :goto_1

    .line 373
    :cond_9
    const/16 v8, 0x15

    goto/16 :goto_0

    .line 374
    :cond_a
    if-eqz p8, :cond_16

    const-string/jumbo v2, "param"

    .line 375
    const/16 v3, 0x3e8

    .line 376
    move-object/from16 v0, p4

    invoke-direct {p0, v2, p3, v3, v0}, Lcom/google/android/gms/measurement/internal/jw;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 377
    const/16 v8, 0x11

    goto/16 :goto_0

    .line 382
    :cond_b
    const/16 v1, 0x64

    goto :goto_2

    .line 388
    :cond_c
    const/4 v1, 0x0

    move v9, v1

    goto :goto_3

    .line 393
    :cond_d
    move-object/from16 v0, p4

    instance-of v1, v0, [Landroid/os/Parcelable;

    if-eqz v1, :cond_12

    .line 394
    check-cast p4, [Landroid/os/Parcelable;

    .line 395
    move-object/from16 v0, p4

    array-length v11, v0

    const/4 v1, 0x0

    move v10, v1

    :goto_5
    if-ge v10, v11, :cond_11

    aget-object v5, p4, v10

    .line 396
    instance-of v1, v5, Landroid/os/Bundle;

    if-nez v1, :cond_f

    .line 397
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "All Parcelable[] elements must be of type Bundle. Value type, name"

    .line 399
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 400
    invoke-virtual {v1, v2, v3, p3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    :cond_e
    :goto_6
    const/4 v1, 0x0

    goto :goto_4

    .line 402
    :cond_f
    if-eqz v9, :cond_10

    .line 403
    check-cast v5, Landroid/os/Bundle;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    .line 404
    :cond_10
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_5

    .line 405
    :cond_11
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 406
    :cond_12
    move-object/from16 v0, p4

    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    .line 407
    check-cast p4, Ljava/util/ArrayList;

    .line 408
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v11, :cond_15

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v10, v1, 0x1

    .line 409
    instance-of v1, v5, Landroid/os/Bundle;

    if-nez v1, :cond_13

    .line 410
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 411
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "All ArrayList elements must be of type Bundle. Value type, name"

    .line 412
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 413
    invoke-virtual {v1, v2, v3, p3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 415
    :cond_13
    if-eqz v9, :cond_14

    .line 416
    check-cast v5, Landroid/os/Bundle;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    :cond_14
    move v1, v10

    .line 417
    goto :goto_7

    .line 418
    :cond_15
    const/4 v1, 0x1

    goto/16 :goto_4

    :cond_16
    move v8, v1

    goto/16 :goto_1
.end method

.method public static a(JJ)J
    .locals 4

    .prologue
    .line 747
    const-wide/32 v0, 0xea60

    mul-long/2addr v0, p2

    add-long/2addr v0, p0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Lcom/google/android/gms/measurement/internal/m;)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 884
    if-nez p0, :cond_0

    .line 892
    :goto_0
    return-wide v0

    .line 887
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 888
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/m;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 889
    instance-of v1, v0, [Landroid/os/Parcelable;

    if-eqz v1, :cond_2

    .line 890
    check-cast v0, [Landroid/os/Parcelable;

    array-length v0, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    :goto_2
    move-wide v2, v0

    .line 891
    goto :goto_1

    :cond_1
    move-wide v0, v2

    .line 892
    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_2
.end method

.method static a([B)J
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 577
    invoke-static {p0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Z)V

    .line 579
    const-wide/16 v2, 0x0

    .line 581
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 582
    :goto_1
    if-ltz v0, :cond_1

    array-length v4, p0

    add-int/lit8 v4, v4, -0x8

    if-lt v0, v4, :cond_1

    .line 583
    aget-byte v4, p0, v0

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    .line 584
    add-int/lit8 v1, v1, 0x8

    .line 585
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 578
    goto :goto_0

    .line 586
    :cond_1
    return-wide v2
.end method

.method public static a(Ljava/util/List;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/internal/jv;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 796
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 797
    if-nez p0, :cond_0

    move-object v0, v1

    .line 807
    :goto_0
    return-object v0

    .line 799
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/jv;

    .line 800
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jv;->d:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 801
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/jv;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 802
    :cond_2
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jv;->c:Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 803
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/jv;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 804
    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jv;->f:Ljava/lang/Double;

    if-eqz v3, :cond_1

    .line 805
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/jv;->f:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 807
    goto :goto_0
.end method

.method private final a(ILjava/lang/Object;ZZ)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 313
    if-nez p2, :cond_1

    move-object p2, v0

    .line 341
    :cond_0
    :goto_0
    return-object p2

    .line 315
    :cond_1
    instance-of v1, p2, Ljava/lang/Long;

    if-nez v1, :cond_0

    instance-of v1, p2, Ljava/lang/Double;

    if-nez v1, :cond_0

    .line 317
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 318
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    .line 319
    :cond_2
    instance-of v1, p2, Ljava/lang/Byte;

    if-eqz v1, :cond_3

    .line 320
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    .line 321
    :cond_3
    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_4

    .line 322
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    .line 323
    :cond_4
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 324
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x1

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 325
    :cond_6
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 326
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    goto :goto_0

    .line 327
    :cond_7
    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_8

    instance-of v1, p2, Ljava/lang/Character;

    if-nez v1, :cond_8

    instance-of v1, p2, Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    .line 328
    :cond_8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v0, p1, p3}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 330
    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 331
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->aH:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 332
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->aG:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz p4, :cond_d

    instance-of v1, p2, [Landroid/os/Bundle;

    if-nez v1, :cond_a

    instance-of v1, p2, [Landroid/os/Parcelable;

    if-eqz v1, :cond_d

    .line 333
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 334
    check-cast p2, [Landroid/os/Parcelable;

    array-length v3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_c

    aget-object v0, p2, v1

    .line 335
    instance-of v4, v0, Landroid/os/Bundle;

    if-eqz v4, :cond_b

    .line 336
    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 338
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 340
    :cond_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_0

    :cond_d
    move-object p2, v0

    .line 341
    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 342
    if-nez p0, :cond_1

    move-object p0, v0

    .line 348
    :cond_0
    :goto_0
    return-object p0

    .line 344
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p1, :cond_0

    .line 345
    if-eqz p2, :cond_2

    .line 346
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v0

    .line 347
    goto :goto_0
.end method

.method private static a(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 496
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/jw;->b(Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    const/16 v0, 0x28

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 499
    const-string/jumbo v1, "_ev"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    if-eqz p4, :cond_1

    .line 502
    invoke-static {p0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    if-eqz p4, :cond_1

    instance-of v0, p4, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p4, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 504
    :cond_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 505
    const-string/jumbo v1, "_el"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 506
    :cond_1
    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 219
    if-nez p4, :cond_1

    .line 273
    :cond_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->aI:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v13

    .line 222
    const/4 v3, 0x0

    .line 223
    if-eqz v13, :cond_4

    .line 224
    const/4 v2, 0x0

    move v11, v2

    .line 226
    :goto_0
    new-instance v2, Ljava/util/TreeSet;

    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 227
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v12, v3

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 228
    const/4 v2, 0x0

    .line 229
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 230
    :cond_2
    if-eqz p6, :cond_3

    .line 231
    invoke-direct {p0, v5}, Lcom/google/android/gms/measurement/internal/jw;->h(Ljava/lang/String;)I

    move-result v2

    .line 232
    :cond_3
    if-nez v2, :cond_e

    .line 233
    invoke-direct {p0, v5}, Lcom/google/android/gms/measurement/internal/jw;->i(Ljava/lang/String;)I

    move-result v2

    move v3, v2

    .line 234
    :goto_2
    if-eqz v3, :cond_6

    .line 236
    const/4 v2, 0x3

    if-ne v3, v2, :cond_5

    move-object v2, v5

    .line 237
    :goto_3
    move-object/from16 v0, p4

    invoke-static {v0, v3, v5, v5, v2}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->a()I

    move-result v2

    move v11, v2

    goto :goto_0

    .line 236
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 240
    :cond_6
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 241
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Nested Bundle parameters are not allowed; discarded. event name, param name, child param name"

    .line 243
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v3, v0, v1, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    const/16 v2, 0x16

    .line 248
    :goto_4
    if-eqz v2, :cond_8

    const-string/jumbo v3, "_ev"

    .line 249
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 250
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-static {v0, v2, v5, v5, v3}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :cond_7
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/4 v10, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    .line 247
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I

    move-result v2

    goto :goto_4

    .line 253
    :cond_8
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v13, :cond_9

    sget-object v2, Lcom/google/android/gms/measurement/internal/gc;->d:[Ljava/lang/String;

    .line 254
    invoke-static {v5, v2}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 255
    :cond_9
    add-int/lit8 v2, v12, 0x1

    .line 256
    if-le v2, v11, :cond_d

    .line 257
    if-eqz v13, :cond_a

    .line 258
    const-string/jumbo v3, "Item cannot contain custom parameters"

    .line 260
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 261
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    .line 262
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 263
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Lcom/google/android/gms/measurement/internal/dw;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    .line 264
    invoke-virtual {v4, v3, v6, v7}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    if-eqz v13, :cond_b

    .line 267
    const/16 v3, 0x17

    .line 269
    :goto_6
    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/jw;->b(Landroid/os/Bundle;I)Z

    .line 270
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move v12, v2

    .line 271
    goto/16 :goto_1

    .line 259
    :cond_a
    const/16 v3, 0x3f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Child bundles can\'t contain more than "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " custom params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 268
    :cond_b
    const/4 v3, 0x5

    goto :goto_6

    :cond_c
    move v2, v12

    :cond_d
    move v12, v2

    .line 272
    goto/16 :goto_1

    :cond_e
    move v3, v2

    goto/16 :goto_2
.end method

.method static a(Landroid/content/Context;Z)Z
    .locals 2

    .prologue
    .line 587
    invoke-static {p0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 589
    const-string/jumbo v0, "com.google.android.gms.measurement.AppMeasurementJobService"

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/jw;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 590
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/jw;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 76
    const-string/jumbo v0, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https://www.google.com"

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android-app://com.google.appcrawler"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    .line 80
    :cond_1
    const/4 v0, 0x0

    .line 81
    goto :goto_0
.end method

.method static a(Landroid/os/Bundle;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-gt v1, p1, :cond_0

    .line 218
    :goto_0
    return v0

    .line 211
    :cond_0
    new-instance v1, Ljava/util/TreeSet;

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 213
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    add-int/lit8 v1, v1, 0x1

    .line 215
    if-le v1, p1, :cond_1

    .line 216
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 1

    .prologue
    .line 612
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 613
    const/4 v0, 0x1

    .line 616
    :goto_0
    return v0

    .line 614
    :cond_0
    if-nez p0, :cond_1

    .line 615
    const/4 v0, 0x0

    goto :goto_0

    .line 616
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 182
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-static {p0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "_ep"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 297
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 298
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 299
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 300
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 300
    goto :goto_0

    .line 301
    :cond_2
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 302
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 303
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 304
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 305
    :cond_4
    if-nez v2, :cond_6

    if-eqz v3, :cond_6

    .line 306
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 307
    goto :goto_0

    .line 308
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 309
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 730
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 732
    invoke-static {p0, v3}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 733
    const/4 v0, 0x1

    .line 735
    :cond_0
    return v0

    .line 734
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static a(Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 617
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 618
    const/4 v0, 0x1

    .line 621
    :goto_0
    return v0

    .line 619
    :cond_0
    if-nez p0, :cond_1

    .line 620
    const/4 v0, 0x0

    goto :goto_0

    .line 621
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static a(Landroid/os/Parcelable;)[B
    .locals 2

    .prologue
    .line 698
    if-nez p0, :cond_0

    .line 699
    const/4 v0, 0x0

    .line 704
    :goto_0
    return-object v0

    .line 700
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 701
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 702
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 705
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 706
    throw v0
.end method

.method public static b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 707
    if-nez p0, :cond_0

    .line 708
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 729
    :goto_0
    return-object v0

    .line 709
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 710
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 711
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 712
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 713
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 714
    new-instance v2, Landroid/os/Bundle;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v2, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 715
    :cond_2
    instance-of v0, v1, [Landroid/os/Parcelable;

    if-eqz v0, :cond_4

    .line 716
    check-cast v1, [Landroid/os/Parcelable;

    move v2, v3

    .line 717
    :goto_2
    array-length v0, v1

    if-ge v2, v0, :cond_1

    .line 718
    aget-object v0, v1, v2

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 719
    new-instance v6, Landroid/os/Bundle;

    aget-object v0, v1, v2

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {v6, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v6, v1, v2

    .line 720
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 721
    :cond_4
    instance-of v0, v1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 722
    check-cast v1, Ljava/util/List;

    move v2, v3

    .line 723
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 724
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 725
    instance-of v6, v0, Landroid/os/Bundle;

    if-eqz v6, :cond_5

    .line 726
    new-instance v6, Landroid/os/Bundle;

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {v6, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 727
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_6
    move-object v0, v4

    .line 729
    goto :goto_0
.end method

.method public static b(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/internal/kn;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 815
    if-nez p0, :cond_0

    .line 816
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 851
    :goto_0
    return-object v0

    .line 817
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 818
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/kn;

    .line 819
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 820
    const-string/jumbo v4, "app_id"

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string/jumbo v4, "origin"

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kn;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string/jumbo v4, "creation_timestamp"

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/kn;->d:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 823
    const-string/jumbo v4, "name"

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/jv;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/ga;->a(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 825
    const-string/jumbo v4, "active"

    iget-boolean v5, v0, Lcom/google/android/gms/measurement/internal/kn;->e:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 826
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kn;->f:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 827
    const-string/jumbo v4, "trigger_event_name"

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kn;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :cond_1
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kn;->g:Lcom/google/android/gms/measurement/internal/r;

    if-eqz v4, :cond_2

    .line 829
    const-string/jumbo v4, "timed_out_event_name"

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kn;->g:Lcom/google/android/gms/measurement/internal/r;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kn;->g:Lcom/google/android/gms/measurement/internal/r;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    if-eqz v4, :cond_2

    .line 831
    const-string/jumbo v4, "timed_out_event_params"

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kn;->g:Lcom/google/android/gms/measurement/internal/r;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    .line 832
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/m;->b()Landroid/os/Bundle;

    move-result-object v5

    .line 833
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 834
    :cond_2
    const-string/jumbo v4, "trigger_timeout"

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/kn;->h:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 835
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kn;->i:Lcom/google/android/gms/measurement/internal/r;

    if-eqz v4, :cond_3

    .line 836
    const-string/jumbo v4, "triggered_event_name"

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kn;->i:Lcom/google/android/gms/measurement/internal/r;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kn;->i:Lcom/google/android/gms/measurement/internal/r;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    if-eqz v4, :cond_3

    .line 838
    const-string/jumbo v4, "triggered_event_params"

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kn;->i:Lcom/google/android/gms/measurement/internal/r;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    .line 839
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/m;->b()Landroid/os/Bundle;

    move-result-object v5

    .line 840
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 841
    :cond_3
    const-string/jumbo v4, "triggered_timestamp"

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/jv;->b:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 842
    const-string/jumbo v4, "time_to_live"

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/kn;->j:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 843
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kn;->k:Lcom/google/android/gms/measurement/internal/r;

    if-eqz v4, :cond_4

    .line 844
    const-string/jumbo v4, "expired_event_name"

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/kn;->k:Lcom/google/android/gms/measurement/internal/r;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kn;->k:Lcom/google/android/gms/measurement/internal/r;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    if-eqz v4, :cond_4

    .line 846
    const-string/jumbo v4, "expired_event_params"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/kn;->k:Lcom/google/android/gms/measurement/internal/r;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    .line 847
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 848
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 849
    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    .line 851
    goto/16 :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 591
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 592
    if-nez v1, :cond_1

    .line 599
    :cond_0
    :goto_0
    return v0

    .line 594
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 595
    if-eqz v1, :cond_0

    iget-boolean v1, v1, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 596
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static b(Landroid/os/Bundle;I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 507
    if-nez p0, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v0

    .line 509
    :cond_1
    const-string/jumbo v1, "_err"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 510
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 511
    const-string/jumbo v0, "_err"

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 512
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 183
    instance-of v1, p4, [Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 184
    check-cast p4, [Landroid/os/Parcelable;

    array-length v1, p4

    .line 188
    :goto_0
    if-le v1, p3, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Parameter array is too long; discarded. Value kind, name, array length"

    .line 191
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 192
    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    const/4 v0, 0x0

    .line 194
    :cond_0
    return v0

    .line 185
    :cond_1
    instance-of v1, p4, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 186
    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method static b(Ljava/lang/Object;)[Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 433
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 434
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    check-cast p0, Landroid/os/Bundle;

    aput-object p0, v0, v1

    .line 440
    :goto_0
    return-object v0

    .line 435
    :cond_0
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 436
    check-cast v0, [Landroid/os/Parcelable;

    check-cast p0, [Landroid/os/Parcelable;

    array-length v1, p0

    const-class v2, [Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    goto :goto_0

    .line 437
    :cond_1
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 438
    check-cast p0, Ljava/util/ArrayList;

    .line 439
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    goto :goto_0

    .line 440
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 681
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    const-string/jumbo v0, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 683
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v0

    const/16 v2, 0x40

    .line 684
    invoke-virtual {v0, p2, v2}, Lcom/google/android/gms/common/c/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 685
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 686
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 687
    const-string/jumbo v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 688
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 689
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 690
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 697
    :goto_0
    return v0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Error obtaining certificate"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 697
    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 695
    :catch_1
    move-exception v0

    .line 696
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Package name not found"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 607
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 608
    const/4 v0, 0x1

    .line 611
    :goto_0
    return v0

    .line 609
    :cond_0
    if-nez p0, :cond_1

    .line 610
    const/4 v0, 0x0

    goto :goto_0

    .line 611
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static e()Ljava/security/MessageDigest;
    .locals 2

    .prologue
    .line 569
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_1

    .line 570
    :try_start_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 571
    if-eqz v0, :cond_0

    .line 576
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    .line 575
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 576
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static e(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 606
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 736
    sget-object v2, Lcom/google/android/gms/measurement/internal/jw;->b:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 737
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 740
    :goto_1
    return v0

    .line 739
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 740
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private final h(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 168
    const-string/jumbo v1, "event param"

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    const-string/jumbo v1, "event param"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 171
    const/16 v0, 0xe

    goto :goto_0

    .line 172
    :cond_2
    const-string/jumbo v1, "event param"

    const/16 v2, 0x28

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final i(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 175
    const-string/jumbo v1, "event param"

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/jw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    const-string/jumbo v1, "event param"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    const/16 v0, 0xe

    goto :goto_0

    .line 179
    :cond_2
    const-string/jumbo v1, "event param"

    const/16 v2, 0x28

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 310
    invoke-static {p0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string/jumbo v0, "^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$"

    .line 312
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final k(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 514
    const-string/jumbo v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    const/16 v0, 0x800

    .line 521
    :goto_0
    return v0

    .line 516
    :cond_0
    const-string/jumbo v0, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    const/16 v0, 0x100

    goto :goto_0

    .line 518
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->al:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "_lgclid"

    .line 519
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    const/16 v0, 0x64

    goto :goto_0

    .line 521
    :cond_2
    const/16 v0, 0x24

    goto :goto_0
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    .prologue
    .line 744
    invoke-static {}, Lcom/google/android/gms/common/f;->b()Lcom/google/android/gms/common/f;

    move-result-object v0

    .line 745
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v1

    const v2, 0xbdfcb8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/f;->b(Landroid/content/Context;I)I

    move-result v0

    .line 746
    return v0
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;)J
    .locals 8

    .prologue
    const-wide/16 v0, -0x1

    .line 657
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 658
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 660
    const-wide/16 v2, 0x0

    .line 661
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 662
    invoke-static {}, Lcom/google/android/gms/measurement/internal/jw;->e()Ljava/security/MessageDigest;

    move-result-object v5

    .line 663
    if-nez v5, :cond_0

    .line 664
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Could not get MD5 instance"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 680
    :goto_0
    return-wide v0

    .line 666
    :cond_0
    if-eqz v4, :cond_2

    .line 667
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/jw;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 669
    invoke-static {p1}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v4

    .line 670
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/common/c/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 671
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v6, :cond_1

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    if-lez v6, :cond_1

    .line 672
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 673
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jw;->a([B)J

    move-result-wide v0

    goto :goto_0

    .line 675
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Could not get signatures"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v4, "Package name not found"

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method final a(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 31
    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-object v1

    .line 37
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 38
    const-string/jumbo v0, "utm_campaign"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    const-string/jumbo v0, "utm_source"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    const-string/jumbo v0, "utm_medium"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    const-string/jumbo v0, "gclid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 47
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 50
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 52
    const-string/jumbo v5, "campaign"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 54
    const-string/jumbo v4, "source"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 56
    const-string/jumbo v3, "medium"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 58
    const-string/jumbo v2, "gclid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_6
    const-string/jumbo v0, "utm_term"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 61
    const-string/jumbo v2, "term"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_7
    const-string/jumbo v0, "utm_content"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 64
    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_8
    const-string/jumbo v0, "aclid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 67
    const-string/jumbo v2, "aclid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_9
    const-string/jumbo v0, "cp1"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 70
    const-string/jumbo v2, "cp1"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_a
    const-string/jumbo v0, "anid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    const-string/jumbo v2, "anid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Install referrer url isn\'t a hierarchical URI"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_1
.end method

.method final a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 628
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 629
    if-eqz p1, :cond_1

    .line 630
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 631
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 632
    if-nez v3, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 634
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Param value can\'t be null"

    .line 635
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/dw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 637
    :cond_0
    invoke-virtual {p0, v1, v0, v3}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 639
    :cond_1
    return-object v1
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 441
    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->aI:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v11, v1

    .line 442
    :goto_0
    if-eqz v11, :cond_3

    .line 443
    sget-object v1, Lcom/google/android/gms/measurement/internal/gd;->c:[Ljava/lang/String;

    .line 444
    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    .line 446
    :goto_1
    const/4 v6, 0x0

    .line 447
    if-eqz p3, :cond_c

    .line 448
    new-instance v6, Landroid/os/Bundle;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 449
    const/4 v2, 0x0

    .line 450
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/b;->a()I

    move-result v12

    .line 451
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->ab:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, p1, v3}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 452
    new-instance v1, Ljava/util/TreeSet;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 454
    :goto_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v10, v2

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 455
    const/4 v1, 0x0

    .line 456
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 457
    :cond_0
    if-eqz p5, :cond_1

    .line 458
    invoke-direct {p0, v4}, Lcom/google/android/gms/measurement/internal/jw;->h(Ljava/lang/String;)I

    move-result v1

    .line 459
    :cond_1
    if-nez v1, :cond_d

    .line 460
    invoke-direct {p0, v4}, Lcom/google/android/gms/measurement/internal/jw;->i(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .line 461
    :goto_4
    if-eqz v2, :cond_6

    .line 463
    const/4 v1, 0x3

    if-ne v2, v1, :cond_5

    move-object v1, v4

    .line 464
    :goto_5
    invoke-static {v6, v2, v4, v4, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 465
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_3

    .line 441
    :cond_2
    const/4 v1, 0x0

    move v11, v1

    goto :goto_0

    :cond_3
    move/from16 v9, p6

    .line 445
    goto :goto_1

    .line 453
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_2

    .line 463
    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 468
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 469
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I

    move-result v2

    .line 470
    if-eqz v11, :cond_8

    const/16 v1, 0x11

    if-ne v2, v1, :cond_8

    .line 471
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v6, v2, v4, v4, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    :cond_7
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 483
    add-int/lit8 v1, v10, 0x1

    .line 484
    if-le v1, v12, :cond_b

    .line 485
    const/16 v2, 0x30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Event can\'t contain more than "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " params"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 487
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    .line 488
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 489
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/google/android/gms/measurement/internal/dw;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    .line 490
    invoke-virtual {v3, v2, v5, v7}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 491
    const/4 v2, 0x5

    invoke-static {v6, v2}, Lcom/google/android/gms/measurement/internal/jw;->b(Landroid/os/Bundle;I)Z

    .line 492
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move v10, v1

    .line 493
    goto/16 :goto_3

    .line 472
    :cond_8
    if-eqz v2, :cond_7

    const-string/jumbo v1, "_ev"

    .line 473
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 474
    const/16 v1, 0x15

    if-ne v2, v1, :cond_9

    move-object/from16 v1, p2

    .line 478
    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 479
    invoke-static {v6, v2, v1, v4, v3}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 480
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    move-object v1, v4

    .line 476
    goto :goto_6

    :cond_a
    move v1, v10

    :cond_b
    move v10, v1

    .line 494
    goto/16 :goto_3

    .line 495
    :cond_c
    return-object v6

    :cond_d
    move v2, v1

    goto/16 :goto_4
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/r;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 640
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    const/4 v0, 0x0

    .line 656
    :goto_0
    return-object v0

    .line 642
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/jw;->b(Ljava/lang/String;)I

    move-result v0

    .line 643
    if-eqz v0, :cond_1

    .line 644
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 645
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Invalid conditional property event name"

    .line 646
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 647
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 648
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 649
    :cond_1
    if-eqz p3, :cond_2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 650
    :goto_1
    const-string/jumbo v0, "_o"

    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string/jumbo v0, "_o"

    .line 652
    invoke-static {v0}, Lcom/google/android/gms/common/util/f;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    .line 654
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v0

    .line 655
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 656
    new-instance v0, Lcom/google/android/gms/measurement/internal/r;

    new-instance v2, Lcom/google/android/gms/measurement/internal/m;

    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/m;-><init>(Landroid/os/Bundle;)V

    move-object v1, p2

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/r;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/m;Ljava/lang/String;J)V

    goto :goto_0

    .line 649
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_1
.end method

.method final a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/16 v0, 0x100

    const/4 v2, 0x1

    .line 423
    const-string/jumbo v1, "_ev"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    invoke-direct {p0, v0, p2, v2, v2}, Lcom/google/android/gms/measurement/internal/jw;->a(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object v0

    .line 432
    :goto_0
    return-object v0

    .line 428
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jw;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    :goto_1
    const/4 v1, 0x0

    .line 431
    invoke-direct {p0, v0, p2, v1, v2}, Lcom/google/android/gms/measurement/internal/jw;->a(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 430
    :cond_1
    const/16 v0, 0x64

    goto :goto_1
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;J)Ljava/net/URL;
    .locals 7

    .prologue
    .line 852
    :try_start_0
    invoke-static {p4}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 853
    invoke-static {p3}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 854
    const-string/jumbo v0, "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "v%s.%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 855
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jw;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    .line 856
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 857
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 858
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    const-string/jumbo v1, "&ddl_test=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 860
    :goto_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :goto_1
    return-object v0

    .line 861
    :catch_0
    move-exception v0

    .line 862
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 863
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to create BOW URL for Deferred Deep Link. exception"

    .line 864
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 865
    const/4 v0, 0x0

    goto :goto_1

    .line 861
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 557
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 558
    return-void
.end method

.method final a(Landroid/os/Bundle;J)V
    .locals 6

    .prologue
    .line 751
    const-string/jumbo v0, "_et"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 752
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Params already contained engagement"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 754
    :cond_0
    const-string/jumbo v2, "_et"

    add-long/2addr v0, p2

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 755
    return-void
.end method

.method final a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 533
    if-nez p1, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 536
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 538
    :cond_2
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 539
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 540
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 542
    :cond_3
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 543
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 545
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 546
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aH:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 547
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aG:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p3, [Landroid/os/Bundle;

    if-eqz v0, :cond_5

    .line 548
    check-cast p3, [Landroid/os/Bundle;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    .line 550
    :cond_5
    if-eqz p2, :cond_0

    .line 551
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 552
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 553
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Not putting event parameter. Invalid value type. name, type"

    .line 554
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/measurement/internal/dw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 555
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 551
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/mj;I)V
    .locals 3

    .prologue
    .line 770
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 771
    const-string/jumbo v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 772
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/mj;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :goto_0
    return-void

    .line 774
    :catch_0
    move-exception v0

    .line 775
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jw;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Error returning int value to wrapper"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/mj;J)V
    .locals 4

    .prologue
    .line 763
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 764
    const-string/jumbo v1, "r"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 765
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/mj;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :goto_0
    return-void

    .line 767
    :catch_0
    move-exception v0

    .line 768
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jw;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Error returning long value to wrapper"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/mj;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 791
    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/measurement/mj;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :goto_0
    return-void

    .line 793
    :catch_0
    move-exception v0

    .line 794
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jw;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Error returning bundle value to wrapper"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/mj;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 756
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 757
    const-string/jumbo v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/mj;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :goto_0
    return-void

    .line 760
    :catch_0
    move-exception v0

    .line 761
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jw;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Error returning string value to wrapper"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/mj;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/mj;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 808
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 809
    const-string/jumbo v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 810
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/mj;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :goto_0
    return-void

    .line 812
    :catch_0
    move-exception v0

    .line 813
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jw;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Error returning bundle list to wrapper"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/mj;Z)V
    .locals 3

    .prologue
    .line 784
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 785
    const-string/jumbo v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 786
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/mj;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_0
    return-void

    .line 788
    :catch_0
    move-exception v0

    .line 789
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jw;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Error returning boolean value to wrapper"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/mj;[B)V
    .locals 3

    .prologue
    .line 777
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 778
    const-string/jumbo v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 779
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/mj;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :goto_0
    return-void

    .line 781
    :catch_0
    move-exception v0

    .line 782
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jw;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Error returning byte array to wrapper"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 559
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 560
    invoke-static {v0, p2}, Lcom/google/android/gms/measurement/internal/jw;->b(Landroid/os/Bundle;I)Z

    .line 561
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_0
    const/4 v1, 0x6

    if-eq p2, v1, :cond_1

    const/4 v1, 0x7

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 564
    :cond_1
    const-string/jumbo v1, "_el"

    int-to-long v2, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 565
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jw;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 567
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jw;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v1

    const-string/jumbo v2, "auto"

    const-string/jumbo v3, "_err"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 568
    return-void
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x1

    return v0
.end method

.method final a(Ljava/lang/String;D)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 866
    .line 867
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "google.analytics.deferred.deeplink.prefs"

    const/4 v3, 0x0

    .line 868
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 869
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 870
    const-string/jumbo v2, "deeplink"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 871
    const-string/jumbo v2, "timestamp"

    .line 872
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    .line 873
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 874
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 877
    :goto_0
    return v0

    .line 875
    :catch_0
    move-exception v1

    .line 876
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Failed to persist Deferred Deep Link. exception"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 145
    if-nez p3, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Name is required and can\'t be null. Type"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    :goto_0
    return v0

    .line 148
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p2, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Name is too long. Type, maximum supported length, name"

    .line 151
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3, p3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 82
    if-nez p2, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Name is required and can\'t be null. Type"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    :goto_0
    return v0

    .line 85
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Name is required and can\'t be empty. Type"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 89
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Name must start with a letter. Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 93
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_1
    if-ge v1, v2, :cond_4

    .line 94
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 95
    const/16 v4, 0x5f

    if-eq v3, v4, :cond_3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    .line 98
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :cond_3
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    if-nez p4, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    instance-of v2, p4, Ljava/lang/Long;

    if-nez v2, :cond_0

    instance-of v2, p4, Ljava/lang/Float;

    if-nez v2, :cond_0

    instance-of v2, p4, Ljava/lang/Integer;

    if-nez v2, :cond_0

    instance-of v2, p4, Ljava/lang/Byte;

    if-nez v2, :cond_0

    instance-of v2, p4, Ljava/lang/Short;

    if-nez v2, :cond_0

    instance-of v2, p4, Ljava/lang/Boolean;

    if-nez v2, :cond_0

    instance-of v2, p4, Ljava/lang/Double;

    if-nez v2, :cond_0

    .line 199
    instance-of v2, p4, Ljava/lang/String;

    if-nez v2, :cond_2

    instance-of v2, p4, Ljava/lang/Character;

    if-nez v2, :cond_2

    instance-of v2, p4, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 200
    :cond_2
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v3

    if-le v3, p3, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v3, "Value is too long; discarded. Value kind, name, value length"

    .line 204
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 205
    invoke-virtual {v0, v3, p1, p2, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v1

    .line 206
    goto :goto_0

    :cond_3
    move v0, v1

    .line 208
    goto :goto_0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jw;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 276
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jw;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id"

    .line 279
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 280
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    :cond_0
    :goto_0
    return v0

    .line 282
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->ao:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 285
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 286
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/jw;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 287
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 288
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Invalid admob_app_id. Analytics disabled."

    .line 289
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 291
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jw;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 293
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI"

    .line 294
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 126
    if-nez p3, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Name is required and can\'t be null. Type"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    :goto_0
    return v0

    .line 130
    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v3, Lcom/google/android/gms/measurement/internal/jw;->a:[Ljava/lang/String;

    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 132
    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v1

    .line 136
    :goto_2
    if-eqz v2, :cond_3

    .line 137
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Name starts with reserved prefix. Type, name"

    .line 139
    invoke-virtual {v1, v2, p1, p3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v0

    .line 135
    goto :goto_2

    .line 141
    :cond_3
    if-eqz p2, :cond_4

    invoke-static {p3, p2}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 142
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Name is reserved. Type, name"

    invoke-virtual {v1, v2, p1, p3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 144
    goto :goto_0
.end method

.method final b(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 154
    const-string/jumbo v1, "event"

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/jw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    const-string/jumbo v1, "event"

    sget-object v2, Lcom/google/android/gms/measurement/internal/gd;->a:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 157
    const/16 v0, 0xd

    goto :goto_0

    .line 158
    :cond_2
    const-string/jumbo v1, "event"

    const/16 v2, 0x28

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 522
    const-string/jumbo v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    const-string/jumbo v0, "user property referrer"

    .line 524
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/jw;->k(Ljava/lang/String;)I

    move-result v1

    .line 525
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    .line 529
    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    .line 526
    :cond_0
    const-string/jumbo v0, "user property"

    .line 527
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/jw;->k(Ljava/lang/String;)I

    move-result v1

    .line 528
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 529
    :cond_1
    const/4 v0, 0x7

    goto :goto_1
.end method

.method protected final b()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 7
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 8
    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 9
    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 10
    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 11
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Utils falling back to Random for random id"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jw;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 14
    return-void
.end method

.method final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/16 v5, 0x5f

    const/4 v0, 0x0

    .line 103
    if-nez p2, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Name is required and can\'t be null. Type"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    :goto_0
    return v0

    .line 106
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Name is required and can\'t be empty. Type"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 110
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_2

    if-eq v1, v5, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Name must start with a letter or _ (underscore). Type, name"

    .line 113
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 116
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_1
    if-ge v1, v2, :cond_4

    .line 117
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 118
    if-eq v3, v5, :cond_3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    .line 121
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_3
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 124
    goto :goto_1

    .line 125
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final c(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x6

    .line 161
    const-string/jumbo v1, "user property"

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/jw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    const-string/jumbo v1, "user property"

    sget-object v2, Lcom/google/android/gms/measurement/internal/gf;->a:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 164
    const/16 v0, 0xf

    goto :goto_0

    .line 165
    :cond_2
    const-string/jumbo v1, "user property"

    const/16 v2, 0x18

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()J
    .locals 8

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jw;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 16
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jw;->d:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v2

    .line 18
    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    xor-long/2addr v4, v6

    invoke-direct {v0, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v3, p0, Lcom/google/android/gms/measurement/internal/jw;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/measurement/internal/jw;->e:I

    int-to-long v4, v3

    add-long/2addr v0, v4

    monitor-exit v2

    .line 23
    :goto_0
    return-wide v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 20
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jw;->d:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v2

    .line 21
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jw;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x1

    invoke-virtual {v0, v4, v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jw;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    .line 23
    monitor-exit v2

    goto :goto_0

    .line 24
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method final c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 530
    const-string/jumbo v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/jw;->k(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/google/android/gms/measurement/internal/jw;->a(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/jw;->k(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p2, v2, v2}, Lcom/google/android/gms/measurement/internal/jw;->a(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method final d()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jw;->c:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jw;->c:Ljava/security/SecureRandom;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jw;->c:Ljava/security/SecureRandom;

    return-object v0
.end method

.method final d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 601
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/c/b;->a(Ljava/lang/String;)I

    move-result v0

    .line 602
    if-nez v0, :cond_0

    .line 603
    const/4 v0, 0x1

    .line 605
    :goto_0
    return v0

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Permission not granted"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 605
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()I
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jw;->f:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 742
    invoke-static {}, Lcom/google/android/gms/common/f;->b()Lcom/google/android/gms/common/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/f;->c(Landroid/content/Context;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jw;->f:Ljava/lang/Integer;

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jw;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method final f(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 622
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    const/4 v0, 0x0

    .line 627
    :goto_0
    return v0

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->i()Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 627
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method final g()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 748
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 749
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jw;->d()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 750
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%032x"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v6, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 878
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    .line 879
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    .line 880
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    const/4 v0, 0x1

    .line 883
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic l()V
    .locals 0

    .prologue
    .line 893
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->l()V

    return-void
.end method

.method public final bridge synthetic m()V
    .locals 0

    .prologue
    .line 894
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    .prologue
    .line 895
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->n()V

    return-void
.end method

.method public final bridge synthetic o()V
    .locals 0

    .prologue
    .line 896
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->o()V

    return-void
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/l;
    .locals 1

    .prologue
    .line 897
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/common/util/e;
    .locals 1

    .prologue
    .line 898
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Landroid/content/Context;
    .locals 1

    .prologue
    .line 899
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->r()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/dw;
    .locals 1

    .prologue
    .line 900
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/jw;
    .locals 1

    .prologue
    .line 901
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/fa;
    .locals 1

    .prologue
    .line 902
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/measurement/internal/dy;
    .locals 1

    .prologue
    .line 903
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic w()Lcom/google/android/gms/measurement/internal/el;
    .locals 1

    .prologue
    .line 904
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic x()Lcom/google/android/gms/measurement/internal/b;
    .locals 1

    .prologue
    .line 905
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic y()Lcom/google/android/gms/measurement/internal/kk;
    .locals 1

    .prologue
    .line 906
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->y()Lcom/google/android/gms/measurement/internal/kk;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/facebook/ads/redexgen/X/Df;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/W8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/A4;
    }
.end annotation


# static fields
.field public static A0M:[B

.field public static A0N:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/A0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Lcom/facebook/ads/redexgen/X/AK;

.field public A07:Lcom/facebook/ads/redexgen/X/AL;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Landroid/os/Handler;

.field public final A0D:Landroid/os/Handler;

.field public final A0E:Lcom/facebook/ads/redexgen/X/DW;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Ad;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Ae;

.field public final A0H:Lcom/facebook/ads/redexgen/X/H7;

.field public final A0I:Lcom/facebook/ads/redexgen/X/H8;

.field public final A0J:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/A4;",
            ">;"
        }
    .end annotation
.end field

.field public final A0K:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/AO;",
            ">;"
        }
    .end annotation
.end field

.field public final A0L:[Lcom/facebook/ads/redexgen/X/W7;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Df;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Df;->A03()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/W7;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/AF;Lcom/facebook/ads/redexgen/X/I0;)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 28369
    move-object/from16 v1, p0

    move-object v2, v1

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x21

    const/4 v3, 0x5

    const/16 v0, 0x6e

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Df;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28371
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/16 v0, 0x16

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Df;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xf

    const/16 v3, 0x12

    const/16 v0, 0x47

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Df;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    const/4 v3, 0x3

    const/16 v0, 0x46

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Df;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A04:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    const/4 v3, 0x1

    const/4 v0, 0x3

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Df;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 28372
    const/4 v4, 0x2

    const/16 v3, 0xd

    const/16 v0, 0x59

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Df;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28373
    move-object/from16 v6, p1

    array-length v0, v6

    const/4 v3, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 28374
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/W7;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0L:[Lcom/facebook/ads/redexgen/X/W7;

    .line 28375
    move-object/from16 v7, p2

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/H7;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0H:Lcom/facebook/ads/redexgen/X/H7;

    .line 28376
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/Df;->A0A:Z

    .line 28377
    iput v3, v2, Lcom/facebook/ads/redexgen/X/Df;->A03:I

    .line 28378
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/Df;->A0B:Z

    .line 28379
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 28380
    array-length v0, v6

    new-array v5, v0, [Lcom/facebook/ads/redexgen/X/AZ;

    array-length v0, v6

    new-array v4, v0, [Lcom/facebook/ads/redexgen/X/H4;

    const/4 v3, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/H8;

    invoke-direct {v0, v5, v4, v3}, Lcom/facebook/ads/redexgen/X/H8;-><init>([Lcom/facebook/ads/redexgen/X/AZ;[Lcom/facebook/ads/redexgen/X/H4;Ljava/lang/Object;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/H8;

    .line 28381
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ae;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ae;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0G:Lcom/facebook/ads/redexgen/X/Ae;

    .line 28382
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ad;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ad;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0F:Lcom/facebook/ads/redexgen/X/Ad;

    .line 28383
    sget-object v0, Lcom/facebook/ads/redexgen/X/AL;->A05:Lcom/facebook/ads/redexgen/X/AL;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A07:Lcom/facebook/ads/redexgen/X/AL;

    .line 28384
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    .line 28385
    .local v0, "eventLooper":Landroid/os/Looper;
    :goto_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/A3;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/A3;-><init>(Lcom/facebook/ads/redexgen/X/Df;Landroid/os/Looper;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0C:Landroid/os/Handler;

    .line 28386
    new-instance v8, Lcom/facebook/ads/redexgen/X/AK;

    sget-object v9, Lcom/facebook/ads/redexgen/X/Af;->A00:Lcom/facebook/ads/redexgen/X/Af;

    const-wide/16 v10, 0x0

    sget-object v12, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/H8;

    move-object v13, v0

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;JLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    iput-object v8, v2, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    .line 28387
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0J:Ljava/util/ArrayDeque;

    .line 28388
    new-instance v5, Lcom/facebook/ads/redexgen/X/DW;

    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/H8;

    iget-boolean v10, v2, Lcom/facebook/ads/redexgen/X/Df;->A0A:Z

    iget v11, v2, Lcom/facebook/ads/redexgen/X/Df;->A03:I

    iget-boolean v12, v2, Lcom/facebook/ads/redexgen/X/Df;->A0B:Z

    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/Df;->A0C:Landroid/os/Handler;

    move-object v14, v1

    move-object/from16 v15, p4

    move-object/from16 v9, p3

    invoke-direct/range {v5 .. v15}, Lcom/facebook/ads/redexgen/X/DW;-><init>([Lcom/facebook/ads/redexgen/X/W7;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/H8;Lcom/facebook/ads/redexgen/X/AF;ZIZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/W8;Lcom/facebook/ads/redexgen/X/I0;)V

    iput-object v5, v2, Lcom/facebook/ads/redexgen/X/Df;->A0E:Lcom/facebook/ads/redexgen/X/DW;

    .line 28389
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0E:Lcom/facebook/ads/redexgen/X/DW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DW;->A0x()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0D:Landroid/os/Handler;

    .line 28390
    return-void

    .line 28391
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_1

    .line 28392
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private A00(J)J
    .locals 5

    .line 28393
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/9u;->A01(J)J

    move-result-wide v3

    .line 28394
    .local p0, "positionMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A01()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0F:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    .line 28396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0F:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ad;->A08()J

    move-result-wide v0

    add-long/2addr v3, v0

    .line 28397
    :cond_0
    return-wide v3
.end method

.method private A01(ZZI)Lcom/facebook/ads/redexgen/X/AK;
    .locals 15

    .line 28398
    move-object v2, p0

    if-eqz p1, :cond_4

    .line 28399
    const/4 v0, 0x0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    .line 28400
    iput v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    .line 28401
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A04:J

    .line 28402
    :goto_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/AK;

    .line 28403
    if-eqz p2, :cond_3

    sget-object v4, Lcom/facebook/ads/redexgen/X/Af;->A00:Lcom/facebook/ads/redexgen/X/Af;

    .line 28404
    :goto_1
    if-eqz p2, :cond_2

    const/4 v5, 0x0

    :goto_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v7, v0, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v9, v0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    const/4 v12, 0x0

    .line 28405
    if-eqz p2, :cond_1

    sget-object v13, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 28406
    :goto_3
    if-eqz p2, :cond_0

    iget-object v14, v2, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/H8;

    :goto_4
    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0N:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0N:[Ljava/lang/String;

    const-string v1, "TcwHhjelA64LR1wSBerbs5Eaw"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "R4uALIuCIZJMzNctPSZUGDwe60"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    move/from16 v11, p3

    invoke-direct/range {v3 .. v14}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FC;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    .line 28407
    return-object v3

    .line 28408
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/AK;->A06:Lcom/facebook/ads/redexgen/X/H8;

    goto :goto_4

    .line 28409
    :cond_1
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/AK;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    goto :goto_3

    .line 28410
    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/AK;->A07:Ljava/lang/Object;

    goto :goto_2

    .line 28411
    :cond_3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    goto :goto_1

    .line 28412
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A6A()I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    .line 28413
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A08()I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    .line 28414
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A67()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A04:J

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0M:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v3, v0, -0x3e

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0N:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0N:[Ljava/lang/String;

    const-string v1, "fQmyNkj8dtt0Fh5QdwkOlpU"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x59

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Df;->A0M:[B

    return-void

    :array_0
    .array-data 1
        0x74t
        -0x51t
        -0x24t
        0xft
        0x6t
        -0x19t
        0x3t
        -0x8t
        0x10t
        -0x4t
        0x9t
        -0x20t
        0x4t
        0x7t
        0x3t
        -0x36t
        -0x3t
        -0xct
        -0x2bt
        -0xft
        -0x1at
        -0x2t
        -0x16t
        -0x9t
        -0x2ft
        -0x12t
        -0x19t
        -0x4ct
        -0x49t
        -0x4dt
        -0x43t
        -0x4dt
        -0x47t
        -0xbt
        0x1at
        0x15t
        0x20t
        -0x34t
        -0x70t
        -0x5dt
        -0x56t
        -0x5dt
        -0x61t
        -0x4ft
        -0x5dt
        0x5et
        -0x62t
        -0x1ft
        -0x5ct
        -0x21t
        -0x9t
        -0x17t
        -0x17t
        -0x11t
        -0x28t
        -0xdt
        -0x5ct
        -0x13t
        -0x15t
        -0xet
        -0xdt
        -0xat
        -0x17t
        -0x18t
        -0x5ct
        -0x1at
        -0x17t
        -0x19t
        -0x1bt
        -0x7t
        -0x9t
        -0x17t
        -0x5ct
        -0x1bt
        -0xet
        -0x5ct
        -0x1bt
        -0x18t
        -0x5ct
        -0x13t
        -0x9t
        -0x5ct
        -0xct
        -0x10t
        -0x1bt
        -0x3t
        -0x13t
        -0xet
        -0x15t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LY7uQxLEeZl44xXqIuPkThUmXteKfgxd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "J5ko4O6fvxHru4n9Pg10k274HgTqTAyI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "N9culGbTZdwJYHiBQV8KF3Yut"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HAc8j3YVRnh4weCYfz3zYhMOBP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1Qwpd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "UtKFOgKARsQE8C7hMYUrGysJF8kG5Dx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KMHE59O8CQSLFHSDXSVrz9ck6arAN4Lf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eLDpXmt6sHVFFDN0mbU16qHu0cNpDvnA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0N:[Ljava/lang/String;

    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/AK;IZI)V
    .locals 13

    move-object v7, p1

    .line 28415
    move-object v2, p0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A02:I

    sub-int/2addr v0, p2

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A02:I

    .line 28416
    iget v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A02:I

    if-nez v0, :cond_3

    .line 28417
    iget-wide v5, v7, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    .line 28418
    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    const-wide/16 v9, 0x0

    iget-wide v11, v7, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    .line 28419
    move-object v7, v7

    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v7

    .line 28420
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A0E()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A08:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    .line 28421
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A0E()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28422
    iput v3, v2, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    .line 28423
    iput v3, v2, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    .line 28424
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A04:J

    .line 28425
    :cond_2
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A08:Z

    if-eqz v0, :cond_4

    .line 28426
    const/4 v10, 0x0

    .line 28427
    .local v9, "timelineChangeReason":I
    :goto_0
    iget-boolean v11, v2, Lcom/facebook/ads/redexgen/X/Df;->A09:Z

    .line 28428
    .local v0, "seekProcessed":Z
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/Df;->A08:Z

    .line 28429
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/Df;->A09:Z

    .line 28430
    const/4 v12, 0x0

    move-object v6, v2

    move/from16 v9, p4

    move/from16 v8, p3

    invoke-direct/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/Df;->A06(Lcom/facebook/ads/redexgen/X/AK;ZIIZZ)V

    .line 28431
    .end local v9    # "timelineChangeReason":I
    .end local v0    # "seekProcessed":Z
    :cond_3
    return-void

    .line 28432
    :cond_4
    const/4 v10, 0x2

    goto :goto_0
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/AK;ZIIZZ)V
    .locals 14

    .line 28433
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 28434
    .local v4, "isRunningRecursiveListenerNotification":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0J:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/facebook/ads/redexgen/X/A4;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/Df;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/Df;->A0H:Lcom/facebook/ads/redexgen/X/H7;

    iget-boolean v12, v2, Lcom/facebook/ads/redexgen/X/Df;->A0A:Z

    move/from16 v13, p6

    move/from16 v11, p5

    move/from16 v10, p4

    move/from16 v9, p3

    move/from16 v8, p2

    move-object v4, p1

    invoke-direct/range {v3 .. v13}, Lcom/facebook/ads/redexgen/X/A4;-><init>(Lcom/facebook/ads/redexgen/X/AK;Lcom/facebook/ads/redexgen/X/AK;Ljava/util/Set;Lcom/facebook/ads/redexgen/X/H7;ZIIZZZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 28435
    iput-object v4, v2, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    .line 28436
    if-eqz v1, :cond_0

    .line 28437
    return-void

    .line 28438
    :cond_0
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28439
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/A4;->A01()V

    .line 28440
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 28441
    :cond_1
    return-void
.end method

.method private A07()Z
    .locals 1

    .line 28442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A0E()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A08()I
    .locals 4

    .line 28443
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A07()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28444
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    return v0

    .line 28445
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0N:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0N:[Ljava/lang/String;

    const-string v1, "mFrrbpucrB0AognfapCDjevgAh8Hns51"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A09(I)V
    .locals 2

    .line 28446
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Df;->A0A(IJ)V

    .line 28447
    return-void
.end method

.method public final A0A(IJ)V
    .locals 11

    .line 28448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    .line 28449
    .local p0, "timeline":Lcom/facebook/ads/redexgen/X/Af;
    move v8, p1

    if-ltz v8, :cond_9

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Af;->A0E()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Af;->A01()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0N:[Ljava/lang/String;

    const-string v1, "TqLqg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge v8, v3, :cond_9

    .line 28450
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Df;->A09:Z

    .line 28451
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:I

    .line 28452
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0C()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 28453
    const/4 v2, 0x2

    const/16 v1, 0xd

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A02(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x32

    const/16 v1, 0x27

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28454
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A0C:Landroid/os/Handler;

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    .line 28455
    invoke-virtual {v2, v4, v3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28456
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28457
    return-void

    .line 28458
    :cond_2
    iput v8, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    .line 28459
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Af;->A0E()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_4

    .line 28460
    cmp-long v0, p2, v1

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A04:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0N:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    .line 28461
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0N:[Ljava/lang/String;

    const-string v1, "VeKpERzR2VFg0JGchtUn1RboHLeQ7Qys"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "X7K623USkW4jGiaG2q6m23fm2LIB2h38"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    .line 28462
    .end local v8
    .end local v5
    :goto_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A0E:Lcom/facebook/ads/redexgen/X/DW;

    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/9u;->A00(J)J

    move-result-wide v0

    invoke-virtual {v2, v5, v8, v0, v1}, Lcom/facebook/ads/redexgen/X/DW;->A0z(Lcom/facebook/ads/redexgen/X/Af;IJ)V

    .line 28463
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AO;

    .line 28464
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/AO;
    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/AO;->ABD(I)V

    .line 28465
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    goto :goto_2

    .line 28466
    :cond_3
    move-wide v0, p2

    goto :goto_0

    .line 28467
    :cond_4
    cmp-long v4, p2, v1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0N:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0N:[Ljava/lang/String;

    const-string v1, "cqgUO"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v4, :cond_5

    .line 28468
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0G:Lcom/facebook/ads/redexgen/X/Ae;

    invoke-virtual {v5, v8, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0B(ILcom/facebook/ads/redexgen/X/Ae;)Lcom/facebook/ads/redexgen/X/Ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ae;->A01()J

    move-result-wide v9

    .line 28469
    .local v5, "windowPositionUs":J
    :goto_3
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Df;->A0G:Lcom/facebook/ads/redexgen/X/Ae;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Df;->A0F:Lcom/facebook/ads/redexgen/X/Ad;

    .line 28470
    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Af;->A07(Lcom/facebook/ads/redexgen/X/Ae;Lcom/facebook/ads/redexgen/X/Ad;IJ)Landroid/util/Pair;

    move-result-object v2

    .line 28471
    .local v8, "periodIndexAndPositon":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-static {v9, v10}, Lcom/facebook/ads/redexgen/X/9u;->A01(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A04:J

    .line 28472
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    goto :goto_1

    .line 28473
    :cond_5
    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/9u;->A00(J)J

    move-result-wide v9

    goto :goto_3

    .line 28474
    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28475
    :cond_9
    new-instance v0, Lcom/facebook/ads/redexgen/X/AE;

    invoke-direct {v0, v5, v8, p2, p3}, Lcom/facebook/ads/redexgen/X/AE;-><init>(Lcom/facebook/ads/redexgen/X/Af;IJ)V

    throw v0
.end method

.method public final A0B(Landroid/os/Message;)V
    .locals 6

    .line 28476
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 28477
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/facebook/ads/redexgen/X/A0;

    .line 28478
    .local p0, "playbackError":Lcom/facebook/ads/redexgen/X/A0;
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/A0;

    .line 28479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0N:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0N:[Ljava/lang/String;

    const-string v1, "pbggcigkNxoctbv6t4X9ADLzPWLnoftd"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "rIWmoJUSrTYjFsofyDlkaB0lK7amGMgh"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AO;

    .line 28480
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/AO;
    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/AO;->AB9(Lcom/facebook/ads/redexgen/X/A0;)V

    .line 28481
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28482
    .end local p0    # "playbackError":Lcom/facebook/ads/redexgen/X/A0;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 28483
    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/ads/redexgen/X/AL;

    .line 28484
    .local p0, "playbackParameters":Lcom/facebook/ads/redexgen/X/AL;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A07:Lcom/facebook/ads/redexgen/X/AL;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/AL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 28485
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A07:Lcom/facebook/ads/redexgen/X/AL;

    .line 28486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AO;

    .line 28487
    .restart local v1    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/AO;->AB7(Lcom/facebook/ads/redexgen/X/AL;)V

    .line 28488
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    goto :goto_1

    .line 28489
    .end local p0    # "playbackParameters":Lcom/facebook/ads/redexgen/X/AL;
    :cond_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/ads/redexgen/X/AK;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_5

    :goto_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v2, v4, v0}, Lcom/facebook/ads/redexgen/X/Df;->A05(Lcom/facebook/ads/redexgen/X/AK;IZI)V

    .line 28490
    :cond_4
    return-void

    .line 28491
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public final A0C()Z
    .locals 1

    .line 28492
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A01()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A3E(Lcom/facebook/ads/redexgen/X/AO;)V
    .locals 1

    .line 28493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 28494
    return-void
.end method

.method public final A4I(Lcom/facebook/ads/redexgen/X/AV;)Lcom/facebook/ads/redexgen/X/AW;
    .locals 7

    .line 28495
    new-instance v1, Lcom/facebook/ads/redexgen/X/AW;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A0E:Lcom/facebook/ads/redexgen/X/DW;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    .line 28496
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A6A()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Df;->A0D:Landroid/os/Handler;

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/AW;-><init>(Lcom/facebook/ads/redexgen/X/AU;Lcom/facebook/ads/redexgen/X/AV;Lcom/facebook/ads/redexgen/X/Af;ILandroid/os/Handler;)V

    .line 28497
    return-object v1
.end method

.method public final A5k()I
    .locals 9

    .line 28498
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A5l()J

    move-result-wide v7

    .line 28499
    .local p0, "position":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A6I()J

    move-result-wide v5

    .line 28500
    .local v2, "duration":J
    const/16 v4, 0x64

    const/4 v3, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v7, v1

    if-eqz v0, :cond_0

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    .line 28501
    :cond_0
    const/4 v4, 0x0

    .line 28502
    :goto_0
    return v4

    .line 28503
    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v0, v5, v1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x64

    mul-long/2addr v1, v7

    div-long/2addr v1, v5

    long-to-int v0, v1

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v4

    goto :goto_0
.end method

.method public final A5l()J
    .locals 2

    .line 28504
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A07()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28505
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A04:J

    return-wide v0

    .line 28506
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A09:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Df;->A00(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A62()J
    .locals 4

    .line 28507
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0F:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    .line 28509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0F:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ad;->A08()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/9u;->A01(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2

    .line 28510
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A67()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A64()I
    .locals 1

    .line 28511
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FC;->A00:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final A65()I
    .locals 1

    .line 28512
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FC;->A01:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final A67()J
    .locals 2

    .line 28513
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A07()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28514
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A04:J

    return-wide v0

    .line 28515
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Df;->A00(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A69()Lcom/facebook/ads/redexgen/X/Af;
    .locals 1

    .line 28516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    return-object v0
.end method

.method public final A6A()I
    .locals 3

    .line 28517
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A07()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28518
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    return v0

    .line 28519
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0F:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ad;->A00:I

    return v0
.end method

.method public final A6I()J
    .locals 4

    .line 28520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    .line 28521
    .local p0, "timeline":Lcom/facebook/ads/redexgen/X/Af;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Af;->A0E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28522
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 28523
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    .line 28525
    .local v0, "periodId":Lcom/facebook/ads/redexgen/X/FC;
    iget v1, v3, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0F:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A09(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    .line 28526
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A0F:Lcom/facebook/ads/redexgen/X/Ad;

    iget v1, v3, Lcom/facebook/ads/redexgen/X/FC;->A00:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/FC;->A01:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A0A(II)J

    move-result-wide v0

    .line 28527
    .local v2, "adDurationUs":J
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/9u;->A01(J)J

    move-result-wide v0

    return-wide v0

    .line 28528
    .end local v0    # "periodId":Lcom/facebook/ads/redexgen/X/FC;
    .end local v2    # "adDurationUs":J
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A6A()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0G:Lcom/facebook/ads/redexgen/X/Ae;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0B(ILcom/facebook/ads/redexgen/X/Ae;)Lcom/facebook/ads/redexgen/X/Ae;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0N:[Ljava/lang/String;

    const-string v1, "XyQid"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ae;->A02()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A6z()Z
    .locals 1

    .line 28529
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0A:Z

    return v0
.end method

.method public final ACW(Lcom/facebook/ads/redexgen/X/FE;ZZ)V
    .locals 8

    .line 28530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/A0;

    .line 28531
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Df;->A01(ZZI)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v2

    .line 28532
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/AK;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A08:Z

    .line 28533
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:I

    .line 28534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0E:Lcom/facebook/ads/redexgen/X/DW;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/DW;->A10(Lcom/facebook/ads/redexgen/X/FE;ZZ)V

    .line 28535
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Df;->A06(Lcom/facebook/ads/redexgen/X/AK;ZIIZZ)V

    .line 28536
    return-void
.end method

.method public final ACz()V
    .locals 4

    .line 28537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x26

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28538
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    const/16 v1, 0x12

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    const/4 v1, 0x3

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A04:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28539
    invoke-static {}, Lcom/facebook/ads/redexgen/X/AA;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    const/4 v1, 0x1

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 28540
    const/4 v2, 0x2

    const/16 v1, 0xd

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0E:Lcom/facebook/ads/redexgen/X/DW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DW;->A0y()V

    .line 28542
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0C:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 28543
    return-void
.end method

.method public final ADZ(J)V
    .locals 1

    .line 28544
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A6A()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Df;->A0A(IJ)V

    .line 28545
    return-void
.end method

.method public final ADa()V
    .locals 1

    .line 28546
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A6A()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A09(I)V

    .line 28547
    return-void
.end method

.method public final ADq(Z)V
    .locals 7

    .line 28548
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0A:Z

    if-eq v0, p1, :cond_0

    .line 28549
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0A:Z

    .line 28550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0E:Lcom/facebook/ads/redexgen/X/DW;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/DW;->A11(Z)V

    .line 28551
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/AK;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Df;->A06(Lcom/facebook/ads/redexgen/X/AK;ZIIZZ)V

    .line 28552
    :cond_0
    return-void
.end method

.method public final AEF(Z)V
    .locals 8

    .line 28553
    if-eqz p1, :cond_0

    .line 28554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/A0;

    .line 28555
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, p1, v1}, Lcom/facebook/ads/redexgen/X/Df;->A01(ZZI)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v2

    .line 28556
    .local v3, "playbackInfo":Lcom/facebook/ads/redexgen/X/AK;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:I

    .line 28557
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0E:Lcom/facebook/ads/redexgen/X/DW;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/DW;->A12(Z)V

    .line 28558
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Df;->A06(Lcom/facebook/ads/redexgen/X/AK;ZIIZZ)V

    .line 28559
    return-void
.end method

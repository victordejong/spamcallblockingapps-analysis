.class public final Lcom/facebook/ads/redexgen/X/EO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/YF;


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

.field public final A0E:Lcom/facebook/ads/redexgen/X/Dz;

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

.field public final A0L:[Lcom/facebook/ads/redexgen/X/YH;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/EO;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/EO;->A03()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/YH;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/AF;Lcom/facebook/ads/redexgen/X/I0;)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 28934
    move-object/from16 v1, p0

    move-object v2, v1

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28935
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x21

    const/4 v3, 0x5

    const/16 v0, 0x34

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/EO;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28936
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v0, 0x7

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/EO;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xf

    const/16 v3, 0x12

    const/16 v0, 0x4e

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/EO;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    const/4 v3, 0x3

    const/16 v0, 0x5e

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/EO;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A04:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    const/4 v3, 0x1

    const/16 v0, 0x56

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/EO;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 28937
    const/4 v4, 0x2

    const/16 v3, 0xd

    const/16 v0, 0x70

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/EO;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28938
    move-object/from16 v6, p1

    array-length v0, v6

    const/4 v3, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 28939
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/YH;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A0L:[Lcom/facebook/ads/redexgen/X/YH;

    .line 28940
    move-object/from16 v7, p2

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/H7;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A0H:Lcom/facebook/ads/redexgen/X/H7;

    .line 28941
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/EO;->A0A:Z

    .line 28942
    iput v3, v2, Lcom/facebook/ads/redexgen/X/EO;->A03:I

    .line 28943
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/EO;->A0B:Z

    .line 28944
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 28945
    array-length v0, v6

    new-array v5, v0, [Lcom/facebook/ads/redexgen/X/AZ;

    array-length v0, v6

    new-array v4, v0, [Lcom/facebook/ads/redexgen/X/H4;

    const/4 v3, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/H8;

    invoke-direct {v0, v5, v4, v3}, Lcom/facebook/ads/redexgen/X/H8;-><init>([Lcom/facebook/ads/redexgen/X/AZ;[Lcom/facebook/ads/redexgen/X/H4;Ljava/lang/Object;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A0I:Lcom/facebook/ads/redexgen/X/H8;

    .line 28946
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ae;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ae;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A0G:Lcom/facebook/ads/redexgen/X/Ae;

    .line 28947
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ad;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ad;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A0F:Lcom/facebook/ads/redexgen/X/Ad;

    .line 28948
    sget-object v0, Lcom/facebook/ads/redexgen/X/AL;->A04:Lcom/facebook/ads/redexgen/X/AL;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A07:Lcom/facebook/ads/redexgen/X/AL;

    .line 28949
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    .line 28950
    .local v0, "eventLooper":Landroid/os/Looper;
    :goto_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/A3;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/A3;-><init>(Lcom/facebook/ads/redexgen/X/EO;Landroid/os/Looper;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A0C:Landroid/os/Handler;

    .line 28951
    new-instance v8, Lcom/facebook/ads/redexgen/X/AK;

    sget-object v9, Lcom/facebook/ads/redexgen/X/Af;->A01:Lcom/facebook/ads/redexgen/X/Af;

    const-wide/16 v10, 0x0

    sget-object v12, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A0I:Lcom/facebook/ads/redexgen/X/H8;

    move-object v13, v0

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;JLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    iput-object v8, v2, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    .line 28952
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A0J:Ljava/util/ArrayDeque;

    .line 28953
    new-instance v5, Lcom/facebook/ads/redexgen/X/Dz;

    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/EO;->A0I:Lcom/facebook/ads/redexgen/X/H8;

    iget-boolean v10, v2, Lcom/facebook/ads/redexgen/X/EO;->A0A:Z

    iget v11, v2, Lcom/facebook/ads/redexgen/X/EO;->A03:I

    iget-boolean v12, v2, Lcom/facebook/ads/redexgen/X/EO;->A0B:Z

    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/EO;->A0C:Landroid/os/Handler;

    move-object v14, v1

    move-object/from16 v15, p4

    move-object/from16 v9, p3

    invoke-direct/range {v5 .. v15}, Lcom/facebook/ads/redexgen/X/Dz;-><init>([Lcom/facebook/ads/redexgen/X/YH;Lcom/facebook/ads/redexgen/X/H7;Lcom/facebook/ads/redexgen/X/H8;Lcom/facebook/ads/redexgen/X/AF;ZIZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/YF;Lcom/facebook/ads/redexgen/X/I0;)V

    iput-object v5, v2, Lcom/facebook/ads/redexgen/X/EO;->A0E:Lcom/facebook/ads/redexgen/X/Dz;

    .line 28954
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A0E:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0x()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A0D:Landroid/os/Handler;

    .line 28955
    return-void

    .line 28956
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_1

    .line 28957
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private A00(J)J
    .locals 5

    .line 28958
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/9u;->A01(J)J

    move-result-wide v3

    .line 28959
    .local p0, "positionMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A02()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A0F:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    .line 28961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A0F:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ad;->A08()J

    move-result-wide v0

    add-long/2addr v3, v0

    .line 28962
    :cond_0
    return-wide v3
.end method

.method private A01(ZZI)Lcom/facebook/ads/redexgen/X/AK;
    .locals 15

    .line 28963
    move-object v2, p0

    if-eqz p1, :cond_4

    .line 28964
    const/4 v0, 0x0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A01:I

    .line 28965
    iput v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A00:I

    .line 28966
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A04:J

    .line 28967
    :goto_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/AK;

    .line 28968
    if-eqz p2, :cond_3

    sget-object v4, Lcom/facebook/ads/redexgen/X/Af;->A01:Lcom/facebook/ads/redexgen/X/Af;

    .line 28969
    :goto_1
    if-eqz p2, :cond_2

    const/4 v5, 0x0

    :goto_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v7, v0, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v9, v0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    const/4 v12, 0x0

    .line 28970
    if-eqz p2, :cond_1

    sget-object v13, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 28971
    :goto_3
    if-eqz p2, :cond_0

    iget-object v14, v2, Lcom/facebook/ads/redexgen/X/EO;->A0I:Lcom/facebook/ads/redexgen/X/H8;

    :goto_4
    move/from16 v11, p3

    invoke-direct/range {v3 .. v14}, Lcom/facebook/ads/redexgen/X/AK;-><init>(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/FC;JJIZLcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H8;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/AK;->A06:Lcom/facebook/ads/redexgen/X/H8;

    goto :goto_4

    .line 28972
    :cond_1
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/AK;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    goto :goto_3

    .line 28973
    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/AK;->A07:Ljava/lang/Object;

    goto :goto_2

    .line 28974
    :cond_3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    goto :goto_1

    .line 28975
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EO;->A6A()I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A01:I

    .line 28976
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EO;->A08()I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A00:I

    .line 28977
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EO;->A67()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A04:J

    goto :goto_0

    .line 28978
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const-string v1, "Xqr2ExcYOBi8j1Q"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object v3
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/EO;->A0M:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const-string v1, "NVWBbKH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4b

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x59

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/EO;->A0M:[B

    return-void

    :array_0
    .array-data 1
        0x6ct
        0x17t
        0x7et
        0x43t
        0x54t
        0x6bt
        0x57t
        0x5at
        0x42t
        0x5et
        0x49t
        0x72t
        0x56t
        0x4bt
        0x57t
        0x40t
        0x7dt
        0x6at
        0x55t
        0x69t
        0x64t
        0x7ct
        0x60t
        0x77t
        0x49t
        0x6ct
        0x67t
        0x2at
        0x37t
        0x2bt
        0x3dt
        0x2bt
        0x31t
        0x36t
        0x11t
        0x16t
        0xbt
        0x5ft
        0x1bt
        0x2ct
        0x25t
        0x2ct
        0x28t
        0x3at
        0x2ct
        0x69t
        0x40t
        0x48t
        0x35t
        0x4et
        0x32t
        0x24t
        0x24t
        0x2at
        0x15t
        0x2et
        0x61t
        0x28t
        0x26t
        0x2ft
        0x2et
        0x33t
        0x24t
        0x25t
        0x61t
        0x23t
        0x24t
        0x22t
        0x20t
        0x34t
        0x32t
        0x24t
        0x61t
        0x20t
        0x2ft
        0x61t
        0x20t
        0x25t
        0x61t
        0x28t
        0x32t
        0x61t
        0x31t
        0x2dt
        0x20t
        0x38t
        0x28t
        0x2ft
        0x26t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "FdQu0fmyjo2y"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "53g7H5tUmq98heWq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "c"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OWB4F6Jbct6Ly4JY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NHyc4CVBcI41"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VuRuzyUBfoaB1KqcrIY9ro"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "m"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ea4pNsdJDJP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/AK;IZI)V
    .locals 13

    move-object v7, p1

    .line 28979
    move-object v2, p0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A02:I

    sub-int/2addr v0, p2

    iput v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A02:I

    .line 28980
    iget v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A02:I

    if-nez v0, :cond_5

    .line 28981
    iget-wide v5, v7, Lcom/facebook/ads/redexgen/X/AK;->A02:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    .line 28982
    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    const-wide/16 v9, 0x0

    iget-wide v11, v7, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    .line 28983
    move-object v7, v7

    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/AK;->A04(Lcom/facebook/ads/redexgen/X/FC;JJ)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v7

    .line 28984
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A0F()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A08:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-object v5, v7, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    sget-object v3, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x3

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28985
    :cond_2
    sget-object v3, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const-string v1, "oGDG41JiAsT7PCq0"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Af;->A0F()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28986
    iput v4, v2, Lcom/facebook/ads/redexgen/X/EO;->A00:I

    .line 28987
    iput v4, v2, Lcom/facebook/ads/redexgen/X/EO;->A01:I

    sget-object v3, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v3, v0

    const/4 v0, 0x2

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    goto :goto_0

    .line 28988
    :cond_3
    sget-object v3, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const-string v1, "vrOcQin3pszluGLq"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v1, "REI4M31lEJcbEC2a"

    const/4 v0, 0x3

    aput-object v1, v3, v0

    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A04:J

    .line 28989
    :cond_4
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A08:Z

    if-eqz v0, :cond_6

    .line 28990
    const/4 v10, 0x0

    .line 28991
    .local v9, "timelineChangeReason":I
    :goto_1
    iget-boolean v11, v2, Lcom/facebook/ads/redexgen/X/EO;->A09:Z

    .line 28992
    .local v0, "seekProcessed":Z
    iput-boolean v4, v2, Lcom/facebook/ads/redexgen/X/EO;->A08:Z

    .line 28993
    iput-boolean v4, v2, Lcom/facebook/ads/redexgen/X/EO;->A09:Z

    .line 28994
    const/4 v12, 0x0

    move-object v6, v2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/EO;->A06(Lcom/facebook/ads/redexgen/X/AK;ZIIZZ)V

    .line 28995
    .end local v9    # "timelineChangeReason":I
    .end local v0    # "seekProcessed":Z
    :cond_5
    return-void

    .line 28996
    :cond_6
    const/4 v10, 0x2

    goto :goto_1
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/AK;ZIIZZ)V
    .locals 14

    .line 28997
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 28998
    .local v4, "isRunningRecursiveListenerNotification":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A0J:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/facebook/ads/redexgen/X/A4;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/EO;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/EO;->A0H:Lcom/facebook/ads/redexgen/X/H7;

    iget-boolean v12, v2, Lcom/facebook/ads/redexgen/X/EO;->A0A:Z

    move/from16 v8, p2

    move-object v4, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v13, p6

    move/from16 v11, p5

    invoke-direct/range {v3 .. v13}, Lcom/facebook/ads/redexgen/X/A4;-><init>(Lcom/facebook/ads/redexgen/X/AK;Lcom/facebook/ads/redexgen/X/AK;Ljava/util/Set;Lcom/facebook/ads/redexgen/X/H7;ZIIZZZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 28999
    iput-object v4, v2, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    .line 29000
    if-eqz v1, :cond_0

    .line 29001
    return-void

    .line 29002
    :cond_0
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 29003
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/A4;->A01()V

    .line 29004
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A0J:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 29005
    :cond_1
    return-void
.end method

.method private A07()Z
    .locals 1

    .line 29006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A0F()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A02:I

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
    .locals 1

    .line 29007
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EO;->A07()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29008
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A00:I

    return v0

    .line 29009
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    return v0
.end method

.method public final A09(I)V
    .locals 2

    .line 29010
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/EO;->A0A(IJ)V

    .line 29011
    return-void
.end method

.method public final A0A(IJ)V
    .locals 12

    .line 29012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    .line 29013
    .local p0, "timeline":Lcom/facebook/ads/redexgen/X/Af;
    move v9, p1

    if-ltz v9, :cond_b

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Af;->A0F()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const-string v1, "k"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "F"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Af;->A02()I

    move-result v0

    if-ge v9, v0, :cond_b

    .line 29014
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/EO;->A09:Z

    .line 29015
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A02:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A02:I

    .line 29016
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EO;->A0C()Z

    move-result v5

    const/4 v4, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const-string v1, "iOLxdGxzjtj8VTTv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "k2rTYfByBhCiNj1b"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v5, :cond_4

    .line 29017
    const/4 v2, 0x2

    const/16 v1, 0xd

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EO;->A02(III)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x32

    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const-string v1, "fs0FIhTd6T569fWM98lB5KOUS"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v1, 0x27

    const/16 v0, 0xa

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/EO;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29018
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/EO;->A0C:Landroid/os/Handler;

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    .line 29019
    invoke-virtual {v2, v4, v3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 29020
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 29021
    return-void

    .line 29022
    :cond_4
    iput v9, p0, Lcom/facebook/ads/redexgen/X/EO;->A01:I

    .line 29023
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Af;->A0F()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_7

    .line 29024
    cmp-long v5, p2, v1

    sget-object v1, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const-string v1, "dOqGbPzaS7jKfyvdUFqkQf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v5, :cond_6

    const-wide/16 v0, 0x0

    :goto_1
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A04:J

    .line 29025
    iput v4, p0, Lcom/facebook/ads/redexgen/X/EO;->A00:I

    .line 29026
    .end local v9
    .end local v6
    :goto_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/EO;->A0E:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/9u;->A00(J)J

    move-result-wide v0

    invoke-virtual {v2, v6, v9, v0, v1}, Lcom/facebook/ads/redexgen/X/Dz;->A0z(Lcom/facebook/ads/redexgen/X/Af;IJ)V

    .line 29027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/AO;

    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 29028
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/AO;
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const-string v1, "l5NWk5x9vooO50uu"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "FcAzQ8glamB386Jq"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/AO;->ABD(I)V

    .line 29029
    .end local p2    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    goto :goto_3

    .line 29030
    :cond_6
    move-wide v0, p2

    goto :goto_1

    .line 29031
    :cond_7
    cmp-long v0, p2, v1

    if-nez v0, :cond_8

    .line 29032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A0G:Lcom/facebook/ads/redexgen/X/Ae;

    invoke-virtual {v6, v9, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0C(ILcom/facebook/ads/redexgen/X/Ae;)Lcom/facebook/ads/redexgen/X/Ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ae;->A01()J

    move-result-wide v10

    .line 29033
    .local v6, "windowPositionUs":J
    :goto_4
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/EO;->A0G:Lcom/facebook/ads/redexgen/X/Ae;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/EO;->A0F:Lcom/facebook/ads/redexgen/X/Ad;

    .line 29034
    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Af;->A08(Lcom/facebook/ads/redexgen/X/Ae;Lcom/facebook/ads/redexgen/X/Ad;IJ)Landroid/util/Pair;

    move-result-object v2

    .line 29035
    .local v9, "periodIndexAndPositon":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-static {v10, v11}, Lcom/facebook/ads/redexgen/X/9u;->A01(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A04:J

    .line 29036
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A00:I

    goto :goto_2

    .line 29037
    :cond_8
    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/9u;->A00(J)J

    move-result-wide v10

    goto :goto_4

    .line 29038
    :cond_9
    return-void

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 29039
    :cond_b
    new-instance v0, Lcom/facebook/ads/redexgen/X/AE;

    invoke-direct {v0, v6, v9, p2, p3}, Lcom/facebook/ads/redexgen/X/AE;-><init>(Lcom/facebook/ads/redexgen/X/Af;IJ)V

    throw v0
.end method

.method public final A0B(Landroid/os/Message;)V
    .locals 6

    .line 29040
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-eqz v5, :cond_5

    if-eq v5, v4, :cond_0

    const/4 v3, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 29041
    :cond_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/ads/redexgen/X/AL;

    .line 29042
    .local p0, "playbackParameters":Lcom/facebook/ads/redexgen/X/AL;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A07:Lcom/facebook/ads/redexgen/X/AL;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/AL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 29043
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/EO;->A07:Lcom/facebook/ads/redexgen/X/AL;

    .line 29044
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/EO;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const-string v1, "7KT5lT3IIkvardi0cOE285"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v5, v3, :cond_3

    .line 29045
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/facebook/ads/redexgen/X/A0;

    .line 29046
    .local p0, "playbackError":Lcom/facebook/ads/redexgen/X/A0;
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/EO;->A05:Lcom/facebook/ads/redexgen/X/A0;

    .line 29047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const-string v1, "lr70Wm3MPuK1"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AO;

    .line 29048
    .local v5, "listener":Lcom/facebook/ads/redexgen/X/AO;
    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/AO;->AB9(Lcom/facebook/ads/redexgen/X/A0;)V

    .line 29049
    .end local v5    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    goto :goto_1

    .line 29050
    .end local p0    # "playbackError":Lcom/facebook/ads/redexgen/X/A0;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const-string v1, "XPkhdR3hZ8JGZkbg"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "HitM1md97HqEAHyx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 29051
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AO;

    .line 29052
    .restart local v5    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/AO;->AB7(Lcom/facebook/ads/redexgen/X/AL;)V

    .line 29053
    .end local v5    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    goto :goto_2

    .line 29054
    .end local p0
    :cond_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/ads/redexgen/X/AK;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_7

    :goto_3
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v2, v4, v0}, Lcom/facebook/ads/redexgen/X/EO;->A05(Lcom/facebook/ads/redexgen/X/AK;IZI)V

    .line 29055
    :cond_6
    return-void

    .line 29056
    :cond_7
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public final A0C()Z
    .locals 1

    .line 29057
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EO;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FC;->A02()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A3I(Lcom/facebook/ads/redexgen/X/AO;)V
    .locals 1

    .line 29058
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A0K:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 29059
    return-void
.end method

.method public final A4L(Lcom/facebook/ads/redexgen/X/AV;)Lcom/facebook/ads/redexgen/X/AW;
    .locals 7

    .line 29060
    new-instance v1, Lcom/facebook/ads/redexgen/X/AW;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/EO;->A0E:Lcom/facebook/ads/redexgen/X/Dz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    .line 29061
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EO;->A6A()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/EO;->A0D:Landroid/os/Handler;

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/AW;-><init>(Lcom/facebook/ads/redexgen/X/AU;Lcom/facebook/ads/redexgen/X/AV;Lcom/facebook/ads/redexgen/X/Af;ILandroid/os/Handler;)V

    .line 29062
    return-object v1
.end method

.method public final A5k()I
    .locals 11

    .line 29063
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EO;->A5l()J

    move-result-wide v9

    .line 29064
    .local p0, "position":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EO;->A6I()J

    move-result-wide v7

    .line 29065
    .local v2, "duration":J
    const/16 v4, 0x64

    const/4 v3, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v9, v1

    if-eqz v0, :cond_1

    cmp-long v5, v7, v1

    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const-string v1, "7"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "n"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v5, :cond_2

    .line 29066
    :cond_1
    const/4 v4, 0x0

    .line 29067
    :goto_0
    return v4

    .line 29068
    :cond_2
    const-wide/16 v5, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/EO;->A0N:[Ljava/lang/String;

    const-string v1, "w"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "D"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    cmp-long v0, v7, v5

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-wide/16 v1, 0x64

    mul-long/2addr v1, v9

    div-long/2addr v1, v7

    long-to-int v0, v1

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v4

    goto :goto_0
.end method

.method public final A5l()J
    .locals 2

    .line 29069
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EO;->A07()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29070
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A04:J

    return-wide v0

    .line 29071
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A09:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/EO;->A00(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A62()J
    .locals 4

    .line 29072
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EO;->A0C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A0F:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    .line 29074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A0F:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ad;->A08()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A01:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/9u;->A01(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2

    .line 29075
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EO;->A67()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A64()I
    .locals 1

    .line 29076
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EO;->A0C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

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

    .line 29077
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EO;->A0C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

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

    .line 29078
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EO;->A07()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29079
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A04:J

    return-wide v0

    .line 29080
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A0A:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/EO;->A00(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A69()Lcom/facebook/ads/redexgen/X/Af;
    .locals 1

    .line 29081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    return-object v0
.end method

.method public final A6A()I
    .locals 3

    .line 29082
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EO;->A07()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29083
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A01:I

    return v0

    .line 29084
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A0F:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ad;->A00:I

    return v0
.end method

.method public final A6I()J
    .locals 4

    .line 29085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    .line 29086
    .local p0, "timeline":Lcom/facebook/ads/redexgen/X/Af;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Af;->A0F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29087
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 29088
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EO;->A0C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/AK;->A04:Lcom/facebook/ads/redexgen/X/FC;

    .line 29090
    .local v0, "periodId":Lcom/facebook/ads/redexgen/X/FC;
    iget v1, v3, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A0F:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    .line 29091
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/EO;->A0F:Lcom/facebook/ads/redexgen/X/Ad;

    iget v1, v3, Lcom/facebook/ads/redexgen/X/FC;->A00:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/FC;->A01:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ad;->A0A(II)J

    move-result-wide v0

    .line 29092
    .local v2, "adDurationUs":J
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/9u;->A01(J)J

    move-result-wide v0

    return-wide v0

    .line 29093
    .end local v0    # "periodId":Lcom/facebook/ads/redexgen/X/FC;
    .end local v2    # "adDurationUs":J
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EO;->A6A()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A0G:Lcom/facebook/ads/redexgen/X/Ae;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0C(ILcom/facebook/ads/redexgen/X/Ae;)Lcom/facebook/ads/redexgen/X/Ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ae;->A02()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A6z()Z
    .locals 1

    .line 29094
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A0A:Z

    return v0
.end method

.method public final ACW(Lcom/facebook/ads/redexgen/X/FE;ZZ)V
    .locals 8

    .line 29095
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A05:Lcom/facebook/ads/redexgen/X/A0;

    .line 29096
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/EO;->A01(ZZI)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v2

    .line 29097
    .local p0, "playbackInfo":Lcom/facebook/ads/redexgen/X/AK;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/EO;->A08:Z

    .line 29098
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A02:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A02:I

    .line 29099
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A0E:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Dz;->A10(Lcom/facebook/ads/redexgen/X/FE;ZZ)V

    .line 29100
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/EO;->A06(Lcom/facebook/ads/redexgen/X/AK;ZIIZZ)V

    .line 29101
    return-void
.end method

.method public final ACz()V
    .locals 4

    .line 29102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x26

    const/16 v1, 0x8

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EO;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29103
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EO;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    const/16 v1, 0x12

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EO;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    const/4 v1, 0x3

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EO;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A04:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29104
    invoke-static {}, Lcom/facebook/ads/redexgen/X/AA;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    const/4 v1, 0x1

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EO;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 29105
    const/4 v2, 0x2

    const/16 v1, 0xd

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EO;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A0E:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0y()V

    .line 29107
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/EO;->A0C:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 29108
    return-void
.end method

.method public final ADY(J)V
    .locals 1

    .line 29109
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EO;->A6A()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/EO;->A0A(IJ)V

    .line 29110
    return-void
.end method

.method public final ADZ()V
    .locals 1

    .line 29111
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EO;->A6A()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/EO;->A09(I)V

    .line 29112
    return-void
.end method

.method public final ADp(Z)V
    .locals 7

    .line 29113
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A0A:Z

    if-eq v0, p1, :cond_0

    .line 29114
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/EO;->A0A:Z

    .line 29115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A0E:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Dz;->A11(Z)V

    .line 29116
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/EO;->A06:Lcom/facebook/ads/redexgen/X/AK;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/EO;->A06(Lcom/facebook/ads/redexgen/X/AK;ZIIZZ)V

    .line 29117
    :cond_0
    return-void
.end method

.method public final AED(Z)V
    .locals 8

    .line 29118
    if-eqz p1, :cond_0

    .line 29119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A05:Lcom/facebook/ads/redexgen/X/A0;

    .line 29120
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, p1, v1}, Lcom/facebook/ads/redexgen/X/EO;->A01(ZZI)Lcom/facebook/ads/redexgen/X/AK;

    move-result-object v2

    .line 29121
    .local v3, "playbackInfo":Lcom/facebook/ads/redexgen/X/AK;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A02:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A02:I

    .line 29122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A0E:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Dz;->A12(Z)V

    .line 29123
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/EO;->A06(Lcom/facebook/ads/redexgen/X/AK;ZIIZZ)V

    .line 29124
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/8Y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/8W;,
        Lcom/facebook/ads/redexgen/X/8X;
    }
.end annotation


# static fields
.field public static A00:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static A01:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static A02:Z

.field public static A03:Z

.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/8Z;",
            ">;"
        }
    .end annotation
.end field

.field public static final A08:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A09:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final A0A:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/8W;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0B:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/8X;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0C:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 17948
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8Y;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8Y;->A04()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A00:Landroid/util/SparseIntArray;

    .line 17949
    const/4 v3, 0x0

    sput-boolean v3, Lcom/facebook/ads/redexgen/X/8Y;->A03:Z

    .line 17950
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A0B:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17951
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A0A:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17952
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A01:Ljava/util/concurrent/Executor;

    .line 17953
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Integer;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A06:Ljava/util/List;

    .line 17954
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17955
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A07:Ljava/util/List;

    .line 17956
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A09:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17957
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17958
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A0C:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17959
    sput-boolean v3, Lcom/facebook/ads/redexgen/X/8Y;->A02:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8D;)I
    .locals 4

    .line 17961
    const/16 v2, 0x1c9

    const/4 v1, 0x7

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0xc8

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A1i:I

    if-ne v0, p1, :cond_0

    .line 17962
    return v3

    .line 17963
    :cond_0
    const/16 v2, 0x1a6

    const/4 v1, 0x5

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17964
    return v3

    .line 17965
    :cond_1
    const/16 v2, 0x1b5

    const/4 v1, 0x6

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17966
    return v3

    .line 17967
    :cond_2
    const/16 v2, 0x182

    const/16 v1, 0x24

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17968
    const/16 v0, 0x32

    return v0

    .line 17969
    :cond_3
    const/16 v2, 0x173

    const/16 v1, 0xf

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17970
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/J6;->A05(Landroid/content/Context;)I

    move-result v0

    return v0

    .line 17971
    :cond_4
    const/4 v3, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const-string v1, "MSKlPe4okWTggpeViHGlBF3nlCraGBz9"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x27

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A02()Ljava/util/List;
    .locals 4

    .line 17972
    sget-object v3, Lcom/facebook/ads/redexgen/X/8Y;->A07:Ljava/util/List;

    sget-object v2, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const-string v1, "TV2BvPAOYvnRV0R5I88rwwfNZOOU8"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A03()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 17973
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A0A:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x1d0

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x5dt
        -0x69t
        -0x28t
        -0x25t
        -0x25t
        -0x20t
        -0x15t
        -0x20t
        -0x1at
        -0x1bt
        -0x28t
        -0x1dt
        -0x40t
        -0x1bt
        -0x23t
        -0x1at
        -0x69t
        -0x4ct
        -0x69t
        -0x6et
        -0x7at
        -0x2dt
        -0x35t
        -0x27t
        -0x27t
        -0x39t
        -0x33t
        -0x35t
        -0x7at
        -0x5dt
        -0x7at
        0x5bt
        0x4ft
        -0x5et
        -0x5ct
        -0x6ft
        -0x5dt
        -0x58t
        -0x61t
        -0x6ct
        0x72t
        -0x62t
        -0x6dt
        -0x6ct
        0x4ft
        0x6ct
        0x4ft
        0x74t
        -0x42t
        -0x24t
        -0x17t
        -0x5et
        -0x11t
        -0x65t
        -0x19t
        -0x16t
        -0x1et
        -0x65t
        -0x41t
        -0x20t
        -0x23t
        -0x10t
        -0x1et
        -0x65t
        -0x40t
        -0xft
        -0x20t
        -0x17t
        -0x11t
        -0x57t
        -0x65t
        -0x42t
        -0x16t
        -0x17t
        -0x11t
        -0x20t
        -0xdt
        -0x11t
        -0x65t
        -0x1ct
        -0x12t
        -0x65t
        -0x17t
        -0x10t
        -0x19t
        -0x19t
        -0x57t
        0x77t
        -0x5dt
        -0x57t
        -0x5et
        -0x58t
        -0x67t
        -0x5at
        0x6et
        0x54t
        -0x4ft
        -0x2et
        -0x31t
        -0x1et
        -0x2ct
        -0x73t
        -0x30t
        -0x21t
        -0x32t
        -0x20t
        -0x2bt
        -0x73t
        -0x31t
        -0x2et
        -0x30t
        -0x32t
        -0x1et
        -0x20t
        -0x2et
        -0x73t
        -0x24t
        -0x2dt
        -0x73t
        -0x2et
        -0x1dt
        -0x2et
        -0x25t
        -0x1ft
        -0x73t
        -0x1ct
        -0x2at
        -0x1ft
        -0x2bt
        -0x73t
        -0x20t
        -0x1et
        -0x31t
        -0x1ft
        -0x1at
        -0x23t
        -0x2et
        -0x73t
        -0x56t
        -0x73t
        0x6ct
        -0x61t
        -0x76t
        -0x74t
        -0x74t
        -0x75t
        -0x74t
        -0x75t
        0x47t
        -0x70t
        -0x6bt
        0x54t
        -0x6ct
        -0x74t
        -0x6ct
        -0x6at
        -0x67t
        -0x60t
        0x47t
        -0x6dt
        -0x6at
        -0x72t
        0x47t
        -0x6dt
        -0x70t
        -0x6ct
        -0x70t
        -0x65t
        0x48t
        0x47t
        0x73t
        -0x78t
        -0x66t
        -0x65t
        0x47t
        -0x74t
        -0x63t
        -0x74t
        -0x6bt
        -0x65t
        0x61t
        0x47t
        -0x6ct
        -0x39t
        -0x4et
        -0x4ct
        -0x41t
        -0x3dt
        -0x48t
        -0x42t
        -0x43t
        0x6ft
        -0x6dt
        -0x4ct
        -0x4ft
        -0x3ct
        -0x4at
        0x6ft
        -0x6ct
        -0x3bt
        -0x4ct
        -0x43t
        -0x3dt
        0x6ft
        -0x3at
        -0x48t
        -0x3dt
        -0x49t
        0x6ft
        -0x3et
        -0x3ct
        -0x4ft
        -0x3dt
        -0x38t
        -0x41t
        -0x4ct
        0x6ft
        -0x74t
        0x6ft
        -0x61t
        -0x2et
        -0x43t
        -0x41t
        -0x36t
        -0x32t
        -0x3dt
        -0x37t
        -0x38t
        0x7at
        -0x42t
        -0x31t
        -0x34t
        -0x3dt
        -0x38t
        -0x3ft
        0x7at
        -0x3at
        -0x37t
        -0x3ft
        -0x3ft
        -0x3dt
        -0x38t
        -0x3ft
        0x7at
        -0x42t
        -0x41t
        -0x44t
        -0x31t
        -0x3ft
        0x7at
        -0x41t
        -0x30t
        -0x41t
        -0x38t
        -0x32t
        -0x78t
        -0x1bt
        0x18t
        0x3t
        0x5t
        0x10t
        0x14t
        0x9t
        0xft
        0xet
        -0x40t
        0x13t
        0x8t
        0xft
        0x15t
        0xct
        0x4t
        -0x40t
        0xet
        0xft
        0x14t
        -0x40t
        0x8t
        0x1t
        0x10t
        0x10t
        0x5t
        0xet
        -0x40t
        0x8t
        0x5t
        0x12t
        0x5t
        -0x32t
        -0x65t
        -0x69t
        -0x6at
        -0x36t
        -0x47t
        -0x42t
        -0x46t
        -0x3dt
        -0x48t
        -0x46t
        -0x5dt
        -0x46t
        -0x37t
        -0x34t
        -0x3ct
        -0x39t
        -0x40t
        -0x1ct
        0x9t
        0x1t
        0xat
        -0x45t
        -0x21t
        0x0t
        -0x3t
        0x10t
        0x2t
        -0x45t
        -0x20t
        0x11t
        0x0t
        0x9t
        0xft
        -0x45t
        0x12t
        0x4t
        0xft
        0x3t
        -0x45t
        0xet
        0x10t
        -0x3t
        0xft
        0x14t
        0xbt
        0x0t
        -0x45t
        -0x28t
        -0x45t
        -0x35t
        -0x1at
        -0x1at
        -0x69t
        -0x1ct
        -0x28t
        -0x1bt
        -0x10t
        -0x69t
        -0x24t
        -0x13t
        -0x24t
        -0x1bt
        -0x15t
        -0x16t
        -0x69t
        -0x1at
        -0x23t
        -0x69t
        -0x16t
        -0x14t
        -0x27t
        -0x15t
        -0x10t
        -0x19t
        -0x24t
        -0x69t
        -0x26t
        -0x1at
        -0x25t
        -0x24t
        -0x4ft
        -0x69t
        -0x65t
        -0x63t
        -0x68t
        -0x63t
        -0x66t
        -0x53t
        -0x66t
        -0x68t
        -0x5bt
        -0x58t
        -0x60t
        -0x60t
        -0x5et
        -0x59t
        -0x60t
        -0x15t
        -0x8t
        -0x3t
        -0x18t
        -0x13t
        -0x12t
        -0x3t
        -0x12t
        -0x14t
        -0x3t
        -0xet
        -0x8t
        -0x9t
        -0x18t
        0x0t
        -0x8t
        -0x18t
        -0x4t
        -0xet
        -0x10t
        -0x9t
        -0x16t
        -0xbt
        -0x18t
        -0x13t
        -0x16t
        -0x3t
        -0x16t
        -0x18t
        -0xbt
        -0x8t
        -0x10t
        -0x10t
        -0xet
        -0x9t
        -0x10t
        -0x3et
        -0x40t
        -0x3et
        -0x39t
        -0x3ct
        -0x39t
        -0x38t
        -0x3et
        -0x31t
        -0x2et
        -0x36t
        -0x36t
        -0x34t
        -0x2ft
        -0x36t
        -0x2t
        0xdt
        0x6t
        0x6t
        -0x3t
        0x4t
        -0x31t
        -0x2at
        -0x37t
        -0x3bt
        -0x24t
        -0x39t
        -0x2et
        -0x31t
        -0x36t
        -0x39t
        -0x26t
        -0x31t
        -0x2bt
        -0x2ct
        -0x24t
        -0x2dt
        -0x1et
        -0x1bt
        -0x23t
        -0x20t
        -0x27t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lfqbOpCQc8eNVWWSF0ti"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aQ5ZOD0I"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7f7up0GBGRCd1p0enpCjG4lcj76"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dHBYXWbpLBdqteinvxBO5bOixoP3oT04"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DPNUUQYEctncegz3shse9IBb8Vdl47"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "4q0rwT09y0cbatV7Yp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6l64E9SK9p5G"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "edaEIeRSccYYgTnyelVwcwdzoe4C2sfO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/8D;II)V
    .locals 6

    .line 17974
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object p0

    sget v5, Lcom/facebook/ads/redexgen/X/8e;->A2D:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x152

    const/16 v1, 0x21

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x57

    const/16 v1, 0x9

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17975
    const/16 v2, 0x1ab

    const/16 v1, 0xa

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v5, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 17976
    return-void
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V
    .locals 6
    .param p0    # Lcom/facebook/ads/redexgen/X/8D;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17977
    move-object v4, p0

    if-nez v4, :cond_0

    .line 17978
    const/16 v2, 0x30

    const/16 v1, 0x27

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0G(Ljava/lang/Throwable;)V

    .line 17979
    return-void

    .line 17980
    :cond_0
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8C;->A01(Lcom/facebook/ads/redexgen/X/XK;)V

    .line 17981
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/8Y;->A02:Z

    move-object v5, p1

    move-object p3, p3

    move p0, p2

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/8f;->A00()I

    move-result v0

    if-nez v0, :cond_1

    .line 17982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x60

    const/16 v1, 0x2c

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    const/16 v1, 0x10

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17983
    .local v4, "message":Ljava/lang/String;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0E(Ljava/lang/RuntimeException;)V

    .line 17984
    .end local v4    # "message":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/8Y;->A0J(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;IDLcom/facebook/ads/redexgen/X/8f;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17985
    invoke-static {v4, v5, p0, p3}, Lcom/facebook/ads/redexgen/X/8Y;->A0A(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17986
    :catchall_0
    move-exception v0

    .line 17987
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0G(Ljava/lang/Throwable;)V

    .line 17988
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17989
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/8f;->A03(I)V

    .line 17990
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/facebook/ads/redexgen/X/8f;->A08(Z)V

    .line 17991
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/facebook/ads/redexgen/X/8f;->A04(I)V

    .line 17992
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17993
    invoke-virtual {p3, v1}, Lcom/facebook/ads/redexgen/X/8f;->A06(Z)V

    .line 17994
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8Y;->A07(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_1

    .line 17995
    :cond_0
    invoke-virtual {p3, v2}, Lcom/facebook/ads/redexgen/X/8f;->A06(Z)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17996
    :catchall_0
    move-exception v0

    .line 17997
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0G(Ljava/lang/Throwable;)V

    .line 17998
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17999
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/8f;->A03(I)V

    .line 18000
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/8f;->A06(Z)V

    .line 18001
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8Y;->A07(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18002
    :catchall_0
    move-exception v0

    .line 18003
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0G(Ljava/lang/Throwable;)V

    .line 18004
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V
    .locals 8

    .line 18005
    const-class v7, Lcom/facebook/ads/redexgen/X/8Y;

    monitor-enter v7

    .line 18006
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/8Y;->A03:Z

    if-nez v0, :cond_2

    .line 18007
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A01(Landroid/content/Context;)I

    move-result v2

    .line 18008
    .local p1, "threshold":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A09:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    add-int/lit8 v0, v2, -0x1

    if-ge v1, v0, :cond_1

    .line 18009
    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A07:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8Z;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8Z;-><init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18010
    :cond_0
    :goto_0
    monitor-exit v7

    goto :goto_1

    .line 18011
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A09:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 18012
    sget-object v5, Lcom/facebook/ads/redexgen/X/8Y;->A07:Ljava/util/List;

    const/16 v2, 0x1ab

    const/16 v1, 0xa

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/8e;->A2A:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8c

    const/16 v1, 0x2a

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    const/4 v1, 0x1

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/8Z;

    invoke-direct {v0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/8Z;-><init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18013
    :cond_2
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0B(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;Z)V

    goto :goto_0

    .line 18014
    :goto_1
    return-void

    .line 18015
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;Z)V
    .locals 10

    .line 18016
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A0B:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/8X;

    .line 18017
    .local v5, "environmentDataProvider":Lcom/facebook/ads/redexgen/X/8X;
    if-eqz v9, :cond_4

    .line 18018
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/8X;->A8B()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 18019
    .local v9, "isRunningEndToEndTest":Z
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    move-object v6, p1

    move-object v8, p3

    move v7, p2

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 18020
    :cond_0
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/8f;->A00()I

    move-result v4

    const/16 v2, 0x121

    const/16 v1, 0x11

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1f

    const/16 v1, 0x10

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_3

    .line 18021
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb6

    const/16 v1, 0x25

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18022
    .local v6, "message":Ljava/lang/String;
    invoke-static {v3, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18023
    .end local v6    # "message":Ljava/lang/String;
    .end local v6
    :cond_1
    :goto_1
    new-instance v4, Lcom/facebook/ads/redexgen/X/XY;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/XY;-><init>(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;Lcom/facebook/ads/redexgen/X/8X;)V

    .line 18024
    .local v6, "logRunnable":Ljava/lang/Runnable;
    if-eqz p4, :cond_2

    .line 18025
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A01:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18026
    :goto_2
    return-void

    .line 18027
    :cond_2
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Kb;->run()V

    goto :goto_2

    .line 18028
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x132

    const/16 v1, 0x20

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x13

    const/16 v1, 0xc

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18029
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/8f;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18030
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/8f;->A02()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18031
    .restart local v6    # "logRunnable":Ljava/lang/Runnable;
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 18032
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;Z)V
    .locals 0

    .line 18033
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/8Y;->A0B(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;Z)V

    return-void
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/8X;Lcom/facebook/ads/redexgen/X/8W;Z)V
    .locals 3

    .line 18034
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A0A:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 18035
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A0B:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 18036
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18037
    const-class v2, Lcom/facebook/ads/redexgen/X/8Y;

    monitor-enter v2

    .line 18038
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/8Y;->A03:Z

    if-nez v0, :cond_0

    .line 18039
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/8Y;->A03:Z

    .line 18040
    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A01:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/XX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XX;-><init>(Lcom/facebook/ads/redexgen/X/XK;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18041
    :cond_0
    monitor-exit v2

    .line 18042
    return-void

    .line 18043
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A0E(Ljava/lang/RuntimeException;)V
    .locals 2

    .line 18044
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/8Y;->A02:Z

    if-eqz v0, :cond_0

    .line 18045
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/8V;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/8V;-><init>(Ljava/lang/RuntimeException;)V

    .line 18046
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18047
    :cond_0
    return-void
.end method

.method public static A0F(Ljava/lang/Throwable;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18048
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/8Y;->A02:Z

    if-eqz v0, :cond_0

    .line 18049
    const/16 v2, 0x100

    const/16 v1, 0x21

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0E(Ljava/lang/RuntimeException;)V

    .line 18050
    :cond_0
    return-void
.end method

.method public static A0G(Ljava/lang/Throwable;)V
    .locals 4

    .line 18051
    const/16 v2, 0x121

    const/16 v1, 0x11

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xdb

    const/16 v1, 0x25

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18052
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/8Y;->A02:Z

    if-eqz v0, :cond_0

    .line 18053
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0E(Ljava/lang/RuntimeException;)V

    .line 18054
    :cond_0
    return-void
.end method

.method public static synthetic A0H(Ljava/lang/Throwable;)V
    .locals 0

    .line 18055
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8Y;->A0G(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static A0I(Lcom/facebook/ads/redexgen/X/8D;)Z
    .locals 1

    .line 18056
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A0C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 18057
    .local p0, "shouldLogFunnelEvents":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 18058
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 18059
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0A(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0J(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;IDLcom/facebook/ads/redexgen/X/8f;)Z
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 18060
    const/4 v11, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A04(Landroid/content/Context;)I

    move-result v3

    .line 18061
    .local p0, "additionalDebugLoggingSamplingPercentage":I
    const/4 v7, 0x1

    if-ge v3, v7, :cond_0

    .line 18062
    return v11

    .line 18063
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0M(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v6

    .line 18064
    .local p5, "blackListEventsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 18065
    .local p1, "additionalDebugLoggingBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    const/4 v1, 0x1

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18066
    .local p2, "eventKey":Ljava/lang/String;
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 18067
    .local v11, "isBlacklisted":Z
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-eqz v10, :cond_6

    .line 18068
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 18069
    .local v6, "tempSampling":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 18070
    .local v5, "sampling":I
    :goto_0
    if-nez v0, :cond_2

    .line 18071
    return v11

    .line 18072
    :cond_2
    if-lez v0, :cond_4

    .line 18073
    int-to-double v0, v0

    div-double/2addr v8, v0

    cmpg-double v0, p3, v8

    if-gtz v0, :cond_3

    const/4 v11, 0x1

    :cond_3
    return v11

    .line 18074
    :cond_4
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A03(Landroid/content/Context;)I

    move-result v0

    .line 18075
    .local v4, "additionalDebugLoggingBlackListPercentage":I
    if-ge v0, v7, :cond_5

    .line 18076
    return v11

    .line 18077
    :cond_5
    mul-int/2addr v3, v0

    int-to-double v2, v3

    const-wide v0, 0x40c3880000000000L    # 10000.0

    div-double/2addr v2, v0

    .line 18078
    .end local v6    # "tempSampling":Ljava/lang/Integer;
    .end local v5    # "sampling":I
    .end local v4    # "additionalDebugLoggingBlackListPercentage":I
    .local v2, "logProbability":D
    goto :goto_1

    .line 18079
    .end local v2    # "logProbability":D
    :cond_6
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/8f;->A09()Z

    move-result v0

    if-nez v0, :cond_7

    .line 18080
    const-wide/16 v2, 0x0

    .restart local v2    # "logProbability":D
    goto :goto_1

    .line 18081
    .end local v2    # "logProbability":D
    :cond_7
    int-to-double v2, v3

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v0

    .line 18082
    .restart local v2    # "logProbability":D
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A00()D

    move-result-wide v5

    .line 18083
    .local v6, "sessionRandom":D
    const/16 v4, 0x1a6

    const/4 v1, 0x5

    const/16 v0, 0x38

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 18084
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18085
    return v7

    .line 18086
    :cond_8
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A06(Landroid/content/Context;)I

    move-result v0

    .line 18087
    .local v4, "cacheEventsSampling":I
    if-nez v0, :cond_9

    .line 18088
    return v11

    .line 18089
    :cond_9
    if-lez v0, :cond_d

    .line 18090
    .end local p5    # "blackListEventsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v0, "blackListEventsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    int-to-double v0, v0

    div-double/2addr v8, v0

    .line 18091
    .local v3, "cacheEventLogProbability":D
    if-eqz v10, :cond_b

    .line 18092
    mul-double/2addr v8, v2

    cmpg-double v0, v5, v8

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    .line 18093
    :cond_b
    cmpg-double v0, v5, v8

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_3

    .line 18094
    .end local p5
    .restart local v0    # "blackListEventsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_d
    const/16 v4, 0x1c9

    const/4 v1, 0x7

    const/16 v0, 0x47

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A1i:I

    if-ne v0, p2, :cond_13

    .line 18095
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4

    .line 18096
    .end local v4    # "cacheEventsSampling":I
    :cond_e
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0E(Landroid/content/Context;)I

    move-result v0

    goto :goto_5

    .line 18097
    :goto_4
    const/4 v0, 0x1

    .line 18098
    .local v4, "networkEventsSampling":I
    .restart local v4    # "networkEventsSampling":I
    :goto_5
    if-nez v0, :cond_f

    .line 18099
    return v11

    .line 18100
    :cond_f
    if-lez v0, :cond_13

    .line 18101
    .end local p1    # "additionalDebugLoggingBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "additionalDebugLoggingBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    int-to-double v0, v0

    div-double/2addr v8, v0

    .line 18102
    .local v3, "networkEventLogProbability":D
    if-eqz v10, :cond_11

    .line 18103
    mul-double/2addr v8, v2

    cmpg-double v0, v5, v8

    if-gtz v0, :cond_10

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_6

    .line 18104
    :cond_11
    cmpg-double v0, v5, v8

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_7

    .line 18105
    .end local p1
    .restart local v4    # "additionalDebugLoggingBlackList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13
    const/16 v4, 0x1b5

    const/4 v1, 0x6

    const/16 v0, 0x71

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 18106
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0T(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 18107
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/8f;->A0A()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 18108
    if-eqz v10, :cond_15

    .line 18109
    sub-double/2addr v8, v2

    cmpl-double v0, p3, v8

    if-ltz v0, :cond_14

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_8

    .line 18110
    :cond_15
    const/4 v0, 0x1

    return v0

    .line 18111
    :cond_16
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A0C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 18112
    .local v4, "shouldLogFunnelEvents":Ljava/lang/Boolean;
    if-eqz v0, :cond_17

    .line 18113
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 18114
    :cond_17
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0A(Landroid/content/Context;)I

    move-result v0

    .line 18115
    .local p5, "funnelEventsSampling":I
    if-nez v0, :cond_18

    .line 18116
    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A0C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 18117
    return v11

    .line 18118
    :cond_18
    if-lez v0, :cond_1d

    .line 18119
    .end local v4    # "shouldLogFunnelEvents":Ljava/lang/Boolean;
    .local p1, "shouldLogFunnelEvents":Ljava/lang/Boolean;
    int-to-double v0, v0

    div-double/2addr v8, v0

    .line 18120
    .local v3, "funnelEventLogProbability":D
    if-eqz v10, :cond_1b
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18121
    mul-double/2addr v8, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x54

    if-eq v1, v0, :cond_1a

    sget-object v2, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x1

    aput-object v1, v2, v0

    cmpg-double v0, v5, v8

    if-gtz v0, :cond_19

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_9

    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 18122
    :cond_1b
    cmpg-double v0, v5, v8

    if-gtz v0, :cond_1c

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_a

    .line 18123
    .end local v4
    .end local p5    # "funnelEventsSampling":I
    :cond_1d
    :try_start_1
    const/16 v4, 0x1bb

    const/16 v1, 0xe

    const/16 v0, 0x3f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8Y;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 18124
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1f
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18125
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_1e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1e
    sget-object v2, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const-string v1, "KJjq974XMuOG6VE2UuXyW1KY5FJsZ9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "oDF6i4FckldRw4UZ8099"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    .line 18126
    :cond_1f
    :try_start_2
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0B(Landroid/content/Context;)I

    move-result v0

    .line 18127
    .local v4, "ipcValidationEventsSampling":I
    if-nez v0, :cond_20

    .line 18128
    const/4 v0, 0x0

    return v0

    .line 18129
    :cond_20
    if-lez v0, :cond_24

    .line 18130
    int-to-double v0, v0

    div-double/2addr v8, v0

    .line 18131
    .local v3, "ipcValidationEventLogProbability":D
    if-eqz v10, :cond_22

    .line 18132
    mul-double/2addr v8, v2

    cmpg-double v0, v5, v8

    if-gtz v0, :cond_21

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_b

    .line 18133
    :cond_22
    cmpg-double v0, v5, v8

    if-gtz v0, :cond_23

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_c

    .line 18134
    :cond_24
    sub-double/2addr v8, v2

    cmpl-double v0, p3, v8

    if-ltz v0, :cond_25

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_d
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18135
    .end local p0    # "additionalDebugLoggingSamplingPercentage":I
    .end local p2    # "eventKey":Ljava/lang/String;
    .end local v11    # "isBlacklisted":Z
    .end local v6    # "sessionRandom":D
    .end local v4    # "ipcValidationEventsSampling":I
    .end local v2    # "logProbability":D
    .end local v0    # "blackListEventsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    .line 18136
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8Y;->A0G(Ljava/lang/Throwable;)V

    .line 18137
    const/4 v0, 0x0

    return v0
.end method

.method public static A0K(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)Z
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 18138
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A0Q(Landroid/content/Context;)Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    .line 18139
    return v5

    .line 18140
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/8Y;->A00:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 18141
    .local p0, "currentCounter":I
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J6;->A00(Landroid/content/Context;)I

    move-result v2

    .line 18142
    .local p2, "eventsLimit":I
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/8f;->A01()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 18143
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/8f;->A01()I

    move-result v2

    .line 18144
    .end local p3    # null:Lcom/facebook/ads/redexgen/X/8f;
    :cond_1
    :goto_0
    if-lt v3, v2, :cond_5

    .line 18145
    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A06:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/8f;->A0B()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 18146
    :cond_2
    invoke-static {p1, p2, p0}, Lcom/facebook/ads/redexgen/X/8Y;->A00(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8D;)I

    move-result v0

    .line 18147
    .local p3, "customLimit":I
    if-ge v2, v0, :cond_1

    .line 18148
    move v2, v0

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/8Y;->A05:[Ljava/lang/String;

    const-string v1, "DtDXz8TrFQQZw1pkgy"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "wKGFu6BM2pQR03pr0dyvmA98nTz"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    .line 18149
    invoke-static {p0, p2, v3}, Lcom/facebook/ads/redexgen/X/8Y;->A06(Lcom/facebook/ads/redexgen/X/8D;II)V

    .line 18150
    :cond_4
    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A00:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 18151
    return v5

    .line 18152
    :cond_5
    sget-object v1, Lcom/facebook/ads/redexgen/X/8Y;->A00:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 18153
    const/4 v0, 0x0

    return v0
.end method

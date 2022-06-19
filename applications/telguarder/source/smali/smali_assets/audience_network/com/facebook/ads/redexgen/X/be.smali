.class public final Lcom/facebook/ads/redexgen/X/be;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ez;->A0N(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/c9;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/1n;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Ez;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/8u;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/be;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/be;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ez;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/c9;JLcom/facebook/ads/redexgen/X/8u;)V
    .locals 0

    .line 69946
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/redexgen/X/Ez;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/be;->A02:Lcom/facebook/ads/redexgen/X/1n;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/be;->A01:Lcom/facebook/ads/redexgen/X/c9;

    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/be;->A00:J

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/8u;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/be;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/be;->A05:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/be;->A06:[Ljava/lang/String;

    const-string v1, "j4Ns4hKT00kRsJcq4mYGiSVRR39xkXLE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "aj4N2GTd0jkYX56rliTu9cnftT6aRfqb"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void

    :array_0
    .array-data 1
        -0x61t
        -0x5dt
        -0x3bt
        -0x18t
        -0x1bt
        -0xct
        -0x8t
        -0x17t
        -0xat
        -0x5ct
        -0x8t
        -0x13t
        -0xft
        -0x17t
        -0xdt
        -0x7t
        -0x8t
        -0x4et
        -0x4at
        -0x3dt
        -0x3dt
        -0x40t
        -0x3dt
        -0x49t
        -0x43t
        -0x4ft
        -0x4t
        -0xft
        -0xbt
        -0x13t
        -0x9t
        -0x3t
        -0x4t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "oXE2C4io4CadFj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SLi30xh9eEh4aNBWy87TaVqEnPCRDurp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "eis5RYtigxDn0kuTv6xEcFlmBnmepzOu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7zfUioi34Z20h4XlF6Svx2fywMYufGtL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3ch3CCIwylkue97fKtVgZja7Sq2vQTLD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WcYwUSLGNymzaUHoHnyTUfb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YL0d97V0Q3k08jxWq5XvLfGqClGTo7H3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GhmWEJEURttFfnvoo6VO1smQO3ReaFoJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/be;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 5

    .line 69947
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/redexgen/X/Ez;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A02:Lcom/facebook/ads/redexgen/X/1n;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0P(Lcom/facebook/ads/redexgen/X/1n;)V

    .line 69948
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/redexgen/X/Ez;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/be;->A01:Lcom/facebook/ads/redexgen/X/c9;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0M(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 69949
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/redexgen/X/Ez;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/be;->A00:J

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Ez;->A02(Lcom/facebook/ads/redexgen/X/Ez;J)Ljava/util/Map;

    move-result-object v4

    .line 69950
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x12

    const/4 v1, 0x5

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/be;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/be;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69951
    const/16 v2, 0x17

    const/4 v1, 0x3

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/be;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1a

    const/4 v1, 0x7

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/be;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69952
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/redexgen/X/Ez;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/be;->A04:Lcom/facebook/ads/redexgen/X/8u;

    sget-object v0, Lcom/facebook/ads/redexgen/X/8y;->A04:Lcom/facebook/ads/redexgen/X/8y;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8u;->A03(Lcom/facebook/ads/redexgen/X/8y;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0, v4}, Lcom/facebook/ads/redexgen/X/Ez;->A05(Lcom/facebook/ads/redexgen/X/Ez;Ljava/util/List;Ljava/util/Map;)V

    .line 69953
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/be;->A03:Lcom/facebook/ads/redexgen/X/Ez;

    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v2, 0x2

    const/16 v1, 0x10

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/be;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jn;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Jn;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/bh;->AA6(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 69954
    return-void
.end method

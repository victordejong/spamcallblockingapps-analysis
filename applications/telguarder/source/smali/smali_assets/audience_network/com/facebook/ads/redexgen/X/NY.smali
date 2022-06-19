.class public final enum Lcom/facebook/ads/redexgen/X/NY;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/NY;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static final synthetic A02:[Lcom/facebook/ads/redexgen/X/NY;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/NY;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/NY;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/NY;


# instance fields
.field public A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 45500
    invoke-static {}, Lcom/facebook/ads/redexgen/X/NY;->A02()V

    const/4 v5, 0x0

    const/16 v2, 0x11

    const/16 v1, 0xb

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NY;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/NY;

    invoke-direct {v0, v1, v5, v5}, Lcom/facebook/ads/redexgen/X/NY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/NY;->A05:Lcom/facebook/ads/redexgen/X/NY;

    .line 45501
    const/4 v4, 0x1

    const/16 v2, 0x9

    const/16 v1, 0x8

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NY;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/NY;

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/ads/redexgen/X/NY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/NY;->A04:Lcom/facebook/ads/redexgen/X/NY;

    .line 45502
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NY;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/NY;

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/ads/redexgen/X/NY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/NY;->A03:Lcom/facebook/ads/redexgen/X/NY;

    .line 45503
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/NY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/NY;->A05:Lcom/facebook/ads/redexgen/X/NY;

    aput-object v0, v1, v5

    sget-object v0, Lcom/facebook/ads/redexgen/X/NY;->A04:Lcom/facebook/ads/redexgen/X/NY;

    aput-object v0, v1, v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/NY;->A03:Lcom/facebook/ads/redexgen/X/NY;

    aput-object v0, v1, v3

    sput-object v1, Lcom/facebook/ads/redexgen/X/NY;->A02:[Lcom/facebook/ads/redexgen/X/NY;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45504
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45505
    iput p3, p0, Lcom/facebook/ads/redexgen/X/NY;->A00:I

    .line 45506
    return-void
.end method

.method public static A00(I)Lcom/facebook/ads/redexgen/X/NY;
    .locals 5

    .line 45507
    invoke-static {}, Lcom/facebook/ads/redexgen/X/NY;->values()[Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v4

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v4, v2

    .line 45508
    .local v2, "orientation":Lcom/facebook/ads/redexgen/X/NY;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/NY;->A00:I

    if-ne v0, p0, :cond_0

    .line 45509
    return-object v1

    .line 45510
    .end local v2    # "orientation":Lcom/facebook/ads/redexgen/X/NY;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45511
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/NY;->A04:Lcom/facebook/ads/redexgen/X/NY;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NY;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x78

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NY;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x4et
        0x43t
        0x4ct
        0x46t
        0x51t
        0x41t
        0x43t
        0x52t
        0x47t
        0x38t
        0x27t
        0x3at
        0x3ct
        0x3at
        0x29t
        0x21t
        0x3ct
        0x16t
        0xdt
        0x10t
        0x13t
        0x6t
        0x0t
        0xat
        0x5t
        0xat
        0x6t
        0x7t
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NY;
    .locals 1

    .line 45513
    const-class v0, Lcom/facebook/ads/redexgen/X/NY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/NY;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/NY;
    .locals 1

    .line 45514
    sget-object v0, Lcom/facebook/ads/redexgen/X/NY;->A02:[Lcom/facebook/ads/redexgen/X/NY;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/NY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/NY;

    return-object v0
.end method


# virtual methods
.method public final A03()I
    .locals 1

    .line 45512
    iget v0, p0, Lcom/facebook/ads/redexgen/X/NY;->A00:I

    return v0
.end method

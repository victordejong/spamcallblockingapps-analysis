.class public final enum Lcom/facebook/ads/redexgen/X/QQ;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/QQ;",
        ">;"
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final synthetic A04:[Lcom/facebook/ads/redexgen/X/QQ;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/QQ;

.field public static final enum A06:Lcom/facebook/ads/redexgen/X/QQ;


# instance fields
.field public A00:Z

.field public A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 49234
    invoke-static {}, Lcom/facebook/ads/redexgen/X/QQ;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/QQ;->A01()V

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QQ;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/QQ;

    invoke-direct {v0, v1, v4, v3, v4}, Lcom/facebook/ads/redexgen/X/QQ;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/QQ;->A05:Lcom/facebook/ads/redexgen/X/QQ;

    .line 49235
    const/4 v2, 0x3

    const/4 v1, 0x4

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QQ;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/QQ;

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/facebook/ads/redexgen/X/QQ;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/QQ;->A06:Lcom/facebook/ads/redexgen/X/QQ;

    .line 49236
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/QQ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QQ;->A05:Lcom/facebook/ads/redexgen/X/QQ;

    aput-object v0, v1, v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/QQ;->A06:Lcom/facebook/ads/redexgen/X/QQ;

    aput-object v0, v1, v3

    sput-object v1, Lcom/facebook/ads/redexgen/X/QQ;->A04:[Lcom/facebook/ads/redexgen/X/QQ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 49237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49238
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Z

    .line 49239
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Z

    .line 49240
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/QQ;->A02:[B

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

.method public static A01()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/QQ;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x27t
        0x25t
        0x34t
        0x56t
        0x49t
        0x55t
        0x52t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2ontwM2arFslKncjF33kbqsw34bOv6le"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "G9q7n4RrTr1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "g4gCsJajd0OYdOA8Ye5rYJWq4JgSICF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NFoKf805ct"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mafT0Rfur7fS0CNoj1tBpTWo2FQFb5xI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EiMXCOKYsXD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uVuWHRjrR7UDLAS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0Dp8HE0WixXMfpgDKF4PEgrQKOmjSnl7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/QQ;->A03:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/QQ;
    .locals 1

    .line 49244
    const-class v0, Lcom/facebook/ads/redexgen/X/QQ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/QQ;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/QQ;
    .locals 4

    .line 49245
    sget-object v3, Lcom/facebook/ads/redexgen/X/QQ;->A04:[Lcom/facebook/ads/redexgen/X/QQ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/QQ;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/QQ;->A03:[Ljava/lang/String;

    const-string v1, "eYpi2UA0ZlC7PiDY55aF0B4EyL2494ge"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, [Lcom/facebook/ads/redexgen/X/QQ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/QQ;

    return-object v0
.end method


# virtual methods
.method public final A03()Ljava/lang/String;
    .locals 1

    .line 49241
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/QQ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A04()Z
    .locals 1

    .line 49242
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Z

    return v0
.end method

.method public final A05()Z
    .locals 1

    .line 49243
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Z

    return v0
.end method

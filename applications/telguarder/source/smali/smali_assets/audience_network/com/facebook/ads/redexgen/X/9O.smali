.class public final enum Lcom/facebook/ads/redexgen/X/9O;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FetchInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/9O;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final synthetic A02:[Lcom/facebook/ads/redexgen/X/9O;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/9O;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/9O;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/9O;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 19791
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9O;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9O;->A01()V

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9O;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9O;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/9O;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9O;->A03:Lcom/facebook/ads/redexgen/X/9O;

    .line 19792
    const/4 v4, 0x1

    const/16 v2, 0x25

    const/16 v1, 0x13

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9O;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9O;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/9O;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9O;->A05:Lcom/facebook/ads/redexgen/X/9O;

    .line 19793
    const/4 v3, 0x2

    const/16 v2, 0xf

    const/16 v1, 0x16

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9O;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9O;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/9O;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9O;->A04:Lcom/facebook/ads/redexgen/X/9O;

    .line 19794
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/9O;

    sget-object v0, Lcom/facebook/ads/redexgen/X/9O;->A03:Lcom/facebook/ads/redexgen/X/9O;

    aput-object v0, v1, v5

    sget-object v0, Lcom/facebook/ads/redexgen/X/9O;->A05:Lcom/facebook/ads/redexgen/X/9O;

    aput-object v0, v1, v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/9O;->A04:Lcom/facebook/ads/redexgen/X/9O;

    aput-object v0, v1, v3

    sput-object v1, Lcom/facebook/ads/redexgen/X/9O;->A02:[Lcom/facebook/ads/redexgen/X/9O;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19795
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/9O;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9O;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/9O;->A01:[Ljava/lang/String;

    const-string v1, "YOiRDsLdwk415VnA"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x50

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9O;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x5dt
        0x5et
        0x4ft
        0x58t
        0x53t
        0x5et
        0x5ft
        0x44t
        0x49t
        0x5et
        0x58t
        0x54t
        0x49t
        0x5ft
        0x48t
        0x48t
        0x4bt
        0x5at
        0x4dt
        0x46t
        0x51t
        0x4ct
        0x5bt
        0x48t
        0x48t
        0x4bt
        0x5ct
        0x51t
        0x5at
        0x41t
        0x41t
        0x51t
        0x5dt
        0x43t
        0x4ft
        0x42t
        0x42t
        0x58t
        0x59t
        0x49t
        0x44t
        0x53t
        0x55t
        0x59t
        0x44t
        0x52t
        0x45t
        0x49t
        0x42t
        0x59t
        0x49t
        0x50t
        0x53t
        0x42t
        0x55t
        0x5et
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "seqAlwXEOvzJRT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2kwhh1C9lzELPF4tFLY2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Jj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "sVBc1MgsVLAc0bDFJylP1xNQuOv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "HeA0CnCob9O6sWYI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hyCzZMBJpVm0WSm5X0p8b9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uKys1875npMZUjGe7nShhq"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "p4I3Upmes50ZeKIDqz8mdw8ttLtPhh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9O;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/9O;
    .locals 1

    .line 19796
    const-class v0, Lcom/facebook/ads/redexgen/X/9O;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9O;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/9O;
    .locals 1

    .line 19797
    sget-object v0, Lcom/facebook/ads/redexgen/X/9O;->A02:[Lcom/facebook/ads/redexgen/X/9O;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/9O;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/9O;

    return-object v0
.end method

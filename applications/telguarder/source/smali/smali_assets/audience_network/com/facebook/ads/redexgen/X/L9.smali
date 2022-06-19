.class public final enum Lcom/facebook/ads/redexgen/X/L9;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceRootedStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/L9;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static final synthetic A02:[Lcom/facebook/ads/redexgen/X/L9;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/L9;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/L9;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/L9;


# instance fields
.field public final A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 42241
    invoke-static {}, Lcom/facebook/ads/redexgen/X/L9;->A01()V

    const/4 v5, 0x0

    const/4 v2, 0x6

    const/4 v1, 0x7

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L9;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/L9;

    invoke-direct {v0, v1, v5, v5}, Lcom/facebook/ads/redexgen/X/L9;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/L9;->A04:Lcom/facebook/ads/redexgen/X/L9;

    .line 42242
    const/4 v4, 0x1

    const/16 v2, 0xd

    const/16 v1, 0x8

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L9;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/L9;

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/ads/redexgen/X/L9;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/L9;->A05:Lcom/facebook/ads/redexgen/X/L9;

    .line 42243
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/L9;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/L9;

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/ads/redexgen/X/L9;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/L9;->A03:Lcom/facebook/ads/redexgen/X/L9;

    .line 42244
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/L9;

    sget-object v0, Lcom/facebook/ads/redexgen/X/L9;->A04:Lcom/facebook/ads/redexgen/X/L9;

    aput-object v0, v1, v5

    sget-object v0, Lcom/facebook/ads/redexgen/X/L9;->A05:Lcom/facebook/ads/redexgen/X/L9;

    aput-object v0, v1, v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/L9;->A03:Lcom/facebook/ads/redexgen/X/L9;

    aput-object v0, v1, v3

    sput-object v1, Lcom/facebook/ads/redexgen/X/L9;->A02:[Lcom/facebook/ads/redexgen/X/L9;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 42245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42246
    iput p3, p0, Lcom/facebook/ads/redexgen/X/L9;->A00:I

    .line 42247
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/L9;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7f

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

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/L9;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x25t
        0x38t
        0x38t
        0x23t
        0x32t
        0x33t
        0x65t
        0x7et
        0x7bt
        0x7et
        0x7ft
        0x67t
        0x7et
        0x56t
        0x4dt
        0x51t
        0x4ct
        0x4ct
        0x57t
        0x46t
        0x47t
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/L9;
    .locals 1

    .line 42248
    const-class v0, Lcom/facebook/ads/redexgen/X/L9;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/L9;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/L9;
    .locals 1

    .line 42249
    sget-object v0, Lcom/facebook/ads/redexgen/X/L9;->A02:[Lcom/facebook/ads/redexgen/X/L9;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/L9;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/L9;

    return-object v0
.end method

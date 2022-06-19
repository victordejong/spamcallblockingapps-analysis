.class public final enum Lcom/facebook/ads/redexgen/X/61;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationalLoggingEventLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/61;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static final synthetic A02:[Lcom/facebook/ads/redexgen/X/61;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/61;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/61;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/61;


# instance fields
.field public final A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 14319
    invoke-static {}, Lcom/facebook/ads/redexgen/X/61;->A01()V

    const/4 v6, 0x0

    const/4 v2, 0x5

    const/4 v1, 0x4

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/61;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x15

    const/4 v1, 0x4

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/61;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/61;

    invoke-direct {v0, v3, v6, v1}, Lcom/facebook/ads/redexgen/X/61;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/61;->A04:Lcom/facebook/ads/redexgen/X/61;

    .line 14320
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/61;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10

    const/4 v1, 0x5

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/61;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/61;

    invoke-direct {v0, v3, v5, v1}, Lcom/facebook/ads/redexgen/X/61;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/61;->A03:Lcom/facebook/ads/redexgen/X/61;

    .line 14321
    const/4 v4, 0x2

    const/16 v2, 0x9

    const/4 v1, 0x7

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/61;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x19

    const/4 v1, 0x7

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/61;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/61;

    invoke-direct {v0, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/61;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/61;->A05:Lcom/facebook/ads/redexgen/X/61;

    .line 14322
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/61;

    sget-object v0, Lcom/facebook/ads/redexgen/X/61;->A04:Lcom/facebook/ads/redexgen/X/61;

    aput-object v0, v1, v6

    sget-object v0, Lcom/facebook/ads/redexgen/X/61;->A03:Lcom/facebook/ads/redexgen/X/61;

    aput-object v0, v1, v5

    sget-object v0, Lcom/facebook/ads/redexgen/X/61;->A05:Lcom/facebook/ads/redexgen/X/61;

    aput-object v0, v1, v4

    sput-object v1, Lcom/facebook/ads/redexgen/X/61;->A02:[Lcom/facebook/ads/redexgen/X/61;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14323
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14324
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/61;->A00:Ljava/lang/String;

    .line 14325
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/61;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2

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

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/61;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x61t
        0x6et
        0x6et
        0x6bt
        0x6et
        0x72t
        0x77t
        0x6ft
        0x78t
        0x7et
        0x68t
        0x79t
        0x75t
        0x70t
        0x75t
        0x6et
        -0x6dt
        -0x60t
        -0x60t
        -0x63t
        -0x60t
        -0x29t
        -0x24t
        -0x2ct
        -0x23t
        -0x2ft
        -0x45t
        -0x34t
        -0x38t
        -0x3dt
        -0x38t
        -0x3ft
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/61;
    .locals 1

    .line 14327
    const-class v0, Lcom/facebook/ads/redexgen/X/61;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/61;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/61;
    .locals 1

    .line 14328
    sget-object v0, Lcom/facebook/ads/redexgen/X/61;->A02:[Lcom/facebook/ads/redexgen/X/61;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/61;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/61;

    return-object v0
.end method


# virtual methods
.method public final A02()Ljava/lang/String;
    .locals 1

    .line 14326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/61;->A00:Ljava/lang/String;

    return-object v0
.end method

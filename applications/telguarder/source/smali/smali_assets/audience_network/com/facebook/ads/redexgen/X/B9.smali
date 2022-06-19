.class public final Lcom/facebook/ads/redexgen/X/B9;
.super Ljava/lang/Exception;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitializationException"
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/B9;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/B9;->A01()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4

    .line 22392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc

    const/16 v1, 0x18

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    const/16 v1, 0x9

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v1, 0x2

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22393
    iput p1, p0, Lcom/facebook/ads/redexgen/X/B9;->A00:I

    .line 22394
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/B9;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/B9;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/B9;->A02:[Ljava/lang/String;

    const-string v1, "5wMsWgnuO1"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "4DH2abZ6zqc"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5a

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

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/B9;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x2ft
        -0x72t
        -0x7et
        -0x3ft
        -0x4bt
        -0x28t
        0x4t
        0x3t
        -0x5t
        -0x2t
        -0x4t
        -0x43t
        -0x31t
        0x3t
        -0xet
        -0x9t
        -0x3t
        -0x1et
        0x0t
        -0x11t
        -0xft
        -0x7t
        -0x52t
        -0x9t
        -0x4t
        -0x9t
        0x2t
        -0x52t
        -0xct
        -0x11t
        -0x9t
        -0x6t
        -0xdt
        -0xet
        -0x38t
        -0x52t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XJ1bv8jvvCboA8LioQI8E4Fs3I9U64MO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SEZsZW8HIZyWlixxGfnVdKkmNunhqY1p"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gVSD6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BCWbjVKjoA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wdPrNUtjJ5udAbNRjGeE0PF9NJbb5dgA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LSJzpXgy5Jv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "FouBDPJHnJrZm8MZjBaUIMau"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fjdCY4g8XSYFa48RxSYFGaqMpMQzmkVy"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/B9;->A02:[Ljava/lang/String;

    return-void
.end method

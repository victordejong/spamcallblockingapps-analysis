.class public final Lcom/facebook/ads/redexgen/X/Br;
.super Ljava/lang/Exception;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Vp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MissingSchemeDataException"
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Br;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Br;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 4

    .line 24019
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x1d

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Br;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24020
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/UUID;Lcom/facebook/ads/redexgen/X/Bp;)V
    .locals 0

    .line 24021
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Br;-><init>(Ljava/util/UUID;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Br;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Br;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Br;->A01:[Ljava/lang/String;

    const-string v1, "lqk5C3kU0IjZJev2KpH9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_1

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x22

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Br;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x5bt
        -0x43t
        -0x44t
        -0x3ft
        -0x47t
        0x78t
        -0x44t
        -0x39t
        -0x43t
        -0x35t
        0x78t
        -0x3at
        -0x39t
        -0x34t
        0x78t
        -0x35t
        -0x33t
        -0x38t
        -0x38t
        -0x39t
        -0x36t
        -0x34t
        0x78t
        -0x33t
        -0x33t
        -0x3ft
        -0x44t
        -0x6et
        0x78t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AfgYJT5kdyVzouHmrWhn3wD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EDZe582QY9wRmNYtJhE68MoJTT4YeBFy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZEjpyfAArIef6r9kcLyi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7EHRQVA2rAIc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JilQjKsFpzQXL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DqQ1ETr2TRaLPDzhRZLGXx9eaoGjrZ4L"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VaJZxBeX26DtumeoEUiJRK9G"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PYFaJm1isK56KcqnLbnWI8ZPOcf5JIy0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Br;->A01:[Ljava/lang/String;

    return-void
.end method

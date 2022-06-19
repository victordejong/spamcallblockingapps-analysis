.class public final Lcom/facebook/ads/redexgen/X/Ts;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/IO;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/To;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/IO<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ts;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ts;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ts;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x30

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

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ts;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x57t
        0x4bt
        0x52t
        0x53t
        0x19t
        0x8t
        0x15t
        0x19t
        0x77t
        0x66t
        0x7bt
        0x77t
        0x2ct
        0x75t
        0x77t
        0x77t
        0x39t
        0x2ct
        0x2dt
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "r30OBZUYKJ0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "pXn3KSq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NOOikxucMiBPDI8hsag0uVckvJAjn1dn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "31pC37qQ7WSKSM3M0cbLwElayxp5mMhU"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tgqoJSkntzN2XLOfG2r36v9dQCiB0cfZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eTxZVBa8pqRXvpY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tEIyZhhDPPCisRy"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ts;->A01:[Ljava/lang/String;

    return-void
.end method

.method private final A03(Ljava/lang/String;)Z
    .locals 7

    .line 55395
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ic;->A0M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 55396
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 55397
    const/4 v2, 0x4

    const/4 v1, 0x4

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ts;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ts;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55398
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ts;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 55399
    const/16 v5, 0x10

    const/4 v4, 0x3

    const/16 v3, 0x71

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ts;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ts;->A01:[Ljava/lang/String;

    const-string v1, "y8r66WXg0gQUtXHJf6BFPMmgMP4ZZMPu"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "7IiuUVcZIwWfKdNUHJ8um1vkSVaIyXTS"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Ts;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 55400
    :goto_0
    return v0
.end method


# virtual methods
.method public final bridge synthetic A5B(Ljava/lang/Object;)Z
    .locals 1

    .line 55401
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ts;->A03(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

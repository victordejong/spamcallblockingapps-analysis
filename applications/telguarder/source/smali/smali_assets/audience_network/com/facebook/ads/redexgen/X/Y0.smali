.class public final Lcom/facebook/ads/redexgen/X/Y0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xj;->A0Z()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Xj;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Y0;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Y0;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xj;)V
    .locals 0

    .line 65541
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y0;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y0;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x76

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

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Y0;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x11t
        0x7t
        0x6t
        0x14t
        0x7ft
        0x6at
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "W"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jUEsXayB0Y528hhDekqv0w0CueZWHslj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VBYqvuduRxexF9aDNkjDX7fLseUxTx8Z"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jilb5iHXNo7s"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tpBtiCeCobP7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IgLfuqxcgYFzbccqYbXnWgDnVOy2ZH1H"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SIeggJcM3a394qtIqkedG2II"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4wzoiOWktgCxX8uTVMMU1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Y0;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 65542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y0;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A0C(Lcom/facebook/ads/redexgen/X/Xj;)[Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 65543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65544
    .local p0, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y0;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A0C(Lcom/facebook/ads/redexgen/X/Xj;)[Landroid/content/pm/ServiceInfo;

    move-result-object v0

    array-length v0, v0

    if-ge v4, v0, :cond_2

    .line 65545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y0;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A0C(Lcom/facebook/ads/redexgen/X/Xj;)[Landroid/content/pm/ServiceInfo;

    move-result-object v0

    aget-object v5, v0, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y0;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Y0;->A02:[Ljava/lang/String;

    const-string v1, "0BFK8ECmLJwnIPbeYl1qrY9k"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y0;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A0C(Lcom/facebook/ads/redexgen/X/Xj;)[Landroid/content/pm/ServiceInfo;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-eq v4, v0, :cond_1

    .line 65547
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65548
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 65549
    .end local v0    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Y0;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    .line 65550
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x5

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Y0;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/71;->A05:Lcom/facebook/ads/redexgen/X/71;

    .line 65551
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/72;->A08([BLcom/facebook/ads/redexgen/X/71;)Ljava/lang/String;

    move-result-object v0

    .line 65552
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 65553
    .local v0, "signalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;
    return-object v0

    .line 65554
    .end local p0    # "sb":Ljava/lang/StringBuilder;
    .end local v0    # "signalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y0;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method

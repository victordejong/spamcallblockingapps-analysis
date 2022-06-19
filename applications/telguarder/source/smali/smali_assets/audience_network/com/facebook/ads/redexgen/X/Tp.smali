.class public final Lcom/facebook/ads/redexgen/X/Tp;
.super Lcom/facebook/ads/redexgen/X/HR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/To;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvalidResponseCodeException"
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tp;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tp;->A01()V

    return-void
.end method

.method public constructor <init>(ILjava/util/Map;Lcom/facebook/ads/redexgen/X/HM;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/facebook/ads/redexgen/X/HM;",
            ")V"
        }
    .end annotation

    .line 55387
    .local v3, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tp;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-direct {p0, v1, p3, v0}, Lcom/facebook/ads/redexgen/X/HR;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/HM;I)V

    .line 55388
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Tp;->A00:I

    .line 55389
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tp;->A01:Ljava/util/Map;

    .line 55390
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tp;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tp;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tp;->A03:[Ljava/lang/String;

    const-string v1, "l73y00KV2ldrDG2QsqYoAofwhEDBxEJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "xU51cuD4rk0nZExbEzYIK18Ie9Eufpp"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x24

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tp;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x6ct
        0x5bt
        0x4dt
        0x4et
        0x51t
        0x50t
        0x4dt
        0x5bt
        0x1et
        0x5dt
        0x51t
        0x5at
        0x5bt
        0x4t
        0x1et
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "VaXFsoC2RFeaKzlhYj8s"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DwQh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ePWGoIHCnaqfGRd0OgPPlZugwZGy9wMd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uyWnIPNdX193"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hteChHRQpZ4VmZHuwf36W2qwVUrqvDI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EA6S"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uw4i21JXsxsYzdVn8d1tJQSVZpPh61M"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JupRl1gPIaN71TFB4tyckryvxiBcuIb1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Tp;->A03:[Ljava/lang/String;

    return-void
.end method

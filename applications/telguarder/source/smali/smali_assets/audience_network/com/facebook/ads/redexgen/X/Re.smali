.class public final Lcom/facebook/ads/redexgen/X/Re;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OG;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Rb;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/MZ;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rb;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Re;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Re;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rb;)V
    .locals 0

    .line 50317
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Re;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Re;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Re;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Re;->A02:[Ljava/lang/String;

    const-string v1, "LF603a9wKS17yr1vDnM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "LZWmWJ2r4"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x71

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
    .locals 4

    const/4 v0, 0x4

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/Re;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Re;->A02:[Ljava/lang/String;

    const-string v1, "ka1vQ6UiXKbqG0foqwxWJkzjeHAuiIwi"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Re;->A01:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x5ct
        0x40t
        0x4dt
        0x55t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6Ak70sx20HAu1BK2okLsJl8UIfFL7Thw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WSdr2bwsModx8vqlXsCh2pEoV44R6fWS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6pV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IuCwGgbRSGcwid05Jmd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uJw8pmawU"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "I8uJtZilJAfxYDsx8vrQS9VBJj4oHqwc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yyzynLMQXuMe1chn921CH2O0saed"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KEJISc72f74GCBhZaRDCVEoQGHcnATpn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Re;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final AC0(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 50318
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50319
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rb;->AED()V

    .line 50320
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Re;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A09(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/ON;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/ON;->A0c(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 50321
    return-void
.end method

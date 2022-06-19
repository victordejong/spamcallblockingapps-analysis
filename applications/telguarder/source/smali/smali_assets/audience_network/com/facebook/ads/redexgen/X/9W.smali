.class public final Lcom/facebook/ads/redexgen/X/9W;
.super Lcom/facebook/ads/redexgen/X/KS;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/OH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/OH;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9W;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9W;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/OH;)V
    .locals 0

    .line 19844
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9W;->A00:Lcom/facebook/ads/redexgen/X/OH;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KS;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/9W;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/9W;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/9W;->A02:[Ljava/lang/String;

    const-string v1, "QE45n4HEQOiTUZDVXPk8ylx4JLny0ok5"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6f

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9W;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3bt
        0x2ct
        0x40t
        0x3et
        0x30t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QUZtp6d2PVvxohxxHBY0lFVIZrOHPJmP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NfxzKLWElZxETrhEeUBSDM4deWBqLSti"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "M1wrkGT1p8fg9I16hadPO98y5LyXX3HA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lshWtPbnAXBsXbgnJLDmxkjrZI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6PixpSZW8UzyowqAm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "UIpIdTluG2bhvKFOHpQ9k0cfwSXrRmCx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lSmcWeUXMp1pu4geeqYJMaSrMHF509BD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "gheUZ0KSYWPh4kTG81LfbEHF2a7TTHcT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9W;->A02:[Ljava/lang/String;

    return-void
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 5

    .line 19845
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9W;->A00:Lcom/facebook/ads/redexgen/X/OH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OH;->A00(Lcom/facebook/ads/redexgen/X/OH;)Lcom/facebook/ads/redexgen/X/OG;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9W;->A00:Lcom/facebook/ads/redexgen/X/OH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OH;->A05(Lcom/facebook/ads/redexgen/X/OH;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9W;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/OG;->AC0(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 19846
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 19847
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9W;->A03(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method

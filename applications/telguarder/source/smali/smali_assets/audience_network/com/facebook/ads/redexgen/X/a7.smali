.class public final Lcom/facebook/ads/redexgen/X/a7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5W;


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/5X;

.field public final A01:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/a7;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/a7;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5X;Ljava/lang/String;)V
    .locals 0

    .line 66687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66688
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/a7;->A00:Lcom/facebook/ads/redexgen/X/5X;

    .line 66689
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/a7;->A01:Ljava/lang/String;

    .line 66690
    return-void
.end method

.method public static A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/a7;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 66691
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a7;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5X;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/5X;

    move-result-object v3

    .line 66692
    .local p0, "key":Lcom/facebook/ads/redexgen/X/5X;
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a7;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66693
    .local v2, "url":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 66694
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 66695
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/a7;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/a7;-><init>(Lcom/facebook/ads/redexgen/X/5X;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/a7;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/a7;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/a7;->A03:[Ljava/lang/String;

    const-string v1, "szQ1vN1s54Hk3y1OQ1NRUBnkClWieIjw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3e

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

.method public static A02()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/a7;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        0x4t
        -0x5t
        -0x10t
        -0x45t
        -0x48t
        -0x4et
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "frztuTbk90jgHBlm3zQJyLa"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1t5yWCu7Rr8GJSKN0jLr3suU4yLwpLao"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qy8Ulx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lpakeOCplwfUbPlWH1mKRjN93sjJNeLK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9U38xP8piwyhajLb0oPtN8g0SrDQbMul"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5doBkCOudtbbit2jQfjyLRk0HEXNCLN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "an6q6r3Pxi3Yd1Uxl34WEMAekK7mvAv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "C2viYzQ805EsgOX4y3n8lLHcCQmdv4Bq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/a7;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7S()Lcom/facebook/ads/redexgen/X/5X;
    .locals 1

    .line 66696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a7;->A00:Lcom/facebook/ads/redexgen/X/5X;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 66697
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 66698
    :cond_0
    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/a7;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/a7;->A03:[Ljava/lang/String;

    const-string v1, "4HA6u4Nz4keiLa8sOcHfyEhD3wtH4bT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "zctnvSkfK8HVemf9ezG6OofbW6HL5VM"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v3, v0, :cond_2

    .end local p1    # null:Ljava/lang/Object;
    :cond_1
    return v4

    .line 66699
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/a7;

    .line 66700
    .local p1, "that":Lcom/facebook/ads/redexgen/X/a7;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a7;->A00:Lcom/facebook/ads/redexgen/X/5X;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/a7;->A00:Lcom/facebook/ads/redexgen/X/5X;

    if-eq v1, v0, :cond_3

    return v4

    .line 66701
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a7;->A01:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/a7;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 66702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a7;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 66703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a7;->A00:Lcom/facebook/ads/redexgen/X/5X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5X;->hashCode()I

    move-result v0

    .line 66704
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a7;->A01:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 66705
    .end local p0    # "result":I
    .local v0, "result":I
    return v1
.end method

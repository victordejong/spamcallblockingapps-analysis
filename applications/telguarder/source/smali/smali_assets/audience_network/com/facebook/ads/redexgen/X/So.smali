.class public final Lcom/facebook/ads/redexgen/X/So;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/L5;->A0A(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/So;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/So;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52815
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Landroid/content/Context;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/So;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/So;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/So;->A02:[Ljava/lang/String;

    const-string v1, "yencg2WQyjWgLr4Htapu7BwNwN3x2Tit"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_0

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3c

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/So;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x7ft
        -0x50t
        -0x50t
        -0x73t
        -0x57t
        -0x52t
        -0x6dt
        -0x5ct
        -0x55t
        -0x6at
        -0x5bt
        -0x4et
        -0x4dt
        -0x57t
        -0x51t
        -0x52t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "s6McyFvuEc1XiqBn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hcEKpUAFoi0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Uxw7Yfkl7Y0EbUXumb1zp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2eIZNGpCiZfiyfWjpoEHXYEZ89sKOMjU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "P6wJZ5NPzNm0cd9T3B6a4kCxx00um"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "avjdKGQRQHprL3nlmChXTO66aPxw1Ezk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "jTYXriUGWk0Q5Onqj2MBy1ZRmPDEVS5l"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vP4DO0q8Z4bTalFPzqbCoE7Mp2WJV4fR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/So;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 5

    .line 52816
    sget-object v1, Lcom/facebook/ads/redexgen/X/L5;->A03:Lcom/facebook/ads/redexgen/X/L4;

    sget-object v0, Lcom/facebook/ads/redexgen/X/L4;->A02:Lcom/facebook/ads/redexgen/X/L4;

    if-ne v1, v0, :cond_0

    .line 52817
    return-void

    .line 52818
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Landroid/content/Context;

    .line 52819
    invoke-static {v0}, Lcom/facebook/ads/internal/settings/AdSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 52820
    .local p0, "sharedPreferences":Landroid/content/SharedPreferences;
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/So;->A00(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 52821
    .local v0, "returnMinSdkVersion":I
    if-eq v0, v3, :cond_2

    .line 52822
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L5;->A00(I)I

    .line 52823
    sget-object v3, Lcom/facebook/ads/redexgen/X/L4;->A02:Lcom/facebook/ads/redexgen/X/L4;

    sget-object v2, Lcom/facebook/ads/redexgen/X/So;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/So;->A02:[Ljava/lang/String;

    const-string v1, "hUCmhtQ8p32Ulvvxz3h93PNa760nZTZ8"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/L5;->A03:Lcom/facebook/ads/redexgen/X/L4;

    .line 52824
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 52825
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_3

    .line 52826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L5;->A04(Landroid/content/Context;)I

    move-result v1

    .line 52827
    .end local v0    # "returnMinSdkVersion":I
    .local v1, "returnMinSdkVersion":I
    .end local v0
    .restart local v1    # "returnMinSdkVersion":I
    :goto_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/L5;->A00(I)I

    .line 52828
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52829
    sget-object v0, Lcom/facebook/ads/redexgen/X/L4;->A02:Lcom/facebook/ads/redexgen/X/L4;

    sput-object v0, Lcom/facebook/ads/redexgen/X/L5;->A03:Lcom/facebook/ads/redexgen/X/L4;

    .line 52830
    return-void

    .line 52831
    .end local v1    # "returnMinSdkVersion":I
    .restart local v0    # "returnMinSdkVersion":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L5;->A02(Landroid/content/Context;)I

    move-result v1

    goto :goto_0
.end method

.class public final Lcom/facebook/ads/redexgen/X/NZ;
.super Lcom/facebook/ads/redexgen/X/9G;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/9G<",
        "Lcom/facebook/ads/redexgen/X/7v;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7y;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NZ;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7y;)V
    .locals 0

    .line 45515
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NZ;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9G;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "peSd1ZGW0oOKsT4MYmcxwgYYXJVJbEGc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "onhiA7AGCqOOfdsKXHEynGaPThDkgF4v"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vGv44xTU9NMiIKe18DTozfr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qWI7ih6A7YGvPUSFSd16GblJJScLpOEJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6a8lhnvFv2C3p4FFCjJtoN1oit2mAwFh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "t3p1hTkuBTIzFdhVdpSN7dWmogeVJn0K"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tdThBoFZoTnkh03yuOByif6DNtpwQ4HY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "G2fVrOzXb3DOe7THvQW6UiBt6CA1z0D6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/NZ;->A01:[Ljava/lang/String;

    return-void
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 8

    .line 45516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NZ;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0X()V

    .line 45517
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/NZ;->A00:Lcom/facebook/ads/redexgen/X/7y;

    .line 45518
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ld;->A00()I

    move-result v6

    .line 45519
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ld;->A00()I

    move-result v0

    int-to-double v4, v0

    const/4 v3, 0x0

    const-wide v1, 0x409f400000000000L    # 2000.0

    cmpg-double v0, v4, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 45520
    :goto_0
    invoke-virtual {v7, v6, v3, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0g(IZZ)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/NZ;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 45521
    sget-object v2, Lcom/facebook/ads/redexgen/X/NZ;->A01:[Ljava/lang/String;

    const-string v1, "N3UPWySwJ33Y0JDwt2mlq7ZgXOGWH9VL"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    .line 45522
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A02()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/7v;",
            ">;"
        }
    .end annotation

    .line 45523
    const-class v0, Lcom/facebook/ads/redexgen/X/7v;

    return-object v0
.end method

.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 45524
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/NZ;->A01(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method

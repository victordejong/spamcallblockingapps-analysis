.class public final Lcom/facebook/ads/redexgen/X/Ec;
.super Lcom/facebook/ads/redexgen/X/L4;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5B;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ec;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5B;)V
    .locals 0

    .line 29543
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ec;->A00:Lcom/facebook/ads/redexgen/X/5B;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/L4;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LKWkJLHWeQBpKWa7UOr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "n3GVMd2hYWvpJPgcK7G8gwhDICX0QRvF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xWguot5bGbOrngmksJGOGVnUcrOeX8Yq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ofa75S47Yg9dCpk5kJ8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1S7QAm0fWcEMmp0r33MjAmGaqGODAsQ1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zqFnCLlNx7sTkxdlo9MHaJoU5FTNnDPM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mLEAh1LmjQI6neJU4JsNwDaurLCI0CwU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tuKdoZnhl5Xw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ec;->A01:[Ljava/lang/String;

    return-void
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/Lb;)V
    .locals 3

    .line 29544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ec;->A00:Lcom/facebook/ads/redexgen/X/5B;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/5B;->A08:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 29545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ec;->A00:Lcom/facebook/ads/redexgen/X/5B;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/5B;->A08:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 29546
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1b(ZZ)V

    .line 29547
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ec;->A00:Lcom/facebook/ads/redexgen/X/5B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5B;->A00(Lcom/facebook/ads/redexgen/X/5B;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onError()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ec;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 29548
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ec;->A01:[Ljava/lang/String;

    const-string v1, "vYhRUt1P8SC0fadBpCg"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "IJBm98yQ9J9eGhRKk2w"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 29549
    check-cast p1, Lcom/facebook/ads/redexgen/X/Lb;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ec;->A01(Lcom/facebook/ads/redexgen/X/Lb;)V

    return-void
.end method

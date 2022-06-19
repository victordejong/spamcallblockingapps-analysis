.class public final Lcom/facebook/ads/redexgen/X/9D;
.super Lcom/facebook/ads/redexgen/X/Le;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/OM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/OM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9D;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/OM;)V
    .locals 0

    .line 19474
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9D;->A00:Lcom/facebook/ads/redexgen/X/OM;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Le;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9D;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4d

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

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9D;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x14t
        0x20t
        0x1et
        0x21t
        0x1dt
        0x16t
        0x25t
        0x16t
        0x15t
    .end array-data
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 5

    .line 19475
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9D;->A00:Lcom/facebook/ads/redexgen/X/OM;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/OM;->A01(Lcom/facebook/ads/redexgen/X/OM;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A06:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, p1, v0}, Lcom/facebook/ads/redexgen/X/OM;->A0E(Lcom/facebook/ads/redexgen/X/OM;Lcom/facebook/ads/redexgen/X/7w;Z)V

    .line 19476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A00:Lcom/facebook/ads/redexgen/X/OM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OM;->A00(Lcom/facebook/ads/redexgen/X/OM;)Lcom/facebook/ads/redexgen/X/OL;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A00:Lcom/facebook/ads/redexgen/X/OM;

    .line 19477
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/OM;->A01(Lcom/facebook/ads/redexgen/X/OM;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getDuration()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/OM;->A06(Lcom/facebook/ads/redexgen/X/OM;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 19478
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9D;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/facebook/ads/redexgen/X/OL;->AC0(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 19479
    return-void

    .line 19480
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 19481
    check-cast p1, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9D;->A02(Lcom/facebook/ads/redexgen/X/7w;)V

    return-void
.end method

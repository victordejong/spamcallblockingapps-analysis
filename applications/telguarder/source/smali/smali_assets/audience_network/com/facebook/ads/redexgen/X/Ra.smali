.class public final Lcom/facebook/ads/redexgen/X/Ra;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/OH;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/OH;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ra;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/OH;)V
    .locals 0

    .line 50145
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ra;->A00:Lcom/facebook/ads/redexgen/X/OH;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ra;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x13

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

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ra;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        -0x44t
        -0x49t
        -0x48t
        -0x3et
        0x73t
        -0x3ft
        -0x48t
        -0x37t
        -0x48t
        -0x3bt
        0x73t
        -0x3at
        -0x39t
        -0x4ct
        -0x3bt
        -0x39t
        -0x48t
        -0x49t
        0x73t
        -0x3dt
        -0x41t
        -0x4ct
        -0x34t
        -0x44t
        -0x3ft
        -0x46t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 50146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ra;->A00:Lcom/facebook/ads/redexgen/X/OH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OH;->A0L(Lcom/facebook/ads/redexgen/X/OH;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50147
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ra;->A00:Lcom/facebook/ads/redexgen/X/OH;

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ra;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/OH;->A0G(Lcom/facebook/ads/redexgen/X/OH;Ljava/lang/String;)V

    .line 50148
    :cond_0
    return-void
.end method

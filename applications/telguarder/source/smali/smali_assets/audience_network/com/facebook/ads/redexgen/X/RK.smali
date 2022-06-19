.class public final Lcom/facebook/ads/redexgen/X/RK;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/86;->A0F(Lcom/facebook/ads/redexgen/X/7s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/86;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/7s;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RK;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/86;Lcom/facebook/ads/redexgen/X/7s;)V
    .locals 0

    .line 49979
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RK;->A00:Lcom/facebook/ads/redexgen/X/86;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RK;->A01:Lcom/facebook/ads/redexgen/X/7s;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/RK;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x29

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

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/RK;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x73t
        0x44t
        0x57t
        0x57t
        0x54t
        0x43t
        0x58t
        0x5ft
        0x56t
        0x11t
        0x58t
        0x5ft
        0x55t
        0x54t
        0x57t
        0x58t
        0x5ft
        0x58t
        0x45t
        0x54t
        0x5dt
        0x48t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 49980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RK;->A00:Lcom/facebook/ads/redexgen/X/86;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/86;->A02(Lcom/facebook/ads/redexgen/X/86;)Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getState()Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A02:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RK;->A00:Lcom/facebook/ads/redexgen/X/86;

    .line 49981
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/86;->A02(Lcom/facebook/ads/redexgen/X/86;)Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getCurrentPositionInMillis()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RK;->A01:Lcom/facebook/ads/redexgen/X/7s;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ld;->A00()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 49982
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RK;->A00:Lcom/facebook/ads/redexgen/X/86;

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RK;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/86;->A0D(Lcom/facebook/ads/redexgen/X/86;Ljava/lang/String;)V

    .line 49983
    :cond_0
    return-void
.end method

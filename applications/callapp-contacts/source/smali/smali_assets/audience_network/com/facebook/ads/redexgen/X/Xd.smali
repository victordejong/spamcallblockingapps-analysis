.class public final Lcom/facebook/ads/redexgen/X/Xd;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/OM;->A0I(Lcom/facebook/ads/redexgen/X/7s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/OM;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/7s;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xd;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/OM;Lcom/facebook/ads/redexgen/X/7s;)V
    .locals 0

    .line 58066
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xd;->A00:Lcom/facebook/ads/redexgen/X/OM;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Xd;->A01:Lcom/facebook/ads/redexgen/X/7s;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xd;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2e

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xd;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x5dt
        0x6at
        0x79t
        0x79t
        0x7at
        0x6dt
        0x76t
        0x71t
        0x78t
        0x3ft
        0x76t
        0x71t
        0x7bt
        0x7at
        0x79t
        0x76t
        0x71t
        0x76t
        0x6bt
        0x7at
        0x73t
        0x66t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 58067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A00:Lcom/facebook/ads/redexgen/X/OM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OM;->A01(Lcom/facebook/ads/redexgen/X/OM;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A02:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A00:Lcom/facebook/ads/redexgen/X/OM;

    .line 58068
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OM;->A01(Lcom/facebook/ads/redexgen/X/OM;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getCurrentPositionInMillis()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xd;->A01:Lcom/facebook/ads/redexgen/X/7s;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lf;->A00()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 58069
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Xd;->A00:Lcom/facebook/ads/redexgen/X/OM;

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xd;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/OM;->A0G(Lcom/facebook/ads/redexgen/X/OM;Ljava/lang/String;)V

    .line 58070
    :cond_0
    return-void
.end method

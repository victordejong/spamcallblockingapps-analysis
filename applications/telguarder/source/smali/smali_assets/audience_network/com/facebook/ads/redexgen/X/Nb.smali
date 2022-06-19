.class public final Lcom/facebook/ads/redexgen/X/Nb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ne;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A04:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ne;

.field public final synthetic A01:Ljava/lang/String;

.field public final synthetic A02:Ljava/lang/String;

.field public final synthetic A03:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Nb;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ne;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45551
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nb;->A00:Lcom/facebook/ads/redexgen/X/Ne;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Nb;->A03:Ljava/util/Map;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Nb;->A01:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Nb;->A02:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nb;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5f

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

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Nb;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x10t
        0xat
        0x26t
        0xdt
        0xet
        0x16t
        0x26t
        0xat
        0xdt
        0x1ct
        0x9t
        0x4dt
        0x4bt
        0x4ct
        0x5ct
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 45552
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Nb;->A03:Ljava/util/Map;

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nb;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xb

    const/4 v1, 0x4

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nb;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45553
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nb;->A00:Lcom/facebook/ads/redexgen/X/Ne;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nb;->A01:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nb;->A02:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nb;->A03:Ljava/util/Map;

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ne;->A05(Lcom/facebook/ads/redexgen/X/Ne;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 45554
    return-void
.end method

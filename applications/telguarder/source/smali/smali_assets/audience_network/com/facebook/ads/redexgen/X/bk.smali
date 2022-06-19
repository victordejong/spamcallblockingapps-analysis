.class public final Lcom/facebook/ads/redexgen/X/bk;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F1;->A0N(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cC;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/1n;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/F1;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bk;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F1;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/cC;)V
    .locals 0

    .line 70236
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bk;->A02:Lcom/facebook/ads/redexgen/X/F1;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bk;->A01:Lcom/facebook/ads/redexgen/X/1n;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bk;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bk;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4e

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

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bk;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x2at
        0xft
        0xat
        0x1bt
        0x1ft
        0xet
        0x19t
        0x4bt
        0x1ft
        0x2t
        0x6t
        0xet
        0x4t
        0x1et
        0x1ft
        0x45t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 5

    .line 70237
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bk;->A02:Lcom/facebook/ads/redexgen/X/F1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bk;->A01:Lcom/facebook/ads/redexgen/X/1n;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0P(Lcom/facebook/ads/redexgen/X/1n;)V

    .line 70238
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bk;->A02:Lcom/facebook/ads/redexgen/X/F1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bk;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0M(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 70239
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/bk;->A02:Lcom/facebook/ads/redexgen/X/F1;

    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bk;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jn;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Jn;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/bh;->AA6(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 70240
    return-void
.end method

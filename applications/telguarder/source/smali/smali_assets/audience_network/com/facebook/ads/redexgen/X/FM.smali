.class public final Lcom/facebook/ads/redexgen/X/FM;
.super Lcom/facebook/ads/redexgen/X/S4;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/cC;->A0A(Lcom/facebook/ads/redexgen/X/8x;Lcom/facebook/ads/redexgen/X/1n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cC;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/c6;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/FM;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cC;Lcom/facebook/ads/redexgen/X/c6;)V
    .locals 0

    .line 32470
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/cC;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FM;->A01:Lcom/facebook/ads/redexgen/X/c6;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/S4;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/FM;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7f

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

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/FM;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x3et
        0x9t
        0x9t
        0x14t
        0x9t
        0x5bt
        0x1et
        0x3t
        0x1et
        0x18t
        0xet
        0xft
        0x12t
        0x15t
        0x1ct
        0x5bt
        0x1at
        0x18t
        0xft
        0x12t
        0x14t
        0x15t
        0x64t
        0x60t
        0x63t
        0x66t
    .end array-data
.end method


# virtual methods
.method public final A9R()V
    .locals 2

    .line 32471
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/cC;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/cC;->A0C(Lcom/facebook/ads/redexgen/X/cC;Z)Z

    .line 32472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cC;->A0B(Lcom/facebook/ads/redexgen/X/cC;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cC;->A09(Lcom/facebook/ads/redexgen/X/cC;)V

    .line 32474
    :cond_0
    return-void
.end method

.method public final A9i(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32475
    .local v4, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cC;->A02(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/Dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3W()V

    .line 32476
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 32477
    .local p0, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x16

    const/4 v1, 0x4

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32478
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0g;->A05(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/cC;

    .line 32479
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cC;->A00(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cC;->A00(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A9a(Lcom/facebook/ads/redexgen/X/cC;)V

    .line 32481
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/cC;

    .line 32482
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cC;->A02(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/Dz;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cC;->A03(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A01:Lcom/facebook/ads/redexgen/X/c6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c6;->A5x()Ljava/lang/String;

    move-result-object v0

    .line 32483
    invoke-static {v2, v1, v0, v3, p2}, Lcom/facebook/ads/redexgen/X/0g;->A00(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v1

    .line 32484
    .local p1, "adAction":Lcom/facebook/ads/redexgen/X/0f;
    if-eqz v1, :cond_1

    .line 32485
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cC;->A02(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/Dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3T()V

    .line 32486
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/0f;->A0D()V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32487
    :catch_0
    move-exception v4

    .line 32488
    .local p2, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/cC;->A04()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32489
    .end local p2    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public final AAK()V
    .locals 2

    .line 32490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cC;->A02(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/Dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cC;->A01(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/c4;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3X(Z)V

    .line 32491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cC;->A01(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/c4;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cC;->A01(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/c4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0p;->A02()V

    .line 32493
    :cond_0
    return-void

    .line 32494
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AB0()V
    .locals 1

    .line 32495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cC;->A02(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/Dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3Z()V

    .line 32496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/cC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cC;->A01(Lcom/facebook/ads/redexgen/X/cC;)Lcom/facebook/ads/redexgen/X/c4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c4;->A08()V

    .line 32497
    return-void
.end method

.method public final ACA()V
    .locals 0

    .line 32498
    return-void
.end method

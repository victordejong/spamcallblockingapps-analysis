.class public final Lcom/facebook/ads/redexgen/X/c5;
.super Lcom/facebook/ads/redexgen/X/0o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/cD;->A1U(Lcom/facebook/ads/redexgen/X/JS;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/7I;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cD;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/c5;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cD;)V
    .locals 0

    .line 71559
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/cD;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0o;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/c5;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6d

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

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/c5;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x17t
        0x2at
        0x3dt
        0x32t
        0x3ft
        0x2et
        -0x17t
        0x2at
        0x2dt
        0x3ct
        -0x17t
        0x36t
        0x2at
        0x37t
        0x2at
        0x30t
        0x2et
        0x3bt
        -0x17t
        0x3dt
        0x31t
        0x2et
        0x32t
        0x3bt
        -0x17t
        0x38t
        0x40t
        0x37t
        -0x17t
        0x32t
        0x36t
        0x39t
        0x3bt
        0x2et
        0x3ct
        0x3ct
        0x32t
        0x38t
        0x37t
        0x3ct
        -0x9t
    .end array-data
.end method


# virtual methods
.method public final A0A(Lcom/facebook/ads/redexgen/X/Rp;)V
    .locals 3

    .line 71560
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/cD;

    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/cD;->A0k(Lcom/facebook/ads/redexgen/X/cD;Lcom/facebook/ads/redexgen/X/Rp;Z)V

    .line 71561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0L(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/cE;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Rp;->A0X()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71562
    new-instance v2, Lcom/facebook/ads/redexgen/X/c4;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/c4;-><init>(Lcom/facebook/ads/redexgen/X/c5;)V

    .line 71563
    .local p0, "carouselChildNativeAdapterListener":Lcom/facebook/ads/redexgen/X/11;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Rp;->A0X()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/cD;

    .line 71564
    .local v1, "childAd":Lcom/facebook/ads/redexgen/X/cD;
    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/cD;->A0l(Lcom/facebook/ads/redexgen/X/cD;Lcom/facebook/ads/redexgen/X/11;)V

    .line 71565
    .end local v1    # "childAd":Lcom/facebook/ads/redexgen/X/cD;
    goto :goto_0

    .line 71566
    .end local p0    # "carouselChildNativeAdapterListener":Lcom/facebook/ads/redexgen/X/11;
    :cond_0
    return-void
.end method

.method public final A0B()V
    .locals 1

    .line 71567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0L(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/cE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0L(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/cE;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/JO;->A9I()V

    .line 71569
    :cond_0
    return-void
.end method

.method public final A0C()V
    .locals 3

    .line 71570
    const/4 v2, 0x0

    const/16 v1, 0x29

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c5;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/0n;)V
    .locals 1

    .line 71571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0F(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/F4;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0F(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/F4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0K()V

    .line 71573
    :cond_0
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/Jl;)V
    .locals 5

    .line 71574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/cD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A11()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    .line 71575
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/cD;

    .line 71576
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A04(Lcom/facebook/ads/redexgen/X/cD;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LZ;->A01(J)J

    move-result-wide v2

    .line 71577
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jl;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 71578
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jl;->A05()Ljava/lang/String;

    move-result-object v0

    .line 71579
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2d(JILjava/lang/String;)V

    .line 71580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0L(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/cE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/cD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0L(Lcom/facebook/ads/redexgen/X/cD;)Lcom/facebook/ads/redexgen/X/cE;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/JO;->AA7(Lcom/facebook/ads/redexgen/X/Jl;)V

    .line 71582
    :cond_0
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/au;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutPrefetchRegistryImpl"
.end annotation


# static fields
.field public static A04:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/au;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/au;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x33

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

    const/16 v0, 0x48

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/au;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x5ft
        -0x4at
        -0x32t
        -0x3ct
        -0x36t
        -0x37t
        0x75t
        -0x3bt
        -0x3ct
        -0x38t
        -0x42t
        -0x37t
        -0x42t
        -0x3ct
        -0x3dt
        -0x38t
        0x75t
        -0x3et
        -0x36t
        -0x38t
        -0x37t
        0x75t
        -0x49t
        -0x46t
        0x75t
        -0x3dt
        -0x3ct
        -0x3dt
        -0x7et
        -0x3dt
        -0x46t
        -0x44t
        -0x4at
        -0x37t
        -0x42t
        -0x35t
        -0x46t
        -0x75t
        -0x5ct
        -0x4dt
        -0x60t
        -0x59t
        0x5bt
        -0x61t
        -0x5ct
        -0x52t
        -0x51t
        -0x64t
        -0x57t
        -0x62t
        -0x60t
        0x5bt
        -0x58t
        -0x50t
        -0x52t
        -0x51t
        0x5bt
        -0x63t
        -0x60t
        0x5bt
        -0x57t
        -0x56t
        -0x57t
        0x68t
        -0x57t
        -0x60t
        -0x5et
        -0x64t
        -0x51t
        -0x5ct
        -0x4ft
        -0x60t
    .end array-data
.end method


# virtual methods
.method public final A02()V
    .locals 2

    .line 68646
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/au;->A03:[I

    if-eqz v1, :cond_0

    .line 68647
    const/4 v0, -0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 68648
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/au;->A00:I

    .line 68649
    return-void
.end method

.method public final A03(II)V
    .locals 0

    .line 68650
    iput p1, p0, Lcom/facebook/ads/redexgen/X/au;->A01:I

    .line 68651
    iput p2, p0, Lcom/facebook/ads/redexgen/X/au;->A02:I

    .line 68652
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/El;Z)V
    .locals 4

    .line 68653
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/au;->A00:I

    .line 68654
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/au;->A03:[I

    if-eqz v1, :cond_0

    .line 68655
    const/4 v0, -0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 68656
    :cond_0
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/El;->A06:Lcom/facebook/ads/redexgen/X/4K;

    .line 68657
    .local p0, "layout":Lcom/facebook/ads/redexgen/X/4K;
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 68658
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4K;->A1Z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68659
    if-eqz p2, :cond_3

    .line 68660
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/El;->A00:Lcom/facebook/ads/redexgen/X/av;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/av;->A0K()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68661
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/El;->A04:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A0E()I

    move-result v0

    invoke-virtual {v3, v0, p0}, Lcom/facebook/ads/redexgen/X/4K;->A1w(ILcom/facebook/ads/redexgen/X/4I;)V

    .line 68662
    :cond_1
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/au;->A00:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/4K;->A00:I

    if-le v1, v0, :cond_2

    .line 68663
    iget v0, p0, Lcom/facebook/ads/redexgen/X/au;->A00:I

    iput v0, v3, Lcom/facebook/ads/redexgen/X/4K;->A00:I

    .line 68664
    iput-boolean p2, v3, Lcom/facebook/ads/redexgen/X/4K;->A08:Z

    .line 68665
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/El;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4S;->A0P()V

    .line 68666
    :cond_2
    return-void

    .line 68667
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/El;->A1u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68668
    iget v2, p0, Lcom/facebook/ads/redexgen/X/au;->A01:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/au;->A02:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/El;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/facebook/ads/redexgen/X/4K;->A1v(IILcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4I;)V

    goto :goto_0
.end method

.method public final A05(I)Z
    .locals 3

    .line 68669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/au;->A03:[I

    if-eqz v0, :cond_1

    .line 68670
    iget v0, p0, Lcom/facebook/ads/redexgen/X/au;->A00:I

    mul-int/lit8 v2, v0, 0x2

    .line 68671
    .local p0, "count":I
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 68672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/au;->A03:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 68673
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 68674
    .end local p0    # "count":I
    .end local p1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final A3G(II)V
    .locals 5

    .line 68675
    if-ltz p1, :cond_3

    .line 68676
    if-ltz p2, :cond_2

    .line 68677
    iget v0, p0, Lcom/facebook/ads/redexgen/X/au;->A00:I

    mul-int/lit8 v4, v0, 0x2

    .line 68678
    .local p0, "storagePosition":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/au;->A03:[I

    if-nez v0, :cond_1

    .line 68679
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/au;->A03:[I

    .line 68680
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/au;->A03:[I

    const/4 v0, -0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 68681
    .end local p1    # null:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/au;->A03:[I

    aput p1, v1, v4

    .line 68682
    add-int/lit8 v0, v4, 0x1

    aput p2, v1, v0

    .line 68683
    iget v0, p0, Lcom/facebook/ads/redexgen/X/au;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/au;->A00:I

    .line 68684
    return-void

    .line 68685
    :cond_1
    array-length v0, v0

    if-lt v4, v0, :cond_0

    .line 68686
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/au;->A03:[I

    .line 68687
    .local p1, "oldArray":[I
    mul-int/lit8 v0, v4, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/au;->A03:[I

    .line 68688
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/au;->A03:[I

    array-length v1, v3

    const/4 v0, 0x0

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 68689
    .end local p0    # "storagePosition":I
    :cond_2
    const/16 v2, 0x25

    const/16 v1, 0x23

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/au;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68690
    :cond_3
    const/4 v2, 0x0

    const/16 v1, 0x25

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/au;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

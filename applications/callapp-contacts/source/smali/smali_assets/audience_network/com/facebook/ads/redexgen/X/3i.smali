.class public final Lcom/facebook/ads/redexgen/X/3i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/3h;,
        Lcom/facebook/ads/redexgen/X/3g;
    }
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/3g;

.field public final A01:Lcom/facebook/ads/redexgen/X/3h;

.field public final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3i;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3i;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3h;)V
    .locals 1

    .line 9704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9705
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    .line 9706
    new-instance v0, Lcom/facebook/ads/redexgen/X/3g;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3g;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    .line 9707
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    .line 9708
    return-void
.end method

.method private A00(I)I
    .locals 4

    .line 9709
    const/4 v3, -0x1

    if-gez p1, :cond_0

    .line 9710
    return v3

    .line 9711
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3h;->A5s()I

    move-result v2

    .line 9712
    .local p1, "limit":I
    move v1, p1

    .line 9713
    .local v3, "offset":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 9714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3g;->A04(I)I

    move-result v0

    .line 9715
    .local v0, "removedBefore":I
    sub-int v0, v1, v0

    sub-int v0, p1, v0

    .line 9716
    .local v2, "diff":I
    if-nez v0, :cond_1

    .line 9717
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3g;->A09(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9718
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9719
    :cond_1
    add-int/2addr v1, v0

    .line 9720
    .end local v0    # "removedBefore":I
    .end local v2    # "diff":I
    goto :goto_0

    .line 9721
    :cond_2
    return v1

    .line 9722
    :cond_3
    return v3
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3i;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 4

    const/16 v3, 0x5a

    sget-object v1, Lcom/facebook/ads/redexgen/X/3i;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3i;->A04:[Ljava/lang/String;

    const-string v1, "YzFnrN17WwgSKMGcQI3u7PJ5Pdf81qGi"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3i;->A03:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x51t
        -0x5dt
        -0x15t
        -0x14t
        -0x19t
        -0x19t
        -0x18t
        -0xft
        -0x5dt
        -0x11t
        -0x14t
        -0xat
        -0x9t
        -0x43t
        -0x17t
        -0x19t
        -0x12t
        -0x22t
        -0x1dt
        -0x24t
        -0x6bt
        -0x17t
        -0x1ct
        -0x6bt
        -0x16t
        -0x1dt
        -0x23t
        -0x22t
        -0x27t
        -0x26t
        -0x6bt
        -0x2at
        -0x6bt
        -0x15t
        -0x22t
        -0x26t
        -0x14t
        -0x6bt
        -0x17t
        -0x23t
        -0x2at
        -0x17t
        -0x6bt
        -0x14t
        -0x2at
        -0x18t
        -0x6bt
        -0x1dt
        -0x1ct
        -0x17t
        -0x6bt
        -0x23t
        -0x22t
        -0x27t
        -0x27t
        -0x26t
        -0x1dt
        -0x23t
        -0x30t
        -0x34t
        -0x22t
        -0x79t
        -0x30t
        -0x26t
        -0x79t
        -0x2bt
        -0x2at
        -0x25t
        -0x79t
        -0x38t
        -0x79t
        -0x36t
        -0x31t
        -0x30t
        -0x2dt
        -0x35t
        -0x6dt
        -0x79t
        -0x36t
        -0x38t
        -0x2bt
        -0x2bt
        -0x2at
        -0x25t
        -0x79t
        -0x31t
        -0x30t
        -0x35t
        -0x34t
        -0x79t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QoGKHhEqLDc7cPbroRD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LQzzwNJ4o6QHlfYkxXGOUA5ejYw8qpDj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6ipC3ASGLl4rMOedI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OPBJh0aCf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "l4bQelOwEyQeTpTSi"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DWBJmVB67PV4ItRyT2e9caL16z1NK91I"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0G1mJvoVA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nRnK55wdJbrp31Rh0MWe0TNMbF4aeg8Y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3i;->A04:[Ljava/lang/String;

    return-void
.end method

.method private A04(Landroid/view/View;)V
    .locals 1

    .line 9723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3h;->AA5(Landroid/view/View;)V

    .line 9725
    return-void
.end method

.method private A05(Landroid/view/View;)Z
    .locals 1

    .line 9726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3h;->AAY(Landroid/view/View;)V

    .line 9728
    const/4 v0, 0x1

    return v0

    .line 9729
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A06()I
    .locals 2

    .line 9730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3h;->A5s()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A07()I
    .locals 1

    .line 9731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3h;->A5s()I

    move-result v0

    return v0
.end method

.method public final A08(Landroid/view/View;)I
    .locals 3

    .line 9732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3h;->A7p(Landroid/view/View;)I

    move-result v2

    .line 9733
    .local p0, "index":I
    const/4 v1, -0x1

    if-ne v2, v1, :cond_0

    .line 9734
    return v1

    .line 9735
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3g;->A09(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9736
    return v1

    .line 9737
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3g;->A04(I)I

    move-result v0

    sub-int/2addr v2, v0

    return v2
.end method

.method public final A09(I)Landroid/view/View;
    .locals 5

    .line 9738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 9739
    .local p0, "count":I
    const/4 v3, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 9740
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 9741
    .local v0, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/3h;->A5v(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v1

    .line 9742
    .local v4, "holder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0J()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 9743
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9744
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9745
    return-object v2

    .line 9746
    .end local v0    # "view":Landroid/view/View;
    .end local v4    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9747
    .end local p1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A0A(I)Landroid/view/View;
    .locals 2

    .line 9748
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A00(I)I

    move-result v1

    .line 9749
    .local p0, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/3h;->A5r(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0B(I)Landroid/view/View;
    .locals 1

    .line 9750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3h;->A5r(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0C()V
    .locals 3

    .line 9751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3g;->A05()V

    .line 9752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local p0, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 9753
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/3h;->AAY(Landroid/view/View;)V

    .line 9754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9755
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 9756
    .end local p0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3h;->AD7()V

    .line 9757
    return-void
.end method

.method public final A0D(I)V
    .locals 2

    .line 9758
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A00(I)I

    move-result v1

    .line 9759
    .local p0, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3g;->A0A(I)Z

    .line 9760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/3h;->A4l(I)V

    .line 9761
    return-void
.end method

.method public final A0E(I)V
    .locals 3

    .line 9762
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A00(I)I

    move-result v2

    .line 9763
    .local p0, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/3h;->A5r(I)Landroid/view/View;

    move-result-object v1

    .line 9764
    .local p1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 9765
    return-void

    .line 9766
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3g;->A0A(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9767
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/3i;->A05(Landroid/view/View;)Z

    .line 9768
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/3h;->ADB(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/3i;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_2

    .line 9769
    sget-object v2, Lcom/facebook/ads/redexgen/X/3i;->A04:[Ljava/lang/String;

    const-string v1, "KJlsfCUfVwwQNNRDjM0AzdkkAy1m1QjD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0F(Landroid/view/View;)V
    .locals 4

    .line 9770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3h;->A7p(Landroid/view/View;)I

    move-result v1

    .line 9771
    .local p0, "offset":I
    if-ltz v1, :cond_0

    .line 9772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3g;->A07(I)V

    .line 9773
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A04(Landroid/view/View;)V

    .line 9774
    return-void

    .line 9775
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0x21

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3i;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0G(Landroid/view/View;)V
    .locals 2

    .line 9776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3h;->A7p(Landroid/view/View;)I

    move-result v1

    .line 9777
    .local p0, "index":I
    if-gez v1, :cond_0

    .line 9778
    return-void

    .line 9779
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3g;->A0A(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9780
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A05(Landroid/view/View;)Z

    .line 9781
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/3h;->ADB(I)V

    .line 9782
    return-void
.end method

.method public final A0H(Landroid/view/View;)V
    .locals 4

    .line 9783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3h;->A7p(Landroid/view/View;)I

    move-result v1

    .line 9784
    .local p0, "offset":I
    if-ltz v1, :cond_1

    .line 9785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3g;->A09(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3g;->A06(I)V

    .line 9787
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A05(Landroid/view/View;)Z

    .line 9788
    return-void

    .line 9789
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    const/16 v1, 0x2b

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3i;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9790
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0x21

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3i;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0I(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 5

    .line 9791
    if-gez p2, :cond_0

    .line 9792
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3h;->A5s()I

    move-result v4

    .line 9793
    .local p0, "offset":I
    .restart local p0    # "offset":I
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3i;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 9794
    .end local p0    # "offset":I
    :cond_0
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/3i;->A00(I)I

    move-result v4

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/3i;->A04:[Ljava/lang/String;

    const-string v1, "KHr0McsaN13zWmBdzhmfm62h5mt8zSB0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v4, p4}, Lcom/facebook/ads/redexgen/X/3g;->A08(IZ)V

    .line 9795
    if-eqz p4, :cond_2

    .line 9796
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A04(Landroid/view/View;)V

    .line 9797
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1, v4, p3}, Lcom/facebook/ads/redexgen/X/3h;->A3V(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 9798
    return-void
.end method

.method public final A0J(Landroid/view/View;IZ)V
    .locals 2

    .line 9799
    if-gez p2, :cond_1

    .line 9800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3h;->A5s()I

    move-result v1

    .line 9801
    .local p0, "offset":I
    .restart local p0    # "offset":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v1, p3}, Lcom/facebook/ads/redexgen/X/3g;->A08(IZ)V

    .line 9802
    if-eqz p3, :cond_0

    .line 9803
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A04(Landroid/view/View;)V

    .line 9804
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/3h;->addView(Landroid/view/View;I)V

    .line 9805
    return-void

    .line 9806
    .end local p0    # "offset":I
    :cond_1
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/3i;->A00(I)I

    move-result v1

    goto :goto_0
.end method

.method public final A0K(Landroid/view/View;Z)V
    .locals 1

    .line 9807
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/3i;->A0J(Landroid/view/View;IZ)V

    .line 9808
    return-void
.end method

.method public final A0L(Landroid/view/View;)Z
    .locals 1

    .line 9809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final A0M(Landroid/view/View;)Z
    .locals 4

    .line 9810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3h;->A7p(Landroid/view/View;)I

    move-result v1

    .line 9811
    .local p0, "index":I
    const/4 v3, 0x1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 9812
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A05(Landroid/view/View;)Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/3i;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 9813
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3i;->A04:[Ljava/lang/String;

    const-string v1, "HipCYWSrBpzIS13Odtj"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    .line 9814
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3g;->A09(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3g;->A0A(I)Z

    .line 9816
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A05(Landroid/view/View;)Z

    .line 9817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/3h;->ADB(I)V

    .line 9818
    return v3

    .line 9819
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 9820
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3i;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

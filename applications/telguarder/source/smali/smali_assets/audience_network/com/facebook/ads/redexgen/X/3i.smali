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

    .line 9811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9812
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    .line 9813
    new-instance v0, Lcom/facebook/ads/redexgen/X/3g;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3g;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    .line 9814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    .line 9815
    return-void
.end method

.method private A00(I)I
    .locals 4

    .line 9816
    const/4 v3, -0x1

    if-gez p1, :cond_0

    .line 9817
    return v3

    .line 9818
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3h;->A5s()I

    move-result v2

    .line 9819
    .local p1, "limit":I
    move v1, p1

    .line 9820
    .local v3, "offset":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 9821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3g;->A04(I)I

    move-result v0

    .line 9822
    .local v0, "removedBefore":I
    sub-int v0, v1, v0

    sub-int v0, p1, v0

    .line 9823
    .local v2, "diff":I
    if-nez v0, :cond_1

    .line 9824
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3g;->A09(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9825
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9826
    :cond_1
    add-int/2addr v1, v0

    .line 9827
    .end local v0    # "removedBefore":I
    .end local v2    # "diff":I
    goto :goto_0

    .line 9828
    :cond_2
    return v1

    .line 9829
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

    add-int/lit8 v0, v0, -0x60

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
    .locals 1

    const/16 v0, 0x5a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3i;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x71t
        -0x7dt
        -0x35t
        -0x34t
        -0x39t
        -0x39t
        -0x38t
        -0x2ft
        -0x7dt
        -0x31t
        -0x34t
        -0x2at
        -0x29t
        -0x63t
        -0x15t
        -0x17t
        -0x10t
        -0x20t
        -0x1bt
        -0x22t
        -0x69t
        -0x15t
        -0x1at
        -0x69t
        -0x14t
        -0x1bt
        -0x21t
        -0x20t
        -0x25t
        -0x24t
        -0x69t
        -0x28t
        -0x69t
        -0x13t
        -0x20t
        -0x24t
        -0x12t
        -0x69t
        -0x15t
        -0x21t
        -0x28t
        -0x15t
        -0x69t
        -0x12t
        -0x28t
        -0x16t
        -0x69t
        -0x1bt
        -0x1at
        -0x15t
        -0x69t
        -0x21t
        -0x20t
        -0x25t
        -0x25t
        -0x24t
        -0x1bt
        0x2bt
        0x1et
        0x1at
        0x2ct
        -0x2bt
        0x1et
        0x28t
        -0x2bt
        0x23t
        0x24t
        0x29t
        -0x2bt
        0x16t
        -0x2bt
        0x18t
        0x1dt
        0x1et
        0x21t
        0x19t
        -0x1ft
        -0x2bt
        0x18t
        0x16t
        0x23t
        0x23t
        0x24t
        0x29t
        -0x2bt
        0x1dt
        0x1et
        0x19t
        0x1at
        -0x2bt
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "90ZggfNQsOg49XfX2Gw1SU3vAhU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6e03JoSoFcAuCj0XHJ07P"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "X2n0FB8CLVE6QonP7j41AEQOs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "oGNNWvZthHEo2sMGR9jx6vYqjxoachM9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "D9nn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xFc2wx6BEzvoHtEzkiYe1GtwM37"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KcMIoFUA4KOHORJmTS9CHMjc27bv2njt"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Hz1lzGXaGkVdCftBSZ2HywJOuLsdaxmO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3i;->A04:[Ljava/lang/String;

    return-void
.end method

.method private A04(Landroid/view/View;)V
    .locals 1

    .line 9830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9831
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3h;->AA4(Landroid/view/View;)V

    .line 9832
    return-void
.end method

.method private A05(Landroid/view/View;)Z
    .locals 1

    .line 9833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3h;->AAY(Landroid/view/View;)V

    .line 9835
    const/4 v0, 0x1

    return v0

    .line 9836
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A06()I
    .locals 2

    .line 9837
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

    .line 9838
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3h;->A5s()I

    move-result v0

    return v0
.end method

.method public final A08(Landroid/view/View;)I
    .locals 3

    .line 9839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3h;->A7r(Landroid/view/View;)I

    move-result v2

    .line 9840
    .local p0, "index":I
    const/4 v1, -0x1

    if-ne v2, v1, :cond_0

    .line 9841
    return v1

    .line 9842
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3g;->A09(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9843
    return v1

    .line 9844
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3g;->A04(I)I

    move-result v0

    sub-int/2addr v2, v0

    return v2
.end method

.method public final A09(I)Landroid/view/View;
    .locals 5

    .line 9845
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 9846
    .local p0, "count":I
    const/4 v3, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 9847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 9848
    .local v0, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/3h;->A5v(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v1

    .line 9849
    .local v4, "holder":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0J()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 9850
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9851
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9852
    return-object v2

    .line 9853
    .end local v0    # "view":Landroid/view/View;
    .end local v4    # "holder":Lcom/facebook/ads/redexgen/X/4c;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9854
    .end local p1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A0A(I)Landroid/view/View;
    .locals 2

    .line 9855
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A00(I)I

    move-result v1

    .line 9856
    .local p0, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/3h;->A5r(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0B(I)Landroid/view/View;
    .locals 1

    .line 9857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3h;->A5r(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0C()V
    .locals 3

    .line 9858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3g;->A05()V

    .line 9859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local p0, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 9860
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/3h;->AAY(Landroid/view/View;)V

    .line 9861
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9862
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 9863
    .end local p0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3h;->AD7()V

    .line 9864
    return-void
.end method

.method public final A0D(I)V
    .locals 2

    .line 9865
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A00(I)I

    move-result v1

    .line 9866
    .local p0, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3g;->A0A(I)Z

    .line 9867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/3h;->A4j(I)V

    .line 9868
    return-void
.end method

.method public final A0E(I)V
    .locals 3

    .line 9869
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A00(I)I

    move-result v2

    .line 9870
    .local p0, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/3h;->A5r(I)Landroid/view/View;

    move-result-object v1

    .line 9871
    .local p1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 9872
    return-void

    .line 9873
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3g;->A0A(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9874
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/3i;->A05(Landroid/view/View;)Z

    .line 9875
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/3h;->ADB(I)V

    .line 9876
    return-void
.end method

.method public final A0F(Landroid/view/View;)V
    .locals 4

    .line 9877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3h;->A7r(Landroid/view/View;)I

    move-result v1

    .line 9878
    .local p0, "offset":I
    if-ltz v1, :cond_0

    .line 9879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3g;->A07(I)V

    .line 9880
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A04(Landroid/view/View;)V

    .line 9881
    return-void

    .line 9882
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0x21

    const/16 v0, 0x55

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

    .line 9883
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3h;->A7r(Landroid/view/View;)I

    move-result v1

    .line 9884
    .local p0, "index":I
    if-gez v1, :cond_0

    .line 9885
    return-void

    .line 9886
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3g;->A0A(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9887
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A05(Landroid/view/View;)Z

    .line 9888
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/3h;->ADB(I)V

    .line 9889
    return-void
.end method

.method public final A0H(Landroid/view/View;)V
    .locals 4

    .line 9890
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3h;->A7r(Landroid/view/View;)I

    move-result v1

    .line 9891
    .local p0, "offset":I
    if-ltz v1, :cond_2

    .line 9892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3g;->A09(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3g;->A06(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/3i;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_0

    .line 9894
    sget-object v2, Lcom/facebook/ads/redexgen/X/3i;->A04:[Ljava/lang/String;

    const-string v1, "8IGbKDWrlSqGtsrcKzoZxkVKvdJ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "U0TRNaLdUZe04yrOWBaiBfN34lF"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A05(Landroid/view/View;)Z

    .line 9895
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 9896
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    const/16 v1, 0x2b

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3i;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9897
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0x21

    const/16 v0, 0x55

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
    .locals 2

    .line 9898
    if-gez p2, :cond_1

    .line 9899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3h;->A5s()I

    move-result v1

    .line 9900
    .local p0, "offset":I
    .restart local p0    # "offset":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v1, p4}, Lcom/facebook/ads/redexgen/X/3g;->A08(IZ)V

    .line 9901
    if-eqz p4, :cond_0

    .line 9902
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A04(Landroid/view/View;)V

    .line 9903
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1, v1, p3}, Lcom/facebook/ads/redexgen/X/3h;->A3R(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 9904
    return-void

    .line 9905
    .end local p0    # "offset":I
    :cond_1
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/3i;->A00(I)I

    move-result v1

    goto :goto_0
.end method

.method public final A0J(Landroid/view/View;IZ)V
    .locals 4

    .line 9906
    if-gez p2, :cond_2

    .line 9907
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3i;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/3i;->A04:[Ljava/lang/String;

    const-string v1, "WWxR4kuTyiSS3k1dOopZM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "jpAqbovCz6NUDLwJv0FYFncHe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/3h;->A5s()I

    move-result v3

    .local p0, "offset":I
    goto :goto_0

    .line 9908
    .end local p0    # "offset":I
    :cond_2
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/3i;->A00(I)I

    move-result v3

    .line 9909
    .restart local p0    # "offset":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v3, p3}, Lcom/facebook/ads/redexgen/X/3g;->A08(IZ)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/3i;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_0

    .line 9910
    sget-object v2, Lcom/facebook/ads/redexgen/X/3i;->A04:[Ljava/lang/String;

    const-string v1, "lrFB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz p3, :cond_3

    .line 9911
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A04(Landroid/view/View;)V

    .line 9912
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/3h;->addView(Landroid/view/View;I)V

    .line 9913
    return-void
.end method

.method public final A0K(Landroid/view/View;Z)V
    .locals 1

    .line 9914
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/3i;->A0J(Landroid/view/View;IZ)V

    .line 9915
    return-void
.end method

.method public final A0L(Landroid/view/View;)Z
    .locals 1

    .line 9916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final A0M(Landroid/view/View;)Z
    .locals 3

    .line 9917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3h;->A7r(Landroid/view/View;)I

    move-result v2

    .line 9918
    .local p0, "index":I
    const/4 v1, 0x1

    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 9919
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A05(Landroid/view/View;)Z

    .line 9920
    return v1

    .line 9921
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3g;->A09(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3g;->A0A(I)Z

    .line 9923
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A05(Landroid/view/View;)Z

    .line 9924
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/3h;->ADB(I)V

    .line 9925
    return v1

    .line 9926
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 9927
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/4 v0, 0x3

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

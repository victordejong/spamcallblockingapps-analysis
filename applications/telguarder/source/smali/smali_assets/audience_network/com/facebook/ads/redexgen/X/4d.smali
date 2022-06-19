.class public final Lcom/facebook/ads/redexgen/X/4d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4d;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/44;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4K;Z)I
    .locals 3

    .line 12051
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/4d;->A00:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4d;->A00:[Ljava/lang/String;

    const-string v1, "A1oAKfZoAPhZUsftVBl6ZIJw4txQWtbe"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "SaLVqq6GZrXjANh28rEV2dsKSTV0teZe"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 12052
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/4Z;
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 12053
    :cond_2
    if-nez p5, :cond_3

    .line 12054
    invoke-virtual {p4, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p4, p3}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 12055
    :cond_3
    invoke-virtual {p1, p3}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v1

    .line 12056
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 12057
    .local p0, "extend":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/44;->A0B()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/44;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4K;Z)I
    .locals 3

    .line 12058
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 12059
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/4Z;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/44;
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 12060
    :cond_1
    if-nez p5, :cond_2

    .line 12061
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    return v0

    .line 12062
    :cond_2
    invoke-virtual {p1, p3}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v2

    .line 12063
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v2, v0

    .line 12064
    .local p0, "laidOutArea":I
    invoke-virtual {p4, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v1

    .line 12065
    invoke-virtual {p4, p3}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 12066
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 12067
    .local p1, "laidOutRange":I
    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/44;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4K;ZZ)I
    .locals 4

    .line 12068
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 12069
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/4Z;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/44;
    .end local p2    # null:Landroid/view/View;
    .end local p3    # null:Landroid/view/View;
    .end local p4    # null:Lcom/facebook/ads/redexgen/X/4K;
    .end local p5    # null:Z
    :cond_0
    return v3

    .line 12070
    :cond_1
    invoke-virtual {p4, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v1

    .line 12071
    invoke-virtual {p4, p3}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    .line 12072
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 12073
    .local p0, "minPosition":I
    invoke-virtual {p4, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v1

    .line 12074
    invoke-virtual {p4, p3}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    .line 12075
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 12076
    .local p2, "maxPosition":I
    if-eqz p6, :cond_2

    .line 12077
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 12078
    .local p1, "itemsBefore":I
    :goto_0
    if-nez p5, :cond_3

    .line 12079
    return v3

    .line 12080
    :cond_2
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 12081
    :cond_3
    invoke-virtual {p1, p3}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v1

    .line 12082
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 12083
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 12084
    .local p3, "laidOutArea":I
    invoke-virtual {p4, p2}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v1

    .line 12085
    invoke-virtual {p4, p3}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 12086
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 12087
    .local p4, "itemRange":I
    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 12088
    .local p5, "avgSizePerRow":F
    int-to-float v2, v3

    mul-float/2addr v2, v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v1

    .line 12089
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    add-float/2addr v2, v0

    .line 12090
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "X094Ff6hX91n4UOeNZ5q6xBODyRF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3SZuvdCuB3BE6lfK5qku2XxobaMEdUie"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GC5CoEiK4nrbG2wHW0FtwppW4DiO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wga3z1tjiA3hov6SpIvZwMukezgQNZlv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3xUgR2JHsSdawQ9thG1dfHrpvR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GYcoMrIBN4ZdBxcuGgG7c5lcAAiSjlKe"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4bECUaOSHZBdJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4d;->A00:[Ljava/lang/String;

    return-void
.end method

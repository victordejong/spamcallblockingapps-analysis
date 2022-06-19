.class public final Lcom/facebook/ads/redexgen/X/IX;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/IW;
    }
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;

.field public static final A08:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/ads/redexgen/X/IW;",
            ">;"
        }
    .end annotation
.end field

.field public static final A09:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/ads/redexgen/X/IW;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public final A04:I

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/IW;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:[Lcom/facebook/ads/redexgen/X/IW;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 38607
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IX;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/IU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IU;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/IX;->A08:Ljava/util/Comparator;

    .line 38608
    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IV;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/IX;->A09:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 38609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38610
    iput p1, p0, Lcom/facebook/ads/redexgen/X/IX;->A04:I

    .line 38611
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/IW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A06:[Lcom/facebook/ads/redexgen/X/IW;

    .line 38612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A05:Ljava/util/ArrayList;

    .line 38613
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A00:I

    .line 38614
    return-void
.end method

.method private A00()V
    .locals 3

    .line 38615
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A00:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 38616
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IX;->A05:Ljava/util/ArrayList;

    sget-object v0, Lcom/facebook/ads/redexgen/X/IX;->A08:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 38617
    iput v2, p0, Lcom/facebook/ads/redexgen/X/IX;->A00:I

    .line 38618
    :cond_0
    return-void
.end method

.method private A01()V
    .locals 4

    .line 38619
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A00:I

    if-eqz v0, :cond_0

    .line 38620
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/IX;->A05:Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/ads/redexgen/X/IX;->A07:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/IX;->A07:[Ljava/lang/String;

    const-string v1, "xKD9qHKlatpRzdbAmQpWzlkF68qH0a"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/IX;->A09:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 38621
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A00:I

    .line 38622
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wGrwF3v71jKXU3SzNA2gW6JI42FtXX7T"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jFXNWERv440P91pOL1P9i4tTqLPNGHI4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "RkJukxyUowHNJHJS7FKBsDA0irq6newn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZTN3q2sDGruWwFAoqHPmKtw9Vx3412vo"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Mbk0ZakZ2WQvlvo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YB73vIkk8BvL9Z24WYN3a6yydNYKXV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "33F7cn2jGeg8tEvq4055eI5K9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0vEVbwiSXrLzgQj2yUCd2hZz0PzIPwiv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/IX;->A07:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03(F)F
    .locals 5

    .line 38623
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IX;->A01()V

    .line 38624
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A03:I

    int-to-float v4, v0

    mul-float/2addr v4, p1

    .line 38625
    .local p0, "desiredWeight":F
    const/4 v3, 0x0

    .line 38626
    .local p1, "accumulatedWeight":I
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 38627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/IW;

    .line 38628
    .local v4, "currentSample":Lcom/facebook/ads/redexgen/X/IW;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/IW;->A02:I

    add-int/2addr v3, v0

    .line 38629
    int-to-float v0, v3

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_0

    .line 38630
    iget v0, v1, Lcom/facebook/ads/redexgen/X/IW;->A00:F

    return v0

    .line 38631
    .end local v4    # "currentSample":Lcom/facebook/ads/redexgen/X/IW;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38632
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IX;->A05:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IW;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/IW;->A00:F

    goto :goto_1
.end method

.method public final A04(IF)V
    .locals 4

    .line 38633
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IX;->A00()V

    .line 38634
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A02:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IX;->A06:[Lcom/facebook/ads/redexgen/X/IW;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A02:I

    aget-object v2, v1, v0

    .line 38635
    .local p0, "newSample":Lcom/facebook/ads/redexgen/X/IW;
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IX;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A01:I

    iput v1, v2, Lcom/facebook/ads/redexgen/X/IW;->A01:I

    .line 38636
    iput p1, v2, Lcom/facebook/ads/redexgen/X/IW;->A02:I

    .line 38637
    iput p2, v2, Lcom/facebook/ads/redexgen/X/IW;->A00:F

    .line 38638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38639
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A03:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A03:I

    .line 38640
    :cond_0
    :goto_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IX;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A04:I

    if-le v1, v0, :cond_3

    .line 38641
    sub-int/2addr v1, v0

    .line 38642
    .local p1, "excessWeight":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A05:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/IW;

    .line 38643
    .local p2, "oldestSample":Lcom/facebook/ads/redexgen/X/IW;
    iget v0, v3, Lcom/facebook/ads/redexgen/X/IW;->A02:I

    if-gt v0, v1, :cond_1

    .line 38644
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IX;->A03:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/IW;->A02:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/IX;->A03:I

    .line 38645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38646
    iget v2, p0, Lcom/facebook/ads/redexgen/X/IX;->A02:I

    const/4 v0, 0x5

    if-ge v2, v0, :cond_0

    .line 38647
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IX;->A06:[Lcom/facebook/ads/redexgen/X/IW;

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A02:I

    aput-object v3, v1, v2

    goto :goto_1

    .line 38648
    :cond_1
    iget v0, v3, Lcom/facebook/ads/redexgen/X/IW;->A02:I

    sub-int/2addr v0, v1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/IW;->A02:I

    .line 38649
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A03:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IX;->A03:I

    goto :goto_1

    .line 38650
    :cond_2
    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/IW;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/IW;-><init>(Lcom/facebook/ads/redexgen/X/IU;)V

    goto :goto_0

    .line 38651
    :cond_3
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/Er;
.super Lcom/facebook/ads/redexgen/X/TS;
.source ""


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/44;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/44;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Er;->A05()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31542
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TS;-><init>()V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/4K;Landroid/view/View;Lcom/facebook/ads/redexgen/X/44;)I
    .locals 3
    .param p1    # Lcom/facebook/ads/redexgen/X/4K;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 31543
    invoke-virtual {p3, p2}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v2

    .line 31544
    invoke-virtual {p3, p2}, Lcom/facebook/ads/redexgen/X/44;->A0D(Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    .line 31545
    .local p0, "childCenter":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A1Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31546
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v1

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/44;->A0B()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 31547
    .local p1, "containerCenter":I
    .restart local p1    # "containerCenter":I
    :goto_0
    sub-int/2addr v2, v1

    return v2

    .line 31548
    .end local p1    # "containerCenter":I
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/44;->A06()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    goto :goto_0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/4K;Lcom/facebook/ads/redexgen/X/44;)Landroid/view/View;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 31549
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v5

    .line 31550
    .local p0, "childCount":I
    if-nez v5, :cond_0

    .line 31551
    const/4 v0, 0x0

    return-object v0

    .line 31552
    :cond_0
    const/4 v7, 0x0

    .line 31553
    .local p1, "closestChild":Landroid/view/View;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A1Y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31554
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v6

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/44;->A0B()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Er;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Er;->A02:[Ljava/lang/String;

    const-string v1, "QSrTWOl4jyYASaYHeqwJw7nAVlZS9nVf"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    div-int/lit8 v0, v3, 0x2

    add-int/2addr v6, v0

    .local p2, "center":I
    goto :goto_0

    .line 31555
    .end local p2    # "center":I
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/44;->A06()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 31556
    .restart local p2    # "center":I
    :goto_0
    const v4, 0x7fffffff

    .line 31557
    .local v5, "absClosest":I
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 31558
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v2

    .line 31559
    .local v7, "child":Landroid/view/View;
    invoke-virtual {p2, v2}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v1

    .line 31560
    invoke-virtual {p2, v2}, Lcom/facebook/ads/redexgen/X/44;->A0D(Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 31561
    .local v0, "childCenter":I
    sub-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 31562
    .local v6, "absDistance":I
    if-ge v0, v4, :cond_3

    .line 31563
    move v4, v0

    .line 31564
    move-object v7, v2

    .line 31565
    .end local v7    # "child":Landroid/view/View;
    .end local v0    # "childCenter":I
    .end local v6    # "absDistance":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 31566
    .end local v0
    :cond_4
    return-object v7
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/4K;Lcom/facebook/ads/redexgen/X/44;)Landroid/view/View;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 31567
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v6

    .line 31568
    .local p0, "childCount":I
    if-nez v6, :cond_0

    .line 31569
    const/4 v0, 0x0

    return-object v0

    .line 31570
    :cond_0
    const/4 v1, 0x0

    .line 31571
    .local p1, "closestChild":Landroid/view/View;
    const v5, 0x7fffffff

    .line 31572
    .local p2, "startest":I
    const/4 v4, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 31573
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v3

    .line 31574
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p2, v3}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v0

    .line 31575
    .local v1, "childStart":I
    if-ge v0, v5, :cond_2

    .line 31576
    move v5, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Er;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 31577
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Er;->A02:[Ljava/lang/String;

    const-string v1, "0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    move-object v1, v3

    .line 31578
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childStart":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 31579
    .end local v6    # "i":I
    :cond_3
    return-object v1
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/4K;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 31580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A00:Lcom/facebook/ads/redexgen/X/44;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    if-eq v0, p1, :cond_1

    .line 31581
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/44;->A00(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A00:Lcom/facebook/ads/redexgen/X/44;

    .line 31582
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A00:Lcom/facebook/ads/redexgen/X/44;

    return-object v0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/4K;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 31583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A01:Lcom/facebook/ads/redexgen/X/44;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    if-eq v0, p1, :cond_1

    .line 31584
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/44;->A01(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A01:Lcom/facebook/ads/redexgen/X/44;

    .line 31585
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A01:Lcom/facebook/ads/redexgen/X/44;

    return-object v0
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "C44Ajl3kvJruV1G0pt7gVRuztfjSJyFq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "J5x5lFquh7whloqA7FngbvBzLsCb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NWBvU5bW0Pue"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BTAVkHunqM91yRRN2KcoYuZCergWfboL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2NY5ANPTvwBPWrnTgdotgLNYCmp8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bg7eF9CjngMlwdFplTojabi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lLeEucKPPYu6Z0yxrpg2o1MG4v3W39r2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Er;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0E(Lcom/facebook/ads/redexgen/X/4K;II)I
    .locals 9

    .line 31586
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A0a()I

    move-result v8

    .line 31587
    .local p0, "itemCount":I
    const/4 v4, -0x1

    if-nez v8, :cond_0

    .line 31588
    return v4

    .line 31589
    :cond_0
    const/4 v1, 0x0

    .line 31590
    .local p2, "mStartMostChildView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A26()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31591
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Er;->A04(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Er;->A02(Lcom/facebook/ads/redexgen/X/4K;Lcom/facebook/ads/redexgen/X/44;)Landroid/view/View;

    move-result-object v1

    .line 31592
    :cond_1
    :goto_0
    if-nez v1, :cond_4

    .line 31593
    return v4

    .line 31594
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A25()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31595
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Er;->A03(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Er;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Er;->A02:[Ljava/lang/String;

    const-string v1, "gb7KateBwDTMhlVKT6fWGE4qrSBelOuo"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/Er;->A02(Lcom/facebook/ads/redexgen/X/4K;Lcom/facebook/ads/redexgen/X/44;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 31596
    :cond_4
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v3

    .line 31597
    .local p3, "centerPosition":I
    if-ne v3, v4, :cond_5

    .line 31598
    return v4

    .line 31599
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A25()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_d

    .line 31600
    if-lez p2, :cond_c

    const/4 v6, 0x1

    .line 31601
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/4K;
    :goto_1
    const/4 v5, 0x0

    .line 31602
    .local v1, "reverseLayout":Z
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4W;

    if-eqz v0, :cond_8

    .line 31603
    check-cast p1, Lcom/facebook/ads/redexgen/X/4W;

    .line 31604
    .local v0, "vectorProvider":Lcom/facebook/ads/redexgen/X/4W;
    add-int/lit8 v0, v8, -0x1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/4W;->A46(I)Landroid/graphics/PointF;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Er;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_b

    .line 31605
    .local v0, "vectorForEnd":Landroid/graphics/PointF;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Er;->A02:[Ljava/lang/String;

    const-string v1, "yuw4mNpzW34AqVSRehlxNeo"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "wkUUhZpWZ02e"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_8

    .line 31606
    :goto_2
    iget v0, v4, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_6

    iget v0, v4, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    :cond_6
    const/4 v7, 0x1

    :cond_7
    move v5, v7

    .line 31607
    .end local v0    # "vectorForEnd":Landroid/graphics/PointF;
    .end local v0
    :cond_8
    if-eqz v5, :cond_a

    .line 31608
    if-eqz v6, :cond_9

    add-int/lit8 v3, v3, -0x1

    .line 31609
    :cond_9
    :goto_3
    return v3

    .line 31610
    :cond_a
    if-eqz v6, :cond_9

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 31611
    .local v0, "vectorForEnd":Landroid/graphics/PointF;
    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/Er;->A02:[Ljava/lang/String;

    const-string v1, "mSLQWLSJnMsLfeZB8hd0gvJZQvTgwPgU"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_8

    goto :goto_2

    .line 31612
    :cond_c
    const/4 v6, 0x0

    goto :goto_1

    .line 31613
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/4K;
    :cond_d
    if-lez p3, :cond_e

    const/4 v6, 0x1

    goto :goto_1

    :cond_e
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/4K;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 31614
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A26()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31615
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Er;->A04(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Er;->A01(Lcom/facebook/ads/redexgen/X/4K;Lcom/facebook/ads/redexgen/X/44;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 31616
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A25()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31617
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Er;->A03(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Er;->A01(Lcom/facebook/ads/redexgen/X/4K;Lcom/facebook/ads/redexgen/X/44;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 31618
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/TC;
    .locals 2

    .line 31619
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4W;

    if-nez v0, :cond_0

    .line 31620
    const/4 v0, 0x0

    return-object v0

    .line 31621
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Es;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Es;-><init>(Lcom/facebook/ads/redexgen/X/Er;Landroid/content/Context;)V

    return-object v0
.end method

.method public final A0J(Lcom/facebook/ads/redexgen/X/4K;Landroid/view/View;)[I
    .locals 7
    .param p1    # Lcom/facebook/ads/redexgen/X/4K;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 31622
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 31623
    .local p0, "out":[I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A25()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 31624
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Er;->A03(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    .line 31625
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Er;->A00(Lcom/facebook/ads/redexgen/X/4K;Landroid/view/View;Lcom/facebook/ads/redexgen/X/44;)I

    move-result v0

    aput v0, v3, v6

    .line 31626
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A26()Z

    move-result v5

    const/4 v4, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Er;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 31627
    :cond_0
    aput v6, v3, v6

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Er;->A02:[Ljava/lang/String;

    const-string v1, "E62MX6H1I4NpqQbgkpQnwXfK7jhgOp7C"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v5, :cond_2

    .line 31628
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Er;->A04(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    .line 31629
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Er;->A00(Lcom/facebook/ads/redexgen/X/4K;Landroid/view/View;Lcom/facebook/ads/redexgen/X/44;)I

    move-result v0

    aput v0, v3, v4

    .line 31630
    :goto_1
    return-object v3

    .line 31631
    :cond_2
    aput v6, v3, v4

    goto :goto_1
.end method

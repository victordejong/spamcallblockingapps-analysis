.class public final Lcom/facebook/ads/redexgen/X/Em;
.super Lcom/facebook/ads/redexgen/X/ad;
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Em;->A05()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31565
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ad;-><init>()V

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

    .line 31566
    invoke-virtual {p3, p2}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v2

    .line 31567
    invoke-virtual {p3, p2}, Lcom/facebook/ads/redexgen/X/44;->A0D(Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    .line 31568
    .local p0, "childCenter":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A1Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31569
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v1

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/44;->A0B()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 31570
    .local p1, "containerCenter":I
    .restart local p1    # "containerCenter":I
    :goto_0
    sub-int/2addr v2, v1

    return v2

    .line 31571
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

    .line 31572
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v5

    .line 31573
    .local p0, "childCount":I
    if-nez v5, :cond_0

    .line 31574
    const/4 v0, 0x0

    return-object v0

    .line 31575
    :cond_0
    const/4 v2, 0x0

    .line 31576
    .local p1, "closestChild":Landroid/view/View;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A1Y()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31577
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v7

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/44;->A0B()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v7, v0

    .line 31578
    .local p2, "center":I
    .restart local p2    # "center":I
    :goto_0
    const v6, 0x7fffffff

    .line 31579
    .local v5, "absClosest":I
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v4, v5, :cond_4

    .line 31580
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v3

    .line 31581
    .local v2, "child":Landroid/view/View;
    invoke-virtual {p2, v3}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v1

    .line 31582
    invoke-virtual {p2, v3}, Lcom/facebook/ads/redexgen/X/44;->A0D(Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 31583
    .local v0, "childCenter":I
    sub-int/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 31584
    .local v7, "absDistance":I
    if-ge v0, v6, :cond_2

    .line 31585
    move v6, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Em;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 31586
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Em;->A02:[Ljava/lang/String;

    const-string v1, "j4bRVUHHACnikA"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    move-object v2, v3

    .line 31587
    .end local v2    # "child":Landroid/view/View;
    .end local v0    # "childCenter":I
    .end local v7    # "absDistance":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 31588
    .end local p2    # "center":I
    :cond_3
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/44;->A06()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    goto :goto_0

    .line 31589
    .end local v0
    :cond_4
    return-object v2
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/4K;Lcom/facebook/ads/redexgen/X/44;)Landroid/view/View;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 31590
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v4

    .line 31591
    .local p0, "childCount":I
    if-nez v4, :cond_0

    .line 31592
    const/4 v0, 0x0

    return-object v0

    .line 31593
    :cond_0
    const/4 v5, 0x0

    .line 31594
    .local p1, "closestChild":Landroid/view/View;
    const v3, 0x7fffffff

    sget-object v1, Lcom/facebook/ads/redexgen/X/Em;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_3

    .line 31595
    .local p2, "startest":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Em;->A02:[Ljava/lang/String;

    const-string v1, "DwjJFjjR1ioErHTPj2QZ0AbXqU5bWHnc"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v2, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 31596
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v1

    .line 31597
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p2, v1}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v0

    .line 31598
    .local v5, "childStart":I
    if-ge v0, v3, :cond_1

    .line 31599
    move v3, v0

    .line 31600
    move-object v5, v1

    .line 31601
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "childStart":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31602
    .end local v4    # "i":I
    :cond_2
    return-object v5

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/4K;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 31603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Em;->A00:Lcom/facebook/ads/redexgen/X/44;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    if-eq v0, p1, :cond_1

    .line 31604
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/44;->A00(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Em;->A00:Lcom/facebook/ads/redexgen/X/44;

    .line 31605
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Em;->A00:Lcom/facebook/ads/redexgen/X/44;

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

    .line 31606
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Em;->A01:Lcom/facebook/ads/redexgen/X/44;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    if-eq v0, p1, :cond_1

    .line 31607
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/44;->A01(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Em;->A01:Lcom/facebook/ads/redexgen/X/44;

    .line 31608
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Em;->A01:Lcom/facebook/ads/redexgen/X/44;

    return-object v0
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZvwGPtqIyq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yiAZi4T0ry"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MW2e2TOPDP9pjEe4rTD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HlrRgmhjIEURNOsi3rdB558cP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dU7euze3hj2U1ev62XjIRTQ2vrQriAnf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "8gl08jl5gi3EpiFcU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SXjkVQ4wGxN0zpwvt09Xfw5qzXSeRw0d"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Y5nQdyuIxyo1Orqk0oN6DnQ8XCev4LBn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Em;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0D(Lcom/facebook/ads/redexgen/X/4K;II)I
    .locals 7

    .line 31609
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A0a()I

    move-result v6

    .line 31610
    .local p0, "itemCount":I
    const/4 v2, -0x1

    if-nez v6, :cond_0

    .line 31611
    return v2

    .line 31612
    :cond_0
    const/4 v1, 0x0

    .line 31613
    .local p2, "mStartMostChildView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A26()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31614
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Em;->A04(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Em;->A02(Lcom/facebook/ads/redexgen/X/4K;Lcom/facebook/ads/redexgen/X/44;)Landroid/view/View;

    move-result-object v1

    .line 31615
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 31616
    return v2

    .line 31617
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A25()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31618
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Em;->A03(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Em;->A02(Lcom/facebook/ads/redexgen/X/4K;Lcom/facebook/ads/redexgen/X/44;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 31619
    :cond_3
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v5

    .line 31620
    .local p3, "centerPosition":I
    if-ne v5, v2, :cond_4

    .line 31621
    return v2

    .line 31622
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A25()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_b

    .line 31623
    if-lez p2, :cond_a

    const/4 v3, 0x1

    .line 31624
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/4K;
    :goto_1
    const/4 v1, 0x0

    .line 31625
    .local v1, "reverseLayout":Z
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4W;

    if-eqz v0, :cond_7

    .line 31626
    check-cast p1, Lcom/facebook/ads/redexgen/X/4W;

    .line 31627
    .local v0, "vectorProvider":Lcom/facebook/ads/redexgen/X/4W;
    add-int/lit8 v0, v6, -0x1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/4W;->A42(I)Landroid/graphics/PointF;

    move-result-object v2

    .line 31628
    .local v0, "vectorForEnd":Landroid/graphics/PointF;
    if-eqz v2, :cond_7

    .line 31629
    iget v0, v2, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_5

    iget v0, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    :cond_5
    const/4 v4, 0x1

    :cond_6
    move v1, v4

    .line 31630
    .end local v0    # "vectorForEnd":Landroid/graphics/PointF;
    .end local v0
    :cond_7
    if-eqz v1, :cond_9

    .line 31631
    if-eqz v3, :cond_8

    add-int/lit8 v5, v5, -0x1

    .line 31632
    :cond_8
    :goto_2
    return v5

    .line 31633
    :cond_9
    if-eqz v3, :cond_8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 31634
    :cond_a
    const/4 v3, 0x0

    goto :goto_1

    .line 31635
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/4K;
    :cond_b
    if-lez p3, :cond_c

    const/4 v3, 0x1

    goto :goto_1

    :cond_c
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/4K;)Landroid/view/View;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 31636
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A26()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31637
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Em;->A04(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Em;->A01(Lcom/facebook/ads/redexgen/X/4K;Lcom/facebook/ads/redexgen/X/44;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 31638
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A25()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31639
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Em;->A03(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Em;->A01(Lcom/facebook/ads/redexgen/X/4K;Lcom/facebook/ads/redexgen/X/44;)Landroid/view/View;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Em;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Em;->A02:[Ljava/lang/String;

    const-string v1, "ku3zp"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3

    .line 31640
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/as;
    .locals 2

    .line 31641
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4W;

    if-nez v0, :cond_0

    .line 31642
    const/4 v0, 0x0

    return-object v0

    .line 31643
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ad;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/En;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/En;-><init>(Lcom/facebook/ads/redexgen/X/Em;Landroid/content/Context;)V

    return-object v0
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/4K;Landroid/view/View;)[I
    .locals 4
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

    .line 31644
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 31645
    .local p0, "out":[I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A25()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 31646
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Em;->A03(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    .line 31647
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Em;->A00(Lcom/facebook/ads/redexgen/X/4K;Landroid/view/View;Lcom/facebook/ads/redexgen/X/44;)I

    move-result v0

    aput v0, v3, v2

    .line 31648
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4K;->A26()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 31649
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Em;->A04(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    .line 31650
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Em;->A00(Lcom/facebook/ads/redexgen/X/4K;Landroid/view/View;Lcom/facebook/ads/redexgen/X/44;)I

    move-result v0

    aput v0, v3, v1

    .line 31651
    :goto_1
    return-object v3

    .line 31652
    :cond_0
    aput v2, v3, v1

    goto :goto_1

    .line 31653
    :cond_1
    aput v2, v3, v2

    goto :goto_0
.end method

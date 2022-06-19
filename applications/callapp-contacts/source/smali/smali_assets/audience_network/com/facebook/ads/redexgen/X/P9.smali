.class public final Lcom/facebook/ads/redexgen/X/P9;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/P8;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/17;

.field public final A01:Lcom/facebook/ads/redexgen/X/1G;

.field public final A02:Lcom/facebook/ads/redexgen/X/1K;

.field public final A03:Lcom/facebook/ads/redexgen/X/1S;

.field public final A04:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A05:Lcom/facebook/ads/redexgen/X/JJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 47601
    invoke-static {}, Lcom/facebook/ads/redexgen/X/P9;->A02()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/P9;->A09:I

    .line 47602
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42900000    # 72.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/P9;->A07:I

    .line 47603
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/P9;->A08:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;)V
    .locals 2

    .line 47604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47605
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P9;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    .line 47606
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v0, v1, p2}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A05:Lcom/facebook/ads/redexgen/X/JJ;

    .line 47607
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/17;

    .line 47608
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A01:Lcom/facebook/ads/redexgen/X/1G;

    .line 47609
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A03:Lcom/facebook/ads/redexgen/X/1S;

    .line 47610
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0H()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A02:Lcom/facebook/ads/redexgen/X/1K;

    .line 47611
    return-void
.end method

.method private A00()Landroid/view/View;
    .locals 5

    .line 47612
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v4, Lcom/facebook/ads/redexgen/X/Eq;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Eq;-><init>(Landroid/content/Context;)V

    .line 47613
    .local p0, "mScreenshotsRecyclerView":Lcom/facebook/ads/redexgen/X/Eq;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/P9;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/TB;

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/ads/redexgen/X/TB;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Eq;->setLayoutManager(Lcom/facebook/ads/redexgen/X/4K;)V

    .line 47614
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/P9;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A02:Lcom/facebook/ads/redexgen/X/1K;

    .line 47615
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1K;->A00()Ljava/util/List;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/P9;->A09:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pf;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Pf;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/List;I)V

    .line 47616
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    .line 47617
    return-object v4
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/a7;)Landroid/view/View;
    .locals 12
    .param p1    # Lcom/facebook/ads/redexgen/X/a7;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47618
    new-instance v6, Lcom/facebook/ads/redexgen/X/Nu;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/P9;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/17;

    .line 47619
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Nu;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1I;ZZZ)V

    .line 47620
    .local p0, "titleAndDescriptionContainer":Lcom/facebook/ads/redexgen/X/Nu;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A01:Lcom/facebook/ads/redexgen/X/1G;

    .line 47621
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A06()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A01:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A01()Ljava/lang/String;

    move-result-object v8

    .line 47622
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 47623
    const/16 v5, 0x11

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Nu;->setAlignment(I)V

    .line 47624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v4, Lcom/facebook/ads/redexgen/X/No;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/No;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 47625
    .local v6, "imageView":Lcom/facebook/ads/redexgen/X/No;
    const/4 v3, 0x0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 47626
    const/16 v0, 0x32

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/No;->setRadius(I)V

    .line 47627
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P9;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/aA;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 47628
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aA;->A05()Lcom/facebook/ads/redexgen/X/aA;

    move-result-object v1

    .line 47629
    .local v0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/aA;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A03:Lcom/facebook/ads/redexgen/X/1S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A08(Ljava/lang/String;)V

    .line 47630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47631
    .local v8, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47632
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 47633
    sget v1, Lcom/facebook/ads/redexgen/X/P9;->A07:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47634
    .local p1, "imageParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47635
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47636
    .local v9, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/P9;->A08:I

    invoke-virtual {v1, v3, v0, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47637
    invoke-virtual {v2, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47638
    if-eqz p1, :cond_0

    .line 47639
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 47640
    invoke-virtual {v2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47641
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/a7;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47642
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Landroid/view/View;)V

    .line 47643
    :cond_0
    return-object v2
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "67PC1vS7qkP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IjFo3BG6VwtzNtFBLMxB3hm7uxcMitzp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CicRHWg02u8tYTVNboa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Lc1HqPOOGgkkm0o4iF185HVfJQb2Oy4J"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rfUiy7qGv2cTTJD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "veTQu7RBhk0w6DuY7Y8JViB1PkIKs"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nFnk8VxBkehLa6QhTm5QccOE2IAl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "l0nPd7gOfqjUiTZVoVDHfvPfOU4VPF8e"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/P9;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/a7;)Landroid/util/Pair;
    .locals 4
    .param p1    # Lcom/facebook/ads/redexgen/X/a7;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/a7;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/redexgen/X/P8;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 47644
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/P9;->A04()Lcom/facebook/ads/redexgen/X/P8;

    move-result-object v3

    .line 47645
    .local p0, "endCardViewType":Lcom/facebook/ads/redexgen/X/P8;
    sget-object v1, Lcom/facebook/ads/redexgen/X/P7;->A00:[I

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/P8;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    .line 47646
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/P9;->A01(Lcom/facebook/ads/redexgen/X/a7;)Landroid/view/View;

    move-result-object v2

    .line 47647
    .local p1, "endCardView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P9;->A05:Lcom/facebook/ads/redexgen/X/JJ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0S:Lcom/facebook/ads/redexgen/X/JI;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/JJ;Lcom/facebook/ads/redexgen/X/JI;)V

    .line 47648
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 47649
    .end local p1    # "endCardView":Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/P9;->A00()Landroid/view/View;

    move-result-object v2

    .line 47650
    .restart local p1    # "endCardView":Landroid/view/View;
    goto :goto_0
.end method

.method public final A04()Lcom/facebook/ads/redexgen/X/P8;
    .locals 4

    .line 47651
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A02:Lcom/facebook/ads/redexgen/X/1K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1K;->A00()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47652
    sget-object v0, Lcom/facebook/ads/redexgen/X/P8;->A04:Lcom/facebook/ads/redexgen/X/P8;

    return-object v0

    .line 47653
    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/P8;->A03:Lcom/facebook/ads/redexgen/X/P8;

    sget-object v2, Lcom/facebook/ads/redexgen/X/P9;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/P9;->A06:[Ljava/lang/String;

    const-string v1, "qwlEjiYhEcV8j1J"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

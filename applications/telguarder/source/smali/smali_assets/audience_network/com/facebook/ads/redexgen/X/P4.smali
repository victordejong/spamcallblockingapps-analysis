.class public final Lcom/facebook/ads/redexgen/X/P4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/P3;
    }
.end annotation


# static fields
.field public static final A06:I

.field public static final A07:I

.field public static final A08:I


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/17;

.field public final A01:Lcom/facebook/ads/redexgen/X/1G;

.field public final A02:Lcom/facebook/ads/redexgen/X/1K;

.field public final A03:Lcom/facebook/ads/redexgen/X/1S;

.field public final A04:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A05:Lcom/facebook/ads/redexgen/X/JK;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 47796
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/P4;->A08:I

    .line 47797
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42900000    # 72.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/P4;->A06:I

    .line 47798
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/P4;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;)V
    .locals 2

    .line 47799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47800
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 47801
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v0, v1, p2}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A05:Lcom/facebook/ads/redexgen/X/JK;

    .line 47802
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A00:Lcom/facebook/ads/redexgen/X/17;

    .line 47803
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A01:Lcom/facebook/ads/redexgen/X/1G;

    .line 47804
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A03:Lcom/facebook/ads/redexgen/X/1S;

    .line 47805
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0G()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A02:Lcom/facebook/ads/redexgen/X/1K;

    .line 47806
    return-void
.end method

.method private A00()Landroid/view/View;
    .locals 5

    .line 47807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v4, Lcom/facebook/ads/redexgen/X/El;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/El;-><init>(Landroid/content/Context;)V

    .line 47808
    .local p0, "mScreenshotsRecyclerView":Lcom/facebook/ads/redexgen/X/El;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/P4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/at;

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/ads/redexgen/X/at;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/El;->setLayoutManager(Lcom/facebook/ads/redexgen/X/4K;)V

    .line 47809
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/P4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A02:Lcom/facebook/ads/redexgen/X/1K;

    .line 47810
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1K;->A00()Ljava/util/List;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/P4;->A08:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/PX;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/PX;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/List;I)V

    .line 47811
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/El;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    .line 47812
    return-object v4
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Ry;)Landroid/view/View;
    .locals 12
    .param p1    # Lcom/facebook/ads/redexgen/X/Ry;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47813
    new-instance v6, Lcom/facebook/ads/redexgen/X/Np;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/P4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A00:Lcom/facebook/ads/redexgen/X/17;

    .line 47814
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Np;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1I;ZZZ)V

    .line 47815
    .local p0, "titleAndDescriptionContainer":Lcom/facebook/ads/redexgen/X/Np;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A01:Lcom/facebook/ads/redexgen/X/1G;

    .line 47816
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A06()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A01:Lcom/facebook/ads/redexgen/X/1G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A01()Ljava/lang/String;

    move-result-object v8

    .line 47817
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Np;->A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 47818
    const/16 v5, 0x11

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Np;->setAlignment(I)V

    .line 47819
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v4, Lcom/facebook/ads/redexgen/X/Nj;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Nj;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 47820
    .local v6, "imageView":Lcom/facebook/ads/redexgen/X/Nj;
    const/4 v3, 0x0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 47821
    const/16 v0, 0x32

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Nj;->setRadius(I)V

    .line 47822
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 47823
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A05()Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v1

    .line 47824
    .local v0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/Rz;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A03:Lcom/facebook/ads/redexgen/X/1S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A08(Ljava/lang/String;)V

    .line 47825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47826
    .local v8, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47827
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 47828
    sget v1, Lcom/facebook/ads/redexgen/X/P4;->A06:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47829
    .local p1, "imageParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47830
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47831
    .local v9, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/P4;->A07:I

    invoke-virtual {v1, v3, v0, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47832
    invoke-virtual {v2, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47833
    if-eqz p1, :cond_0

    .line 47834
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 47835
    invoke-virtual {v2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47836
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ry;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47837
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lj;->A0J(Landroid/view/View;)V

    .line 47838
    :cond_0
    return-object v2
.end method

.method private final A02()Lcom/facebook/ads/redexgen/X/P3;
    .locals 1

    .line 47839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A02:Lcom/facebook/ads/redexgen/X/1K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1K;->A00()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47840
    sget-object v0, Lcom/facebook/ads/redexgen/X/P3;->A03:Lcom/facebook/ads/redexgen/X/P3;

    return-object v0

    .line 47841
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/P3;->A02:Lcom/facebook/ads/redexgen/X/P3;

    return-object v0
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/Ry;)Landroid/util/Pair;
    .locals 4
    .param p1    # Lcom/facebook/ads/redexgen/X/Ry;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Ry;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/redexgen/X/P3;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 47842
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/P4;->A02()Lcom/facebook/ads/redexgen/X/P3;

    move-result-object v3

    .line 47843
    .local p0, "endCardViewType":Lcom/facebook/ads/redexgen/X/P3;
    sget-object v1, Lcom/facebook/ads/redexgen/X/P2;->A00:[I

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/P3;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    .line 47844
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/P4;->A01(Lcom/facebook/ads/redexgen/X/Ry;)Landroid/view/View;

    move-result-object v2

    .line 47845
    .local p1, "endCardView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P4;->A05:Lcom/facebook/ads/redexgen/X/JK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0R:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/JK;Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 47846
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 47847
    .end local p1    # "endCardView":Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/P4;->A00()Landroid/view/View;

    move-result-object v2

    .line 47848
    .restart local p1    # "endCardView":Landroid/view/View;
    goto :goto_0
.end method

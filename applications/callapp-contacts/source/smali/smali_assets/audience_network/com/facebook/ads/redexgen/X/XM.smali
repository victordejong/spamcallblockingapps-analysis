.class public abstract Lcom/facebook/ads/redexgen/X/XM;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MA;


# static fields
.field public static final A0D:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/16;

.field public final A02:Lcom/facebook/ads/redexgen/X/7D;

.field public final A03:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A04:Lcom/facebook/ads/redexgen/X/JC;

.field public final A05:Lcom/facebook/ads/redexgen/X/JJ;

.field public final A06:Lcom/facebook/ads/redexgen/X/La;

.field public final A07:Lcom/facebook/ads/redexgen/X/M4;

.field public final A08:Lcom/facebook/ads/redexgen/X/M9;

.field public final A09:Lcom/facebook/ads/redexgen/X/Me;

.field public final A0A:Lcom/facebook/ads/redexgen/X/QE;

.field public final A0B:Lcom/facebook/ads/redexgen/X/LV;

.field public final A0C:Lcom/facebook/ads/redexgen/X/QD;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 57740
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/XM;->A0D:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Me;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M9;)V
    .locals 4

    .line 57741
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57742
    new-instance v0, Lcom/facebook/ads/redexgen/X/XU;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XU;-><init>(Lcom/facebook/ads/redexgen/X/XM;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A0C:Lcom/facebook/ads/redexgen/X/QD;

    .line 57743
    new-instance v0, Lcom/facebook/ads/redexgen/X/La;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/La;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A06:Lcom/facebook/ads/redexgen/X/La;

    .line 57744
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A00:Z

    .line 57745
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XM;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 57746
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/XM;->A09:Lcom/facebook/ads/redexgen/X/Me;

    .line 57747
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/XM;->A04:Lcom/facebook/ads/redexgen/X/JC;

    .line 57748
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 57749
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/XM;->A02:Lcom/facebook/ads/redexgen/X/7D;

    .line 57750
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/XM;->A08:Lcom/facebook/ads/redexgen/X/M9;

    .line 57751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 57752
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XM;->A04:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v0, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A05:Lcom/facebook/ads/redexgen/X/JJ;

    .line 57753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A0C:Lcom/facebook/ads/redexgen/X/QD;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/XM;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/QE;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/QE;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A0A:Lcom/facebook/ads/redexgen/X/QE;

    .line 57754
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XM;->A0A:Lcom/facebook/ads/redexgen/X/QE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 57755
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0H()I

    move-result v0

    .line 57756
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QE;->A0X(I)V

    .line 57757
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XM;->A0A:Lcom/facebook/ads/redexgen/X/QE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0I()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QE;->A0Y(I)V

    .line 57758
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XM;->A0O()Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A07:Lcom/facebook/ads/redexgen/X/M4;

    .line 57759
    new-instance v0, Lcom/facebook/ads/redexgen/X/LV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/LV;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A0B:Lcom/facebook/ads/redexgen/X/LV;

    .line 57760
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XM;->A0B:Lcom/facebook/ads/redexgen/X/LV;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LU;->A03:Lcom/facebook/ads/redexgen/X/LU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A05(Lcom/facebook/ads/redexgen/X/LU;)V

    .line 57761
    return-void
.end method

.method private A0O()Lcom/facebook/ads/redexgen/X/M4;
    .locals 10

    .line 57762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57763
    new-instance v4, Lcom/facebook/ads/redexgen/X/ck;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/XM;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/XM;->A08:Lcom/facebook/ads/redexgen/X/M9;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/XM;->A05:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v8, 0x4

    const/4 v9, 0x2

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/ck;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/JJ;II)V

    .line 57764
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/M4;
    .restart local p0    # "toolbar":Lcom/facebook/ads/redexgen/X/M4;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A03()I

    move-result v3

    .line 57765
    .local v0, "unskippableSeconds":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 57766
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 57767
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 57768
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Lcom/facebook/ads/redexgen/X/1Z;

    move-result-object v0

    .line 57769
    invoke-virtual {v4, v2, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/M4;->setPageDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1Z;)V

    .line 57770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->A05(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 57771
    if-gez v3, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57772
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarActionMode(I)V

    .line 57773
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/XN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XN;-><init>(Lcom/facebook/ads/redexgen/X/XM;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarListener(Lcom/facebook/ads/redexgen/X/M3;)V

    .line 57774
    return-object v4

    .line 57775
    .end local p0    # "toolbar":Lcom/facebook/ads/redexgen/X/M4;
    :cond_1
    new-instance v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/XM;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/XM;->A08:Lcom/facebook/ads/redexgen/X/M9;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/XM;->A05:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 57776
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0F()I

    move-result v9

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/JJ;II)V

    goto :goto_0
.end method

.method private A0P()V
    .locals 4

    .line 57777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57778
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XM;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 57779
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 57780
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Oi;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Oi;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1S;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 57781
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oi;->A08(Lcom/facebook/ads/redexgen/X/1I;)Lcom/facebook/ads/redexgen/X/Oi;

    move-result-object v0

    .line 57782
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oi;->A0B()Lcom/facebook/ads/redexgen/X/Ok;

    move-result-object v2

    .line 57783
    .local p0, "introView":Lcom/facebook/ads/redexgen/X/Ok;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XM;->A05:Lcom/facebook/ads/redexgen/X/JJ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0U:Lcom/facebook/ads/redexgen/X/JI;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JL;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/JJ;Lcom/facebook/ads/redexgen/X/JI;)V

    .line 57784
    sget-object v0, Lcom/facebook/ads/redexgen/X/XM;->A0D:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/XM;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57785
    new-instance v0, Lcom/facebook/ads/redexgen/X/XO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XO;-><init>(Lcom/facebook/ads/redexgen/X/XM;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ok;->A04(Lcom/facebook/ads/redexgen/X/Oj;)V

    .line 57786
    .end local p0    # "introView":Lcom/facebook/ads/redexgen/X/Ok;
    :goto_0
    return-void

    .line 57787
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XM;->A0R()V

    goto :goto_0
.end method


# virtual methods
.method public final A0Q()V
    .locals 1

    .line 57788
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A00:Z

    if-nez v0, :cond_0

    .line 57789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A0A:Lcom/facebook/ads/redexgen/X/QE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0V()V

    .line 57790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A00:Z

    .line 57791
    :cond_0
    return-void
.end method

.method public abstract A0R()V
.end method

.method public final A0S(ILcom/facebook/ads/redexgen/X/Kb;)V
    .locals 2

    .line 57792
    new-instance v1, Lcom/facebook/ads/redexgen/X/XQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/XQ;-><init>(Lcom/facebook/ads/redexgen/X/XM;ILcom/facebook/ads/redexgen/X/Kb;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/L6;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/L6;-><init>(ILcom/facebook/ads/redexgen/X/L5;)V

    .line 57793
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L6;->A08()Z

    .line 57794
    return-void
.end method

.method public abstract A0T(Lcom/facebook/ads/redexgen/X/50;)V
.end method

.method public abstract A0U()Z
.end method

.method public final A8J(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 57795
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XM;->A08:Lcom/facebook/ads/redexgen/X/M9;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XM;->A0D:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/M9;->A3M(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 57796
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/XM;->A0T(Lcom/facebook/ads/redexgen/X/50;)V

    .line 57797
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XM;->A0P()V

    .line 57798
    return-void
.end method

.method public final ADT(Landroid/os/Bundle;)V
    .locals 0

    .line 57799
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 57800
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 57801
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 57802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A0B:Lcom/facebook/ads/redexgen/X/LV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LV;->A03()V

    .line 57803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57804
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XM;->A04:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 57805
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nc;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nc;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A0A:Lcom/facebook/ads/redexgen/X/QE;

    .line 57806
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A04(Lcom/facebook/ads/redexgen/X/QE;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A06:Lcom/facebook/ads/redexgen/X/La;

    .line 57807
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A03(Lcom/facebook/ads/redexgen/X/La;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    .line 57808
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A06()Ljava/util/Map;

    move-result-object v0

    .line 57809
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8S(Ljava/lang/String;Ljava/util/Map;)V

    .line 57810
    :cond_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 57811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A06:Lcom/facebook/ads/redexgen/X/La;

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/La;->A07(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 57812
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/M9;)V
    .locals 0

    .line 57813
    return-void
.end method

.method public setUpFullscreenMode(Z)V
    .locals 2

    .line 57814
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge v1, v0, :cond_0

    .line 57815
    return-void

    .line 57816
    :cond_0
    if-eqz p1, :cond_1

    .line 57817
    sget-object v1, Lcom/facebook/ads/redexgen/X/LU;->A04:Lcom/facebook/ads/redexgen/X/LU;

    .line 57818
    .local p0, "mode":Lcom/facebook/ads/redexgen/X/LU;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A0B:Lcom/facebook/ads/redexgen/X/LV;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/LV;->A05(Lcom/facebook/ads/redexgen/X/LU;)V

    .line 57819
    return-void

    .line 57820
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/LU;->A03:Lcom/facebook/ads/redexgen/X/LU;

    goto :goto_0
.end method

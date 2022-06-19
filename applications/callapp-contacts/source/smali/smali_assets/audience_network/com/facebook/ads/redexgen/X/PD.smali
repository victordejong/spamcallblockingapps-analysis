.class public Lcom/facebook/ads/redexgen/X/PD;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/QC;
.implements Lcom/facebook/ads/redexgen/X/PI;
.implements Lcom/facebook/ads/redexgen/X/QA;


# static fields
.field public static A0D:[Ljava/lang/String;

.field public static final A0E:Lcom/facebook/ads/redexgen/X/Lb;

.field public static final A0F:Lcom/facebook/ads/redexgen/X/KU;

.field public static final A0G:Lcom/facebook/ads/redexgen/X/KN;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/K6;

.field public static final A0I:Lcom/facebook/ads/redexgen/X/K5;

.field public static final A0J:Lcom/facebook/ads/redexgen/X/K2;

.field public static final A0K:Lcom/facebook/ads/redexgen/X/K0;

.field public static final A0L:Lcom/facebook/ads/redexgen/X/Jy;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/JJ;

.field public A02:Lcom/facebook/ads/redexgen/X/PM;

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public final A06:Landroid/os/Handler;

.field public final A07:Landroid/os/Handler;

.field public final A08:Landroid/view/View$OnTouchListener;

.field public final A09:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A0A:Lcom/facebook/ads/redexgen/X/9F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9F<",
            "Lcom/facebook/ads/redexgen/X/9G;",
            "Lcom/facebook/ads/redexgen/X/9E;",
            ">;"
        }
    .end annotation
.end field

.field public final A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/PP;",
            ">;"
        }
    .end annotation
.end field

.field public final A0C:Lcom/facebook/ads/redexgen/X/Q9;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 47712
    invoke-static {}, Lcom/facebook/ads/redexgen/X/PD;->A0H()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/KN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/KN;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/PD;->A0G:Lcom/facebook/ads/redexgen/X/KN;

    .line 47713
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lb;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lb;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/PD;->A0E:Lcom/facebook/ads/redexgen/X/Lb;

    .line 47714
    new-instance v0, Lcom/facebook/ads/redexgen/X/K6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/K6;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/PD;->A0H:Lcom/facebook/ads/redexgen/X/K6;

    .line 47715
    new-instance v0, Lcom/facebook/ads/redexgen/X/K5;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/K5;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/PD;->A0I:Lcom/facebook/ads/redexgen/X/K5;

    .line 47716
    new-instance v0, Lcom/facebook/ads/redexgen/X/KU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/KU;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/PD;->A0F:Lcom/facebook/ads/redexgen/X/KU;

    .line 47717
    new-instance v0, Lcom/facebook/ads/redexgen/X/K2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/K2;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/PD;->A0J:Lcom/facebook/ads/redexgen/X/K2;

    .line 47718
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jy;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Jy;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/PD;->A0L:Lcom/facebook/ads/redexgen/X/Jy;

    .line 47719
    new-instance v0, Lcom/facebook/ads/redexgen/X/K0;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/K0;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/PD;->A0K:Lcom/facebook/ads/redexgen/X/K0;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 1

    .line 47720
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0B:Ljava/util/List;

    .line 47722
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A06:Landroid/os/Handler;

    .line 47723
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A07:Landroid/os/Handler;

    .line 47724
    new-instance v0, Lcom/facebook/ads/redexgen/X/9F;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9F;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0A:Lcom/facebook/ads/redexgen/X/9F;

    .line 47725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A05:Z

    .line 47726
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A00:I

    .line 47727
    new-instance v0, Lcom/facebook/ads/redexgen/X/PG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PG;-><init>(Lcom/facebook/ads/redexgen/X/PD;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A08:Landroid/view/View$OnTouchListener;

    .line 47728
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PD;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    .line 47729
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PD;->A0P(Lcom/facebook/ads/redexgen/X/XJ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47730
    new-instance v0, Lcom/facebook/ads/redexgen/X/HQ;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/HQ;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    .line 47731
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PD;->A0F()V

    .line 47732
    return-void

    .line 47733
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/HO;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/HO;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;)V
    .locals 1

    .line 47734
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0B:Ljava/util/List;

    .line 47736
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A06:Landroid/os/Handler;

    .line 47737
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A07:Landroid/os/Handler;

    .line 47738
    new-instance v0, Lcom/facebook/ads/redexgen/X/9F;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9F;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0A:Lcom/facebook/ads/redexgen/X/9F;

    .line 47739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A05:Z

    .line 47740
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A00:I

    .line 47741
    new-instance v0, Lcom/facebook/ads/redexgen/X/PG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PG;-><init>(Lcom/facebook/ads/redexgen/X/PD;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A08:Landroid/view/View$OnTouchListener;

    .line 47742
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PD;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    .line 47743
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PD;->A0P(Lcom/facebook/ads/redexgen/X/XJ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47744
    new-instance v0, Lcom/facebook/ads/redexgen/X/HQ;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/HQ;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    .line 47745
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PD;->A0F()V

    .line 47746
    return-void

    .line 47747
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/HO;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/HO;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 47748
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0B:Ljava/util/List;

    .line 47750
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A06:Landroid/os/Handler;

    .line 47751
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A07:Landroid/os/Handler;

    .line 47752
    new-instance v0, Lcom/facebook/ads/redexgen/X/9F;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9F;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0A:Lcom/facebook/ads/redexgen/X/9F;

    .line 47753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A05:Z

    .line 47754
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A00:I

    .line 47755
    new-instance v0, Lcom/facebook/ads/redexgen/X/PG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PG;-><init>(Lcom/facebook/ads/redexgen/X/PD;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A08:Landroid/view/View$OnTouchListener;

    .line 47756
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PD;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    .line 47757
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PD;->A0P(Lcom/facebook/ads/redexgen/X/XJ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47758
    new-instance v0, Lcom/facebook/ads/redexgen/X/HQ;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/HQ;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    .line 47759
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PD;->A0F()V

    .line 47760
    return-void

    .line 47761
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/HO;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/HO;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    goto :goto_0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/PD;)I
    .locals 0

    .line 47762
    iget p0, p0, Lcom/facebook/ads/redexgen/X/PD;->A00:I

    return p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/PD;)Landroid/os/Handler;
    .locals 0

    .line 47763
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PD;->A06:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/PD;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 0

    .line 47764
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PD;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/PD;)Lcom/facebook/ads/redexgen/X/9F;
    .locals 0

    .line 47765
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0A:Lcom/facebook/ads/redexgen/X/9F;

    return-object p0
.end method

.method public static synthetic A0A()Lcom/facebook/ads/redexgen/X/Lb;
    .locals 1

    .line 47766
    sget-object v0, Lcom/facebook/ads/redexgen/X/PD;->A0E:Lcom/facebook/ads/redexgen/X/Lb;

    return-object v0
.end method

.method public static synthetic A0B()Lcom/facebook/ads/redexgen/X/KU;
    .locals 4

    .line 47767
    sget-object v3, Lcom/facebook/ads/redexgen/X/PD;->A0F:Lcom/facebook/ads/redexgen/X/KU;

    sget-object v1, Lcom/facebook/ads/redexgen/X/PD;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/PD;->A0D:[Ljava/lang/String;

    const-string v1, "s0JISK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3
.end method

.method public static synthetic A0C()Lcom/facebook/ads/redexgen/X/KN;
    .locals 4

    .line 47768
    sget-object v3, Lcom/facebook/ads/redexgen/X/PD;->A0G:Lcom/facebook/ads/redexgen/X/KN;

    sget-object v1, Lcom/facebook/ads/redexgen/X/PD;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/PD;->A0D:[Ljava/lang/String;

    const-string v1, "XnBln0F0zo0j2g49JSScdoR2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3
.end method

.method public static synthetic A0D()Lcom/facebook/ads/redexgen/X/K6;
    .locals 1

    .line 47769
    sget-object v0, Lcom/facebook/ads/redexgen/X/PD;->A0H:Lcom/facebook/ads/redexgen/X/K6;

    return-object v0
.end method

.method public static synthetic A0E()Lcom/facebook/ads/redexgen/X/K5;
    .locals 1

    .line 47770
    sget-object v0, Lcom/facebook/ads/redexgen/X/PD;->A0I:Lcom/facebook/ads/redexgen/X/K5;

    return-object v0
.end method

.method private A0F()V
    .locals 3

    .line 47771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2u()V

    .line 47772
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->setRequestedVolume(F)V

    .line 47773
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Q9;->setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/QC;)V

    .line 47774
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PD;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PM;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/PM;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Q9;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A02:Lcom/facebook/ads/redexgen/X/PM;

    .line 47775
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47776
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A02:Lcom/facebook/ads/redexgen/X/PM;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/PD;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A08:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/PD;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 47779
    return-void
.end method

.method private A0G()V
    .locals 4

    .line 47780
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PD;->A06:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/PU;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/PU;-><init>(Lcom/facebook/ads/redexgen/X/PD;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A00:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47781
    return-void
.end method

.method public static A0H()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bTF0mPynjITMPKd7AWnGFE0wjuUHqGk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NLuteA0O4hImypGMVaagZ7KROvpQko"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vHIsSgA1dNPe0TxNLDw8T5r"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Tu3OEd7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "fTm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FLX2LFKD3Z9kyRG7iyj3Ajj18EKg1"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ES7oyLysdjBWPeOJZDQ9P8Sn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "e8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/PD;->A0D:[Ljava/lang/String;

    return-void
.end method

.method private final A0I()V
    .locals 3

    .line 47782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/PP;

    .line 47783
    .local v0, "plugin":Lcom/facebook/ads/redexgen/X/PP;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/MP;

    if-eqz v0, :cond_0

    .line 47784
    move-object v0, v1

    check-cast v0, Lcom/facebook/ads/redexgen/X/MP;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0N(Lcom/facebook/ads/redexgen/X/MP;)V

    .line 47785
    :cond_0
    invoke-interface {v1, p0}, Lcom/facebook/ads/redexgen/X/PP;->A8K(Lcom/facebook/ads/redexgen/X/PD;)V

    .line 47786
    .end local v0    # "plugin":Lcom/facebook/ads/redexgen/X/PP;
    goto :goto_0

    .line 47787
    :cond_1
    return-void
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/JI;)V
    .locals 2

    .line 47788
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PD;->A01:Lcom/facebook/ads/redexgen/X/JJ;

    if-nez v1, :cond_0

    .line 47789
    return-void

    .line 47790
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 47791
    return-void
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/PD;)V
    .locals 0

    .line 47792
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PD;->A0G()V

    return-void
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/PD;Lcom/facebook/ads/redexgen/X/JI;)V
    .locals 0

    .line 47793
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PD;->A0J(Lcom/facebook/ads/redexgen/X/JI;)V

    return-void
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/PP;)V
    .locals 1

    .line 47794
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/MP;

    if-eqz v0, :cond_0

    .line 47795
    move-object v0, p1

    check-cast v0, Lcom/facebook/ads/redexgen/X/MP;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0O(Lcom/facebook/ads/redexgen/X/MP;)V

    .line 47796
    :cond_0
    invoke-interface {p1, p0}, Lcom/facebook/ads/redexgen/X/PP;->AEO(Lcom/facebook/ads/redexgen/X/PD;)V

    .line 47797
    return-void
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/MP;)V
    .locals 1

    .line 47798
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/MP;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47799
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/7Z;

    if-eqz v0, :cond_1

    .line 47800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A02:Lcom/facebook/ads/redexgen/X/PM;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PM;->A01(Lcom/facebook/ads/redexgen/X/MP;)V

    .line 47801
    :cond_0
    :goto_0
    return-void

    .line 47802
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/PD;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/MP;)V
    .locals 1

    .line 47803
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/7Z;

    if-eqz v0, :cond_0

    .line 47804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A02:Lcom/facebook/ads/redexgen/X/PM;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PM;->A02(Lcom/facebook/ads/redexgen/X/MP;)V

    .line 47805
    :goto_0
    return-void

    .line 47806
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    goto :goto_0
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/XJ;)Z
    .locals 1

    .line 47807
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Py;->A04()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/J4;->A1u(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic A0Q(Lcom/facebook/ads/redexgen/X/PD;)Z
    .locals 0

    .line 47808
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/PD;->A03:Z

    return p0
.end method

.method public static synthetic A0R(Lcom/facebook/ads/redexgen/X/PD;Z)Z
    .locals 0

    .line 47809
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/PD;->A03:Z

    return p1
.end method


# virtual methods
.method public final A0S()V
    .locals 2

    .line 47810
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/QC;)V

    .line 47811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q9;->destroy()V

    .line 47812
    return-void
.end method

.method public final A0T()V
    .locals 1

    .line 47813
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PD;->A0f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47814
    return-void

    .line 47815
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A7T()V

    .line 47816
    return-void
.end method

.method public final A0U()V
    .locals 5

    .line 47817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/PD;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/PD;->A0D:[Ljava/lang/String;

    const-string v1, "GYUlZXdJo7nruMh2UHaMalRUd7rYm0D"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/PP;

    .line 47818
    .local v0, "plugin":Lcom/facebook/ads/redexgen/X/PP;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0M(Lcom/facebook/ads/redexgen/X/PP;)V

    .line 47819
    .end local v0    # "plugin":Lcom/facebook/ads/redexgen/X/PP;
    goto :goto_0

    .line 47820
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/PD;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 47821
    sget-object v2, Lcom/facebook/ads/redexgen/X/PD;->A0D:[Ljava/lang/String;

    const-string v1, "dBG"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "pEPub8w"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_2
    return-void
.end method

.method public final A0V(I)V
    .locals 2

    .line 47822
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PD;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47823
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q9;->seekTo(I)V

    .line 47824
    return-void
.end method

.method public final A0W(I)V
    .locals 1

    .line 47825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q9;->AEC(I)V

    .line 47826
    return-void
.end method

.method public final A0X(Lcom/facebook/ads/redexgen/X/PK;)V
    .locals 2

    .line 47827
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PD;->A07:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PH;-><init>(Lcom/facebook/ads/redexgen/X/PD;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47828
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PK;->A02()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->AE1(I)V

    .line 47829
    return-void
.end method

.method public final A0Y(Lcom/facebook/ads/redexgen/X/PO;I)V
    .locals 2

    .line 47830
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A03:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q9;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A06:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_0

    .line 47831
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A03:Z

    .line 47832
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Q9;->AE5(Lcom/facebook/ads/redexgen/X/PO;I)V

    .line 47833
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/PP;)V
    .locals 1

    .line 47834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47835
    return-void
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/PP;)V
    .locals 1

    .line 47836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47837
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PD;->A0M(Lcom/facebook/ads/redexgen/X/PP;)V

    .line 47838
    return-void
.end method

.method public final A0b(ZI)V
    .locals 1

    .line 47839
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PD;->A0f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47840
    return-void

    .line 47841
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Q9;->ACK(ZI)V

    .line 47842
    return-void
.end method

.method public final A0c(ZZI)V
    .locals 0

    .line 47843
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/PD;->A05:Z

    .line 47844
    invoke-virtual {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/PD;->A0b(ZI)V

    .line 47845
    return-void
.end method

.method public final A0d()Z
    .locals 1

    .line 47846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A7d()Z

    move-result v0

    return v0
.end method

.method public final A0e()Z
    .locals 2

    .line 47847
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PD;->getVolume()F

    move-result v1

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0f()Z
    .locals 2

    .line 47848
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PD;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0g()Z
    .locals 1

    .line 47849
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PD;->A0f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A88()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0h()Z
    .locals 2

    .line 47850
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PD;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A0A:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A81()Z
    .locals 1

    .line 47851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0P(Lcom/facebook/ads/redexgen/X/XJ;)Z

    move-result v0

    return v0
.end method

.method public final A84()Z
    .locals 1

    .line 47852
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A04:Z

    return v0
.end method

.method public final AAk()V
    .locals 2

    .line 47853
    const/4 v1, 0x1

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0b(ZI)V

    .line 47854
    return-void
.end method

.method public final AAl()V
    .locals 2

    .line 47855
    sget-object v1, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/redexgen/X/PO;

    const/4 v0, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Y(Lcom/facebook/ads/redexgen/X/PO;I)V

    .line 47856
    return-void
.end method

.method public final ABZ(II)V
    .locals 2

    .line 47857
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PD;->A07:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PS;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/PS;-><init>(Lcom/facebook/ads/redexgen/X/PD;II)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47858
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PD;->A0G()V

    .line 47859
    return-void
.end method

.method public final AC8(Lcom/facebook/ads/redexgen/X/QB;)V
    .locals 4

    .line 47860
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PD;->getCurrentPositionInMillis()I

    move-result v3

    .line 47861
    .local p0, "currentPositionMS":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PD;->getDuration()I

    move-result v2

    .line 47862
    .local p1, "duration":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PD;->A07:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PT;

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/facebook/ads/redexgen/X/PT;-><init>(Lcom/facebook/ads/redexgen/X/PD;Lcom/facebook/ads/redexgen/X/QB;II)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47863
    return-void
.end method

.method public getCurrentPositionInMillis()I
    .locals 1

    .line 47864
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q9;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 47865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q9;->getDuration()I

    move-result v0

    return v0
.end method

.method public getEventBus()Lcom/facebook/ads/redexgen/X/9F;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/9F<",
            "Lcom/facebook/ads/redexgen/X/9G;",
            "Lcom/facebook/ads/redexgen/X/9E;",
            ">;"
        }
    .end annotation

    .line 47866
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0A:Lcom/facebook/ads/redexgen/X/9F;

    return-object v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    .line 47867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q9;->getInitialBufferTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()Lcom/facebook/ads/redexgen/X/QB;
    .locals 1

    .line 47868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q9;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v0

    return-object v0
.end method

.method public getStateHandler()Landroid/os/Handler;
    .locals 1

    .line 47869
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A07:Landroid/os/Handler;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .line 47870
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    check-cast v0, Landroid/view/TextureView;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 47871
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q9;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoProgressReportIntervalMs()I
    .locals 1

    .line 47872
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A00:I

    return v0
.end method

.method public getVideoStartReason()Lcom/facebook/ads/redexgen/X/PO;
    .locals 1

    .line 47873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q9;->getStartReason()Lcom/facebook/ads/redexgen/X/PO;

    move-result-object v0

    return-object v0
.end method

.method public getVideoView()Landroid/view/View;
    .locals 1

    .line 47874
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A02:Lcom/facebook/ads/redexgen/X/PM;

    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 47875
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q9;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 47876
    return-object p0
.end method

.method public getVolume()F
    .locals 1

    .line 47877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q9;->getVolume()F

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 47878
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PD;->A0A:Lcom/facebook/ads/redexgen/X/9F;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PD;->A0K:Lcom/facebook/ads/redexgen/X/K0;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A03(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 47879
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 47880
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 47881
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PD;->A0A:Lcom/facebook/ads/redexgen/X/9F;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PD;->A0L:Lcom/facebook/ads/redexgen/X/Jy;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A03(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 47882
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 47883
    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    .line 47884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    if-eqz v0, :cond_0

    .line 47885
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q9;->setControlsAnchorView(Landroid/view/View;)V

    .line 47886
    :cond_0
    return-void
.end method

.method public setFunnelLoggingHandler(Lcom/facebook/ads/redexgen/X/JJ;)V
    .locals 0

    .line 47887
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PD;->A01:Lcom/facebook/ads/redexgen/X/JJ;

    .line 47888
    return-void
.end method

.method public setIsFullScreen(Z)V
    .locals 1

    .line 47889
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/PD;->A04:Z

    .line 47890
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q9;->setFullScreen(Z)V

    .line 47891
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 47892
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47893
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47894
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q9;->setVideoMPD(Ljava/lang/String;)V

    .line 47895
    return-void
.end method

.method public setVideoProgressReportIntervalMs(I)V
    .locals 0

    .line 47896
    iput p1, p0, Lcom/facebook/ads/redexgen/X/PD;->A00:I

    .line 47897
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47898
    if-nez p1, :cond_0

    .line 47899
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PD;->A0U()V

    .line 47900
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A03:Z

    .line 47901
    return-void

    .line 47902
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PD;->A0I()V

    .line 47903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q9;->setup(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A31(Ljava/lang/String;)V

    .line 47905
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/PD;->setVideoURI(Landroid/net/Uri;)V

    .line 47906
    return-void

    .line 47907
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 4

    .line 47908
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 47909
    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0b:Lcom/facebook/ads/redexgen/X/JI;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0J(Lcom/facebook/ads/redexgen/X/JI;)V

    .line 47910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A35()V

    .line 47911
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A0C:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q9;->setRequestedVolume(F)V

    .line 47912
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/PD;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/PD;->A0D:[Ljava/lang/String;

    const-string v1, "etD2zaPMct9y2wbR2YehsJmmTem"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/PD;->A0J:Lcom/facebook/ads/redexgen/X/K2;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/9F;->A03(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 47913
    return-void

    .line 47914
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/JI;->A0a:Lcom/facebook/ads/redexgen/X/JI;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0J(Lcom/facebook/ads/redexgen/X/JI;)V

    .line 47915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PD;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A34()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

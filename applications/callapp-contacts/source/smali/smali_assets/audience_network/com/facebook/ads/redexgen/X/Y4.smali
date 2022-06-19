.class public final Lcom/facebook/ads/redexgen/X/Y4;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MA;
.implements Lcom/facebook/ads/redexgen/X/Oc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/dynamiclayout/DynamicFullScreenAdView$AdFormatType;
    }
.end annotation


# static fields
.field public static A0H:[Ljava/lang/String;

.field public static final A0I:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/4y;

.field public A01:Lcom/facebook/ads/redexgen/X/50;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/16;

.field public final A06:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A07:Lcom/facebook/ads/redexgen/X/JC;

.field public final A08:Lcom/facebook/ads/redexgen/X/JJ;

.field public final A09:Lcom/facebook/ads/redexgen/X/LV;

.field public final A0A:Lcom/facebook/ads/redexgen/X/La;

.field public final A0B:Lcom/facebook/ads/redexgen/X/M9;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Me;

.field public final A0D:Lcom/facebook/ads/redexgen/X/OM;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0E:Lcom/facebook/ads/redexgen/X/OS;

.field public final A0F:Lcom/facebook/ads/redexgen/X/QD;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public final A0G:Lcom/facebook/ads/redexgen/X/QE;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 58653
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Y4;->A0C()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Y4;->A0I:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Me;I)V
    .locals 12
    .param p6    # I
        .annotation build Lcom/facebook/ads/internal/view/dynamiclayout/DynamicFullScreenAdView$AdFormatType;
        .end annotation
    .end param

    .line 58654
    move-object v2, p0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58655
    new-instance v0, Lcom/facebook/ads/redexgen/X/YG;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/YG;-><init>(Lcom/facebook/ads/redexgen/X/Y4;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A00:Lcom/facebook/ads/redexgen/X/4y;

    .line 58656
    new-instance v0, Lcom/facebook/ads/redexgen/X/YE;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/YE;-><init>(Lcom/facebook/ads/redexgen/X/Y4;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0F:Lcom/facebook/ads/redexgen/X/QD;

    .line 58657
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/facebook/ads/redexgen/X/Y4;->A02:Z

    .line 58658
    iput-object p1, v2, Lcom/facebook/ads/redexgen/X/Y4;->A06:Lcom/facebook/ads/redexgen/X/XJ;

    .line 58659
    iput-object p2, v2, Lcom/facebook/ads/redexgen/X/Y4;->A07:Lcom/facebook/ads/redexgen/X/JC;

    .line 58660
    iput-object p3, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0B:Lcom/facebook/ads/redexgen/X/M9;

    .line 58661
    move-object/from16 v5, p4

    iput-object v5, v2, Lcom/facebook/ads/redexgen/X/Y4;->A05:Lcom/facebook/ads/redexgen/X/16;

    .line 58662
    move-object/from16 v0, p5

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0C:Lcom/facebook/ads/redexgen/X/Me;

    .line 58663
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OT;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/OS;

    move-result-object v0

    .line 58664
    .local v2, "preloadedDynamicWebViewController":Lcom/facebook/ads/redexgen/X/OS;
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 58665
    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    .line 58666
    iput-boolean v1, v2, Lcom/facebook/ads/redexgen/X/Y4;->A03:Z

    .line 58667
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OS;->A0M()Lcom/facebook/ads/redexgen/X/JJ;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A08:Lcom/facebook/ads/redexgen/X/JJ;

    .line 58668
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OS;->A0N()Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0A:Lcom/facebook/ads/redexgen/X/La;

    .line 58669
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    new-instance v0, Lcom/facebook/ads/redexgen/X/YD;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/YD;-><init>(Lcom/facebook/ads/redexgen/X/Y4;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0Z(Lcom/facebook/ads/redexgen/X/OR;)V

    .line 58670
    const/16 v1, 0x3eb

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OS;->A0O()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0J(ILandroid/view/View;)V

    .line 58671
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A05:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58672
    new-instance v3, Lcom/facebook/ads/redexgen/X/OM;

    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/Y4;->A06:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Y4;->A07:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/Y4;->A05:Lcom/facebook/ads/redexgen/X/16;

    new-instance v7, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v7, v4}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/Y4;->A08:Lcom/facebook/ads/redexgen/X/JJ;

    iget-object v9, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0B:Lcom/facebook/ads/redexgen/X/M9;

    iget-object v10, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0C:Lcom/facebook/ads/redexgen/X/Me;

    new-instance v11, Lcom/facebook/ads/redexgen/X/Y9;

    invoke-direct {v11, v2}, Lcom/facebook/ads/redexgen/X/Y9;-><init>(Lcom/facebook/ads/redexgen/X/Y4;)V

    invoke-direct/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/OM;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/JJ;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/Me;Lcom/facebook/ads/redexgen/X/OL;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0D:Lcom/facebook/ads/redexgen/X/OM;

    .line 58673
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0D:Lcom/facebook/ads/redexgen/X/OM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0O()V

    .line 58674
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    .line 58675
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OS;->A0O()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OI;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/OI;-><init>(Lcom/facebook/ads/redexgen/X/Y4;)V

    .line 58676
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xb;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 58677
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0D:Lcom/facebook/ads/redexgen/X/OM;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Lcom/facebook/ads/redexgen/X/Y4;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58678
    :goto_1
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0D:Lcom/facebook/ads/redexgen/X/OM;

    if-eqz v5, :cond_0

    .line 58679
    :goto_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0F:Lcom/facebook/ads/redexgen/X/QD;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Y4;->A06:Lcom/facebook/ads/redexgen/X/XJ;

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/QE;

    invoke-direct {v0, v5, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/QE;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0G:Lcom/facebook/ads/redexgen/X/QE;

    .line 58680
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0G:Lcom/facebook/ads/redexgen/X/QE;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A05:Lcom/facebook/ads/redexgen/X/16;

    .line 58681
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0H()I

    move-result v0

    .line 58682
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QE;->A0X(I)V

    .line 58683
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0G:Lcom/facebook/ads/redexgen/X/QE;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A05:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0I()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QE;->A0Y(I)V

    .line 58684
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0G:Lcom/facebook/ads/redexgen/X/QE;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0b(Lcom/facebook/ads/redexgen/X/QE;)V

    .line 58685
    new-instance v0, Lcom/facebook/ads/redexgen/X/LV;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/LV;-><init>(Landroid/view/View;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A09:Lcom/facebook/ads/redexgen/X/LV;

    .line 58686
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Y4;->A09:Lcom/facebook/ads/redexgen/X/LV;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LU;->A03:Lcom/facebook/ads/redexgen/X/LU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A05(Lcom/facebook/ads/redexgen/X/LU;)V

    .line 58687
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Y4;->setBackgroundColor(I)V

    .line 58688
    return-void

    .line 58689
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OS;->A0O()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v5

    goto :goto_2

    .line 58690
    :cond_1
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0D:Lcom/facebook/ads/redexgen/X/OM;

    goto :goto_1

    .line 58691
    :cond_2
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Y4;->A06:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/OS;

    move/from16 v4, p6

    invoke-direct {v0, v1, v5, p2, v4}, Lcom/facebook/ads/redexgen/X/OS;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JC;I)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    .line 58692
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/Y4;->A03:Z

    goto/16 :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Y4;)Lcom/facebook/ads/redexgen/X/16;
    .locals 0

    .line 58693
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A05:Lcom/facebook/ads/redexgen/X/16;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Y4;)Lcom/facebook/ads/redexgen/X/50;
    .locals 0

    .line 58694
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A01:Lcom/facebook/ads/redexgen/X/50;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Y4;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 0

    .line 58695
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A06:Lcom/facebook/ads/redexgen/X/XJ;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Y4;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 0

    .line 58696
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A07:Lcom/facebook/ads/redexgen/X/JC;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Y4;)Lcom/facebook/ads/redexgen/X/JJ;
    .locals 0

    .line 58697
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A08:Lcom/facebook/ads/redexgen/X/JJ;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Y4;)Lcom/facebook/ads/redexgen/X/La;
    .locals 0

    .line 58698
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0A:Lcom/facebook/ads/redexgen/X/La;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Y4;)Lcom/facebook/ads/redexgen/X/M9;
    .locals 0

    .line 58699
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0B:Lcom/facebook/ads/redexgen/X/M9;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Y4;)Lcom/facebook/ads/redexgen/X/Me;
    .locals 0

    .line 58700
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0C:Lcom/facebook/ads/redexgen/X/Me;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Y4;)Lcom/facebook/ads/redexgen/X/OM;
    .locals 0

    .line 58701
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0D:Lcom/facebook/ads/redexgen/X/OM;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Y4;)Lcom/facebook/ads/redexgen/X/OS;
    .locals 0

    .line 58702
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Y4;)Lcom/facebook/ads/redexgen/X/QE;
    .locals 0

    .line 58703
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0G:Lcom/facebook/ads/redexgen/X/QE;

    return-object p0
.end method

.method private A0B()V
    .locals 4

    .line 58704
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Y4;->A06:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A05:Lcom/facebook/ads/redexgen/X/16;

    .line 58705
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A05:Lcom/facebook/ads/redexgen/X/16;

    .line 58706
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Oi;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Oi;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1S;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A05:Lcom/facebook/ads/redexgen/X/16;

    .line 58707
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oi;->A08(Lcom/facebook/ads/redexgen/X/1I;)Lcom/facebook/ads/redexgen/X/Oi;

    move-result-object v0

    .line 58708
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oi;->A0B()Lcom/facebook/ads/redexgen/X/Ok;

    move-result-object v2

    .line 58709
    .local p0, "introView":Lcom/facebook/ads/redexgen/X/Ok;
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Y4;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58710
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Y5;-><init>(Lcom/facebook/ads/redexgen/X/Y4;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ok;->A04(Lcom/facebook/ads/redexgen/X/Oj;)V

    .line 58711
    return-void
.end method

.method public static A0C()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Ky6zrcoV7NYtZpO3AnBVhERgUe61TP4A"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MIS71VG0t7feKobdqgnq1TwubiJ1N09z"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nEwmQOfqxRkjYDAAu8TY0n89Pulsb82"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nm6mhrtocmSPL4qM7u9wOkkvqXPHcra"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ADTrDSFqqVysA22fSklmKPGMwsWvvDiN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "oNlgPu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "28CTXOUAXLtNi6XFaROwO0buCKC9QIVi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Y4;->A0H:[Ljava/lang/String;

    return-void
.end method

.method private final A0D()V
    .locals 3

    .line 58712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/OS;->A0a(Lcom/facebook/ads/redexgen/X/Oc;)V

    .line 58713
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A03:Z

    if-nez v0, :cond_2

    .line 58714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A06:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4v()V

    .line 58715
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OS;->A0W()V

    .line 58716
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    .line 58717
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OS;->A0O()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58718
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Y4;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58719
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0B:Lcom/facebook/ads/redexgen/X/M9;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/M9;->A3M(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 58720
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A05:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58721
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y4;->A09:Lcom/facebook/ads/redexgen/X/LV;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LU;->A04:Lcom/facebook/ads/redexgen/X/LU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A05(Lcom/facebook/ads/redexgen/X/LU;)V

    .line 58722
    :cond_1
    return-void

    .line 58723
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A06:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4w()V

    .line 58724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OS;->A0e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58725
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Y4;->AEB()V

    goto :goto_0
.end method

.method private A0E(Ljava/lang/String;)V
    .locals 9

    .line 58726
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58727
    return-void

    .line 58728
    :cond_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/Nj;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Y4;->A06:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0C:Lcom/facebook/ads/redexgen/X/Me;

    .line 58729
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Me;->A5w()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0G:Lcom/facebook/ads/redexgen/X/QE;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0A:Lcom/facebook/ads/redexgen/X/La;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Y4;->A07:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0B:Lcom/facebook/ads/redexgen/X/M9;

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Nj;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;)V

    .line 58730
    .local p0, "ctaActionHelper":Lcom/facebook/ads/redexgen/X/Nj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A05:Lcom/facebook/ads/redexgen/X/16;

    .line 58731
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58732
    invoke-virtual {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Nj;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 58733
    return-void
.end method

.method public static getAttachedDynamicAdViews()I
    .locals 1

    .line 58793
    sget-object v0, Lcom/facebook/ads/redexgen/X/Y4;->A0I:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final A7V()V
    .locals 1

    .line 58734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A05:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0G()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Y4;->A0E(Ljava/lang/String;)V

    .line 58735
    return-void
.end method

.method public final A7W(Ljava/lang/String;)V
    .locals 0

    .line 58736
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Y4;->A0E(Ljava/lang/String;)V

    .line 58737
    return-void
.end method

.method public final A7a()V
    .locals 5

    .line 58738
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0B:Lcom/facebook/ads/redexgen/X/M9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0C:Lcom/facebook/ads/redexgen/X/Me;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Me;->A5T()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M9;->A3t(Ljava/lang/String;)V

    .line 58739
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Y4;->A06:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0C:Lcom/facebook/ads/redexgen/X/Me;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A05:Lcom/facebook/ads/redexgen/X/16;

    .line 58740
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Z()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0B:Lcom/facebook/ads/redexgen/X/M9;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PA;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/PA;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Me;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/M9;)V

    .line 58741
    .local p0, "serverSideRewardHandler":Lcom/facebook/ads/redexgen/X/PA;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PA;->A06()V

    .line 58742
    return-void
.end method

.method public final A8E()V
    .locals 2

    .line 58743
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Y6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Y6;-><init>(Lcom/facebook/ads/redexgen/X/Y4;)V

    .line 58744
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58745
    return-void
.end method

.method public final A8J(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58746
    sget-object v0, Lcom/facebook/ads/redexgen/X/Y4;->A0I:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 58747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A00:Lcom/facebook/ads/redexgen/X/4y;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/50;->A0L(Lcom/facebook/ads/redexgen/X/4y;)V

    .line 58748
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Y4;->A01:Lcom/facebook/ads/redexgen/X/50;

    .line 58749
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y4;->A0D()V

    .line 58750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A05:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58751
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Y4;->A0B()V

    .line 58752
    :goto_0
    return-void

    .line 58753
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OS;->A0V()V

    goto :goto_0
.end method

.method public final AAG()V
    .locals 1

    .line 58754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0D:Lcom/facebook/ads/redexgen/X/OM;

    if-eqz v0, :cond_0

    .line 58755
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0Q()V

    .line 58756
    :cond_0
    return-void
.end method

.method public final AAs(Z)V
    .locals 1

    .line 58757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0D:Lcom/facebook/ads/redexgen/X/OM;

    if-eqz v0, :cond_0

    .line 58758
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OM;->A0S(Z)V

    .line 58759
    :cond_0
    return-void
.end method

.method public final AB2(Z)V
    .locals 1

    .line 58760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0D:Lcom/facebook/ads/redexgen/X/OM;

    if-eqz v0, :cond_0

    .line 58761
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OM;->A0T(Z)V

    .line 58762
    :cond_0
    if-eqz p1, :cond_1

    .line 58763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OS;->A0R()V

    .line 58764
    :goto_0
    return-void

    .line 58765
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OS;->A0U()V

    goto :goto_0
.end method

.method public final ABR(Z)V
    .locals 4

    .line 58766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0D:Lcom/facebook/ads/redexgen/X/OM;

    if-eqz v0, :cond_0

    .line 58767
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OM;->A0U(Z)V

    .line 58768
    :cond_0
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Y4;->A02:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Y4;->A0H:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Y4;->A0H:[Ljava/lang/String;

    const-string v1, "5WCDyt3aDRAQqvSthuq2O6x8YHnGvtvN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 58769
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A02:Z

    .line 58770
    return-void

    .line 58771
    :cond_1
    if-eqz p1, :cond_2

    .line 58772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OS;->A0Q()V

    .line 58773
    :goto_0
    return-void

    .line 58774
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0E:Lcom/facebook/ads/redexgen/X/OS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OS;->A0X()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ABc()V
    .locals 1

    .line 58775
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0D:Lcom/facebook/ads/redexgen/X/OM;

    if-eqz v0, :cond_0

    .line 58776
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0R()V

    .line 58777
    :cond_0
    return-void
.end method

.method public final AC4(Z)V
    .locals 1

    .line 58778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0D:Lcom/facebook/ads/redexgen/X/OM;

    if-eqz v0, :cond_0

    .line 58779
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OM;->A0V(Z)V

    .line 58780
    :cond_0
    return-void
.end method

.method public final AC6(Z)V
    .locals 1

    .line 58781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0D:Lcom/facebook/ads/redexgen/X/OM;

    if-eqz v0, :cond_0

    .line 58782
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OM;->A0W(Z)V

    .line 58783
    :cond_0
    return-void
.end method

.method public final ADT(Landroid/os/Bundle;)V
    .locals 0

    .line 58784
    return-void
.end method

.method public final AEB()V
    .locals 1

    .line 58785
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A04:Z

    if-nez v0, :cond_0

    .line 58786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0G:Lcom/facebook/ads/redexgen/X/QE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0V()V

    .line 58787
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A04:Z

    .line 58788
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 2

    .line 58789
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y4;->A01:Lcom/facebook/ads/redexgen/X/50;

    if-nez v1, :cond_0

    .line 58790
    return-void

    .line 58791
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 58792
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 58794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0D:Lcom/facebook/ads/redexgen/X/OM;

    if-eqz v0, :cond_0

    .line 58795
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OM;->A0P()V

    .line 58796
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A09:Lcom/facebook/ads/redexgen/X/LV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LV;->A03()V

    .line 58797
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Y4;->A07:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A05:Lcom/facebook/ads/redexgen/X/16;

    .line 58798
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nc;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nc;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0A:Lcom/facebook/ads/redexgen/X/La;

    .line 58799
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A03(Lcom/facebook/ads/redexgen/X/La;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A0G:Lcom/facebook/ads/redexgen/X/QE;

    .line 58800
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A04(Lcom/facebook/ads/redexgen/X/QE;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    .line 58801
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A06()Ljava/util/Map;

    move-result-object v0

    .line 58802
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8S(Ljava/lang/String;Ljava/util/Map;)V

    .line 58803
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A00:Lcom/facebook/ads/redexgen/X/4y;

    .line 58804
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A01:Lcom/facebook/ads/redexgen/X/50;

    .line 58805
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y4;->A05:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OT;->A03(Ljava/lang/String;)V

    .line 58806
    sget-object v0, Lcom/facebook/ads/redexgen/X/Y4;->A0I:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 58807
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 58808
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Y4;->requestDisallowInterceptTouchEvent(Z)V

    .line 58809
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/M9;)V
    .locals 0

    .line 58810
    return-void
.end method

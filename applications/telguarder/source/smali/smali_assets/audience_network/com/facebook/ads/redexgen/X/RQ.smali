.class public abstract Lcom/facebook/ads/redexgen/X/RQ;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/M8;


# static fields
.field public static final A0D:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/16;

.field public final A02:Lcom/facebook/ads/redexgen/X/7D;

.field public final A03:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A04:Lcom/facebook/ads/redexgen/X/JC;

.field public final A05:Lcom/facebook/ads/redexgen/X/JK;

.field public final A06:Lcom/facebook/ads/redexgen/X/Lc;

.field public final A07:Lcom/facebook/ads/redexgen/X/M6;

.field public final A08:Lcom/facebook/ads/redexgen/X/M7;

.field public final A09:Lcom/facebook/ads/redexgen/X/MZ;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Q9;

.field public final A0B:Lcom/facebook/ads/redexgen/X/LX;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Q8;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 50007
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/RQ;->A0D:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/MZ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M7;)V
    .locals 4

    .line 50008
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50009
    new-instance v0, Lcom/facebook/ads/redexgen/X/RU;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/RU;-><init>(Lcom/facebook/ads/redexgen/X/RQ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A0C:Lcom/facebook/ads/redexgen/X/Q8;

    .line 50010
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A06:Lcom/facebook/ads/redexgen/X/Lc;

    .line 50011
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A00:Z

    .line 50012
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RQ;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 50013
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RQ;->A09:Lcom/facebook/ads/redexgen/X/MZ;

    .line 50014
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/RQ;->A04:Lcom/facebook/ads/redexgen/X/JC;

    .line 50015
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 50016
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/RQ;->A02:Lcom/facebook/ads/redexgen/X/7D;

    .line 50017
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/RQ;->A08:Lcom/facebook/ads/redexgen/X/M7;

    .line 50018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 50019
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RQ;->A04:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v0, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A05:Lcom/facebook/ads/redexgen/X/JK;

    .line 50020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A0C:Lcom/facebook/ads/redexgen/X/Q8;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RQ;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Q9;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Q9;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A0A:Lcom/facebook/ads/redexgen/X/Q9;

    .line 50021
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RQ;->A0A:Lcom/facebook/ads/redexgen/X/Q9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 50022
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0F()I

    move-result v0

    .line 50023
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0X(I)V

    .line 50024
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RQ;->A0A:Lcom/facebook/ads/redexgen/X/Q9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0G()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0Y(I)V

    .line 50025
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RQ;->A0O()Lcom/facebook/ads/redexgen/X/M6;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A07:Lcom/facebook/ads/redexgen/X/M6;

    .line 50026
    new-instance v0, Lcom/facebook/ads/redexgen/X/LX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/LX;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A0B:Lcom/facebook/ads/redexgen/X/LX;

    .line 50027
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RQ;->A0B:Lcom/facebook/ads/redexgen/X/LX;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LW;->A02:Lcom/facebook/ads/redexgen/X/LW;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LX;->A06(Lcom/facebook/ads/redexgen/X/LW;)V

    .line 50028
    return-void
.end method

.method private A0O()Lcom/facebook/ads/redexgen/X/M6;
    .locals 10

    .line 50029
    new-instance v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/RQ;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/RQ;->A08:Lcom/facebook/ads/redexgen/X/M7;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/RQ;->A05:Lcom/facebook/ads/redexgen/X/JK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 50030
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0E()I

    move-result v9

    const/4 v8, 0x1

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/JK;II)V

    .line 50031
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/M6;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A03()I

    move-result v3

    .line 50032
    .local v4, "unskippableSeconds":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 50033
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 50034
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 50035
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0P()Lcom/facebook/ads/redexgen/X/1Z;

    move-result-object v0

    .line 50036
    invoke-virtual {v4, v2, v1, v3, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setPageDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1Z;)V

    .line 50037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 50038
    if-gez v3, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50039
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setToolbarActionMode(I)V

    .line 50040
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/RR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/RR;-><init>(Lcom/facebook/ads/redexgen/X/RQ;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setToolbarListener(Lcom/facebook/ads/redexgen/X/M5;)V

    .line 50041
    return-object v4
.end method

.method private A0P()V
    .locals 4

    .line 50042
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50043
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RQ;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 50044
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 50045
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Od;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Od;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1S;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 50046
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Od;->A08(Lcom/facebook/ads/redexgen/X/1I;)Lcom/facebook/ads/redexgen/X/Od;

    move-result-object v0

    .line 50047
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Od;->A0B()Lcom/facebook/ads/redexgen/X/Of;

    move-result-object v2

    .line 50048
    .local p0, "introView":Lcom/facebook/ads/redexgen/X/Of;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RQ;->A05:Lcom/facebook/ads/redexgen/X/JK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0T:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/JK;Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 50049
    sget-object v0, Lcom/facebook/ads/redexgen/X/RQ;->A0D:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/RQ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50050
    new-instance v0, Lcom/facebook/ads/redexgen/X/RS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/RS;-><init>(Lcom/facebook/ads/redexgen/X/RQ;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Of;->A04(Lcom/facebook/ads/redexgen/X/Oe;)V

    .line 50051
    .end local p0    # "introView":Lcom/facebook/ads/redexgen/X/Of;
    :goto_0
    return-void

    .line 50052
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RQ;->A0R()V

    goto :goto_0
.end method


# virtual methods
.method public final A0Q()V
    .locals 1

    .line 50053
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A00:Z

    if-nez v0, :cond_0

    .line 50054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A0A:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0V()V

    .line 50055
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A00:Z

    .line 50056
    :cond_0
    return-void
.end method

.method public abstract A0R()V
.end method

.method public final A0S(ILcom/facebook/ads/redexgen/X/Kd;)V
    .locals 2

    .line 50057
    new-instance v1, Lcom/facebook/ads/redexgen/X/RT;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RT;-><init>(Lcom/facebook/ads/redexgen/X/RQ;ILcom/facebook/ads/redexgen/X/Kd;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/L8;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/L8;-><init>(ILcom/facebook/ads/redexgen/X/L7;)V

    .line 50058
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A07()Z

    .line 50059
    return-void
.end method

.method public abstract A0T(Lcom/facebook/ads/redexgen/X/50;)V
.end method

.method public abstract A0U()Z
.end method

.method public final A8L(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50060
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RQ;->A08:Lcom/facebook/ads/redexgen/X/M7;

    sget-object v0, Lcom/facebook/ads/redexgen/X/RQ;->A0D:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/M7;->A3I(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 50061
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/RQ;->A0T(Lcom/facebook/ads/redexgen/X/50;)V

    .line 50062
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RQ;->A0P()V

    .line 50063
    return-void
.end method

.method public final ADU(Landroid/os/Bundle;)V
    .locals 0

    .line 50064
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 50065
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50066
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 50067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A0B:Lcom/facebook/ads/redexgen/X/LX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LX;->A04()V

    .line 50068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50069
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RQ;->A04:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 50070
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NX;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A0A:Lcom/facebook/ads/redexgen/X/Q9;

    .line 50071
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A03(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A06:Lcom/facebook/ads/redexgen/X/Lc;

    .line 50072
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    .line 50073
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->A05()Ljava/util/Map;

    move-result-object v0

    .line 50074
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8U(Ljava/lang/String;Ljava/util/Map;)V

    .line 50075
    :cond_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 50076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A06:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/Lc;->A07(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 50077
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/M7;)V
    .locals 0

    .line 50078
    return-void
.end method

.method public setUpFullscreenMode(Z)V
    .locals 2

    .line 50079
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge v1, v0, :cond_0

    .line 50080
    return-void

    .line 50081
    :cond_0
    if-eqz p1, :cond_1

    .line 50082
    sget-object v1, Lcom/facebook/ads/redexgen/X/LW;->A03:Lcom/facebook/ads/redexgen/X/LW;

    .line 50083
    .local p0, "mode":Lcom/facebook/ads/redexgen/X/LW;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A0B:Lcom/facebook/ads/redexgen/X/LX;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/LX;->A06(Lcom/facebook/ads/redexgen/X/LW;)V

    .line 50084
    return-void

    .line 50085
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/LW;->A02:Lcom/facebook/ads/redexgen/X/LW;

    goto :goto_0
.end method

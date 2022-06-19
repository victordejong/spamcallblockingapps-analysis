.class public abstract Lcom/facebook/ads/redexgen/X/Ns;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static final A08:I

.field public static final A09:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/1I;

.field public A01:Z

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A04:Lcom/facebook/ads/redexgen/X/JC;

.field public final A05:Lcom/facebook/ads/redexgen/X/Ry;

.field public final A06:Lcom/facebook/ads/redexgen/X/Np;

.field public final A07:Lcom/facebook/ads/redexgen/X/Nw;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 45967
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ns;->A08:I

    .line 45968
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41e00000    # 28.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ns;->A09:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nw;Z)V
    .locals 9

    .line 45969
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45970
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A01:Z

    .line 45971
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A07:Lcom/facebook/ads/redexgen/X/Nw;

    .line 45972
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 45973
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A04:Lcom/facebook/ads/redexgen/X/JC;

    .line 45974
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A00()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 45975
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    .line 45976
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A00:Lcom/facebook/ads/redexgen/X/1I;

    .line 45977
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Ns;->A02:Z

    .line 45978
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ry;

    .line 45979
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v2

    .line 45980
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ns;->A00:Lcom/facebook/ads/redexgen/X/1I;

    .line 45981
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v5

    .line 45982
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A09()Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v6

    .line 45983
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A0B()Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v7

    .line 45984
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A07()Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Ry;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A05:Lcom/facebook/ads/redexgen/X/Ry;

    .line 45985
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A05:Lcom/facebook/ads/redexgen/X/Ry;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->A00()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nh;->setRoundedCornersEnabled(Z)V

    .line 45986
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A05:Lcom/facebook/ads/redexgen/X/Ry;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->A0C()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nh;->setViewShowsOverMedia(Z)V

    .line 45987
    const/16 v1, 0x3e9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A05:Lcom/facebook/ads/redexgen/X/Ry;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0I(ILandroid/view/View;)V

    .line 45988
    new-instance v0, Lcom/facebook/ads/redexgen/X/Np;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ns;->A00:Lcom/facebook/ads/redexgen/X/1I;

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ns;->A02:Z

    .line 45989
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->A01()Z

    move-result v4

    .line 45990
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->A02()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Np;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1I;ZZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A06:Lcom/facebook/ads/redexgen/X/Np;

    .line 45991
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A06:Lcom/facebook/ads/redexgen/X/Np;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 45992
    return-void

    .line 45993
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A00()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public A00()Z
    .locals 1

    .line 45994
    const/4 v0, 0x1

    return v0
.end method

.method public A01()Z
    .locals 1

    .line 45995
    const/4 v0, 0x1

    return v0
.end method

.method public A02()Z
    .locals 1

    .line 45996
    const/4 v0, 0x1

    return v0
.end method

.method public A0C()Z
    .locals 1

    .line 45997
    const/4 v0, 0x1

    return v0
.end method

.method public A0I(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 1

    .line 45998
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A01:Z

    .line 45999
    return-void
.end method

.method public A0J(Lcom/facebook/ads/redexgen/X/7s;)V
    .locals 0

    .line 46000
    return-void
.end method

.method public A0U()V
    .locals 0

    .line 46001
    return-void
.end method

.method public A0V()V
    .locals 0

    .line 46002
    return-void
.end method

.method public A0W()V
    .locals 0

    .line 46003
    return-void
.end method

.method public A0X()V
    .locals 0

    .line 46004
    return-void
.end method

.method public A0Y()V
    .locals 0

    .line 46005
    return-void
.end method

.method public A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 9
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46006
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ns;->A06:Lcom/facebook/ads/redexgen/X/Np;

    .line 46007
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A05()Ljava/lang/String;

    move-result-object v4

    .line 46008
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A01()Ljava/lang/String;

    move-result-object v5

    .line 46009
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->A0a()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p3, v1

    if-gez v0, :cond_0

    const/4 v8, 0x1

    .line 46010
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Np;->A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 46011
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ns;->A05:Lcom/facebook/ads/redexgen/X/Ry;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/Ry;->setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;)V

    .line 46012
    return-void

    .line 46013
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public abstract A0a()Z
.end method

.method public A0b(Z)Z
    .locals 1

    .line 46014
    const/4 v0, 0x0

    return v0
.end method

.method public getAdContextWrapper()Lcom/facebook/ads/redexgen/X/Wm;
    .locals 1

    .line 46015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    return-object v0
.end method

.method public getAdEventManager()Lcom/facebook/ads/redexgen/X/JC;
    .locals 1

    .line 46016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A04:Lcom/facebook/ads/redexgen/X/JC;

    return-object v0
.end method

.method public getCloseButtonStyle()I
    .locals 1
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 46017
    const/4 v0, 0x0

    return v0
.end method

.method public getColors()Lcom/facebook/ads/redexgen/X/1I;
    .locals 1

    .line 46018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A00:Lcom/facebook/ads/redexgen/X/1I;

    return-object v0
.end method

.method public getCtaButton()Lcom/facebook/ads/redexgen/X/Ry;
    .locals 1

    .line 46019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A05:Lcom/facebook/ads/redexgen/X/Ry;

    return-object v0
.end method

.method public getTitleDescContainer()Lcom/facebook/ads/redexgen/X/Np;
    .locals 1

    .line 46020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A06:Lcom/facebook/ads/redexgen/X/Np;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 46021
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 46022
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 46023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A07:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    .line 46024
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A00:Lcom/facebook/ads/redexgen/X/1I;

    .line 46025
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A05:Lcom/facebook/ads/redexgen/X/Ry;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->A0C()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nh;->setViewShowsOverMedia(Z)V

    .line 46026
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A05:Lcom/facebook/ads/redexgen/X/Ry;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A00:Lcom/facebook/ads/redexgen/X/1I;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nh;->setUpButtonColors(Lcom/facebook/ads/redexgen/X/1I;)V

    .line 46027
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ns;->A06:Lcom/facebook/ads/redexgen/X/Np;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ns;->A00:Lcom/facebook/ads/redexgen/X/1I;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A02:Z

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Np;->A01(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 46028
    return-void

    .line 46029
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A07:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A00()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    goto :goto_0
.end method

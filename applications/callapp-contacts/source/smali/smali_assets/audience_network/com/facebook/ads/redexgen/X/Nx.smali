.class public abstract Lcom/facebook/ads/redexgen/X/Nx;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static final A08:I

.field public static final A09:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/1I;

.field public A01:Z

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A04:Lcom/facebook/ads/redexgen/X/JC;

.field public final A05:Lcom/facebook/ads/redexgen/X/a7;

.field public final A06:Lcom/facebook/ads/redexgen/X/Nu;

.field public final A07:Lcom/facebook/ads/redexgen/X/O1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 45974
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    .line 45975
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41e00000    # 28.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Nx;->A09:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/O1;Z)V
    .locals 9

    .line 45976
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45977
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A01:Z

    .line 45978
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nx;->A07:Lcom/facebook/ads/redexgen/X/O1;

    .line 45979
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 45980
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A04:Lcom/facebook/ads/redexgen/X/JC;

    .line 45981
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A00()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 45982
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    .line 45983
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A00:Lcom/facebook/ads/redexgen/X/1I;

    .line 45984
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Nx;->A02:Z

    .line 45985
    new-instance v1, Lcom/facebook/ads/redexgen/X/a7;

    .line 45986
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v2

    .line 45987
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0S()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Nx;->A00:Lcom/facebook/ads/redexgen/X/1I;

    .line 45988
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v5

    .line 45989
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A09()Lcom/facebook/ads/redexgen/X/M9;

    move-result-object v6

    .line 45990
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A0B()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v7

    .line 45991
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A07()Lcom/facebook/ads/redexgen/X/La;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/a7;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Nx;->A05:Lcom/facebook/ads/redexgen/X/a7;

    .line 45992
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nx;->A05:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->A00()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nm;->setRoundedCornersEnabled(Z)V

    .line 45993
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nx;->A05:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->A0A()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nm;->setViewShowsOverMedia(Z)V

    .line 45994
    const/16 v1, 0x3e9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A05:Lcom/facebook/ads/redexgen/X/a7;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0J(ILandroid/view/View;)V

    .line 45995
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nu;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nx;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nx;->A00:Lcom/facebook/ads/redexgen/X/1I;

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Nx;->A02:Z

    .line 45996
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->A01()Z

    move-result v4

    .line 45997
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->A02()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Nu;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1I;ZZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A06:Lcom/facebook/ads/redexgen/X/Nu;

    .line 45998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A06:Lcom/facebook/ads/redexgen/X/Nu;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 45999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46000
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nx;->A06:Lcom/facebook/ads/redexgen/X/Nu;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->setDescriptionVisibility(I)V

    .line 46001
    :cond_0
    return-void

    .line 46002
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A00()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public A00()Z
    .locals 1

    .line 46003
    const/4 v0, 0x1

    return v0
.end method

.method public A01()Z
    .locals 1

    .line 46004
    const/4 v0, 0x1

    return v0
.end method

.method public A02()Z
    .locals 1

    .line 46005
    const/4 v0, 0x1

    return v0
.end method

.method public A0A()Z
    .locals 1

    .line 46006
    const/4 v0, 0x1

    return v0
.end method

.method public A0I(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 1

    .line 46007
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A01:Z

    .line 46008
    return-void
.end method

.method public A0J(Lcom/facebook/ads/redexgen/X/7s;)V
    .locals 0

    .line 46009
    return-void
.end method

.method public A0U()V
    .locals 0

    .line 46010
    return-void
.end method

.method public A0V()V
    .locals 0

    .line 46011
    return-void
.end method

.method public A0W()V
    .locals 0

    .line 46012
    return-void
.end method

.method public A0X()V
    .locals 0

    .line 46013
    return-void
.end method

.method public A0Y()V
    .locals 0

    .line 46014
    return-void
.end method

.method public A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 9
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46015
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nx;->A06:Lcom/facebook/ads/redexgen/X/Nu;

    .line 46016
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A05()Ljava/lang/String;

    move-result-object v4

    .line 46017
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A01()Ljava/lang/String;

    move-result-object v5

    .line 46018
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->A0a()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p3, v1

    if-gez v0, :cond_0

    const/4 v8, 0x1

    .line 46019
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 46020
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nx;->A05:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/19;->A0G()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/a7;->setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;)V

    .line 46021
    return-void

    .line 46022
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public abstract A0a()Z
.end method

.method public A0b(Z)Z
    .locals 1

    .line 46023
    const/4 v0, 0x0

    return v0
.end method

.method public getAdContextWrapper()Lcom/facebook/ads/redexgen/X/XJ;
    .locals 1

    .line 46024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    return-object v0
.end method

.method public getAdEventManager()Lcom/facebook/ads/redexgen/X/JC;
    .locals 1

    .line 46025
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A04:Lcom/facebook/ads/redexgen/X/JC;

    return-object v0
.end method

.method public getCloseButtonStyle()I
    .locals 1
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 46026
    const/4 v0, 0x0

    return v0
.end method

.method public getColors()Lcom/facebook/ads/redexgen/X/1I;
    .locals 1

    .line 46027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A00:Lcom/facebook/ads/redexgen/X/1I;

    return-object v0
.end method

.method public getCtaButton()Lcom/facebook/ads/redexgen/X/a7;
    .locals 1

    .line 46028
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A05:Lcom/facebook/ads/redexgen/X/a7;

    return-object v0
.end method

.method public getTitleDescContainer()Lcom/facebook/ads/redexgen/X/Nu;
    .locals 1

    .line 46029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A06:Lcom/facebook/ads/redexgen/X/Nu;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 46030
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 46031
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 46032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A07:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    .line 46033
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A00:Lcom/facebook/ads/redexgen/X/1I;

    .line 46034
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nx;->A05:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->A0A()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nm;->setViewShowsOverMedia(Z)V

    .line 46035
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nx;->A05:Lcom/facebook/ads/redexgen/X/a7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A00:Lcom/facebook/ads/redexgen/X/1I;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nm;->setUpButtonColors(Lcom/facebook/ads/redexgen/X/1I;)V

    .line 46036
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nx;->A06:Lcom/facebook/ads/redexgen/X/Nu;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nx;->A00:Lcom/facebook/ads/redexgen/X/1I;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A02:Z

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A01(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 46037
    return-void

    .line 46038
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A07:Lcom/facebook/ads/redexgen/X/O1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A00()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    goto :goto_0
.end method

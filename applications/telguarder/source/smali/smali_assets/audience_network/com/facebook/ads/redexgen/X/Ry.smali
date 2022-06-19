.class public final Lcom/facebook/ads/redexgen/X/Ry;
.super Lcom/facebook/ads/redexgen/X/Nh;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A00:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/Ne;

.field public final A03:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;)V
    .locals 7

    .line 51031
    move-object v1, p1

    invoke-direct {p0, v1, p3}, Lcom/facebook/ads/redexgen/X/Nh;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1I;)V

    .line 51032
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A03:Ljava/util/Map;

    .line 51033
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ne;

    move-object v4, p7

    move-object v6, p5

    move-object v5, p4

    move-object v2, p2

    move-object v3, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Ne;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A02:Lcom/facebook/ads/redexgen/X/Ne;

    .line 51034
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/Ry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51035
    const/16 v0, 0x3e9

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0I(ILandroid/view/View;)V

    .line 51036
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 51037
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Ry;
    .local v0, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Ry;->A00:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Ry;->A01:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 51038
    :cond_1
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/Ry;->A02:Lcom/facebook/ads/redexgen/X/Ne;

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Ry;->A00:Ljava/lang/String;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Ry;->A01:Ljava/lang/String;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Ry;->A03:Ljava/util/Map;

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ne;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 51039
    return-void

    .line 51040
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Ry;
    :cond_2
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51041
    .end local v0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/1J;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51042
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Ry;->setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Nd;)V

    .line 51043
    return-void
.end method

.method public setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Nd;)V
    .locals 2
    .param p4    # Lcom/facebook/ads/redexgen/X/Nd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/1J;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Nd;",
            ")V"
        }
    .end annotation

    .line 51044
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ry;->A00:Ljava/lang/String;

    .line 51045
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A01:Ljava/lang/String;

    .line 51046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A03:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 51047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A02:Lcom/facebook/ads/redexgen/X/Ne;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/Ne;->A08(Lcom/facebook/ads/redexgen/X/Nd;)V

    .line 51048
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1J;->A03()Ljava/lang/String;

    move-result-object v1

    .line 51049
    .local p0, "buttonText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A01:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51050
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ry;->setVisibility(I)V

    .line 51051
    return-void

    .line 51052
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Nh;->setText(Ljava/lang/String;)V

    .line 51053
    return-void
.end method

.method public setIsInAppBrowser(Z)V
    .locals 1

    .line 51054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ry;->A02:Lcom/facebook/ads/redexgen/X/Ne;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ne;->A0A(Z)V

    .line 51055
    return-void
.end method

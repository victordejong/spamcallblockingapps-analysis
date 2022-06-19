.class public final Lcom/facebook/ads/redexgen/X/a7;
.super Lcom/facebook/ads/redexgen/X/Nm;
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

.field public final A02:Lcom/facebook/ads/redexgen/X/Nj;

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
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V
    .locals 7

    .line 66871
    move-object v1, p1

    invoke-direct {p0, v1, p3}, Lcom/facebook/ads/redexgen/X/Nm;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1I;)V

    .line 66872
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a7;->A03:Ljava/util/Map;

    .line 66873
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nj;

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    move-object v4, p7

    move-object v3, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Nj;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a7;->A02:Lcom/facebook/ads/redexgen/X/Nj;

    .line 66874
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/a7;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66875
    const/16 v0, 0x3e9

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0J(ILandroid/view/View;)V

    .line 66876
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KT;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 66877
    .local p0, "this":Lcom/facebook/ads/redexgen/X/a7;
    .local v0, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/a7;->A00:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/a7;->A01:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 66878
    :cond_1
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/a7;->A02:Lcom/facebook/ads/redexgen/X/Nj;

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/a7;->A00:Ljava/lang/String;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/a7;->A01:Ljava/lang/String;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/a7;->A03:Ljava/util/Map;

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nj;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 66879
    return-void

    .line 66880
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/a7;
    :cond_2
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66881
    .end local v0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

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

    .line 66882
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/a7;->setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 66883
    return-void
.end method

.method public setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Ni;)V
    .locals 2
    .param p4    # Lcom/facebook/ads/redexgen/X/Ni;
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
            "Lcom/facebook/ads/redexgen/X/Ni;",
            ")V"
        }
    .end annotation

    .line 66884
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/a7;->A00:Ljava/lang/String;

    .line 66885
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a7;->A01:Ljava/lang/String;

    .line 66886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a7;->A03:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 66887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a7;->A02:Lcom/facebook/ads/redexgen/X/Nj;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/Nj;->A07(Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 66888
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1J;->A03()Ljava/lang/String;

    move-result-object v1

    .line 66889
    .local p0, "buttonText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a7;->A01:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66890
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/a7;->setVisibility(I)V

    .line 66891
    return-void

    .line 66892
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Nm;->setText(Ljava/lang/String;)V

    .line 66893
    return-void
.end method

.method public setIsInAppBrowser(Z)V
    .locals 1

    .line 66894
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a7;->A02:Lcom/facebook/ads/redexgen/X/Nj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Nj;->A09(Z)V

    .line 66895
    return-void
.end method

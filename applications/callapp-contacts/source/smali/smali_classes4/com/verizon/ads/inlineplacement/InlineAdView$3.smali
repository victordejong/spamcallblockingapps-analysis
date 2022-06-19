.class Lcom/verizon/ads/inlineplacement/InlineAdView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/inlineplacement/InlineAdView;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/verizon/ads/inlineplacement/InlineAdView;


# direct methods
.method constructor <init>(Lcom/verizon/ads/inlineplacement/InlineAdView;Z)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$3;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    iput-boolean p2, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewableChanged(Z)V
    .locals 7

    .line 583
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$3;->b:Lcom/verizon/ads/inlineplacement/InlineAdView;

    iget-boolean v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView$3;->a:Z

    const/4 v2, 0x3

    .line 1603
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1604
    sget-object v2, Lcom/verizon/ads/inlineplacement/InlineAdView;->a:Lcom/verizon/ads/Logger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->h:Ljava/lang/String;

    aput-object v6, v4, v5

    const-string v5, "Viewability changed to %s for placement Id \'%s\'"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_4

    if-eqz v1, :cond_1

    .line 1610
    iget-boolean p1, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->j:Z

    if-nez p1, :cond_5

    .line 1614
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Bypassing impression timer and firing impression"

    invoke-virtual {p1, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {v0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->b()V

    return-void

    .line 1628
    :cond_1
    iget-boolean p1, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->j:Z

    if-nez p1, :cond_3

    iget-object p1, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->i:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "com.verizon.ads.inlineplacement"

    const-string v1, "minImpressionDuration"

    .line 1632
    invoke-static {p1, v1, v3}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 1633
    new-instance v1, Lcom/verizon/ads/inlineplacement/InlineAdView$4;

    invoke-direct {v1, v0}, Lcom/verizon/ads/inlineplacement/InlineAdView$4;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdView;)V

    iput-object v1, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->i:Ljava/lang/Runnable;

    .line 1642
    sget-object v1, Lcom/verizon/ads/inlineplacement/InlineAdView;->b:Landroid/os/Handler;

    iget-object v0, v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->i:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void

    .line 1620
    :cond_4
    invoke-virtual {v0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->c()V

    :cond_5
    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/S7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/75;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/S9;->A0A(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/EnumSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/S9;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/XJ;

.field public final synthetic A02:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/S9;Lcom/facebook/ads/redexgen/X/XJ;Z)V
    .locals 0

    .line 51884
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S7;->A00:Lcom/facebook/ads/redexgen/X/S9;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/S7;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/S7;->A02:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private A00(Z)V
    .locals 5

    .line 51885
    if-eqz p1, :cond_1

    .line 51886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S7;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A15(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/S7;->A02:Z

    if-eqz v0, :cond_0

    .line 51887
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/S7;->A00:Lcom/facebook/ads/redexgen/X/S9;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/S7;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 51888
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/S9;->A01(Lcom/facebook/ads/redexgen/X/S9;)Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v2

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/S6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/S6;-><init>(Lcom/facebook/ads/redexgen/X/S7;)V

    .line 51889
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OT;->A01(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/16;ILcom/facebook/ads/redexgen/X/OQ;)Lcom/facebook/ads/redexgen/X/OS;

    move-result-object v0

    .line 51890
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/S9;->A05(Lcom/facebook/ads/redexgen/X/S9;Lcom/facebook/ads/redexgen/X/OS;)Lcom/facebook/ads/redexgen/X/OS;

    .line 51891
    :goto_0
    return-void

    .line 51892
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S7;->A00:Lcom/facebook/ads/redexgen/X/S9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/S9;->A03(Lcom/facebook/ads/redexgen/X/S9;)Lcom/facebook/ads/redexgen/X/1a;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1a;->A9K()V

    goto :goto_0

    .line 51893
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S7;->A00:Lcom/facebook/ads/redexgen/X/S9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/S9;->A03(Lcom/facebook/ads/redexgen/X/S9;)Lcom/facebook/ads/redexgen/X/1a;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1a;->A9J(Lcom/facebook/ads/AdError;)V

    goto :goto_0
.end method


# virtual methods
.method public final A9h()V
    .locals 1

    .line 51894
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/S7;->A00(Z)V

    .line 51895
    return-void
.end method

.method public final A9o()V
    .locals 1

    .line 51896
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/S7;->A00(Z)V

    .line 51897
    return-void
.end method

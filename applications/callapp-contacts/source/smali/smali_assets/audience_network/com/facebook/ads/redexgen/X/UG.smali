.class public final Lcom/facebook/ads/redexgen/X/UG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/UO;->A0M()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/UO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/UO;)V
    .locals 0

    .line 55860
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UG;->A00:Lcom/facebook/ads/redexgen/X/UO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 55861
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UG;->A00:Lcom/facebook/ads/redexgen/X/UO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UO;->A03(Lcom/facebook/ads/redexgen/X/UO;)Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55862
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UG;->A00:Lcom/facebook/ads/redexgen/X/UO;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/UO;->A03(Lcom/facebook/ads/redexgen/X/UO;)Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ConfigurationInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 55863
    :goto_0
    return-object v0

    .line 55864
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UG;->A00:Lcom/facebook/ads/redexgen/X/UO;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method

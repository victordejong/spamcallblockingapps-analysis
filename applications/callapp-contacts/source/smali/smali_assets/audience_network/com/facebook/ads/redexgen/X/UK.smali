.class public final Lcom/facebook/ads/redexgen/X/UK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/UO;->A0N()Lcom/facebook/ads/redexgen/X/6e;
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

    .line 55880
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UK;->A00:Lcom/facebook/ads/redexgen/X/UO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 55881
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UK;->A00:Lcom/facebook/ads/redexgen/X/UO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UO;->A03(Lcom/facebook/ads/redexgen/X/UO;)Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55882
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UK;->A00:Lcom/facebook/ads/redexgen/X/UO;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/UO;->A03(Lcom/facebook/ads/redexgen/X/UO;)Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A05(I)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 55883
    :goto_0
    return-object v0

    .line 55884
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UK;->A00:Lcom/facebook/ads/redexgen/X/UO;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method

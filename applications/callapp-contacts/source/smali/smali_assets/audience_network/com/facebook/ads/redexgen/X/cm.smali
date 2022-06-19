.class public final Lcom/facebook/ads/redexgen/X/cm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cp;)V
    .locals 0

    .line 73268
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cm;->A00:Lcom/facebook/ads/redexgen/X/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A7u()Z
    .locals 1

    .line 73269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cm;->A00:Lcom/facebook/ads/redexgen/X/cp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cp;->A02(Lcom/facebook/ads/redexgen/X/cp;)Lcom/facebook/ads/redexgen/X/aO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aO;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cm;->A00:Lcom/facebook/ads/redexgen/X/cp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cp;->A02(Lcom/facebook/ads/redexgen/X/cp;)Lcom/facebook/ads/redexgen/X/aO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aO;->goBack()V

    .line 73271
    const/4 v0, 0x1

    return v0

    .line 73272
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

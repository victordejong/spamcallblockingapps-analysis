.class public final Lcom/facebook/ads/redexgen/X/Sb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/SY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/SY;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SY;)V
    .locals 0

    .line 52515
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/SY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A7w()Z
    .locals 1

    .line 52516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/SY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SY;->A02(Lcom/facebook/ads/redexgen/X/SY;)Lcom/facebook/ads/redexgen/X/SA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SA;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/SY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SY;->A02(Lcom/facebook/ads/redexgen/X/SY;)Lcom/facebook/ads/redexgen/X/SA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SA;->goBack()V

    .line 52518
    const/4 v0, 0x1

    return v0

    .line 52519
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

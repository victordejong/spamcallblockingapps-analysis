.class public final Lcom/facebook/ads/redexgen/X/RJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OD;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/RH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/RH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RH;)V
    .locals 0

    .line 50093
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RJ;->A00:Lcom/facebook/ads/redexgen/X/RH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ABw(I)V
    .locals 2

    .line 50094
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RJ;->A00:Lcom/facebook/ads/redexgen/X/RH;

    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A0I(Lcom/facebook/ads/redexgen/X/RH;IZ)V

    .line 50095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A00:Lcom/facebook/ads/redexgen/X/RH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RH;->A0M(Lcom/facebook/ads/redexgen/X/RH;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50096
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A00:Lcom/facebook/ads/redexgen/X/RH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RH;->A0G(Lcom/facebook/ads/redexgen/X/RH;)V

    .line 50097
    :goto_0
    return-void

    .line 50098
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A00:Lcom/facebook/ads/redexgen/X/RH;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/RH;->A0H(Lcom/facebook/ads/redexgen/X/RH;I)V

    goto :goto_0
.end method

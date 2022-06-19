.class public final Lcom/facebook/ads/redexgen/X/RF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/O8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/RD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/RD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RD;)V
    .locals 0

    .line 49959
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/RD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ABw(I)V
    .locals 2

    .line 49960
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/RD;

    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/RD;->A0I(Lcom/facebook/ads/redexgen/X/RD;IZ)V

    .line 49961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/RD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RD;->A0M(Lcom/facebook/ads/redexgen/X/RD;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/RD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RD;->A0G(Lcom/facebook/ads/redexgen/X/RD;)V

    .line 49963
    :goto_0
    return-void

    .line 49964
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:Lcom/facebook/ads/redexgen/X/RD;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/RD;->A0H(Lcom/facebook/ads/redexgen/X/RD;I)V

    goto :goto_0
.end method

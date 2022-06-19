.class public final Lcom/facebook/ads/redexgen/X/Au;
.super Lcom/facebook/ads/redexgen/X/Le;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/At;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/At;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/At;)V
    .locals 0

    .line 21986
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Au;->A00:Lcom/facebook/ads/redexgen/X/At;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Le;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 1

    .line 21987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Au;->A00:Lcom/facebook/ads/redexgen/X/At;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/At;->A00(Lcom/facebook/ads/redexgen/X/At;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21988
    return-void

    .line 21989
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Au;->A00:Lcom/facebook/ads/redexgen/X/At;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/At;->A00(Lcom/facebook/ads/redexgen/X/At;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MH;->A9l()V

    .line 21990
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 21991
    check-cast p1, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Au;->A00(Lcom/facebook/ads/redexgen/X/7w;)V

    return-void
.end method

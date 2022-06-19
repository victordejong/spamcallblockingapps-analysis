.class public final Lcom/facebook/ads/redexgen/X/8a;
.super Lcom/facebook/ads/redexgen/X/L6;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/86;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/86;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/86;)V
    .locals 0

    .line 18277
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8a;->A00:Lcom/facebook/ads/redexgen/X/86;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/L6;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 3

    .line 18278
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8a;->A00:Lcom/facebook/ads/redexgen/X/86;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/86;->A02(Lcom/facebook/ads/redexgen/X/86;)Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getState()Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A06:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, p1, v0}, Lcom/facebook/ads/redexgen/X/86;->A0A(Lcom/facebook/ads/redexgen/X/86;Lcom/facebook/ads/redexgen/X/7w;Z)V

    .line 18279
    return-void

    .line 18280
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 18281
    check-cast p1, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8a;->A00(Lcom/facebook/ads/redexgen/X/7w;)V

    return-void
.end method

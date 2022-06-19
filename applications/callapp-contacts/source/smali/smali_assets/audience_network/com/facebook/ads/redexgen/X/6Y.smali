.class public final Lcom/facebook/ads/redexgen/X/6Y;
.super Lcom/facebook/ads/redexgen/X/Le;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/IB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/IB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/IB;)V
    .locals 0

    .line 15395
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/IB;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Le;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 1

    .line 15396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/IB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IB;->A00(Lcom/facebook/ads/redexgen/X/IB;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/IB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IB;->A07()V

    .line 15398
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 15399
    check-cast p1, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6Y;->A00(Lcom/facebook/ads/redexgen/X/7w;)V

    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/6Y;
.super Lcom/facebook/ads/redexgen/X/L6;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/I6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/I6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/I6;)V
    .locals 0

    .line 15485
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/I6;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/L6;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 1

    .line 15486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/I6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A00(Lcom/facebook/ads/redexgen/X/I6;)Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Y;->A00:Lcom/facebook/ads/redexgen/X/I6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I6;->A06()V

    .line 15488
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 15489
    check-cast p1, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6Y;->A00(Lcom/facebook/ads/redexgen/X/7w;)V

    return-void
.end method

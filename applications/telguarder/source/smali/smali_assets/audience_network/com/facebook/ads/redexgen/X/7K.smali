.class public final Lcom/facebook/ads/redexgen/X/7K;
.super Lcom/facebook/ads/redexgen/X/K9;
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

    .line 16619
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7K;->A00:Lcom/facebook/ads/redexgen/X/I6;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K9;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7s;)V
    .locals 2

    .line 16620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7K;->A00:Lcom/facebook/ads/redexgen/X/I6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A00(Lcom/facebook/ads/redexgen/X/I6;)Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16621
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7K;->A00:Lcom/facebook/ads/redexgen/X/I6;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/I6;->A08(Z)V

    .line 16622
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 16623
    check-cast p1, Lcom/facebook/ads/redexgen/X/7s;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7K;->A00(Lcom/facebook/ads/redexgen/X/7s;)V

    return-void
.end method

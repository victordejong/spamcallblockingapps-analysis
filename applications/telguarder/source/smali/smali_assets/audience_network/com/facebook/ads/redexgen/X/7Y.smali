.class public final Lcom/facebook/ads/redexgen/X/7Y;
.super Lcom/facebook/ads/redexgen/X/KA;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7U;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7U;)V
    .locals 0

    .line 16776
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/7U;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KA;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KL;)V
    .locals 2

    .line 16777
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7Y;->A00:Lcom/facebook/ads/redexgen/X/7U;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7U;->setVisibility(I)V

    .line 16778
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 16779
    check-cast p1, Lcom/facebook/ads/redexgen/X/KL;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7Y;->A00(Lcom/facebook/ads/redexgen/X/KL;)V

    return-void
.end method

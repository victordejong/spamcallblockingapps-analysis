.class public final Lcom/facebook/ads/redexgen/X/9i;
.super Lcom/facebook/ads/redexgen/X/KS;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9g;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9g;)V
    .locals 0

    .line 20296
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9i;->A00:Lcom/facebook/ads/redexgen/X/9g;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KS;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 2

    .line 20297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9i;->A00:Lcom/facebook/ads/redexgen/X/9g;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9g;->A00(Lcom/facebook/ads/redexgen/X/9g;)Lcom/facebook/ads/redexgen/X/RD;

    move-result-object v0

    .line 20298
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RD;->A0Q()Lcom/facebook/ads/redexgen/X/O9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9i;->A00:Lcom/facebook/ads/redexgen/X/9g;

    .line 20299
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/O9;->AC3(Landroid/view/View;)V

    .line 20300
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 20301
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9i;->A00(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method

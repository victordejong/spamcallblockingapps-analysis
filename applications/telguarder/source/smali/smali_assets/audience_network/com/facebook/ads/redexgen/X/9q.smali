.class public final Lcom/facebook/ads/redexgen/X/9q;
.super Lcom/facebook/ads/redexgen/X/KS;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9o;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9o;)V
    .locals 0

    .line 20663
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9q;->A00:Lcom/facebook/ads/redexgen/X/9o;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KS;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 2

    .line 20664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A00:Lcom/facebook/ads/redexgen/X/9o;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9o;->A07(Lcom/facebook/ads/redexgen/X/9o;)V

    .line 20665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A00:Lcom/facebook/ads/redexgen/X/9o;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9o;->A07:Lcom/facebook/ads/redexgen/X/RD;

    .line 20666
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RD;->A0Q()Lcom/facebook/ads/redexgen/X/O9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A00:Lcom/facebook/ads/redexgen/X/9o;

    .line 20667
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/O9;->AC3(Landroid/view/View;)V

    .line 20668
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 20669
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9q;->A00(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method

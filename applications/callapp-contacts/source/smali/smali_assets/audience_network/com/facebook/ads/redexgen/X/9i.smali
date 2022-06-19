.class public final Lcom/facebook/ads/redexgen/X/9i;
.super Lcom/facebook/ads/redexgen/X/KW;
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

    .line 20170
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9i;->A00:Lcom/facebook/ads/redexgen/X/9g;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KW;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 2

    .line 20171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9i;->A00:Lcom/facebook/ads/redexgen/X/9g;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9g;->A00(Lcom/facebook/ads/redexgen/X/9g;)Lcom/facebook/ads/redexgen/X/RH;

    move-result-object v0

    .line 20172
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A0Q()Lcom/facebook/ads/redexgen/X/OE;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9i;->A00:Lcom/facebook/ads/redexgen/X/9g;

    .line 20173
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OE;->AC3(Landroid/view/View;)V

    .line 20174
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 20175
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9i;->A00(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method

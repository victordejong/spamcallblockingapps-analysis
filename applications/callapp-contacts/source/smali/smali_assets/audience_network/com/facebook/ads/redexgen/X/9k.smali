.class public final Lcom/facebook/ads/redexgen/X/9k;
.super Lcom/facebook/ads/redexgen/X/Le;
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

    .line 20182
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9k;->A00:Lcom/facebook/ads/redexgen/X/9g;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Le;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 3

    .line 20183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9k;->A00:Lcom/facebook/ads/redexgen/X/9g;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9g;->A00(Lcom/facebook/ads/redexgen/X/9g;)Lcom/facebook/ads/redexgen/X/RH;

    move-result-object v0

    .line 20184
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RH;->A0P()Lcom/facebook/ads/redexgen/X/OD;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9k;->A00:Lcom/facebook/ads/redexgen/X/9g;

    .line 20185
    const v0, -0x5f000010

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9g;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/OD;->ABw(I)V

    .line 20186
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 20187
    check-cast p1, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9k;->A00(Lcom/facebook/ads/redexgen/X/7w;)V

    return-void
.end method

.class public final Lcom/facebook/ads/redexgen/X/7V;
.super Lcom/facebook/ads/redexgen/X/Le;
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

    .line 16662
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7V;->A00:Lcom/facebook/ads/redexgen/X/7U;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Le;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 2

    .line 16663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7V;->A00:Lcom/facebook/ads/redexgen/X/7U;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7U;->A00(Lcom/facebook/ads/redexgen/X/7U;)Lcom/facebook/ads/redexgen/X/Pj;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pj;->setChecked(Z)V

    .line 16664
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 16665
    check-cast p1, Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7V;->A00(Lcom/facebook/ads/redexgen/X/7w;)V

    return-void
.end method

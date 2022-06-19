.class public final Lcom/facebook/ads/redexgen/X/7W;
.super Lcom/facebook/ads/redexgen/X/KN;
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

    .line 16768
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7W;->A00:Lcom/facebook/ads/redexgen/X/7U;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KN;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KP;)V
    .locals 2

    .line 16769
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7W;->A00:Lcom/facebook/ads/redexgen/X/7U;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7U;->A00(Lcom/facebook/ads/redexgen/X/7U;)Lcom/facebook/ads/redexgen/X/Pe;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pe;->setChecked(Z)V

    .line 16770
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 16771
    check-cast p1, Lcom/facebook/ads/redexgen/X/KP;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7W;->A00(Lcom/facebook/ads/redexgen/X/KP;)V

    return-void
.end method

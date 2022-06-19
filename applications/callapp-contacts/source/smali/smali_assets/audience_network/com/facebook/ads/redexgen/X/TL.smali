.class public final Lcom/facebook/ads/redexgen/X/TL;
.super Lcom/facebook/ads/redexgen/X/4A;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Eq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 0

    .line 54715
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TL;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4A;-><init>()V

    .line 54716
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 54717
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TL;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1q(Ljava/lang/String;)V

    .line 54718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TL;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/4Z;->A0D:Z

    .line 54719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TL;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1R()V

    .line 54720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TL;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A00:Lcom/facebook/ads/redexgen/X/T7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T7;->A0K()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TL;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->requestLayout()V

    .line 54722
    :cond_0
    return-void
.end method

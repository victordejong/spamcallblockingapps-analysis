.class public final Lcom/facebook/ads/redexgen/X/6b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/6e;

.field public final A02:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/redexgen/X/6i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/EnumSet;Lcom/facebook/ads/redexgen/X/6e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/redexgen/X/6i;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/6e;",
            ")V"
        }
    .end annotation

    .line 15408
    .local p2, "signalFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/internal/botdetection/signals/model/SignalFlagsEnum;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15409
    iput p1, p0, Lcom/facebook/ads/redexgen/X/6b;->A00:I

    .line 15410
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6b;->A02:Ljava/util/EnumSet;

    .line 15411
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/6b;->A01:Lcom/facebook/ads/redexgen/X/6e;

    .line 15412
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 15413
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6b;->A00:I

    return v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/6e;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 15414
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6b;->A02:Ljava/util/EnumSet;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A07:Lcom/facebook/ads/redexgen/X/6i;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6b;->A01:Lcom/facebook/ads/redexgen/X/6e;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/6f;)Lcom/facebook/ads/redexgen/X/6e;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 15415
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/6b;->A04(Lcom/facebook/ads/redexgen/X/6f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6b;->A01:Lcom/facebook/ads/redexgen/X/6e;

    return-object v0

    .line 15417
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A03()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/redexgen/X/6i;",
            ">;"
        }
    .end annotation

    .line 15418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6b;->A02:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/6f;)Z
    .locals 2

    .line 15419
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/72;->A0F(Lcom/facebook/ads/redexgen/X/6f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6b;->A02:Ljava/util/EnumSet;

    .line 15420
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6f;->A03()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6i;->A00(I)Lcom/facebook/ads/redexgen/X/6i;

    move-result-object v0

    .line 15421
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 15422
    :goto_0
    return v0

    .line 15423
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

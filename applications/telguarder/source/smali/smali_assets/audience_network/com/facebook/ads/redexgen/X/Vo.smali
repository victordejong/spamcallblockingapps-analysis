.class public final Lcom/facebook/ads/redexgen/X/Vo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Bz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/ads/redexgen/X/C1;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/Bz<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Bx;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bx;)V
    .locals 1

    .line 61642
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Vo;, "Lcom/facebook/ads/internal/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61643
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bx;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A00:Lcom/facebook/ads/redexgen/X/Bx;

    .line 61644
    return-void
.end method


# virtual methods
.method public final A6P()Lcom/facebook/ads/redexgen/X/Bx;
    .locals 1

    .line 61645
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vo;, "Lcom/facebook/ads/internal/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vo;->A00:Lcom/facebook/ads/redexgen/X/Bx;

    return-object v0
.end method

.method public final A6l()Lcom/facebook/ads/redexgen/X/C1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 61646
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vo;, "Lcom/facebook/ads/internal/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A7H()I
    .locals 1

    .line 61647
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vo;, "Lcom/facebook/ads/internal/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final ACg()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61648
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vo;, "Lcom/facebook/ads/internal/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.class public final Lcom/facebook/ads/redexgen/X/Yf;
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

    .line 61368
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Yf;, "Lcom/facebook/ads/internal/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61369
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Bx;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yf;->A00:Lcom/facebook/ads/redexgen/X/Bx;

    .line 61370
    return-void
.end method


# virtual methods
.method public final A6P()Lcom/facebook/ads/redexgen/X/Bx;
    .locals 1

    .line 61371
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yf;, "Lcom/facebook/ads/internal/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yf;->A00:Lcom/facebook/ads/redexgen/X/Bx;

    return-object v0
.end method

.method public final A6l()Lcom/facebook/ads/redexgen/X/C1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 61372
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yf;, "Lcom/facebook/ads/internal/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A7F()I
    .locals 1

    .line 61373
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yf;, "Lcom/facebook/ads/internal/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
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

    .line 61374
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Yf;, "Lcom/facebook/ads/internal/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

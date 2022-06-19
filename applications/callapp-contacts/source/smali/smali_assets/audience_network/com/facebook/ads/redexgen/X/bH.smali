.class public final Lcom/facebook/ads/redexgen/X/bH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HH;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Hd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/bG;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69794
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bH;-><init>(Lcom/facebook/ads/redexgen/X/Hd;)V

    .line 69795
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/bG;",
            ">;)V"
        }
    .end annotation

    .line 69796
    .local p1, "listener":Lcom/facebook/ads/redexgen/X/Hd;, "Lcom/facebook/ads/internal/exoplayer2/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/upstream/FileDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69797
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bH;->A00:Lcom/facebook/ads/redexgen/X/Hd;

    .line 69798
    return-void
.end method


# virtual methods
.method public final A4E()Lcom/facebook/ads/redexgen/X/HI;
    .locals 2

    .line 69799
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bH;->A00:Lcom/facebook/ads/redexgen/X/Hd;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bG;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/bG;-><init>(Lcom/facebook/ads/redexgen/X/Hd;)V

    return-object v0
.end method

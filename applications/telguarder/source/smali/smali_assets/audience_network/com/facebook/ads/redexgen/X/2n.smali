.class public final Lcom/facebook/ads/redexgen/X/2n;
.super Lcom/facebook/ads/redexgen/X/Aw;
.source ""


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/Hd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/HI;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Ljava/lang/String;

.field public final A04:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/HI;",
            ">;)V"
        }
    .end annotation

    .line 6032
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Hd;, "Lcom/facebook/ads/internal/exoplayer2/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/upstream/DataSource;>;"
    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/2n;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Hd;IIZ)V

    .line 6033
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Hd;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/HI;",
            ">;IIZ)V"
        }
    .end annotation

    .line 6034
    .local p2, "listener":Lcom/facebook/ads/redexgen/X/Hd;, "Lcom/facebook/ads/internal/exoplayer2/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/upstream/DataSource;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Aw;-><init>()V

    .line 6035
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2n;->A03:Ljava/lang/String;

    .line 6036
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2n;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    .line 6037
    iput p3, p0, Lcom/facebook/ads/redexgen/X/2n;->A00:I

    .line 6038
    iput p4, p0, Lcom/facebook/ads/redexgen/X/2n;->A01:I

    .line 6039
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/2n;->A04:Z

    .line 6040
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/HS;)Lcom/facebook/ads/redexgen/X/Ax;
    .locals 8

    .line 6041
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ax;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2n;->A03:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2n;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/2n;->A00:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/2n;->A01:I

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/2n;->A04:Z

    const/4 v2, 0x0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/Ax;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/IO;Lcom/facebook/ads/redexgen/X/Hd;IIZLcom/facebook/ads/redexgen/X/HS;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A01(Lcom/facebook/ads/redexgen/X/HS;)Lcom/facebook/ads/redexgen/X/To;
    .locals 1

    .line 6042
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2n;->A00(Lcom/facebook/ads/redexgen/X/HS;)Lcom/facebook/ads/redexgen/X/Ax;

    move-result-object v0

    return-object v0
.end method

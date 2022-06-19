.class public final Lcom/facebook/ads/redexgen/X/Tx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HH;


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Lcom/facebook/ads/redexgen/X/HH;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Hd;Lcom/facebook/ads/redexgen/X/HH;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/HI;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/HH;",
            ")V"
        }
    .end annotation

    .line 55467
    .local p3, "listener":Lcom/facebook/ads/redexgen/X/Hd;, "Lcom/facebook/ads/internal/exoplayer2/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/upstream/DataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55468
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A00:Landroid/content/Context;

    .line 55469
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tx;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    .line 55470
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Tx;->A01:Lcom/facebook/ads/redexgen/X/HH;

    .line 55471
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/HI;",
            ">;)V"
        }
    .end annotation

    .line 55472
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/Hd;, "Lcom/facebook/ads/internal/exoplayer2/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/upstream/DataSource;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/2n;

    invoke-direct {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/2n;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Hd;)V

    invoke-direct {p0, p1, p3, v0}, Lcom/facebook/ads/redexgen/X/Tx;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Hd;Lcom/facebook/ads/redexgen/X/HH;)V

    .line 55473
    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/Ty;
    .locals 4

    .line 55474
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Tx;->A00:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Tx;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tx;->A01:Lcom/facebook/ads/redexgen/X/HH;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HH;->A4B()Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ty;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ty;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Hd;Lcom/facebook/ads/redexgen/X/HI;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A4B()Lcom/facebook/ads/redexgen/X/HI;
    .locals 1

    .line 55475
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tx;->A00()Lcom/facebook/ads/redexgen/X/Ty;

    move-result-object v0

    return-object v0
.end method

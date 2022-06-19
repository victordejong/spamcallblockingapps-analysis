.class public final Lcom/facebook/ads/redexgen/X/ar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GC;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;)V"
        }
    .end annotation

    .line 68747
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68748
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ar;->A00:Ljava/util/List;

    .line 68749
    return-void
.end method


# virtual methods
.method public final A63(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;"
        }
    .end annotation

    .line 68750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ar;->A00:Ljava/util/List;

    return-object v0
.end method

.method public final A6S(I)J
    .locals 2

    .line 68751
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final A6T()I
    .locals 1

    .line 68752
    const/4 v0, 0x1

    return v0
.end method

.method public final A6n(J)I
    .locals 1

    .line 68753
    const/4 v0, -0x1

    return v0
.end method

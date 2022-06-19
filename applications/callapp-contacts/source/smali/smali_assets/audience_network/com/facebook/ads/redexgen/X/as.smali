.class public final Lcom/facebook/ads/redexgen/X/as;
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

    .line 68754
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68755
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/as;->A00:Ljava/util/List;

    .line 68756
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

    .line 68757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/as;->A00:Ljava/util/List;

    return-object v0
.end method

.method public final A6S(I)J
    .locals 2

    .line 68758
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final A6T()I
    .locals 1

    .line 68759
    const/4 v0, 0x1

    return v0
.end method

.method public final A6n(J)I
    .locals 1

    .line 68760
    const/4 v0, -0x1

    return v0
.end method

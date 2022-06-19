.class public final Lcom/facebook/ads/redexgen/X/cZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LO;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LimitLineProcessor"
.end annotation


# instance fields
.field public A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/LO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LO;I)V
    .locals 0

    .line 72617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72618
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cZ;->A01:Lcom/facebook/ads/redexgen/X/LO;

    .line 72619
    iput p2, p0, Lcom/facebook/ads/redexgen/X/cZ;->A00:I

    .line 72620
    return-void
.end method


# virtual methods
.method public final ACZ(Ljava/lang/String;)V
    .locals 1

    .line 72621
    iget v0, p0, Lcom/facebook/ads/redexgen/X/cZ;->A00:I

    if-lez v0, :cond_0

    .line 72622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cZ;->A01:Lcom/facebook/ads/redexgen/X/LO;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LO;->ACZ(Ljava/lang/String;)V

    .line 72623
    iget v0, p0, Lcom/facebook/ads/redexgen/X/cZ;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/cZ;->A00:I

    .line 72624
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 72625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cZ;->A01:Lcom/facebook/ads/redexgen/X/LO;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LO;->flush()V

    .line 72626
    return-void
.end method

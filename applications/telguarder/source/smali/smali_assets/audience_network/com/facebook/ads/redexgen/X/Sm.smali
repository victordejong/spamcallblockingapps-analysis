.class public final Lcom/facebook/ads/redexgen/X/Sm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LQ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BypassLineProcessor"
.end annotation


# instance fields
.field public A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/LQ;

.field public final A02:Lcom/facebook/ads/redexgen/X/LQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LQ;ILcom/facebook/ads/redexgen/X/LQ;)V
    .locals 0

    .line 52797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52798
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A01:Lcom/facebook/ads/redexgen/X/LQ;

    .line 52799
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Sm;->A00:I

    .line 52800
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Sm;->A02:Lcom/facebook/ads/redexgen/X/LQ;

    .line 52801
    return-void
.end method


# virtual methods
.method public final ACZ(Ljava/lang/String;)V
    .locals 1

    .line 52802
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A00:I

    if-lez v0, :cond_0

    .line 52803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A01:Lcom/facebook/ads/redexgen/X/LQ;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LQ;->ACZ(Ljava/lang/String;)V

    .line 52804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A01:Lcom/facebook/ads/redexgen/X/LQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LQ;->flush()V

    .line 52805
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A00:I

    .line 52806
    :goto_0
    return-void

    .line 52807
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A02:Lcom/facebook/ads/redexgen/X/LQ;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LQ;->ACZ(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    .line 52808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A02:Lcom/facebook/ads/redexgen/X/LQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LQ;->flush()V

    .line 52809
    return-void
.end method

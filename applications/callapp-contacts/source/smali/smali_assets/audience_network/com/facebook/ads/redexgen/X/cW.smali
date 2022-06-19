.class public final Lcom/facebook/ads/redexgen/X/cW;
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
    name = "BypassLineProcessor"
.end annotation


# instance fields
.field public A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/LO;

.field public final A02:Lcom/facebook/ads/redexgen/X/LO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LO;ILcom/facebook/ads/redexgen/X/LO;)V
    .locals 0

    .line 72571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72572
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cW;->A01:Lcom/facebook/ads/redexgen/X/LO;

    .line 72573
    iput p2, p0, Lcom/facebook/ads/redexgen/X/cW;->A00:I

    .line 72574
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/cW;->A02:Lcom/facebook/ads/redexgen/X/LO;

    .line 72575
    return-void
.end method


# virtual methods
.method public final ACZ(Ljava/lang/String;)V
    .locals 1

    .line 72576
    iget v0, p0, Lcom/facebook/ads/redexgen/X/cW;->A00:I

    if-lez v0, :cond_0

    .line 72577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cW;->A01:Lcom/facebook/ads/redexgen/X/LO;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LO;->ACZ(Ljava/lang/String;)V

    .line 72578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cW;->A01:Lcom/facebook/ads/redexgen/X/LO;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LO;->flush()V

    .line 72579
    iget v0, p0, Lcom/facebook/ads/redexgen/X/cW;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/cW;->A00:I

    .line 72580
    :goto_0
    return-void

    .line 72581
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cW;->A02:Lcom/facebook/ads/redexgen/X/LO;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LO;->ACZ(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    .line 72582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cW;->A02:Lcom/facebook/ads/redexgen/X/LO;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LO;->flush()V

    .line 72583
    return-void
.end method

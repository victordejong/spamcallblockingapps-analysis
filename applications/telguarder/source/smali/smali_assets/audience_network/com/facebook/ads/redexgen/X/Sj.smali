.class public final Lcom/facebook/ads/redexgen/X/Sj;
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
    name = "LimitLineProcessor"
.end annotation


# instance fields
.field public A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/LQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LQ;I)V
    .locals 0

    .line 52754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52755
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sj;->A01:Lcom/facebook/ads/redexgen/X/LQ;

    .line 52756
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Sj;->A00:I

    .line 52757
    return-void
.end method


# virtual methods
.method public final ACZ(Ljava/lang/String;)V
    .locals 1

    .line 52758
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sj;->A00:I

    if-lez v0, :cond_0

    .line 52759
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sj;->A01:Lcom/facebook/ads/redexgen/X/LQ;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LQ;->ACZ(Ljava/lang/String;)V

    .line 52760
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sj;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sj;->A00:I

    .line 52761
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 52762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sj;->A01:Lcom/facebook/ads/redexgen/X/LQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LQ;->flush()V

    .line 52763
    return-void
.end method

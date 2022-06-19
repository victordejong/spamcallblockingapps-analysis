.class public final Lcom/facebook/ads/redexgen/X/9P;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9O;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/9O;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9O;III)V
    .locals 0

    .line 19674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19675
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9P;->A03:Lcom/facebook/ads/redexgen/X/9O;

    .line 19676
    iput p2, p0, Lcom/facebook/ads/redexgen/X/9P;->A01:I

    .line 19677
    iput p3, p0, Lcom/facebook/ads/redexgen/X/9P;->A00:I

    .line 19678
    iput p4, p0, Lcom/facebook/ads/redexgen/X/9P;->A02:I

    .line 19679
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 19680
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9P;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 19681
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9P;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 19682
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9P;->A02:I

    return v0
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/9O;
    .locals 1

    .line 19683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9P;->A03:Lcom/facebook/ads/redexgen/X/9O;

    return-object v0
.end method

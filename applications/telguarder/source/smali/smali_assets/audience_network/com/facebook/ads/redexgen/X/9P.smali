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

    .line 19798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19799
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9P;->A03:Lcom/facebook/ads/redexgen/X/9O;

    .line 19800
    iput p2, p0, Lcom/facebook/ads/redexgen/X/9P;->A01:I

    .line 19801
    iput p3, p0, Lcom/facebook/ads/redexgen/X/9P;->A00:I

    .line 19802
    iput p4, p0, Lcom/facebook/ads/redexgen/X/9P;->A02:I

    .line 19803
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 19804
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9P;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 19805
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9P;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 19806
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9P;->A02:I

    return v0
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/9O;
    .locals 1

    .line 19807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9P;->A03:Lcom/facebook/ads/redexgen/X/9O;

    return-object v0
.end method

.class public final Lcom/facebook/ads/redexgen/X/08;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/07;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Z

.field public final A03:Z

.field public final A04:Z


# direct methods
.method public constructor <init>(IZIZZ)V
    .locals 0

    .line 1601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1602
    iput p1, p0, Lcom/facebook/ads/redexgen/X/08;->A00:I

    .line 1603
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/08;->A02:Z

    .line 1604
    iput p3, p0, Lcom/facebook/ads/redexgen/X/08;->A01:I

    .line 1605
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/08;->A03:Z

    .line 1606
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/08;->A04:Z

    .line 1607
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 1608
    iget v0, p0, Lcom/facebook/ads/redexgen/X/08;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 1609
    iget v0, p0, Lcom/facebook/ads/redexgen/X/08;->A01:I

    return v0
.end method

.method public final A02()Z
    .locals 1

    .line 1610
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/08;->A02:Z

    return v0
.end method

.method public final A03()Z
    .locals 1

    .line 1611
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/08;->A03:Z

    return v0
.end method

.method public final A04()Z
    .locals 1

    .line 1612
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/08;->A04:Z

    return v0
.end method

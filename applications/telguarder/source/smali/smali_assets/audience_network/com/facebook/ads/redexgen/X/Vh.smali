.class public final Lcom/facebook/ads/redexgen/X/Vh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/CP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unseekable"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/CO;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 61466
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(JJ)V

    .line 61467
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3

    .line 61468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61469
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A00:J

    .line 61470
    const-wide/16 v1, 0x0

    cmp-long v0, p3, v1

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/CQ;->A04:Lcom/facebook/ads/redexgen/X/CQ;

    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Vh;->A01:Lcom/facebook/ads/redexgen/X/CO;

    .line 61471
    return-void

    .line 61472
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v0, v1, v2, p3, p4}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(JJ)V

    goto :goto_0
.end method


# virtual methods
.method public final A6J()J
    .locals 2

    .line 61473
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A00:J

    return-wide v0
.end method

.method public final A79(J)Lcom/facebook/ads/redexgen/X/CO;
    .locals 1

    .line 61474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vh;->A01:Lcom/facebook/ads/redexgen/X/CO;

    return-object v0
.end method

.method public final A8F()Z
    .locals 1

    .line 61475
    const/4 v0, 0x0

    return v0
.end method

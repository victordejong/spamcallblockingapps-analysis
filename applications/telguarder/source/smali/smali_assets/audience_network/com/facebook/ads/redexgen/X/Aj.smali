.class public final Lcom/facebook/ads/redexgen/X/Aj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTime"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:J

.field public final A05:Lcom/facebook/ads/redexgen/X/Af;

.field public final A06:Lcom/facebook/ads/redexgen/X/FC;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/facebook/ads/redexgen/X/Af;ILcom/facebook/ads/redexgen/X/FC;JJJ)V
    .locals 0
    .param p5    # Lcom/facebook/ads/redexgen/X/FC;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21717
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Aj;->A03:J

    .line 21718
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Aj;->A05:Lcom/facebook/ads/redexgen/X/Af;

    .line 21719
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Aj;->A00:I

    .line 21720
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Aj;->A06:Lcom/facebook/ads/redexgen/X/FC;

    .line 21721
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/Aj;->A02:J

    .line 21722
    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/Aj;->A01:J

    .line 21723
    iput-wide p10, p0, Lcom/facebook/ads/redexgen/X/Aj;->A04:J

    .line 21724
    return-void
.end method

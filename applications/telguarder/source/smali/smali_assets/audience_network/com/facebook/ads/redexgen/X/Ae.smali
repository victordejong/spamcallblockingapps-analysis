.class public final Lcom/facebook/ads/redexgen/X/Ae;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Window"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A08:Z

.field public A09:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()J
    .locals 2

    .line 21573
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ae;->A02:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/9u;->A01(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A01()J
    .locals 2

    .line 21574
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ae;->A02:J

    return-wide v0
.end method

.method public final A02()J
    .locals 2

    .line 21575
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ae;->A03:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/9u;->A01(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A03()J
    .locals 2

    .line 21576
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ae;->A04:J

    return-wide v0
.end method

.method public final A04(Ljava/lang/Object;JJZZJJIIJ)Lcom/facebook/ads/redexgen/X/Ae;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21577
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ae;->A07:Ljava/lang/Object;

    .line 21578
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Ae;->A05:J

    .line 21579
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/Ae;->A06:J

    .line 21580
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/Ae;->A09:Z

    .line 21581
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/Ae;->A08:Z

    .line 21582
    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/Ae;->A02:J

    .line 21583
    iput-wide p10, p0, Lcom/facebook/ads/redexgen/X/Ae;->A03:J

    .line 21584
    iput p12, p0, Lcom/facebook/ads/redexgen/X/Ae;->A00:I

    .line 21585
    iput p13, p0, Lcom/facebook/ads/redexgen/X/Ae;->A01:I

    .line 21586
    iput-wide p14, p0, Lcom/facebook/ads/redexgen/X/Ae;->A04:J

    .line 21587
    return-object p0
.end method

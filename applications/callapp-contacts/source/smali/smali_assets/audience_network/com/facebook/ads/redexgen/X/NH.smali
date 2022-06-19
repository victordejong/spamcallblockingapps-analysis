.class public final Lcom/facebook/ads/redexgen/X/NH;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/NI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public final A07:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 44794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44795
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A01:J

    .line 44796
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:J

    .line 44797
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A04:J

    .line 44798
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A00:J

    .line 44799
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A05:J

    .line 44800
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A02:J

    .line 44801
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/NH;->A06:J

    .line 44802
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NH;->A07:Ljava/lang/String;

    .line 44803
    return-void
.end method


# virtual methods
.method public final A00(J)Lcom/facebook/ads/redexgen/X/NH;
    .locals 0

    .line 44804
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/NH;->A00:J

    .line 44805
    return-object p0
.end method

.method public final A01(J)Lcom/facebook/ads/redexgen/X/NH;
    .locals 0

    .line 44806
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/NH;->A01:J

    .line 44807
    return-object p0
.end method

.method public final A02(J)Lcom/facebook/ads/redexgen/X/NH;
    .locals 0

    .line 44808
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/NH;->A02:J

    .line 44809
    return-object p0
.end method

.method public final A03(J)Lcom/facebook/ads/redexgen/X/NH;
    .locals 0

    .line 44810
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/NH;->A03:J

    .line 44811
    return-object p0
.end method

.method public final A04(J)Lcom/facebook/ads/redexgen/X/NH;
    .locals 0

    .line 44812
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/NH;->A04:J

    .line 44813
    return-object p0
.end method

.method public final A05(J)Lcom/facebook/ads/redexgen/X/NH;
    .locals 0

    .line 44814
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/NH;->A05:J

    .line 44815
    return-object p0
.end method

.method public final A06(J)Lcom/facebook/ads/redexgen/X/NH;
    .locals 0

    .line 44816
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/NH;->A06:J

    .line 44817
    return-object p0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/NI;
    .locals 19

    .line 44818
    move-object/from16 v0, p0

    new-instance v2, Lcom/facebook/ads/redexgen/X/NI;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/NH;->A07:Ljava/lang/String;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/NH;->A01:J

    iget-wide v6, v0, Lcom/facebook/ads/redexgen/X/NH;->A03:J

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/NH;->A04:J

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/NH;->A00:J

    iget-wide v12, v0, Lcom/facebook/ads/redexgen/X/NH;->A05:J

    iget-wide v14, v0, Lcom/facebook/ads/redexgen/X/NH;->A02:J

    move-object v2, v2

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/NH;->A06:J

    const/16 v18, 0x0

    move-wide/from16 v16, v0

    invoke-direct/range {v2 .. v18}, Lcom/facebook/ads/redexgen/X/NI;-><init>(Ljava/lang/String;JJJJJJJLcom/facebook/ads/redexgen/X/NG;)V

    return-object v2
.end method

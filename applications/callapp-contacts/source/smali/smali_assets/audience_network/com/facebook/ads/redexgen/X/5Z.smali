.class public final Lcom/facebook/ads/redexgen/X/5Z;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/5Y;
    }
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/5Y;

.field public final A02:Ljava/lang/String;

.field public final A03:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5Y;)V
    .locals 6

    .line 13509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/5Z;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5Y;J)V

    .line 13510
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5Y;J)V
    .locals 0

    .line 13511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13512
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5Z;->A02:Ljava/lang/String;

    .line 13513
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/5Z;->A03:Z

    .line 13514
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/5Z;->A01:Lcom/facebook/ads/redexgen/X/5Y;

    .line 13515
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/5Z;->A00:J

    .line 13516
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/5Z;
    .locals 6

    .line 13517
    new-instance v0, Lcom/facebook/ads/redexgen/X/5Z;

    sget-object v3, Lcom/facebook/ads/redexgen/X/5Y;->A06:Lcom/facebook/ads/redexgen/X/5Y;

    const-string v1, ""

    const/4 v2, 0x1

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/5Z;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5Y;J)V

    return-object v0
.end method


# virtual methods
.method public final A01()J
    .locals 2

    .line 13518
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/5Z;->A00:J

    return-wide v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/5Y;
    .locals 1

    .line 13519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Z;->A01:Lcom/facebook/ads/redexgen/X/5Y;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1

    .line 13520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Z;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A04()Z
    .locals 1

    .line 13521
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5Z;->A03:Z

    return v0
.end method

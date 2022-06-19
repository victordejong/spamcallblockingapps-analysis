.class public final Lcom/facebook/ads/redexgen/X/IZ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 2

    .line 38696
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_0

    .line 38697
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IZ;->A01()V

    .line 38698
    :cond_0
    return-void
.end method

.method public static A01()V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 38699
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 38700
    return-void
.end method

.method public static A02(Ljava/lang/String;)V
    .locals 2

    .line 38701
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_0

    .line 38702
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IZ;->A03(Ljava/lang/String;)V

    .line 38703
    :cond_0
    return-void
.end method

.method public static A03(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 38704
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 38705
    return-void
.end method

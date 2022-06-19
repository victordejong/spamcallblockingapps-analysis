.class public final Lcom/facebook/ads/redexgen/X/IZ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 2

    .line 38557
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_0

    .line 38558
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IZ;->A01()V

    .line 38559
    :cond_0
    return-void
.end method

.method public static A01()V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 38560
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 38561
    return-void
.end method

.method public static A02(Ljava/lang/String;)V
    .locals 2

    .line 38562
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_0

    .line 38563
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IZ;->A03(Ljava/lang/String;)V

    .line 38564
    :cond_0
    return-void
.end method

.method public static A03(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 38565
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 38566
    return-void
.end method

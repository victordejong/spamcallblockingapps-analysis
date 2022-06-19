.class public final Lcom/facebook/ads/redexgen/X/96;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterFilters"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/95;
    .locals 1

    .line 19498
    new-instance v0, Lcom/facebook/ads/redexgen/X/WM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WM;-><init>()V

    return-object v0
.end method

.method public static varargs A01([Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/95;
    .locals 1

    .line 19499
    new-instance v0, Lcom/facebook/ads/redexgen/X/WL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/WL;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

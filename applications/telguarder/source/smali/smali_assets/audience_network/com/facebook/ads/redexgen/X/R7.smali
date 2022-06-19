.class public final Lcom/facebook/ads/redexgen/X/R7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/O7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/R6;->A09(Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Lc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Oo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Oo;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/R6;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/R7;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/R6;Lcom/facebook/ads/redexgen/X/Oo;)V
    .locals 0

    .line 49705
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R7;->A01:Lcom/facebook/ads/redexgen/X/R6;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/R7;->A00:Lcom/facebook/ads/redexgen/X/Oo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9PywuU4GHiHNyuQqsV2hRMSIWFgkBIXF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4f29GwA2drhXCGLW73s"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OBDvTIY6Fo2yo"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qWjLV5L5oYfn1ENZQ7wZqAcQOQTzRMSI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "H9BrF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yMivREoxcX9yTTtt7Y5NvuvowO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wlJRq0Wi48iVBacAp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "IhU4F2XwKRFLShSdQLhvvlqnDQutiuLd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/R7;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A9R()V
    .locals 4

    .line 49706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R7;->A00:Lcom/facebook/ads/redexgen/X/Oo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oo;->A02()I

    move-result v0

    if-nez v0, :cond_0

    .line 49707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R7;->A01:Lcom/facebook/ads/redexgen/X/R6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/R6;->A04(Lcom/facebook/ads/redexgen/X/R6;)Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0V()V

    .line 49708
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R7;->A01:Lcom/facebook/ads/redexgen/X/R6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/R6;->A05(Lcom/facebook/ads/redexgen/X/R6;)Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49709
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R7;->A01:Lcom/facebook/ads/redexgen/X/R6;

    sget-object v1, Lcom/facebook/ads/redexgen/X/R7;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/R7;->A02:[Ljava/lang/String;

    const-string v1, "tTbulj5vBI36HvBMxQ95Zo46YoefRMyT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/R6;->A05(Lcom/facebook/ads/redexgen/X/R6;)Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0V()V

    .line 49710
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

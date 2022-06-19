.class public final Lcom/facebook/ads/redexgen/X/4i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoRecord"
.end annotation


# static fields
.field public static A03:Lcom/facebook/ads/redexgen/X/2V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/2V<",
            "Lcom/facebook/ads/redexgen/X/4i;",
            ">;"
        }
    .end annotation
.end field

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/4F;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/4F;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 12147
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4i;->A02()V

    const/16 v1, 0x14

    new-instance v0, Lcom/facebook/ads/redexgen/X/bB;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/bB;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/4i;->A03:Lcom/facebook/ads/redexgen/X/2V;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12149
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/4i;
    .locals 4

    .line 12150
    sget-object v0, Lcom/facebook/ads/redexgen/X/4i;->A03:Lcom/facebook/ads/redexgen/X/2V;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2V;->A2P()Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/4i;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/4i;->A04:[Ljava/lang/String;

    const-string v1, "RnCaU2E938mENSzRzPrAuXo67ZnkzA8g"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/4i;

    .line 12151
    .local v0, "record":Lcom/facebook/ads/redexgen/X/4i;
    if-nez v3, :cond_0

    new-instance v3, Lcom/facebook/ads/redexgen/X/4i;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/4i;-><init>()V

    :cond_0
    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    .line 12152
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/4i;->A03:Lcom/facebook/ads/redexgen/X/2V;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2V;->A2P()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12153
    :cond_0
    return-void
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3L5xTrYaZHGbjsCndSxeOQfzJoqaksAO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yNuit7zcaXLgcR4Esus3jmJQTJqqE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DjfkS9z5OPUyV9QdiCBZ1KUSwMFmGRPN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lc54RdKLiwdhlc59ssIRjbGGERTX6o9W"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6o2d"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DSh0O66K0UoAsbtG5khJTMnGYv0IzoNn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Wt9X6yajIBXU34hiGluB33HbNXSszdRF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6wPar1yvZmOBSMEilq5oC74eJWuAafP4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4i;->A04:[Ljava/lang/String;

    return-void
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/4i;)V
    .locals 1

    .line 12154
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    .line 12155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4i;->A02:Lcom/facebook/ads/redexgen/X/4F;

    .line 12156
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4i;->A01:Lcom/facebook/ads/redexgen/X/4F;

    .line 12157
    sget-object v0, Lcom/facebook/ads/redexgen/X/4i;->A03:Lcom/facebook/ads/redexgen/X/2V;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/2V;->AD2(Ljava/lang/Object;)Z

    .line 12158
    return-void
.end method

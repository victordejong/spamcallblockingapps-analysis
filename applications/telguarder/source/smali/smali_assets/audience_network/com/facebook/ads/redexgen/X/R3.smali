.class public final Lcom/facebook/ads/redexgen/X/R3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/O6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/83;->A0E(Lcom/facebook/ads/redexgen/X/RD;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/83;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/R3;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/83;)V
    .locals 0

    .line 49608
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R3;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qHz4sCmS4bUFWR47QtHhMNDUZCpJbcwL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "tY53RXKkELK93RcESsH0D6YCDiXGivwR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TY0OtT2IKlLc5LI8WeU3Y5iKBLt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NHDnkHiHG8J8spbOlyMDWanpxyETIB1h"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MBoQAoAEbOFuLp1E1g"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nPkpoxT7drdJtOR9VPa5M7iDZXn3w"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "X7sauSKuGCOM"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9Db6vqlvCi98BW9zHmX6C"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/R3;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final AEU(I)V
    .locals 4

    .line 49609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R3;->A00:Lcom/facebook/ads/redexgen/X/83;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/83;->A05(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/Ni;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49610
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R3;->A00:Lcom/facebook/ads/redexgen/X/83;

    sget-object v1, Lcom/facebook/ads/redexgen/X/R3;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/R3;->A01:[Ljava/lang/String;

    const-string v1, "gbVu4ehXSy3InAnu6mdCcwS0OAN"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "4mw8gm2rXhYk0Mi81I"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/83;->A05(Lcom/facebook/ads/redexgen/X/83;)Lcom/facebook/ads/redexgen/X/Ni;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ni;->A00(I)V

    .line 49611
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

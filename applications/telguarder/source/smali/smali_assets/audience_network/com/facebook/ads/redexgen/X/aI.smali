.class public final Lcom/facebook/ads/redexgen/X/aI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/75;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/aH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdCacheListenerImpl"
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/c9;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/aH;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/aI;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aH;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/c9;",
            ">;)V"
        }
    .end annotation

    .line 66843
    .local p2, "nativeAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aI;->A01:Lcom/facebook/ads/redexgen/X/aH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66844
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aI;->A00:Ljava/util/List;

    .line 66845
    return-void
.end method

.method private A00()V
    .locals 11

    .line 66846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A01:Lcom/facebook/ads/redexgen/X/aH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aH;->A00(Lcom/facebook/ads/redexgen/X/aH;)Lcom/facebook/ads/redexgen/X/5G;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5G;->A07(Z)V

    .line 66847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A01:Lcom/facebook/ads/redexgen/X/aH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aH;->A00(Lcom/facebook/ads/redexgen/X/aH;)Lcom/facebook/ads/redexgen/X/5G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5G;->A04()V

    .line 66848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A01:Lcom/facebook/ads/redexgen/X/aH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aH;->A00(Lcom/facebook/ads/redexgen/X/aH;)Lcom/facebook/ads/redexgen/X/5G;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5G;->A05(I)V

    .line 66849
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/aI;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/aI;->A02:[Ljava/lang/String;

    const-string v1, "GKxyFdZ7ADxfGJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/c9;

    .line 66850
    .local v0, "nativeAdapter":Lcom/facebook/ads/redexgen/X/c9;
    new-instance v5, Lcom/facebook/ads/redexgen/X/T6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A01:Lcom/facebook/ads/redexgen/X/aH;

    .line 66851
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aH;->A01(Lcom/facebook/ads/redexgen/X/aH;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v6

    const/4 v8, 0x0

    .line 66852
    invoke-static {}, Lcom/facebook/ads/redexgen/X/T6;->A0I()Lcom/facebook/ads/redexgen/X/JZ;

    move-result-object v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A01:Lcom/facebook/ads/redexgen/X/aH;

    .line 66853
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aH;->A00(Lcom/facebook/ads/redexgen/X/aH;)Lcom/facebook/ads/redexgen/X/5G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5G;->A03()Lcom/facebook/ads/redexgen/X/bb;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/c9;Lcom/facebook/ads/redexgen/X/8x;Lcom/facebook/ads/redexgen/X/JZ;Lcom/facebook/ads/redexgen/X/bb;)V

    .line 66854
    .local v1, "nativeAdBaseApi":Lcom/facebook/ads/internal/api/NativeAdBaseApi;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A01:Lcom/facebook/ads/redexgen/X/aH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aH;->A00(Lcom/facebook/ads/redexgen/X/aH;)Lcom/facebook/ads/redexgen/X/5G;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aI;->A01:Lcom/facebook/ads/redexgen/X/aH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aH;->A01(Lcom/facebook/ads/redexgen/X/aH;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/5G;->A06(Lcom/facebook/ads/NativeAd;)V

    .line 66855
    .end local v0    # "nativeAdapter":Lcom/facebook/ads/redexgen/X/c9;
    .end local v1    # "nativeAdBaseApi":Lcom/facebook/ads/internal/api/NativeAdBaseApi;
    goto :goto_0

    .line 66856
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/aJ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aJ;-><init>(Lcom/facebook/ads/redexgen/X/aI;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KU;->A00(Lcom/facebook/ads/redexgen/X/KQ;)V

    .line 66857
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XqTxzibSN1zAjaiM9LtVSqsxSG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xqN5bEwB0Nihon7KSuA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FVkOY26I4teb9ftOLmk9A45ZS3TS2DIY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wzTDEcMKt7VvW9W8eKeIWksTnJ0tE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "iGRCr9OHUARnshCNCmKS3XNzEIA09VDm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MJLgHxMJm3Fw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "S"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "m77T1m6dtAhGTcgbhkAg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aI;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A9g()V
    .locals 0

    .line 66858
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aI;->A00()V

    .line 66859
    return-void
.end method

.method public final A9n()V
    .locals 0

    .line 66860
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aI;->A00()V

    .line 66861
    return-void
.end method

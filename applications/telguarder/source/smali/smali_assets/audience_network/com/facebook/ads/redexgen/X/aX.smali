.class public final Lcom/facebook/ads/redexgen/X/aX;
.super Lcom/facebook/ads/redexgen/X/KQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aV;->A0C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aV;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/aX;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aV;)V
    .locals 0

    .line 67383
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aX;->A00:Lcom/facebook/ads/redexgen/X/aV;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KQ;-><init>()V

    return-void
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "12g74Y80MldwuLH5Sc5BNMhqIci3y3n7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gYGMtvDgCappq8Eqx1aX2vuQToh52UHd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GlXHohOtVJhIOcbHhrFcSUyeAoJlZUN4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CknPoCaYYZqOx1VHoQWkocTpfCeiqOL0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "IgiYYUSARpIlAyCBMTexeC9bH0PhGiJU"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Cia0Frm0699G8jcollxZnIfMYARIEex0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Mzdi9MK983UUFZlepuPfFCQdgw1DK7MX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jSW62lJNNGtUKopGO2HTdr7H5wR53AmM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aX;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 4

    .line 67384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A00:Lcom/facebook/ads/redexgen/X/aV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aV;->A01(Lcom/facebook/ads/redexgen/X/aV;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A07()Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A00:Lcom/facebook/ads/redexgen/X/aV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aV;->A01(Lcom/facebook/ads/redexgen/X/aV;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/aX;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/aX;->A01:[Ljava/lang/String;

    const-string v1, "nnCrEA10h1A2hd08C5n1xIwFCKPiTwdC"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "49SRRBhRmQihygS20ldMlh5Gkuzwxt90"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4v;->A07()Lcom/facebook/ads/AdListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aX;->A00:Lcom/facebook/ads/redexgen/X/aV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aV;->A01(Lcom/facebook/ads/redexgen/X/aV;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A08()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/AdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 67386
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

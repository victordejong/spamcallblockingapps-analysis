.class public final Lcom/facebook/ads/redexgen/X/1O;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;

.field public A02:Ljava/lang/String;

.field public A03:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/1O;)Ljava/lang/String;
    .locals 0

    .line 3100
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1O;->A02:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/1O;)Ljava/lang/String;
    .locals 0

    .line 3101
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1O;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/1O;)Ljava/lang/String;
    .locals 0

    .line 3102
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1O;->A00:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/1O;)Ljava/lang/String;
    .locals 0

    .line 3103
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1O;->A01:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1O;
    .locals 0

    .line 3104
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1O;->A00:Ljava/lang/String;

    .line 3105
    return-object p0
.end method

.method public final A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1O;
    .locals 0

    .line 3106
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1O;->A01:Ljava/lang/String;

    .line 3107
    return-object p0
.end method

.method public final A06(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1O;
    .locals 0

    .line 3108
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1O;->A02:Ljava/lang/String;

    .line 3109
    return-object p0
.end method

.method public final A07(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1O;
    .locals 0

    .line 3110
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1O;->A03:Ljava/lang/String;

    .line 3111
    return-object p0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/1P;
    .locals 2

    .line 3112
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/1P;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/1P;-><init>(Lcom/facebook/ads/redexgen/X/1O;Lcom/facebook/ads/redexgen/X/1N;)V

    return-object v0
.end method

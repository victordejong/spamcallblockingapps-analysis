.class public final Lcom/facebook/ads/redexgen/X/Od;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Of;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/1I;

.field public A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A04:Lcom/facebook/ads/redexgen/X/1G;

.field public final A05:Lcom/facebook/ads/redexgen/X/1S;

.field public final A06:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1S;)V
    .locals 1

    .line 47037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47038
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1I;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A01:Lcom/facebook/ads/redexgen/X/1I;

    .line 47039
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A00:I

    .line 47040
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Od;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    .line 47041
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Od;->A04:Lcom/facebook/ads/redexgen/X/1G;

    .line 47042
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Od;->A05:Lcom/facebook/ads/redexgen/X/1S;

    .line 47043
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Od;)I
    .locals 0

    .line 47044
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Od;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Od;)Lcom/facebook/ads/redexgen/X/1G;
    .locals 0

    .line 47045
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Od;->A04:Lcom/facebook/ads/redexgen/X/1G;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Od;)Lcom/facebook/ads/redexgen/X/1I;
    .locals 0

    .line 47046
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Od;->A01:Lcom/facebook/ads/redexgen/X/1I;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Od;)Lcom/facebook/ads/redexgen/X/1S;
    .locals 0

    .line 47047
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Od;->A05:Lcom/facebook/ads/redexgen/X/1S;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Od;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 0

    .line 47048
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Od;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Od;)Ljava/lang/String;
    .locals 0

    .line 47049
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Od;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Od;)Ljava/lang/String;
    .locals 0

    .line 47050
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Od;->A02:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A07(I)Lcom/facebook/ads/redexgen/X/Od;
    .locals 0

    .line 47051
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Od;->A00:I

    .line 47052
    return-object p0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/1I;)Lcom/facebook/ads/redexgen/X/Od;
    .locals 0

    .line 47053
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Od;->A01:Lcom/facebook/ads/redexgen/X/1I;

    .line 47054
    return-object p0
.end method

.method public final A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Od;
    .locals 0

    .line 47055
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Od;->A02:Ljava/lang/String;

    .line 47056
    return-object p0
.end method

.method public final A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Od;
    .locals 0

    .line 47057
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Od;->A03:Ljava/lang/String;

    .line 47058
    return-object p0
.end method

.method public final A0B()Lcom/facebook/ads/redexgen/X/Of;
    .locals 2

    .line 47059
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Of;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Of;-><init>(Lcom/facebook/ads/redexgen/X/Od;Lcom/facebook/ads/redexgen/X/RL;)V

    return-object v0
.end method

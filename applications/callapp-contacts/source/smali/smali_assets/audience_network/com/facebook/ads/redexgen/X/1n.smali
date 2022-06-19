.class public final Lcom/facebook/ads/redexgen/X/1n;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/8x;

.field public final A02:Ljava/lang/String;

.field public final A03:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/8x;Ljava/lang/String;J)V
    .locals 0

    .line 3674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3675
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1n;->A03:Lorg/json/JSONObject;

    .line 3676
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1n;->A01:Lcom/facebook/ads/redexgen/X/8x;

    .line 3677
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/1n;->A02:Ljava/lang/String;

    .line 3678
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/1n;->A00:J

    .line 3679
    return-void
.end method


# virtual methods
.method public final A00()J
    .locals 2

    .line 3680
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1n;->A00:J

    return-wide v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/8x;
    .locals 1

    .line 3681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1n;->A01:Lcom/facebook/ads/redexgen/X/8x;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 3682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1n;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A03()Lorg/json/JSONObject;
    .locals 1

    .line 3683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1n;->A03:Lorg/json/JSONObject;

    return-object v0
.end method

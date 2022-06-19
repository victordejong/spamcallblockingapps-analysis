.class public final Lcom/facebook/ads/redexgen/X/QA;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:F

.field public A01:Lcom/facebook/ads/redexgen/X/0Q;

.field public A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0Q;)V
    .locals 1

    .line 49132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;F)V

    .line 49133
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0Q;F)V
    .locals 1

    .line 49134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/QA;-><init>(Lcom/facebook/ads/redexgen/X/0Q;FLjava/util/Map;)V

    .line 49135
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0Q;FLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/0Q;",
            "F",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49136
    .local v0, "windowParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49137
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QA;->A01:Lcom/facebook/ads/redexgen/X/0Q;

    .line 49138
    iput p2, p0, Lcom/facebook/ads/redexgen/X/QA;->A00:F

    .line 49139
    if-eqz p3, :cond_0

    .line 49140
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/QA;->A02:Ljava/util/Map;

    .line 49141
    :goto_0
    return-void

    .line 49142
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QA;->A02:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public final A00()F
    .locals 1

    .line 49143
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QA;->A00:F

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 49144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QA;->A01:Lcom/facebook/ads/redexgen/X/0Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0Q;->A02()I

    move-result v0

    return v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/0Q;
    .locals 1

    .line 49145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QA;->A01:Lcom/facebook/ads/redexgen/X/0Q;

    return-object v0
.end method

.method public final A03()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QA;->A02:Ljava/util/Map;

    return-object v0
.end method

.method public final A04()Z
    .locals 2

    .line 49147
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QA;->A01:Lcom/facebook/ads/redexgen/X/0Q;

    sget-object v0, Lcom/facebook/ads/redexgen/X/0Q;->A0I:Lcom/facebook/ads/redexgen/X/0Q;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

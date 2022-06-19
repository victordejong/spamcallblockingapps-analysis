.class public final Lcom/facebook/ads/redexgen/X/QJ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/QK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/QN;

.field public A01:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A02:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A03:Z

.field public A04:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QJ;->A04:Z

    .line 49168
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/QN;)Lcom/facebook/ads/redexgen/X/QJ;
    .locals 0

    .line 49169
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/QN;

    .line 49170
    return-object p0
.end method

.method public final A01(Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/QJ;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/QJ;"
        }
    .end annotation

    .line 49171
    .local p1, "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QJ;->A01:Ljava/util/Set;

    .line 49172
    return-object p0
.end method

.method public final A02(Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/QJ;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/QJ;"
        }
    .end annotation

    .line 49173
    .local p1, "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QJ;->A02:Ljava/util/Set;

    .line 49174
    return-object p0
.end method

.method public final A03(Z)Lcom/facebook/ads/redexgen/X/QJ;
    .locals 0

    .line 49175
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/QJ;->A04:Z

    .line 49176
    return-object p0
.end method

.method public final A04(Z)Lcom/facebook/ads/redexgen/X/QJ;
    .locals 0

    .line 49177
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/QJ;->A03:Z

    .line 49178
    return-object p0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/QK;
    .locals 7

    .line 49179
    new-instance v0, Lcom/facebook/ads/redexgen/X/QK;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QJ;->A00:Lcom/facebook/ads/redexgen/X/QN;

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/QJ;->A04:Z

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/QJ;->A02:Ljava/util/Set;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/QJ;->A01:Ljava/util/Set;

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/QJ;->A03:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/QK;-><init>(Lcom/facebook/ads/redexgen/X/QN;ZLjava/util/Set;Ljava/util/Set;ZLcom/facebook/ads/redexgen/X/QI;)V

    return-object v0
.end method

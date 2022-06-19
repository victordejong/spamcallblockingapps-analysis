.class public final Lcom/facebook/ads/redexgen/X/QO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/QP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/QS;

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

    .line 49193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QO;->A04:Z

    .line 49195
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/QS;)Lcom/facebook/ads/redexgen/X/QO;
    .locals 0

    .line 49196
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:Lcom/facebook/ads/redexgen/X/QS;

    .line 49197
    return-object p0
.end method

.method public final A01(Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/QO;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/QO;"
        }
    .end annotation

    .line 49198
    .local p1, "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Ljava/util/Set;

    .line 49199
    return-object p0
.end method

.method public final A02(Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/QO;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/QO;"
        }
    .end annotation

    .line 49200
    .local p1, "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:Ljava/util/Set;

    .line 49201
    return-object p0
.end method

.method public final A03(Z)Lcom/facebook/ads/redexgen/X/QO;
    .locals 0

    .line 49202
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/QO;->A04:Z

    .line 49203
    return-object p0
.end method

.method public final A04(Z)Lcom/facebook/ads/redexgen/X/QO;
    .locals 0

    .line 49204
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Z

    .line 49205
    return-object p0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/QP;
    .locals 7

    .line 49206
    new-instance v0, Lcom/facebook/ads/redexgen/X/QP;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QO;->A00:Lcom/facebook/ads/redexgen/X/QS;

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/QO;->A04:Z

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/QO;->A02:Ljava/util/Set;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/QO;->A01:Ljava/util/Set;

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/QO;->A03:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/QP;-><init>(Lcom/facebook/ads/redexgen/X/QS;ZLjava/util/Set;Ljava/util/Set;ZLcom/facebook/ads/redexgen/X/QN;)V

    return-object v0
.end method

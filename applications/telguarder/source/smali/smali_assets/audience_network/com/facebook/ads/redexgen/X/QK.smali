.class public final Lcom/facebook/ads/redexgen/X/QK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/QJ;
    }
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
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QN;ZLjava/util/Set;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/QN;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 49180
    .local p3, "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49181
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QK;->A00:Lcom/facebook/ads/redexgen/X/QN;

    .line 49182
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/QK;->A04:Z

    .line 49183
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/QK;->A02:Ljava/util/Set;

    .line 49184
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/QK;->A01:Ljava/util/Set;

    .line 49185
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/QK;->A03:Z

    .line 49186
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/QN;ZLjava/util/Set;Ljava/util/Set;ZLcom/facebook/ads/redexgen/X/QI;)V
    .locals 0

    .line 49187
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/QK;-><init>(Lcom/facebook/ads/redexgen/X/QN;ZLjava/util/Set;Ljava/util/Set;Z)V

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/QN;
    .locals 1

    .line 49188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QK;->A00:Lcom/facebook/ads/redexgen/X/QN;

    return-object v0
.end method

.method public final A01()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QK;->A01:Ljava/util/Set;

    return-object v0
.end method

.method public final A02()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QK;->A02:Ljava/util/Set;

    return-object v0
.end method

.method public final A03()Z
    .locals 1

    .line 49191
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QK;->A04:Z

    return v0
.end method

.method public final A04()Z
    .locals 1

    .line 49192
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QK;->A03:Z

    return v0
.end method

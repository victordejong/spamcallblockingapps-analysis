.class public final Lcom/facebook/ads/redexgen/X/QP;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/QO;
    }
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
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QS;ZLjava/util/Set;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/QS;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 49207
    .local p3, "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49208
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QP;->A00:Lcom/facebook/ads/redexgen/X/QS;

    .line 49209
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/QP;->A04:Z

    .line 49210
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/QP;->A02:Ljava/util/Set;

    .line 49211
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/QP;->A01:Ljava/util/Set;

    .line 49212
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/QP;->A03:Z

    .line 49213
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/QS;ZLjava/util/Set;Ljava/util/Set;ZLcom/facebook/ads/redexgen/X/QN;)V
    .locals 0

    .line 49214
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/QP;-><init>(Lcom/facebook/ads/redexgen/X/QS;ZLjava/util/Set;Ljava/util/Set;Z)V

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/QS;
    .locals 1

    .line 49215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QP;->A00:Lcom/facebook/ads/redexgen/X/QS;

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

    .line 49216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QP;->A01:Ljava/util/Set;

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

    .line 49217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QP;->A02:Ljava/util/Set;

    return-object v0
.end method

.method public final A03()Z
    .locals 1

    .line 49218
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QP;->A04:Z

    return v0
.end method

.method public final A04()Z
    .locals 1

    .line 49219
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QP;->A03:Z

    return v0
.end method

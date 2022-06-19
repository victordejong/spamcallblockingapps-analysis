.class public final Lcom/facebook/ads/redexgen/X/2B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = -0x2c891ddc6efb75c6L


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/2B;

.field public final A01:I

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/2B;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2B;->A04:Ljava/util/List;

    .line 4605
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2B;->A01:I

    .line 4606
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2B;->A03:Ljava/lang/String;

    .line 4607
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/2B;->A02:Ljava/lang/String;

    .line 4608
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 4609
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/2B;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 4610
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/2B;)V
    .locals 0

    .line 4611
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2B;->A00:Lcom/facebook/ads/redexgen/X/2B;

    .line 4612
    return-void
.end method


# virtual methods
.method public final A01()I
    .locals 1

    .line 4613
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2B;->A01:I

    return v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/2B;
    .locals 1

    .line 4614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2B;->A00:Lcom/facebook/ads/redexgen/X/2B;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2B;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A04()Ljava/lang/String;
    .locals 1

    .line 4616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2B;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public final A05()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/2B;",
            ">;"
        }
    .end annotation

    .line 4617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2B;->A04:Ljava/util/List;

    return-object v0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/2B;)V
    .locals 1

    .line 4618
    invoke-direct {p1, p0}, Lcom/facebook/ads/redexgen/X/2B;->A00(Lcom/facebook/ads/redexgen/X/2B;)V

    .line 4619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2B;->A04:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4620
    return-void
.end method

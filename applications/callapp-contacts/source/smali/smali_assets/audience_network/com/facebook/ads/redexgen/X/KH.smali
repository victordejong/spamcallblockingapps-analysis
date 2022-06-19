.class public Lcom/facebook/ads/redexgen/X/KH;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/KG;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/8w;

.field public final A01:Lcom/facebook/ads/redexgen/X/KG;

.field public final A02:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KG;)V
    .locals 1

    .line 40928
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/KH;-><init>(Lcom/facebook/ads/redexgen/X/KG;Lcom/facebook/ads/redexgen/X/8w;Ljava/lang/String;)V

    .line 40929
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KG;Lcom/facebook/ads/redexgen/X/8w;Ljava/lang/String;)V
    .locals 0

    .line 40930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40931
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KH;->A01:Lcom/facebook/ads/redexgen/X/KG;

    .line 40932
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/KH;->A00:Lcom/facebook/ads/redexgen/X/8w;

    .line 40933
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/KH;->A02:Ljava/lang/String;

    .line 40934
    return-void
.end method


# virtual methods
.method public A00()Lcom/facebook/ads/redexgen/X/8w;
    .locals 1

    .line 40935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KH;->A00:Lcom/facebook/ads/redexgen/X/8w;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/KG;
    .locals 1

    .line 40936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KH;->A01:Lcom/facebook/ads/redexgen/X/KG;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 40937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KH;->A02:Ljava/lang/String;

    return-object v0
.end method

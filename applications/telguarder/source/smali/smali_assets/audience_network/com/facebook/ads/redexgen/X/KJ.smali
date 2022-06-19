.class public Lcom/facebook/ads/redexgen/X/KJ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/KI;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/8w;

.field public final A01:Lcom/facebook/ads/redexgen/X/KI;

.field public final A02:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KI;)V
    .locals 1

    .line 41007
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/KJ;-><init>(Lcom/facebook/ads/redexgen/X/KI;Lcom/facebook/ads/redexgen/X/8w;Ljava/lang/String;)V

    .line 41008
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KI;Lcom/facebook/ads/redexgen/X/8w;Ljava/lang/String;)V
    .locals 0

    .line 41009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41010
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KJ;->A01:Lcom/facebook/ads/redexgen/X/KI;

    .line 41011
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/KJ;->A00:Lcom/facebook/ads/redexgen/X/8w;

    .line 41012
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/KJ;->A02:Ljava/lang/String;

    .line 41013
    return-void
.end method


# virtual methods
.method public A00()Lcom/facebook/ads/redexgen/X/8w;
    .locals 1

    .line 41014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KJ;->A00:Lcom/facebook/ads/redexgen/X/8w;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/KI;
    .locals 1

    .line 41015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KJ;->A01:Lcom/facebook/ads/redexgen/X/KI;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 41016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KJ;->A02:Ljava/lang/String;

    return-object v0
.end method

.class public final Lcom/facebook/ads/redexgen/X/IJ;
.super Lcom/facebook/ads/redexgen/X/9G;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/9G<",
        "Lcom/facebook/ads/redexgen/X/KN;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7T;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7T;)V
    .locals 0

    .line 38017
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IJ;->A00:Lcom/facebook/ads/redexgen/X/7T;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9G;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KN;)V
    .locals 2

    .line 38018
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IJ;->A00:Lcom/facebook/ads/redexgen/X/7T;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->setVisibility(I)V

    .line 38019
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/KN;",
            ">;"
        }
    .end annotation

    .line 38020
    const-class v0, Lcom/facebook/ads/redexgen/X/KN;

    return-object v0
.end method

.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 38021
    check-cast p1, Lcom/facebook/ads/redexgen/X/KN;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/IJ;->A00(Lcom/facebook/ads/redexgen/X/KN;)V

    return-void
.end method

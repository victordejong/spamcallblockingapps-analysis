.class public final Lcom/facebook/ads/redexgen/X/RG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OA;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/RD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/RD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RD;)V
    .locals 0

    .line 49965
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RG;->A00:Lcom/facebook/ads/redexgen/X/RD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVolume()F
    .locals 1

    .line 49966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RG;->A00:Lcom/facebook/ads/redexgen/X/RD;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/RD;->A00:F

    return v0
.end method

.method public final setVolume(F)V
    .locals 1

    .line 49967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RG;->A00:Lcom/facebook/ads/redexgen/X/RD;

    iput p1, v0, Lcom/facebook/ads/redexgen/X/RD;->A00:F

    .line 49968
    return-void
.end method
